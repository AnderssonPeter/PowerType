using System.Collections.ObjectModel;
using System.Management.Automation.Language;
using System.Text;

namespace PowerType.Parsing;

public class PowerShellString
{
    private readonly static IReadOnlyDictionary<char, char> escapeLookup = new Dictionary<char, char>()
    {
        { '\0', '0' },
        { '\a', 'a' },
        { '\b', 'b' },
        { '\f', 'f' },
        { '\t', 't' },
        { '\v', 'v' },
        { '\n', 'n' },
        { '\r', 'r' },
    };

    private readonly static IReadOnlyDictionary<char, char> escapeReverseLookup = escapeLookup.ToDictionary(x => x.Value, x => x.Key);

    const char doubleQuotationMark = '"';
    const char leftDoubleQuotationMark = '\u201C';
    const char rightDoubleQuotationMark = '\u201D';
    const char doubleLowNineQuotationMark = '\u201E';

    private static readonly char[] doubleQuoteCharacters = { doubleQuotationMark, leftDoubleQuotationMark, rightDoubleQuotationMark, doubleLowNineQuotationMark };

    const char singleQuotationMark = '\'';
    const char leftSingleQuotationMark = '\u2018';
    const char rightSingleQuotationMark = '\u2019';
    const char singleLowNineQuotationMark = '\u201A';
    const char singleHighReversedNineQuotationMark = '\u201B';

    private static readonly char[] singleQuoteCharacters = { singleQuotationMark, leftSingleQuotationMark, rightSingleQuotationMark, singleLowNineQuotationMark, singleHighReversedNineQuotationMark };

    /*
     * todo:
     * handle
     * " (U+0022)
     * Left double quotation mark (U+201C)
     * Right double quotation mark (U+201D)
     * Double low-9 quotation mark (U+201E)
     * ' (U+0027)
     * Left single quotation mark (U+2018)
     * Right single quotation mark (U+2019)
     * Single low-9 quotation mark (U+201A)
     * Single high-reversed-9 quotation mark (U+201B)
     */
    private readonly static IReadOnlyDictionary<StringConstantType, char[]> charsToEscape = new Dictionary<StringConstantType, char[]>()
    {
        { StringConstantType.BareWord,               singleQuoteCharacters.Concat(doubleQuoteCharacters).Concat(new char[] { '`', ' ',     '{', '}', '\0', '\a', '\b', '\f', '\t', '\v', '\n', '\r' }).ToArray() },
        { StringConstantType.DoubleQuoted,           doubleQuoteCharacters.Concat(                              new char[] { '`', '"',               '\0', '\a', '\b', '\f', '\t', '\v', '\n', '\r' }).ToArray() },
        { StringConstantType.DoubleQuotedHereString, doubleQuoteCharacters.Concat(                              new char[] { '`',                    '\0', '\a', '\b', '\f', '\t', '\v' }).ToArray() },
        { StringConstantType.SingleQuoted,           singleQuoteCharacters }
    };

    private readonly static IReadOnlyDictionary<StringConstantType, char[]> escapeChars = new Dictionary<StringConstantType, char[]>()
    {
        { StringConstantType.BareWord,                  new char[] { '`' } },
        { StringConstantType.DoubleQuoted,              new char[] { '`' } },
        { StringConstantType.DoubleQuotedHereString,    new char[] { '`' }  },
        { StringConstantType.SingleQuoted,              singleQuoteCharacters }
    };

    private readonly static IReadOnlyDictionary<StringConstantType, string[]> unsupportedStrings = new Dictionary<StringConstantType, string[]>()
    {
        { StringConstantType.SingleQuotedHereString, new string[] { "\n'@", "\r\n'@" } }
    };

    private readonly static IReadOnlyDictionary<StringConstantType, string[]> openingChars = new Dictionary<StringConstantType, string[]>()
    {
        { StringConstantType.DoubleQuoted,           doubleQuoteCharacters.Select(x => x.ToString()).ToArray() },
        { StringConstantType.DoubleQuotedHereString, doubleQuoteCharacters.SelectMany(x => new [] { "@" + x.ToString() + "\n", "@" + x.ToString() + "\r\n" }).ToArray() },
        { StringConstantType.SingleQuoted,           singleQuoteCharacters.Select(x => x.ToString()).ToArray() },
        { StringConstantType.SingleQuotedHereString, singleQuoteCharacters.SelectMany(x => new [] { "@" + x.ToString() + "\n", "@" + x.ToString() + "\r\n" }).ToArray() }
    };

