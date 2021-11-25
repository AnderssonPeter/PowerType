using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation.Language;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using PowerType.Parsing;
using Xunit;

namespace PowerType.Tests
{
    public class PowerShellStringTests
    {

        [Theory]
        [InlineData("test`````test", '`', 4, 4)]
        [InlineData("test`````test", '`', 5, 4)]
        [InlineData("test`````test", '`', 6, 4)]
        [InlineData("test`````test", '`', 7, 4)]
        [InlineData("test`````test", '`', 8, 4)]
        [InlineData("`````test", '`', 4, 0)]
        public void FindFirst(string value, char escapeChar, int index, int expected)
        {
            PowerShellString.FindFirst(value, new char[] { escapeChar }, index).Should().Be(expected);
        }

        [Theory]
        [InlineData("test`````test", '`', 3, false)]
        [InlineData("test`````test", '`', 4, true)]
        [InlineData("test`````test", '`', 5, false)]
        [InlineData("test`````test", '`', 6, true)]
        [InlineData("test`````test", '`', 7, false)]
        [InlineData("test`````test", '`', 8, true)]
        [InlineData("test`````test", '`', 9, false)]
        [InlineData("test`\"", '`', 4, true)]
        public void IsEscapeChar(string value, char escapeChar, int index, bool expected)
        {
            PowerShellString.IsEscapeChar(value, new char[] { escapeChar }, index).Should().Be(expected);
        }

        [Theory]
        [InlineData(StringConstantType.BareWord, "test``test", 4, true)]
        [InlineData(StringConstantType.BareWord, "test``test", 5, false)]
        [InlineData(StringConstantType.DoubleQuoted, "test``test", 4, true)]
        [InlineData(StringConstantType.DoubleQuoted, "test``test", 5, false)]
        [InlineData(StringConstantType.DoubleQuotedHereString, "test``test", 4, true)]
        [InlineData(StringConstantType.DoubleQuotedHereString, "test``test", 5, false)]
        [InlineData(StringConstantType.SingleQuoted, "test``test", 4, false)]
        [InlineData(StringConstantType.SingleQuoted, "test``test", 5, false)]
        [InlineData(StringConstantType.SingleQuoted, "test''test", 4, true)]
        [InlineData(StringConstantType.SingleQuoted, "test''test", 5, false)]
        [InlineData(StringConstantType.SingleQuotedHereString, "test``test", 4, false)]
        [InlineData(StringConstantType.SingleQuotedHereString, "test``test", 5, false)]
        public void IsEscapeCharType(StringConstantType type, string value, int index, bool expected)
        {
            PowerShellString.IsEscapeChar(type, value, index).Should().Be(expected);
        }



        [Theory]
        [InlineData(StringConstantType.BareWord, "“", "`“")]
        [InlineData(StringConstantType.BareWord, "`", "``")]
        [InlineData(StringConstantType.BareWord,               "$t'\" \t\n`{}abc", "$t`'`\"` `t`n```{`}abc")]
        [InlineData(StringConstantType.DoubleQuoted,           "$t'\" \t\n`{}abc", "$t'`\" `t`n``{}abc")]
        [InlineData(StringConstantType.DoubleQuotedHereString, "$t'\" \t\n`{}abc", "$t'`\" `t\n``{}abc")]
        [InlineData(StringConstantType.SingleQuoted,           "$t'\" \t\n`{}abc", "$t''\" \t\n`{}abc")]
        [InlineData(StringConstantType.SingleQuotedHereString, "$t'\" \t\n`{}abc", "$t'\" \t\n`{}abc")]
        //[InlineData(StringConstantType.DoubleQuoted, "$♥", "$([char]0x2665)", Skip = "Not implemented yet")] //skip is not supported yet, but should be added in the next release
        public void Escape(StringConstantType type, string value, string expected)
        {
            PowerShellString.Escape(type, value).Should().Be(expected);
        }

        [Theory]
        [InlineData(StringConstantType.BareWord, "test", true)]
        [InlineData(StringConstantType.DoubleQuoted, "\"test\"", true)]
        [InlineData(StringConstantType.DoubleQuoted, "\"test`\"", true)]
        [InlineData(StringConstantType.DoubleQuoted, "test", false)]
        [InlineData(StringConstantType.DoubleQuotedHereString, "@\"\ntest\"", true)]
        [InlineData(StringConstantType.DoubleQuotedHereString, "test", false)]
        //todo: Add SingleQuoted and SingleQuotedHereString tests
        public void IsEscapedOpened(StringConstantType type, string value, bool expected)
        {
            var powerShellString = new PowerShellString(type, value, "");
            powerShellString.IsEscapedOpened().Should().Be(expected);
        }

        [Theory]
        [InlineData(StringConstantType.BareWord, "test", true)]
        [InlineData(StringConstantType.DoubleQuoted, "\"test\"", true)]
        [InlineData(StringConstantType.DoubleQuoted, "\"test`\"", false)]
        [InlineData(StringConstantType.DoubleQuoted, "\"test``\"", true)]
        [InlineData(StringConstantType.DoubleQuoted, "test", false)]
        [InlineData(StringConstantType.DoubleQuotedHereString, "test\n\"@", true)]
        [InlineData(StringConstantType.DoubleQuotedHereString, "test`\n\"@", false)]
        [InlineData(StringConstantType.DoubleQuotedHereString, "test", false)]
        //todo: Add SingleQuoted and SingleQuotedHereString tests
        public void IsEscapedClosed(StringConstantType type, string escapedValue, bool expected)
        {
            var powerShellString = new PowerShellString(type, escapedValue, "");
            powerShellString.IsEscapedClosed().Should().Be(expected);
        }


        [Theory]
        [InlineData(StringConstantType.BareWord, "test", "test")]
        [InlineData(StringConstantType.DoubleQuoted, "test", "test\"")]
        [InlineData(StringConstantType.DoubleQuoted, "test\"", "test\"")]
        [InlineData(StringConstantType.DoubleQuoted, "test`\"", "test`\"\"")]
        //todo: Add DoubleQuotedHereString, SingleQuoted and SingleQuotedHereString tests
        public void EnsureEscapedIsClosed(StringConstantType type, string escapedValue, string expected)
        {
            var powerShellString = new PowerShellString(type, escapedValue, "");
            powerShellString.EnsureEscapedIsClosed().EscapedValue.Should().Be(expected);
        }

        [Theory]
        [InlineData(StringConstantType.BareWord, "test", "test", "testtest")]
        [InlineData(StringConstantType.DoubleQuoted, "\"test\"", "test", "\"testtest\"")]
        //todo: add many more tests as this is the most important function!!
        public void Append(StringConstantType type, string escapedValue, string escapedValueToAppend, string expectedEscapedValue)
        {
            var powerShellString = new PowerShellString(type, escapedValue, "");
            var powerShellStringToAppend = new PowerShellString(type, escapedValueToAppend, "");
            powerShellString.Append(powerShellStringToAppend).EscapedValue.Should().Be(expectedEscapedValue);
        }
    }
}
