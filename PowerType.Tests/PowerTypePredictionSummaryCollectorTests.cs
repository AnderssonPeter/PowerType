using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation.Subsystem.Prediction;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using Xunit;

namespace PowerType.Tests;

public class PowerTypePredictionSummaryCollectorTests
{

    [Fact]
    public void TestGetOne()
    {
        var collector = new PowerTypePredictionSummaryCollector();
        var suggestionPackage = new SuggestionPackage(new List<PredictiveSuggestion> { new PredictiveSuggestion("git checkout main") });
        collector.Add(DateTime.Now, PredictionContext.Create("git checkout"), null, suggestionPackage, TimeSpan.Zero);
        var result = collector.Get();
        result.Count.Should().Be(1);
    }

    [Fact]
    public void TestGetCap()
    {
        var collector = new PowerTypePredictionSummaryCollector(5);
        for (var i = 0; i < 10; i++)
        {
            var suggestionPackage = new SuggestionPackage(new List<PredictiveSuggestion> { new PredictiveSuggestion("git checkout main") });
            collector.Add(DateTime.Now, PredictionContext.Create("git checkout"), null, suggestionPackage, TimeSpan.Zero);
        }
        var result = collector.Get();
        result.Count.Should().Be(5);
    }
}
