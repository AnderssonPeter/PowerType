using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.Reflection;
using System.Runtime.InteropServices;
using Microsoft.PowerShell;
using PowerType.Model;

namespace PowerType.BackgroundProcessing;

internal class ExecutionEngineThread : IDisposable
{
    private bool disposed;
    record DictionaryInformation(string File, DictionarySuggester Suggester);
    private readonly object dictionariesLocker = new();
    private readonly List<DictionaryInformation> dictionaries = new();
    private readonly ThreadQueue<Command> queue;
    private readonly CancellationTokenSource cancellationTokenSource = new();
    private readonly CancellationToken cancellationToken;
    private readonly Thread backgroundThread;
    private Exception? backgroundThreadException;
    private readonly Runspace runspace;

    internal ExecutionEngineThread(ThreadQueue<Command> queue)
    {
        this.queue = queue;
        this.cancellationToken = cancellationTokenSource.Token;
        backgroundThread = new Thread(InnerLoop);
        backgroundThread.IsBackground = true;
        backgroundThread.Start();
        runspace = CreateRunspace();
    }

    /// <summary>This method is thread safe</summary>
    public bool IsHealthy(out Exception? exception)
    {
        Thread.MemoryBarrier();
        exception = backgroundThreadException;
        return exception == null && backgroundThread.IsAlive;
    }

    /// <summary>This method is thread safe</summary>
    public List<DictionarySuggester> GetSuggesters()
    {
        lock (dictionariesLocker)
        {
            return dictionaries.ConvertAll(x => x.Suggester);
        }
    }

    /// <summary>This method is thread safe</summary>
    public List<PowerTypeDictionary> GetDictionaries()
    {
        lock (dictionariesLocker)
        {
            return dictionaries.ConvertAll(x => x.Suggester.Dictionary);
        }
    }

    private void InnerLoop()
    {
        try
        {
            while (!cancellationToken.IsCancellationRequested)
            {
                var command = queue.WaitAndDequeue(cancellationToken);
                if (command is InitializeDictionaryCommand initializeCommand)
                {
                    Handle(initializeCommand);
                }
                else if (command is CacheDictionaryDynamicSourcesCommand cacheDictionaryCommand)
                {
                    Handle(cacheDictionaryCommand);
                }
                else if (command is CommandExecutedCommand commandExecutedCommand)
                {
                    Handle(commandExecutedCommand);
                }
                else
                {
                    throw new InvalidOperationException($"Don't know how to handle command {command.GetType()}!");
                }
                command.IsDone = true;
            }
        }
        catch (Exception ex)
        {
            backgroundThreadException = ex;
        }
    }

