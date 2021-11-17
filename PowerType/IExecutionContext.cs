using System.Management.Automation;

namespace PowerType
{
    public interface IExecutionContext
    {
        IEnumerable<T> ExecuteQuery<T>(ScriptBlock command, Dictionary<string, object> arguments);
        T? ExecuteValue<T>(ScriptBlock command, Dictionary<string, object> arguments);
    }
}