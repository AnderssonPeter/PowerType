using System.Diagnostics;
using PowerType.Model;

namespace PowerType.Parsing;

[DebuggerDisplay("Key={Key}, Value={Value}, UsedEqualSign={UsedEqualSign}")]
public record ParameterWithValue(PowerShellString Key, Parameter? Parameter)
{
    public ParameterWithValue(string key, Parameter? parameter) : this(PowerShellString.FromRawSmart(key), parameter)
    { }
    public PowerShellString? Value { get; set; }
    public bool UsedEqualSign { get; set; }
    public int Size => Parameter is ValueParameter && Parameter.HasKeys && Value != null && !UsedEqualSign ? 2 : 1;

    public override string ToString()
    {
        if (Value == null)
        {
            return Key.EscapedValue;
        }
        if (UsedEqualSign)
        {
            return Key.EscapedValue + "=" + Value.EscapedValue;
        }
        return Key.EscapedValue + " " + Value.EscapedValue;
    }
}

