using System.Text;

namespace PowerType.Parsing;

public class DictionaryParsingContext
{
    private readonly string prefix;

    public DictionaryParsingContext(string prefix, List<string> arguments)
    {
        this.prefix = prefix;
        this.Arguments = arguments;
    }

    public Command? Command { get; set; }

    public List<ParameterWithValue> Parameters { get; set; } = new List<ParameterWithValue>();

    public int ParsedArguments => (Command?.Size ?? 0) + Parameters.Sum(x => x.Size);

    public IReadOnlyList<string> Arguments { get; }
    public bool IsLast => Arguments.Count == ParsedArguments + 1;
    public bool IsSecondLast => Arguments.Count == ParsedArguments + 2;

    public bool HasThreeOrMoreLeft => Arguments.Count > ParsedArguments + 2;

    public bool HasValue => Arguments.Count > ParsedArguments;
    public string CurrentArgument => Arguments[ParsedArguments];
    public string NextArgument => Arguments[ParsedArguments + 1];

    public string Reconstruct(string? argument = null)
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
            builder.Append(parameter.Key);
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
                builder.Append(parameter.Value);
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

            builder.Append(argument);
        }

        return builder.ToString();
    }
}

