using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using PowerType.Model;
using PowerType.Model.Conditions;
using PowerType.Parsing;
using Xunit;

namespace PowerType.Tests;

public class ConditionTests
{
    private class ConstantCondition : Condition
    {
        private readonly bool value;

        public ConstantCondition(bool value)
        {
            this.value = value;
        }

        public override bool Evaluate(Dictionary<string, object> parameters) => value;
    }

    readonly Dictionary<string, object> parameters = new()
    {
        { "DictionaryParsingContext", new DictionaryParsingContext("", Array.Empty<PowerShellString>()) },
        { "Parameter", new ValueParameter { Name = "test" } }
    };

    [InlineData("Test", "Test")]
    [InlineData(null, null)]
    [InlineData("%notfound%", null)]
    [InlineData(1, 1)]
    [InlineData("%DictionaryParsingContext.notfound%", null)]
    [InlineData("%DictionaryParsingContext.notfound.notfound%", null)]
    [InlineData("%Parameter.Name%", "test")]
    [Theory]
    public void ResolveValue(object? expression, object? expectedValue) =>
        Condition.ResolveValue(expression, parameters).Should().Be(expectedValue);

    [InlineData(true, false)]
    [InlineData(false, true)]
    [Theory]
    public void NotCondition(bool value, bool expected)
    {
        var notCondition = new NotCondition(new ConstantCondition(value));
        notCondition.Evaluate(parameters).Should().Be(expected);
    }

    [InlineData(true, true, true)]
    [InlineData(true, false, false)]
    [InlineData(false, true, false)]
    [InlineData(false, false, false)]
    [Theory]
    public void AndCondition(bool firstValue, bool secondValue, bool expected)
    {
        var andCondition = new AndCondition(new ConstantCondition(firstValue), new ConstantCondition(secondValue));
        andCondition.Evaluate(parameters).Should().Be(expected);
    }

    [InlineData(true, true, true)]
    [InlineData(true, false, true)]
    [InlineData(false, true, true)]
    [InlineData(false, false, false)]
    [Theory]
    public void OrCondition(bool firstValue, bool secondValue, bool expected)
    {
        var orCondition = new OrCondition(new ConstantCondition(firstValue), new ConstantCondition(secondValue));
        orCondition.Evaluate(parameters).Should().Be(expected);
    }

    [InlineData(true, true, true)]
    [InlineData(true, false, false)]
    [InlineData(false, true, false)]
    [InlineData(false, false, true)]
    [InlineData(1, true, false)]
    [InlineData(true, 1, false)]
    [Theory]
    public void EqualsCondition(object firstValue, object secondValue, bool expected)
    {
        var condition = new EqualsCondition(firstValue, secondValue);
        condition.Evaluate(parameters).Should().Be(expected);
    }

    [InlineData(false, new object?[] { false, null }, true)]
    [InlineData(true, new object?[] { null, true }, true)]
    [InlineData(false, new object?[] { true }, false)]
    [InlineData("last", new object?[] { 1, null, "second last", "last" }, true)]
    [Theory]
    public void InCondition(object? value, object?[] collection, bool expected)
    {
        var condition = new InCondition(value, collection);
        condition.Evaluate(parameters).Should().Be(expected);
    }

    [InlineData(1, 2, false)]
    [InlineData(1, 1, false)]
    [InlineData(2, 1, true)]
    [Theory]
    public void LargerThanCondition(object firstValue, object secondValue, bool expected)
    {
        var condition = new LargerCondition(firstValue, secondValue);
        condition.Evaluate(parameters).Should().Be(expected);
    }

    [InlineData(1, 2, false)]
    [InlineData(1, 1, true)]
    [InlineData(2, 1, true)]
    [Theory]
    public void LargerOrEqualThanCondition(object firstValue, object secondValue, bool expected)
    {
        var condition = new LargerOrEqualCondition(firstValue, secondValue);
        condition.Evaluate(parameters).Should().Be(expected);
    }

    [InlineData(1, 2, true)]
    [InlineData(1, 1, false)]
    [InlineData(2, 1, false)]
    [Theory]
    public void LesserThanCondition(object firstValue, object secondValue, bool expected)
    {
        var condition = new LesserCondition(firstValue, secondValue);
        condition.Evaluate(parameters).Should().Be(expected);
    }

    [InlineData(1, 2, true)]
    [InlineData(1, 1, true)]
    [InlineData(2, 1, false)]
    [Theory]
    public void LesserOrEqualThanCondition(object firstValue, object secondValue, bool expected)
    {
        var condition = new LesserOrEqualCondition(firstValue, secondValue);
        condition.Evaluate(parameters).Should().Be(expected);
    }


    [InlineData(new string[] { "message" }, false)]
    [InlineData(new string[] { "test", "message" }, false)]
    [InlineData(new string[] { "test" }, true)]
    [Theory]
    public void ExclusiveParameterConditionTrue(string[] parameterNames, bool expected)
    {
        var condition = new ExclusiveParameterCondition(parameterNames);
        var arguments = PowerShellString.FromRawSmart(new string[] { "git", "checkout", "-m", "'message'" }).ToArray();
        var dictionaryParsingContext = new DictionaryParsingContext("", arguments)
        {
            Command = new Command("git", null)
        };
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(arguments[1], new CommandParameter() { Name = "checkout" }));
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(arguments[2], new ValueParameter() { Name = "message" }, arguments[3]));
        var result = condition.Evaluate(new Dictionary<string, object>
        {
            { nameof(DictionaryParsingContext),  dictionaryParsingContext}
        });
        result.Should().Be(expected);
    }

    [InlineData(new string[] { "message" }, true)]
    [InlineData(new string[] { "test", "message" }, true)]
    [InlineData(new string[] { "test" }, false)]
    [Theory]
    public void InclusiveParameterConditionTrue(string[] parameterNames, bool expected)
    {
        var condition = new InclusiveParameterCondition(parameterNames);
        var arguments = PowerShellString.FromRawSmart(new string[] { "git", "checkout", "-m", "'message'" }).ToArray();
        var dictionaryParsingContext = new DictionaryParsingContext("", arguments)
        {
            Command = new Command("git", null)
        };
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(arguments[1], new CommandParameter() { Name = "checkout" }));
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(arguments[2], new ValueParameter() { Name = "message" }, arguments[3]));
        var result = condition.Evaluate(new Dictionary<string, object>
        {
            { nameof(DictionaryParsingContext),  dictionaryParsingContext}
        });
        result.Should().Be(expected);
    }

    [Fact]
    public void ExclusiveParameterConditionArgumentNullException()
    {
        var a = () =>
        {
            new ExclusiveParameterCondition((string[])null);
        };
        a.Should().Throw<ArgumentNullException>();
    }


    [Fact]
    public void ExclusiveParameterConditionArgumentOutOfRangeException()
    {
        var a = () =>
        {
            new ExclusiveParameterCondition();
        };
        a.Should().Throw<ArgumentOutOfRangeException>();
    }
}
