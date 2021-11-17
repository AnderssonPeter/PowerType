using FluentAssertions;
using PowerType.Parsing;
using Xunit;

namespace PowerType.Tests;

public class DictionaryParsingContextTests
{
    [Fact]
    public void MultiCommand()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "echo", "1", "&&", "pause"
        });

        dictionaryParsingContext.CurrentArgument.Should().Be("pause");
    }

    [Fact]
    public void CommandSize()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "pull", "feature/one"
        });
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.ParsedArguments.Should().Be(1);
        dictionaryParsingContext.CurrentArgument.Should().Be("pull");

        dictionaryParsingContext.Command.Size = 2;
        dictionaryParsingContext.ParsedArguments.Should().Be(2);
    }



    [Fact]
    public void IsLast()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "pull", "feature/one"
        });

        dictionaryParsingContext.IsLast.Should().BeFalse();
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.IsLast.Should().BeFalse();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("pull", null));
        dictionaryParsingContext.IsLast.Should().BeTrue();


        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("feature/one", null));
        dictionaryParsingContext.IsLast.Should().BeFalse();
    }


    [Fact]
    public void HasThreeOrMoreLeft()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "pull", "feature/one", "--quiet", "--commit"
        });

        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeTrue();
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeTrue();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("pull", null));
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeTrue();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("feature/one", null));
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeFalse();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("--quiet", null));
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeFalse();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("--commit", null));
        dictionaryParsingContext.HasThreeOrMoreLeft.Should().BeFalse();
    }



    [Fact]
    public void HasValue()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "pull", "feature/one"
        });

        dictionaryParsingContext.HasValue.Should().BeTrue();
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.HasValue.Should().BeTrue();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("pull", null));
        dictionaryParsingContext.HasValue.Should().BeTrue();

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("feature/one", null));
        dictionaryParsingContext.HasValue.Should().BeFalse();
    }

    [Fact]
    public void CurrentArgument()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "pull", "feature/one"
        });

        dictionaryParsingContext.CurrentArgument.Should().Be("git");
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.CurrentArgument.Should().Be("pull");

        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("pull", null));
        dictionaryParsingContext.CurrentArgument.Should().Be("feature/one");
    }

    [Fact]
    public void NextArgument()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "pull", "feature/one"
        });

        dictionaryParsingContext.NextArgument.Should().Be("pull");
        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.NextArgument.Should().Be("feature/one");
    }


    [Fact]
    public void Reconstruct()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "pull", "feature/one"
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
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "commit", "--cleanup"
        });

        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("commit", null));
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("--cleanup", null) 
        {
            UsedEqualSign = true,
            Value = "strip"
        });
        dictionaryParsingContext.Reconstruct().Should().Be("git commit --cleanup=strip");
    }

    [Fact]
    public void ReconstructWithEqualSignWithProvidedValue()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "commit", "--cleanup"
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
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {
            "git", "commit", "--cleanup"
        });

        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("commit", null));
        dictionaryParsingContext.Parameters.Add(new ParameterWithValue("--cleanup", null)
        {
            Value = "strip"
        });
        dictionaryParsingContext.Reconstruct().Should().Be("git commit --cleanup strip");
    }

    [Fact]
    public void ReconstructWithValue2()
    {
        var dictionaryParsingContext = new DictionaryParsingContext(new List<string>
        {});

        dictionaryParsingContext.Command = new Command("git", null!);
        dictionaryParsingContext.Reconstruct("commit").Should().Be("git commit");
    }
}