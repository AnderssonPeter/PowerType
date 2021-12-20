using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using PowerType.Model;
using Xunit;

namespace PowerType.Tests;

public class CacheTests
{
    [InlineData(false, false, false)]
    [InlineData(false, true, true)]
    [InlineData(true, false, true)]
    [InlineData(true, true, true)]
    [Theory]
    public void Validate(bool byTime, bool byCurrentWorkingDirectory, bool valid)
    {
        var cache = new Cache();
        cache.ByTime = byTime ? TimeSpan.FromSeconds(1) : null;
        cache.ByCurrentWorkingDirectory = byCurrentWorkingDirectory;
        cache.Initialize(new SystemTimeMock(DateTime.Today));
        var action = () => cache.Validate();
        if (valid)
        {
            action.Should().NotThrow();
        }
        else
        {
            action.Should().Throw<ArgumentException>();
        }
    }

    [Fact]
    public void ValidateMissingSystemTime()
    {
        var cache = new Cache();
        var action = () => cache.Validate();
        action.Should().Throw<ArgumentNullException>();
    }

    public static IEnumerable<object?[]> GetShouldUpdateData()
    {
        yield return new object?[] {
            TimeSpan.FromMilliseconds(100), false,
            new List<(TimeSpan delayTime, string currentWorkingDirectory, bool shouldUpdate)>
            {
                (TimeSpan.FromMilliseconds(50), string.Empty, false),
                (TimeSpan.FromMilliseconds(60), string.Empty, true)
            }
        };

        yield return new object?[] {
            null, true,
            new List<(TimeSpan delayTime, string currentWorkingDirectory, bool shouldUpdate)>
            {
                (TimeSpan.Zero, "one", true),
                (TimeSpan.Zero, "one", false),
                (TimeSpan.Zero, "two", true),
                (TimeSpan.Zero, "two", false),
                (TimeSpan.Zero, "one", true)
            }
        };

        yield return new object?[] {
            TimeSpan.FromMilliseconds(100), true,
            new List<(TimeSpan delayTime, string currentWorkingDirectory, bool shouldUpdate)>
            {
                (TimeSpan.FromMilliseconds(10), "one", true),
                (TimeSpan.FromMilliseconds(10), "two", true),
                (TimeSpan.FromMilliseconds(10), "two", false),
                (TimeSpan.FromMilliseconds(100), "two", true)
            }
        };
    }        

    [MemberData(nameof(GetShouldUpdateData))]
    [Theory]
    public void ShouldUpdate(TimeSpan? byTime, bool byCurrentWorkingDirectory, IEnumerable<(TimeSpan delayTime, string currentWorkingDirectory, bool shouldUpdate)> actions)
    {
        var cache = new Cache
        {
            ByTime = byTime,
            ByCurrentWorkingDirectory = byCurrentWorkingDirectory
        };
        var systemTime = new SystemTimeMock(DateTime.Today);
        cache.Initialize(systemTime);
        cache.UpdateCache(new List<SourceItem> { }, string.Empty);
        foreach (var (delayTime, currentWorkingDirectory, shouldUpdate) in actions)
        {
            systemTime.Advance(delayTime);
            var result = cache.ShouldUpdate(currentWorkingDirectory);
            if (result)
            {
                cache.UpdateCache(new List<SourceItem> { }, currentWorkingDirectory);
            }
            
            result.Should().Be(shouldUpdate);
        }
    }
}
