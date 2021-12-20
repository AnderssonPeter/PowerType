namespace PowerType.BackgroundProcessing;

/// <summary>
/// Simple producer consumer queue
/// </summary>
/// <typeparam name="T"></typeparam>
internal class ThreadQueue<T>
{
    private readonly object locker = new();
    private readonly Queue<T> queue = new();
    private readonly SemaphoreSlim semaphore = new(0);

    public void Enqueue(T command)
    {
        lock (locker)
        {
            queue.Enqueue(command);
        }
        semaphore.Release();
    }

    public T WaitAndDequeue(CancellationToken cancellationToken)
    {
        semaphore.Wait(cancellationToken);
        lock (locker)
        {
            return queue.Dequeue();
        }
    }
}
