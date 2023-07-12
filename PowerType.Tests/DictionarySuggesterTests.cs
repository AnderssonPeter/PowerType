using System.Management.Automation.Language;
using FluentAssertions;
using PowerType.Model;
using PowerType.Parsing;
using Xunit;

namespace PowerType.Tests;
public class DictionarySuggesterTests
{
    private readonly DictionarySuggester dictionarySuggester;
    public DictionarySuggesterTests()
    {
        var allRepositories = new DynamicSource
        {
            Name = "All Repositories",
            CommandExpression = System.Management.Automation.ScriptBlock.Create("@('First', 'Second', 'With space', 'release/v1.16.26')"),
            Cache = new Cache
            {
                ByCurrentWorkingDirectory = true,
                ByTime = TimeSpan.FromSeconds(15)
            }
        };
        var mode = new StaticSource
        {
            Name = "mode",
            Items = new List<SourceItem> {
                new SourceItem() { Name = "simple" },
                new SourceItem() { Name = "complex" }
            }
        };
        var dictionary = new PowerTypeDictionary()
        {
            Keys = new List<string>
            {
                "git"
            },
            Platforms = Platforms.All,
            Name = "git",
            Parameters = new List<Parameter>
            {
                new CommandParameter
                {
                    Keys = new List<string> { "commit" },
                    Name = "commit",
                    Parameters = new List<Parameter>
                    {
                        new ValueParameter
                        {
                            Keys = new List<string> { "--message", "-m" },
                            Name = "Message",
                            Type = ParameterType.String
                        },
                        new FlagParameter
                        {
                            Keys = new List<string> { "--verbose", "-v" },
                            Name = "Verbose"
                        },
                        new FlagParameter
                        {
                            Keys = new List<string> { "--squash" },
                            Name = "Squash"
                        },
                        new ValueParameter {
                            Keys = new List<string> { "--cleanup" },
                            Name = "Cleanup",
                            Source = new StaticSource
                            {
                                Name = "Cleanup mode",
                                Items = new List<SourceItem>
                                {
                                    new SourceItem()
                                    {
                                        Name = "strip"
                                    },
                                    new SourceItem()
                                    {
                                        Name = "default"
                                    }
                                }
                            }
                        },
                        new FlagParameter
                        {
                            Keys = new List<string> { "--" },
                            Name = "Separator"
                        },
                    }
                },
                new CommandParameter
                {
                    Keys = new List<string> { "checkout" },
                    Name = "checkout",
                    Parameters = new List<Parameter>
                    {
                        new ValueParameter
                        {
                            Keys = new List<string> { "--quite", "-q" },
                            Name = "Quite"
                        },
                        new ValueParameter {
                            Name = "Repository",
                            Source = allRepositories
                        }
                    }
                },
                new FlagParameter
                {
                    Keys = new List<string> { "--help", "-h" },
                    Name = "Help",
                    Recursive = true
                },
                new CommandParameter
                {
                    Keys = new List<string> { "dummy" },
                    Name = "dummy",
                    Parameters = new List<Parameter>
                    {
                        new ValueParameter {
                            Name = "Repository",
                            Source = allRepositories
                        },
                        new ValueParameter {
                            Name = "mode",
                            Source = mode
                        }
                    }
                },
            }
        };
        dictionary.Initialize(new SystemTime());
        dictionary.Validate();

        //Fake cached values!
        allRepositories.Cache.UpdateCache(new List<SourceItem>
        {
            SourceItem.FromName("First"), SourceItem.FromName("Second"), SourceItem.FromName("With space"), SourceItem.FromName("release/v1.16.26")
        }, "");
        dictionarySuggester = new DictionarySuggester(dictionary);
    }
    
    [Theory]
    [InlineData(new string[] { "git" }, new[] { "git commit", "git checkout", "git dummy", "git --help" })]
    [InlineData(new string[] { "git", "c" }, new[] { "git commit", "git checkout" })]
    [InlineData(new string[] { "git", "commit" }, new[] { "git commit --message", "git commit --verbose", "git commit --squash", "git commit --cleanup", "git commit --", "git commit --help" })]
    [InlineData(new string[] { "git", "commit", "--me" }, new[] { "git commit --message" })]
    [InlineData(new string[] { "git", "commit", "--message" }, new string[] { })]
    [InlineData(new string[] { "git", "commit", "--message=\"test" }, new string[] { })]

