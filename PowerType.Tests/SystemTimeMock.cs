using PowerType.Model;

namespace PowerType.Tests;

class SystemTimeMock : ISystemTime
{
    private DateTime value;

    public SystemTimeMock(DateTime start)
    {
        this.value = start;
    }
    public SystemTimeMock() : this(DateTime.Now)
    {

    }
    public DateTime UtcNow => value;
    public void Advance(TimeSpan timeToAdd)
    {
        value = value.Add(timeToAdd);
    }
}
