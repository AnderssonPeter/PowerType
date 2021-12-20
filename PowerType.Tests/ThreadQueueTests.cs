using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using PowerType.BackgroundProcessing;
using Xunit;

namespace PowerType.Tests;

public class ThreadQueueTests
{


    [Fact]
    public void Enqueue()
    {
        var queue = new ThreadQueue<string>();
        queue.Enqueue("test1");
        queue.Enqueue("test2");
        queue.Enqueue("test3");

    }
    [Fact]
    public void Dequeue()
    {
        var queue = new ThreadQueue<string>();
        queue.Enqueue("test1");
        var value1 = queue.WaitAndDequeue(default);
        value1.Should().Be("test1");
        queue.Enqueue("test2");
        queue.Enqueue("test3");
        var value2 = queue.WaitAndDequeue(default);
        var value3 = queue.WaitAndDequeue(default);
        value2.Should().Be("test2");
        value3.Should().Be("test3");
    }

    [Fact]
    public void DequeueTimeout()
    {
        var queue = new ThreadQueue<string>();
        queue.Enqueue("test1");
        var value1 = queue.WaitAndDequeue(default);
        var source = new CancellationTokenSource(30);
        var action = () =>
        {
            var value2 = queue.WaitAndDequeue(source.Token);
        };
        action.Should().Throw<OperationCanceledException>();
        
    }
}
