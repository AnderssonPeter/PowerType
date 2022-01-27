using System.Diagnostics;
using System.Management.Automation.Subsystem.Prediction;

namespace PowerType;

public record struct PowerTypePredictionSummary(DateTime When, string Input, string? TokenAtCursor, Exception? Exception, string[]? Suggestions, TimeSpan Duration);

public class PowerTypePredictionSummaryCollector
{
    private readonly object locker = new ();
    private readonly PowerTypePredictionSummary[] items;
    private int offset = 0;

    public PowerTypePredictionSummaryCollector(int size = 40)
    {
        items = new PowerTypePredictionSummary[size];
    }

    public void Add(DateTime when, PredictionContext predictionContext, Exception? exception, SuggestionPackage suggestionPackage, TimeSpan duration)
    {
        lock (locker)
        {
            var index = offset++ % items.Length;
            items[index] = new PowerTypePredictionSummary(when, predictionContext.InputAst.ToString(), predictionContext.TokenAtCursor?.ToString(), exception, suggestionPackage.SuggestionEntries?.Select(x => x.SuggestionText)?.ToArray(), duration);
        }
    }

    public List<PowerTypePredictionSummary> Get()
    {
        lock (locker)
        {
            return items.Take(Math.Min(offset, items.Length))
                .OrderBy(x => x.When)
                .ToList();
        }
    }
}

