using PowerType.Model;

namespace PowerType;

internal class SystemTime : ISystemTime
{
    public static readonly SystemTime Instance = new ();
    public DateTime UtcNow => DateTime.UtcNow;
}
