namespace PowerType;

public interface ICurrentWorkingDirectoryProvider : IDisposable
{
    string CurrentWorkingDirectory { get; }
}
