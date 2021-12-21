using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.Reflection;
using Microsoft.PowerShell;
using PowerType.Model;

namespace PowerType.BackgroundProcessing;

internal class ExecutionEngineThread : IDisposable
{
    record DictionaryInformation(string File, Runspace Runspace, DictionarySuggestor Suggestor);
    private readonly object dictionariesLocker = new object();
    private readonly List<DictionaryInformation> dictionaries = new();
    private readonly ThreadQueue<Command> queue;
    private readonly CancellationTokenSource cancellationTokenSource = new();
    private readonly CancellationToken cancellationToken;
    private readonly Thread backgroundThread;
    private Exception? backgroundThreadException;

    internal ExecutionEngineThread(ThreadQueue<Command> queue)
    {
        this.queue = queue;
        this.cancellationToken = cancellationTokenSource.Token;
        backgroundThread = new Thread(InnerLoop);
        backgroundThread.IsBackground = true;
        backgroundThread.Start();
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

    private Runspace CreateRunspace()
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
        return RunspaceFactory.CreateRunspace(initialState);
    }

    private void Handle(InitializeDictionaryCommand command)
    {
        var runspace = CreateRunspace();
        using (var powershell = PowerShell.Create(runspace))
        {
            powershell.AddScript($"using namespace PowerType.Model\nusing namespace PowerType.Model.Conditions\n{command.File}");
            runspace.Open();
            var result = powershell.Invoke();
            if (powershell.HadErrors)
            {
                var errors = string.Join(Environment.NewLine, powershell.Streams.Error.Select(x => x.ToString()));
                throw new Exception("Failed to initialize dictionary, errors: " + errors);
            }
            var suggestor = result.Select(x => x.BaseObject)
                .Cast<DictionarySuggestor>()
                .Single();

            lock (dictionariesLocker)
            {
                dictionaries.Add(new DictionaryInformation(command.File, runspace, suggestor));
            }
        }
    }

    private void Handle(CacheDictionaryDynamicSources command)
    {
        var dictionaryInformation = GetDictionaryInformation(command.Dictionary);

        foreach (var dynamicSource in dictionaryInformation.Suggestor.GetDynamicSources())
        {
            if (dynamicSource.Cache.ShouldUpdate(command.CurrentWorkingDirectory))
            {
                dictionaryInformation.Runspace.SessionStateProxy.Path.SetLocation(command.CurrentWorkingDirectory);
                var result = dynamicSource.CommandExpression.Invoke();
                var items = result.Select(x => x.BaseObject is string ?
                    new SourceItem { Name = (string)x.BaseObject } :
                    (SourceItem)x.BaseObject).ToList();
                dynamicSource.Cache.UpdateCache(items, command.CurrentWorkingDirectory);
            }
        }
    }

    private DictionaryInformation GetDictionaryInformation(PowerTypeDictionary dictionary)
    {
        lock (dictionariesLocker)
        {
            return this.dictionaries.Single(x => x.Suggestor.Dictionary == dictionary);
        }
    }

    public void Dispose()
    {
        cancellationTokenSource.Cancel();
        //While we wait for the background thread to exit lets do some cleanup

        lock (dictionariesLocker)
        {
            foreach (var dictionary in dictionaries)
            {
                dictionary.Runspace.Close();
                dictionary.Runspace.Dispose();
            }
        }

        if (!backgroundThread.Join(200))
        {
            throw new Exception("Failed to shutdown background thread!");
        }
    }
}
