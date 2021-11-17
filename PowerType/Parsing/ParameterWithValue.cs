using System.Diagnostics;
using PowerType.Model;

namespace PowerType.Parsing;

[DebuggerDisplay("Key={Key}, Value={Value}, UsedEqualSign={UsedEqualSign}")]
public record ParameterWithValue(string Key, Parameter? Parameter)
{
    public string? Value { get; set; }
    public bool UsedEqualSign { get; set; }
    public int Size => Parameter is ValueParameter && Parameter.HasKeys && Value != null && !UsedEqualSign ? 2 : 1;

    public override string ToString()
    {
        if (Value == null)
        {
            return Key;
        }
        if (UsedEqualSign)
        {
            return Key + "=" + Value;
        }
        return Key + " " + Value;
    }
}