    private static Runspace CreateRunspace()
    {
        var assembly = Assembly.GetExecutingAssembly();
        var assemblyName = assembly.GetName().Name;
        var assemblyPath = assembly.Location;
        var assemblyDirectory = Path.GetDirectoryName(assembly.Location) ?? throw new InvalidOperationException("Failed to get assembly directory!");
        var modulePath = assembly.Location.Replace(".dll", ".psd1");
        var initialState = InitialSessionState.CreateDefault();
        initialState.ThrowOnRunspaceOpenError = true;
        initialState.Assemblies.Add(new SessionStateAssemblyEntry(assemblyName, assemblyPath));
        initialState.ImportPSModule(modulePath);
        if (RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
        {
            initialState.ExecutionPolicy = ExecutionPolicy.Unrestricted;
        }
        var runspace = RunspaceFactory.CreateRunspace(initialState);
        runspace.Open();

        using var powershell = PowerShell.Create(runspace);
        powershell.AddScript($"using namespace PowerType.Model\nusing namespace PowerType.Model.Conditions\n. '{Path.Combine(assemblyDirectory, "HelperFunctions.ps1")}'");

        var result = powershell.Invoke();
        if (powershell.HadErrors)
        {
            var errors = string.Join(Environment.NewLine, powershell.Streams.Error.Select(x => x.ToString()));
            throw new Exception("Failed to initialize dictionary, errors: " + errors);
        }
        return runspace;
    }

    private void Handle(InitializeDictionaryCommand command)
    {
        using var powershell = PowerShell.Create(runspace);
        powershell.AddScript($". '{command.File}'");
        var result = powershell.Invoke();
        if (powershell.HadErrors)
        {
            var errors = string.Join(Environment.NewLine, powershell.Streams.Error.Select(x => x.ToString()));
            throw new Exception("Failed to initialize dictionary, errors: " + errors);
        }

        DictionarySuggester suggester;
        var resultObject = result.Single().BaseObject;
        if (resultObject is PowerTypeDictionary dictionary)
        {
            if (!dictionary.Platforms.HasFlag(PlatformIdentification.CurrentPlatform))
            {
                //This dictionary is not supported on the current platform
                return;
            }
            dictionary.Initialize(SystemTime.Instance);
            dictionary.Validate();
            suggester = new DictionarySuggester(dictionary);
        }
        else if (resultObject is DictionarySuggester suggesterTemp)
        {
            suggester = suggesterTemp;
        }
        else
        {
            throw new InvalidOperationException("Didn't receive a PowerTypeDictionary or ISuggester");
        }
        lock (dictionariesLocker)
        {
            dictionaries.Add(new DictionaryInformation(command.File, suggester));
        }
    }

    private void Handle(CacheDictionaryDynamicSourcesCommand command)
    {
        var dictionaryInformation = GetDictionaryInformation(command.Dictionary);

        foreach (var dynamicSource in dictionaryInformation.Suggester.GetDynamicSources())
        {
            if (dynamicSource.Cache.ShouldUpdate(command.CurrentWorkingDirectory))
            {
                try
                {
                    runspace.SessionStateProxy.Path.SetLocation(command.CurrentWorkingDirectory);
                    var result = dynamicSource.CommandExpression.Invoke();
                    var items = result.Select(x => x.BaseObject is string value ?
                        new SourceItem { Name = value } :
                        (SourceItem)x.BaseObject).ToList();
                    dynamicSource.Cache.UpdateCache(items, command.CurrentWorkingDirectory);
                }
                catch(System.Management.Automation.DriveNotFoundException)
                {
                    //todo: log exception
                }
            }
        }
    }

    private void Handle(CommandExecutedCommand command)
    {
        var dictionaryInformation = GetDictionaryInformation(command.Dictionary);

        foreach (var dynamicSource in dictionaryInformation.Suggester.GetDynamicSources())
        {
            if (dynamicSource.Cache.ShouldUpdate(command.CurrentWorkingDirectory, command.Command))
            {
                try
                {
                    runspace.SessionStateProxy.Path.SetLocation(command.CurrentWorkingDirectory);
                    var result = dynamicSource.CommandExpression.Invoke();
                    var items = result.Select(x => x.BaseObject is string value ?
                        new SourceItem { Name = value } :
                        (SourceItem)x.BaseObject).ToList();
                    dynamicSource.Cache.UpdateCache(items, command.CurrentWorkingDirectory);
                }
                catch (System.Management.Automation.DriveNotFoundException)
                {
                    //todo: log exception
                }
            }
        }
    }

    private DictionaryInformation GetDictionaryInformation(PowerTypeDictionary dictionary)
    {
        lock (dictionariesLocker)
        {
            return this.dictionaries.Single(x => x.Suggester is DictionarySuggester suggestor && suggestor.Dictionary == dictionary);
        }
    }

    public void Dispose()
    {
        // Dispose of unmanaged resources.
        Dispose(true);
        // Suppress finalization.
        GC.SuppressFinalize(this);
    }

    protected virtual void Dispose(bool disposing)
    {
        if (disposed)
        {
            return;
        }

        if (disposing)
        {
            cancellationTokenSource.Cancel();
            //While we wait for the background thread to exit lets do some cleanup

            runspace.Dispose();

            if (!backgroundThread.Join(200))
            {
                //todo: log that we failed to shutdown background thread!
            }
        }

        disposed = true;
    }
}
