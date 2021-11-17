using System.Management.Automation;

namespace PowerType;

internal class ExecutionContext : IExecutionContext
{
    private readonly CommandInvocationIntrinsics commandInvocationIntrinsics;
    private readonly SessionState sessionState;

    public ExecutionContext(CommandInvocationIntrinsics commandInvocationIntrinsics, SessionState sessionState)
    {
        this.commandInvocationIntrinsics = commandInvocationIntrinsics;
        this.sessionState = sessionState;
    }

    public IEnumerable<T> ExecuteQuery<T>(ScriptBlock command, Dictionary<string, object> arguments)
        => commandInvocationIntrinsics.InvokeScript(sessionState, command).Select(item => (T)item.BaseObject);

    public T ExecuteValue<T>(ScriptBlock command, Dictionary<string, object> arguments)
        => ExecuteQuery<T>(command, arguments).Single();
}
