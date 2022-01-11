using System.Management.Automation.Language;
using System.Text;

namespace PowerType.Parsing;

public class DictionaryParsingContext
{
    private readonly string prefix;

    public DictionaryParsingContext(string prefix, IEnumerable<PowerShellString> arguments)
    {
        this.prefix = prefix;
        this.Arguments = arguments.ToList();
    }

    public Command? Command { get; set; }

    public List<ParameterWithValue> Parameters { get; set; } = new List<ParameterWithValue>();

    public int ParsedArguments => (Command?.Size ?? 0) + Parameters.Sum(x => x.Size);

    public IReadOnlyList<PowerShellString> Arguments { get; }
    public bool IsLast => Arguments.Count == ParsedArguments + 1;
    public bool IsSecondLast => Arguments.Count == ParsedArguments + 2;

    public bool HasThreeOrMoreLeft => Arguments.Count > ParsedArguments + 2;

    public bool HasValue => Arguments.Count > ParsedArguments;
    public PowerShellString CurrentArgument => Arguments[ParsedArguments];
    public PowerShellString NextArgument => Arguments[ParsedArguments + 1];

    public string Reconstruct(string? argument)
    {
        PowerShellString? powerShellString = argument == null ? null : PowerShellString.FromRaw(StringConstantType.BareWord, argument);
        return Reconstruct(powerShellString);
    }

    public string Reconstruct(PowerShellString? argument = null)
    {
        var builder = new StringBuilder(prefix ?? string.Empty);
        if (Command != null)
        {
            builder.Append(Command.Key);
        }
        foreach (var parameter in Parameters)
        {
            if (builder.Length > 0)
            {
                builder.Append(' ');
            }
            builder.Append(parameter.Key.EscapedValue);
            if (parameter.Value != null)
            {
                if (parameter.UsedEqualSign)
                {
                    builder.Append('=');
                }
                else
                {
                    builder.Append(' ');
                }
                builder.Append(parameter.Value.EscapedValue);
            }
        }

        if (argument != null)
        {
            if (Parameters.Count > 0)
            {
                var last = Parameters.Last();
                if (last.UsedEqualSign && last.Value == null)
                {
                    builder.Append('=');
                }
                else
                {
                    builder.Append(' ');
                }
            }
            else if (builder.Length > 0)
            {
                builder.Append(' ');
            }

            builder.Append(argument.EscapedValue);
        }

        return builder.ToString();
    }
}