    private readonly static IReadOnlyDictionary<StringConstantType, string[]> closingChars = new Dictionary<StringConstantType, string[]>()
    {
        { StringConstantType.DoubleQuoted,           doubleQuoteCharacters.Select(x => x.ToString()).ToArray() },
        { StringConstantType.DoubleQuotedHereString, doubleQuoteCharacters.SelectMany(x => new [] { "\n" + x.ToString() + "@", "\r\n" + x.ToString() + "@" }).ToArray() },
        { StringConstantType.SingleQuoted,           singleQuoteCharacters.Select(x => x.ToString()).ToArray() },
        { StringConstantType.SingleQuotedHereString, singleQuoteCharacters.SelectMany(x => new [] { "\n" + x.ToString() + "@", "\r\n" + x.ToString() + "@" }).ToArray() }
    };

    public PowerShellString(CommandElementAst commandElementAst)
    {
        if (commandElementAst is StringConstantExpressionAst stringConstant)
        {
            RawValue = stringConstant.Value;
            EscapedValue = stringConstant.ToString();
            Type = stringConstant.StringConstantType;
        }
        else
        {
            RawValue = commandElementAst.ToString();
            Type = StringConstantType.DoubleQuoted;
            EscapedValue = Escape(Type, RawValue);
        }
    }

    public PowerShellString(StringConstantType type, string escapedValue, string rawValue)
    {
        EscapedValue = escapedValue;
        RawValue = rawValue;
        Type = type;
    }

    public static PowerShellString FromRaw(StringConstantType type, string rawValue)
    {
        var escapedValue = Escape(type, rawValue);
        if (openingChars.TryGetValue(type, out var openingChar))
        {
            escapedValue = openingChar + escapedValue;
        }
        if (closingChars.TryGetValue(type, out var closingChar))
        {
            escapedValue += closingChar;
        }
        return new PowerShellString(type, escapedValue, rawValue);
    }

    public static PowerShellString FromEscaped(StringConstantType type, string escapedValue)
    {
        var rawValue = Unescape(type, escapedValue);
        return new PowerShellString(type, escapedValue, rawValue);
    }

    public string EscapedValue { get; }
    public string RawValue { get; }
    public StringConstantType Type { get; }

    internal PowerShellString RemoveClosingFromEscaped()
    {
        if (EscapedValue == null)
        {
            return this;
        }
        if (closingChars.TryGetValue(Type, out var closing) && IsEscapedClosed())
        {
            foreach (var c in closing)
            {
                if (EscapedValue.EndsWith(c))
                {
                    return new PowerShellString(Type, EscapedValue.Substring(0, EscapedValue.Length - c.Length), RawValue);
                }
            }
        }
        return this;
    }


    internal PowerShellString RemoveOpeningFromEscaped()
    {
        if (EscapedValue == null)
        {
            return this;
        }
        if (openingChars.TryGetValue(Type, out var opening) && IsEscapedOpened())
        {
            foreach (var c in opening)
            {
                if (EscapedValue.StartsWith(c))
                {
                    return new PowerShellString(Type, EscapedValue.Substring(c.Length), RawValue);
                }
            }
        }
        return this;
    }

    public PowerShellString Append(PowerShellString value)
    {
        var first = this.RemoveClosingFromEscaped();
        var last = value.RemoveOpeningFromEscaped();
        return new PowerShellString(Type, first.EscapedValue + last.EscapedValue, first.RawValue + last.RawValue).EnsureEscapedIsClosed();
    }

    public PowerShellString Convert(StringConstantType type)
    {
        if (Type == type)
        {
            return this;
        }
        return PowerShellString.FromRaw(type, RawValue);
    }

    