    [InlineData(new string[] { "git", "commit", "-m" }, new string[] { })]
    [InlineData(new string[] { "git", "commit", "-m=\"test" }, new string [] { })]
    [InlineData(new string[] { "git", "commit", "-m=\"test\"" }, new string[] { "git commit -m=\"test\" --verbose", "git commit -m=\"test\" --squash", "git commit -m=\"test\" --cleanup", "git commit -m=\"test\" --", "git commit -m=\"test\" --help" })]
    [InlineData(new string[] { "git", "commit", "-m", "\"test" }, new string [] { })]
    [InlineData(new string[] { "git", "commit", "-m", "\"test\"" }, new[] { "git commit -m \"test\" --verbose", "git commit -m \"test\" --squash", "git commit -m \"test\" --cleanup", "git commit -m \"test\" --", "git commit -m \"test\" --help" })]
    [InlineData(new string[] { "git", "commit", "-m", "\"test\"", "-" }, new[] { "git commit -m \"test\" --verbose", "git commit -m \"test\" --squash", "git commit -m \"test\" --cleanup", "git commit -m \"test\" --", "git commit -m \"test\" --help" })]
    [InlineData(new string[] { "git", "commit", "-" }, new string[] { "git commit --message", "git commit --verbose", "git commit --squash", "git commit --cleanup", "git commit --", "git commit --help" })]
    [InlineData(new string[] { "git", "commit", "--" }, new string[] { "git commit --message", "git commit --verbose", "git commit --squash", "git commit --cleanup", "git commit --", "git commit --help" }, Skip = "Current implementation does not support this yet")]

    [InlineData(new string[] { "git", "commit", "--cleanup" }, new string[] { "git commit --cleanup strip", "git commit --cleanup default" })]
    [InlineData(new string[] { "git", "commit", "--cleanup", "s" }, new string[] { "git commit --cleanup strip" })]
    [InlineData(new string[] { "git", "commit", "--cleanup=s" }, new string[] { "git commit --cleanup=strip" })]
    [InlineData(new string[] { "git", "commit", "--cleanup=\"strip" }, new string[] { "git commit --cleanup=\"strip\"" })]
    [InlineData(new string[] { "git", "commit", "--cleanup='strip" }, new string[] { "git commit --cleanup='strip'" })]

    [InlineData(new string[] { "git", "checkout" }, new string[] { "git checkout --quite", "git checkout First", "git checkout Second", "git checkout \"With space\"", "git checkout release/v1.16.26", "git checkout --help" })]
    [InlineData(new string[] { "git", "checkout", "F" }, new string[] { "git checkout First" })]
    [InlineData(new string[] { "git", "checkout", "First" }, new string[] { "git checkout First --quite", "git checkout First --help" }, Skip = "Current implementation does not support this yet")]
    [InlineData(new string[] { "git", "checkout", "W" }, new string[] { "git checkout \"With space\"" })]
    [InlineData(new string[] { "git", "checkout", "\"F" }, new string[] { "git checkout \"First\"" })]
    [InlineData(new string[] { "git", "checkout", "'F" }, new string[] { "git checkout 'First'" })]
    [InlineData(new string[] { "git", "checkout", "i" }, new string[] { "git checkout --quite", "git checkout First", "git checkout \"With space\"" })]
    [InlineData(new string[] { "git", "checkout", "16" }, new string[] { "git checkout release/v1.16.26" })]

    [InlineData(new string[] { "git", "dummy", "First" }, new string[] { "git dummy First simple", "git dummy First complex" }, Skip = "The current implementation does not support this yet")]

    [InlineData(new string[] { "git", "unknown" }, new string[] { })]
    [InlineData(new string[] { "git", "unknown", "c" }, new[] { "git unknown commit", "git unknown checkout" })] //ignore unknown parameters
    public void TestParsing(string[] input, string[] expectedOutput)
    {
        var context = new DictionaryParsingContext("", input.Select(x => PowerShellString.FromEscapedSmart(x)));
        context.Command = new Command("git", null!);
        var result = dictionarySuggester.GetPredictions(context).Select(x => x.SuggestionText);
        result.Should().BeEquivalentTo(expectedOutput);
    }
}

