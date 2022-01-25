using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.Reflection;
using Microsoft.PowerShell;
using PowerType.Model;

namespace PowerType.BackgroundProcessing;

internal class ExecutionEngineThread : IDisposable
{
    private bool disposed;
    record DictionaryInformation(string File, DictionarySuggestor Suggestor);
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
    public List<DictionarySuggestor> GetSuggestors()
    {
        lock (dictionariesLocker)
        {
            return dictionaries.ConvertAll(x => x.Suggestor);
        }
    }

    /// <summary>This method is thread safe</summary>
    public List<PowerTypeDictionary> GetDictionaries()
    {
        lock (dictionariesLocker)
        {
            return dictionaries.ConvertAll(x => x.Suggestor.Dictionary);
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
                else if (command is CacheDictionaryDynamicSources cacheDictionaryCommand)
                {
                    Handle(cacheDictionaryCommand);
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
        var modulePath = assembly.Location.Replace(".dll", ".psd1");
        var initialState = InitialSessionState.CreateDefault();
        initialState.ThrowOnRunspaceOpenError = true;
        initialState.Assemblies.Add(new SessionStateAssemblyEntry(assemblyName, assemblyPath));
        initialState.ImportPSModule(modulePath);
        initialState.ExecutionPolicy = ExecutionPolicy.Unrestricted;
        var runspace = RunspaceFactory.CreateRunspace(initialState);
        runspace.Open();

        using var powershell = PowerShell.Create(runspace);
        powershell.AddScript("using namespace PowerType.Model\nusing namespace PowerType.Model.Conditions");

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
        powershell.AddScript($"& '{command.File}'", true);
        var result = powershell.Invoke();
        if (powershell.HadErrors)
        {
            var errors = string.Join(Environment.NewLine, powershell.Streams.Error.Select(x => x.ToString()));
            throw new Exception("Failed to initialize dictionary, errors: " + errors);
        }

        DictionarySuggestor suggestor;
        var resultObject = result.Single().BaseObject;
        if (resultObject is PowerTypeDictionary dictionary)
        {
            dictionary.Initialize(SystemTime.Instance);
            dictionary.Validate();
            suggestor = new DictionarySuggestor(dictionary);
        }
        else if (resultObject is DictionarySuggestor suggestorTmp)
        {
            suggestor = suggestorTmp;
        }
        else
        {
            throw new InvalidOperationException("Didn't receive a PowerTypeDictionary or ISuggestor");
        }

        lock (dictionariesLocker)
        {
            dictionaries.Add(new DictionaryInformation(command.File, suggestor));
        }
    }

    private void Handle(CacheDictionaryDynamicSources command)
    {
        var dictionaryInformation = GetDictionaryInformation(command.Dictionary);

        foreach (var dynamicSource in dictionaryInformation.Suggestor.GetDynamicSources())
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

    private DictionaryInformation GetDictionaryInformation(PowerTypeDictionary dictionary)
    {
        lock (dictionariesLocker)
        {
            return this.dictionaries.Single(x => x.Suggestor is DictionarySuggestor suggestor && suggestor.Dictionary == dictionary);
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
