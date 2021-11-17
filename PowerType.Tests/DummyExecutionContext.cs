using System.Management.Automation;

namespace PowerType.Tests;

class DummyExecutionContext : IExecutionContext
{
    public DummyExecutionContext()
    {

    }

    Dictionary<Type, IEnumerable<object>> query = new();
    Dictionary<Type, object?> value = new();

    public void SetQuery<T>(IEnumerable<T> values)
    {
        query[typeof(T)] = (IEnumerable<object>)values;
    }
    public void SetValue<T>(T? value)
    {
        this.value[typeof(T)] = (object?)value;
    }

    public IEnumerable<T> ExecuteQuery<T>(ScriptBlock command, Dictionary<string, object> arguments) => 
        query.ContainsKey(typeof(T)) ? (IEnumerable<T>) query[typeof(T)] : Enumerable.Empty<T>();

    public T? ExecuteValue<T>(ScriptBlock command, Dictionary<string, object> arguments) => 
        query.ContainsKey(typeof(T)) ? (T?)value[typeof(T)] : default;
}
