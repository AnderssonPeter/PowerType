using FluentAssertions;
using PowerType.Parsing;
using Xunit;

namespace PowerType.Tests;

public class DictionaryParsingContextTests
{
    [Fact]
    public void MultiCommand()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("echo 1 && ", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("pause")
        });
        dictionaryParsingContext.Command = new Command("pause", null!);
        dictionaryParsingContext.Reconstruct().Should().Be("echo 1 && pause");
    }

    [Fact]
    public void CommandSize()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("pull"), PowerShellString.FromRawSmart("feature/one")
        });
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.ParsedArguments.Should().Be(1);
        dictionaryParsingContext.CurrentArgument.RawValue.Should().Be("pull");

        dictionaryParsingContext.Command.Size = 2;
        dictionaryParsingContext.ParsedArguments.Should().Be(2);
    }



    [Fact]
    public void IsLast()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("pull"), PowerShellString.FromRawSmart("feature/one")
        });

        dictionaryParsingContext.IsLast.Should().BeFalse();
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.IsLast.Should().BeFalse();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("pull"), null));
        dictionaryParsingContext.IsLast.Should().BeTrue();


        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("feature/one"), null));
        dictionaryParsingContext.IsLast.Should().BeFalse();
    }


    [Fact]
    public void HasThreeOrMoreLeft()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("pull"), PowerShellString.FromRawSmart("feature/one"), PowerShellString.FromRawSmart("--quiet"), PowerShellString.FromRawSmart("--commit")
        });

        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeTrue();
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeTrue();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("pull"), null));
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeTrue();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("feature/one"), null));
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeFalse();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("--quiet"), null));
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeFalse();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("--commit"), null));
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeFalse();
    }



    [Fact]
    public void HasValue()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("pull"), PowerShellString.FromRawSmart("feature/one")
        });

        dictionaryParsingContext.HasValue.Should().BeTrue();
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.HasValue.Should().BeTrue();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("pull"), null));
        dictionaryParsingContext.HasValue.Should().BeTrue();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("feature/one"), null));
        dictionaryParsingContext.HasValue.Should().BeFalse();
    }

    [Fact]
    public void CurrentArgument()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("pull"), PowerShellString.FromRawSmart("feature/one")
        });

        dictionaryParsingContext.CurrentArgument.RawValue.Should().Be("git");
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.CurrentArgument.RawValue.Should().Be("pull");

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue(PowerShellString.FromRawSmart("pull"), null));
        dictionaryParsingContext.CurrentArgument.RawValue.Should().Be("feature/one");
    }

    [Fact]
    public void NextArgument()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("pull"), PowerShellString.FromRawSmart("feature/one")
        });

        dictionaryParsingContext.NextArgument.RawValue.Should().Be("pull");
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.NextArgument.RawValue.Should().Be("feature/one");
    }


    [Fact]
    public void Reconstruct()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("pull"), PowerShellString.FromRawSmart("feature/one")
        });
                
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.Reconstruct().Should().Be("git");
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("pull", null));
        dictionaryParsingContext.Reconstruct().Should().Be("git pull");
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("feature/one", null));
        dictionaryParsingContext.Reconstruct().Should().Be("git pull feature/one");
    }

    [Fact]
    public void ReconstructWithEqualSignWithValue()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("commit"), PowerShellString.FromRawSmart("--cleanup")
        });

        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("commit", null));
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("--cleanup", null) 
        {
            UsedEqualSign = true,
            Value = PowerShellString.FromRawSmart("strip")
        });
        dictionaryParsingContext.Reconstruct().Should().Be("git commit --cleanup=strip");
    }

    [Fact]
    public void ReconstructWithEqualSignWithProvidedValue()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("commit"), PowerShellString.FromRawSmart("--cleanup")
        });

        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("commit", null));
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("--cleanup", null)
        {
            UsedEqualSign = true
        });
        dictionaryParsingContext.Reconstruct("strip").Should().Be("git commit --cleanup=strip");
    }

    [Fact]
    public void ReconstructWithValue()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {
            PowerShellString.FromRawSmart("git"), PowerShellString.FromRawSmart("commit"), PowerShellString.FromRawSmart("--cleanup")
        });

        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("commit", null));
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("--cleanup", null)
        {
            Value = PowerShellString.FromRawSmart("strip")
        });
        dictionaryParsingContext.Reconstruct().Should().Be("git commit --cleanup strip");
    }

    [Fact]
    public void ReconstructWithValue2()
    {
        var dictionaryParsingContext = new DictionaryParsingContext("", new List<PowerShellString>
        {});

        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.Reconstruct("commit").Should().Be("git commit");
    }
}