using System.Management.Automation;

namespace PowerType;

public class CurrentWorkingDirectoryProvider : ICurrentWorkingDirectoryProvider
{
    private bool disposed;
    private volatile string currentWorkingDirectory;
    private readonly SessionState sessionState;

    public CurrentWorkingDirectoryProvider(SessionState sessionState)
    {
        this.sessionState = sessionState;
        currentWorkingDirectory = sessionState.Path.CurrentFileSystemLocation.ProviderPath;
        sessionState.InvokeCommand.LocationChangedAction += LocationChanged;
    }

    private void LocationChanged(object? sender, LocationChangedEventArgs e)
    {
        currentWorkingDirectory = sessionState.Path.CurrentFileSystemLocation.ProviderPath;
    }

    public string CurrentWorkingDirectory => currentWorkingDirectory;

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
            sessionState.InvokeCommand.LocationChangedAction -= LocationChanged;
        }

        disposed = true;
    }
}
