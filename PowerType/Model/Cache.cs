namespace PowerType.Model;

public interface ISystemTime
{
    DateTime Now { get; }
}

public class Cache
{
    ISystemTime systemTime = default!;
    public TimeSpan? ByTime { get; set; }
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

    private object locker = new();
    private List<SourceItem> cachedItems = new List<SourceItem>();
    private DateTime lastUpdate = DateTime.MinValue;
    private string lastWokringDirectory = string.Empty;

    internal bool ShouldUpdate(string currentWorkingDirectory)
    {
        lock (locker)
        {
            var diff = systemTime.Now.Subtract(lastUpdate);
            return (ByTime.HasValue && diff > ByTime.Value) ||
                   (ByCurrentWorkingDirectory && lastWokringDirectory != currentWorkingDirectory);
        }
    }

    internal void UpdateCache(List<SourceItem> items, string currentWorkingDirectory)
    {
        lock (locker)
        {
            this.lastWokringDirectory = currentWorkingDirectory;
            this.lastUpdate = systemTime.Now;
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
