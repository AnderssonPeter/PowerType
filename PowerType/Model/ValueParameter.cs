using PowerType.Parsing;

namespace PowerType.Model;

public class ValueParameter : Parameter
{
    public bool RequiresEqualSign { get; set; }
    public ParameterType? Type { get; set; }
    public Source? Source { get; set; }

    internal override void Initialize(ISystemTime systemTime)
    {
        base.Initialize(systemTime);
        if (Source != null)
        {
            Source.Initialize(systemTime);
        }
    }

    internal override void Validate()
    {
        base.Validate();
        if (RequiresEqualSign && !HasKeys)
        {
            throw new ArgumentException("Can't have key less value parameter with RequiresEqualSign");
        }
        if (Source != null)
        {
            Source.Validate();
        }
    }

    internal override bool IsPerfectKeyMatch(PowerShellString value)
    {
        if (!HasKeys)
        {
            return false;
        }
        if (value.RawValue.Contains('='))
        {
            return Keys.Any(key => value.RawValue.StartsWith(key + "=", StringComparison.Ordinal));
        }
        return !RequiresEqualSign && base.IsPerfectKeyMatch(value);
    }

    internal bool TryGetKeyAndValue(PowerShellString argument, out string key, out PowerShellString value)
    {
        var index = argument.RawValue.IndexOf("=");
        if (index != -1)
        {
            key = argument.RawValue.Substring(0, index);
            var rawValue = argument.RawValue.Substring(index + 1);
            //Ugly hack to ensure that we capture the correct type!
            value = PowerShellString.FromEscapedSmart(rawValue);
            return true;
        }
        key = null!;
        value = null!;
        return false;
    }
}

