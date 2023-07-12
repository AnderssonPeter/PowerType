using PowerType.BackgroundProcessing;

namespace PowerType.Model;

public interface ISystemTime
{
    DateTime UtcNow { get; }
}

public class Cache
{
    private ISystemTime systemTime = default!;
    public TimeSpan? ByTime { get; set; }
    public string[] ByCommand { get; set; } = new string[0];
    public bool ByCurrentWorkingDirectory { get; set; }

    internal void Initialize(ISystemTime systemTime)
    {
        this.systemTime = systemTime;
    }

    internal void Validate()
    {
        if (systemTime == null)
        {
            throw new ArgumentNullException(nameof(systemTime));
        }
        if (ByTime == null && !ByCurrentWorkingDirectory)
        {
            throw new ArgumentException("Must have some sort of caching enabled!");
        }
    }

    private readonly object locker = new();
    private List<SourceItem> cachedItems = new();
    private DateTime lastUpdate = DateTime.MinValue;
    private string lastWokringDirectory = string.Empty;

    internal bool ShouldUpdate(string currentWorkingDirectory, string? commandExecuted = null)
    {
        lock (locker)
        {
            var diff = systemTime.UtcNow.Subtract(lastUpdate);
            return (ByTime.HasValue && diff > ByTime.Value) ||
                   (ByCurrentWorkingDirectory && lastWokringDirectory != currentWorkingDirectory) ||
                   (commandExecuted != null && ByCommand.Any(x => commandExecuted.StartsWith(x, StringComparison.OrdinalIgnoreCase)));
        }
    }

    internal void UpdateCache(List<SourceItem> items, string currentWorkingDirectory)
    {
        lock (locker)
        {
            this.lastWokringDirectory = currentWorkingDirectory;
            this.lastUpdate = systemTime.UtcNow;
            cachedItems = items;
        }
    }

    internal List<SourceItem> GetCachedItems()
    {
        lock (locker)
        {
            return cachedItems;
        }
    }
}