    //todo: Escape unicode chars like ♥ they should be encoded like $([char]0x2665)
    internal static string Escape(StringConstantType type, string rawValue)
    {
        var charsToEscape = PowerShellString.charsToEscape.GetValueOrDefault(type);
        var escapeChar = PowerShellString.escapeChars.GetValueOrDefault(type)?.First();
        var unsupportedStrings = PowerShellString.unsupportedStrings.GetValueOrDefault(type);
        if (unsupportedStrings != null)
        {
            var unsupportedString = unsupportedStrings.FirstOrDefault(unsupportedString => rawValue.Contains(unsupportedString));
            if (unsupportedString != null)
            {
                throw new InvalidOperationException($"Can't escape string of type {type} containing {unsupportedString}");
            }
        }
        if (escapeChar != null && charsToEscape != null)
        {
            var numberOfMatches = charsToEscape.Count(c => charsToEscape.Contains(c));
            if (numberOfMatches != 0)
            {
                var builder = new StringBuilder(rawValue.Length + numberOfMatches);
                for (int i = 0; i < rawValue.Length; i++)
                {
                    var c = rawValue[i];
                    if (charsToEscape.Contains(c))
                    {
                        builder.Append(escapeChar);

                        if (escapeLookup.TryGetValue(c, out var value))
                        {
                            builder.Append(value);
                        }
                        else
                        {
                            builder.Append(c);
                        }
                    }
                    else
                    {
                        builder.Append(c);
                    }
                }
                return builder.ToString();
            }
        }
        return rawValue;
    }

    public static string Unescape(StringConstantType type, string escapedValue)
    {
        var openingChars = PowerShellString.openingChars.GetValueOrDefault(type);
        var closingChars = PowerShellString.closingChars.GetValueOrDefault(type);
        var charsToEscape = PowerShellString.charsToEscape.GetValueOrDefault(type);
        var escapeChars = PowerShellString.escapeChars.GetValueOrDefault(type);
        var startIndex = 0;
        var endIndex = escapedValue.Length;
        if (openingChars != null)
        {
            var matchingOpeningChars = openingChars.FirstOrDefault(x => escapedValue.StartsWith(x));
            if (matchingOpeningChars != null)
            {
                startIndex = matchingOpeningChars.Length;
            }
        }

        if (closingChars != null)
        {
            var matchingClosingChars = closingChars.FirstOrDefault(x => escapedValue.EndsWith(x));
            if (matchingClosingChars != null)
            {
                endIndex = escapedValue.Length - matchingClosingChars.Length;
            }
        }
        if (escapeChars == null)
        {
            return escapedValue.Substring(startIndex, endIndex - startIndex);
        }

        var builder = new StringBuilder(endIndex - startIndex); //The unescaped string will always be shorter than escaped
        var isEscape = false;
        for (int i = startIndex; i < endIndex; i++)
        {
            var c = escapedValue[i];
            if (isEscape)
            {
                if (escapeReverseLookup.TryGetValue(c, out var value))
                {
                    builder.Append(value);
                }
                else
                {
                    builder.Append(c);
                }
                isEscape = false;
            }
            else
            {
                if (escapeChars.Contains(c))
                {
                    isEscape = true;
                }
                else
                {
                    builder.Append(c);
                }
            }

        }

        return builder.ToString();

    }

    internal static int FindFirst(string value, char[] escapeChars, int index)
    {
        for (var i = index; i > 0; i--)
        {
            if (!escapeChars.Contains(value[i]))
            {
                return i + 1;
            }
        }
        return 0;
    }

    internal static bool IsEscapeChar(string value, char[] escapeChars, int index) => (FindFirst(value, escapeChars, index) - index) % 2 == 0 && escapeChars.Contains(value[index]);

    internal static bool IsEscapeChar(StringConstantType type, string value, Index index) => escapeChars.TryGetValue(type, out var escapeChar) &&  IsEscapeChar(value, escapeChar, index.GetOffset(value.Length));

    private bool IsEscapeChar(Index index) => IsEscapeChar(Type, EscapedValue, index);

    internal bool IsEscapedOpened() => !openingChars.TryGetValue(Type, out var value) || value.Any(x => EscapedValue.StartsWith(x));

    internal bool IsEscapedClosed() => !closingChars.TryGetValue(Type, out var value) || value.Any(x => EscapedValue.EndsWith(x) && (EscapedValue.Length <= x.Length || !IsEscapeChar(^(x.Length + 1))));

    public PowerShellString EnsureEscapedIsClosed()
    {
        if (closingChars.TryGetValue(Type, out var closingChar) && !IsEscapedClosed())
        {
            return new PowerShellString(Type, EscapedValue + closingChar.First(), RawValue);
        }
        return this;
    }
    public PowerShellString EnsureEscapedIsOpened()
    {
        if (closingChars.TryGetValue(Type, out var openingChar) && !IsEscapedClosed())
        {
            return new PowerShellString(Type, EscapedValue + openingChar.First(), RawValue);
        }
        return this;
    }

    public PowerShellString Normalize() => this.EnsureEscapedIsOpened().EnsureEscapedIsClosed();
}

