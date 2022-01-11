namespace PowerType.Model.Conditions;

public abstract class Condition
{
    public abstract bool Evaluate(Dictionary<string, object> parameters);

    public static object? ResolveValue(object? expreession, Dictionary<string, object> parameters)
    {
        if (expreession != null && expreession is string value &&
            value.StartsWith("%") && value.EndsWith("%"))
        {
            var path = value[1..^1];
            object? result = null;
            var parts = path.Split('.');
            foreach (var part in parts)
            {
                if (result == null)
                {
                    if (!parameters.TryGetValue(part, out result) || result == null)
                    {
                        return null;
                    }
                }
                else
                {
                    result = result.GetType().GetProperty(part)?.GetValue(result);
                    if (result == null)
                    {
                        return null;
                    }
                }
            }
            return result;
        }
        return expreession;
    }

    public virtual void Validate()
    {
    }
}
