namespace PowerType.Model;

public class ValueParameter : Parameter
{
    public bool RequiresEqualSign { get; set; }
    public ParameterType? Type { get; set; }
    public Source? Source { get; set; }

    internal override void Initialize(IExecutionContext executionContext)
    {
        base.Initialize(executionContext);
        if (Source != null)
        {
            Source.Validate();
            if (Source is DynamicSource dynamicSource)
            {
                dynamicSource.Initialize(executionContext);
            }
        }
    }

    protected override void Validate()
    {
        base.Validate();
        if (RequiresEqualSign && !HasKeys)
        {
            throw new ArgumentException("Can't have key less value parameter with RequiresEqualSign");
        }
    }

    internal override bool IsPerfectKeyMatch(string value)
    {
        if (!HasKeys)
        {
            return false;
        }
        if (value.Contains("="))
        {            
            return Keys.Any(key => value.StartsWith(key + "=", StringComparison.Ordinal));
        }
        return !RequiresEqualSign && base.IsPerfectKeyMatch(value);
    }

    internal bool TryGetKeyAndValue(string argument, out string key, out string value)
    {
        var index = argument.IndexOf("=");
        if (index != -1)
        {
            key = argument.Substring(0, index);
            value = argument.Substring(index + 1);
            return true;
        }
        key = null!;
        value = null!;
        return false;
    }
}

