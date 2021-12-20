using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using PowerType.Model;
using Xunit;

namespace PowerType.Tests;

public class PowerTypeDictionaryTests
{
    [Fact]
    public void ValidateRootThrow()
    {
        var dictionary = new PowerTypeDictionary();
        var temp = () =>
        {
            dictionary.Initialize(new SystemTimeMock());
            dictionary.Validate();
        };
        temp.Should().Throw<ArgumentNullException>();
    }

    [Fact]
    public void ValidateRoot()
    {
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
                new FlagParameter
                {
                    Keys = new List<string> { "--help", "-h" },
                    Name = "Help"
                }
            }
        };
        dictionary.Initialize(new SystemTimeMock());
        dictionary.Validate();
        
    }
}
