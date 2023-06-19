using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using PowerType.BackgroundProcessing;
using Xunit;

namespace PowerType.Tests;

public class ExecutionEngineThreadTests
{
    [Fact]
    public void Dispose()
    {
        var queue = new ThreadQueue<Command>();
        var executionEngineThread = new ExecutionEngineThread(queue);
        executionEngineThread.Dispose();
    }

    [Fact]
    public void InitializeDictionary()
    {
        var queue = new ThreadQueue<Command>();
        using var executionEngineThread = new ExecutionEngineThread(queue);
        SendAndWaitForCommand(new InitializeDictionaryCommand(Path.Combine(Environment.CurrentDirectory, "Dictionaries", "test.ps1")), queue, executionEngineThread);
        if (!executionEngineThread.IsHealthy(out var exception))
        {
            throw new Exception("execution engine thread was not healthy", exception);
        }
    }

    [Fact]
    public void CacheDictionaryDynamicSources()
    {
        var queue = new ThreadQueue<Command>();
        using var executionEngineThread = new ExecutionEngineThread(queue);
        SendAndWaitForCommand(new InitializeDictionaryCommand(Path.Combine(Environment.CurrentDirectory, "Dictionaries", "test.ps1")), queue, executionEngineThread);
        var dictionary = executionEngineThread.GetDictionaries().Single();
        SendAndWaitForCommand(new CacheDictionaryDynamicSources(dictionary, Environment.CurrentDirectory), queue, executionEngineThread);
        if (!executionEngineThread.IsHealthy(out var exception))
        {
            throw new Exception("execution engine thread was not healthy", exception);
        }
    }

    [Fact]
    public void GetSuggestors()
    {
        var queue = new ThreadQueue<Command>();
        using var executionEngineThread = new ExecutionEngineThread(queue);
        SendAndWaitForCommand(new InitializeDictionaryCommand(Path.Combine(Environment.CurrentDirectory, "Dictionaries", "test.ps1")), queue, executionEngineThread);
        executionEngineThread.GetSuggestors().Count.Should().Be(1);
    }

    [Fact]
    public void DontCrashOnUnkownDrive()
    {
        var queue = new ThreadQueue<Command>();
        using var executionEngineThread = new ExecutionEngineThread(queue);
        SendAndWaitForCommand(new InitializeDictionaryCommand(Path.Combine(Environment.CurrentDirectory, "Dictionaries", "test.ps1")), queue, executionEngineThread);

        var dictionary = executionEngineThread.GetDictionaries().Single();
        SendAndWaitForCommand(new CacheDictionaryDynamicSources(dictionary, @"X:\DoesNotExist"), queue, executionEngineThread);
        if (!executionEngineThread.IsHealthy(out var exception))
        {
            throw new Exception("execution engine thread was not healthy", exception);
        }
    }

    private static void SendAndWaitForCommand(Command command, ThreadQueue<Command> queue, ExecutionEngineThread executionEngineThread)
    {
        queue.Enqueue(command);
        Exception? exception = null;
        for (var i = 0; i < 1000; i++)
        {
            if (!executionEngineThread.IsHealthy(out exception))
            {
                throw new Exception("execution engine thread was not healthy", exception);
            }
            if (command.IsDone)
            {
                break;
            }
            Thread.Sleep(10);
        }
    }
}
