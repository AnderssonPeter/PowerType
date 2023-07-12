﻿using PowerType.BackgroundProcessing;
using PowerType.Parsing;
using System.Diagnostics;
using System.Management.Automation.Language;
using System.Management.Automation.Subsystem.Prediction;

namespace PowerType;

public sealed class PowerTypePredictor : ICommandPredictor, IDisposable
{
    //Ugly hack to allow cmdlets access the instance after it has been created
    public static volatile PowerTypePredictor? Instance;

    internal ExecutionEngine ExecutionEngine { get; }
    internal PowerTypePredictionSummaryCollector PredictionSummaryCollector { get; }
    public string Description => "Provides suggestions for common command tools";

    public Guid Id => Identifier;

    internal static readonly Guid Identifier = new("2ceecb5e-697d-4d0f-a32f-261cd3635a9f");
    private readonly ICurrentWorkingDirectoryProvider currentWorkingDirectoryProvider;

    public string Name => "PowerType";

    public PowerTypePredictor(ICurrentWorkingDirectoryProvider currentWorkingDirectoryProvider, IEnumerable<string> dictionaryFiles)
    {
        ExecutionEngine = new ExecutionEngine();
        ExecutionEngine.Start();
        PredictionSummaryCollector = new PowerTypePredictionSummaryCollector();
        foreach (var dictionaryFile in dictionaryFiles)
        {
            ExecutionEngine.InitialDictionary(dictionaryFile);
        }

        this.currentWorkingDirectoryProvider = currentWorkingDirectoryProvider;
    }

    public bool CanAcceptFeedback(PredictionClient client, PredictorFeedbackKind feedback) => feedback == PredictorFeedbackKind.CommandLineExecuted;

    private static string ConstructCommandPrefix(CommandAst commandAst)
    {
        if (commandAst?.Parent?.Parent is PipelineChainAst pipelineChainAst && pipelineChainAst.Operator == TokenKind.AndAnd)
        {
            return pipelineChainAst.LhsPipelineChain.ToString() + " && ";
        }
        return string.Empty;
    }

    public SuggestionPackage GetSuggestion(PredictionClient client, PredictionContext context, CancellationToken cancellationToken)
    {
        var when = DateTime.Now;
        var watch = Stopwatch.StartNew();
        Exception? exception = null;
        SuggestionPackage suggestionPackage = default;
        try
        {
            var relatedAsts = context.RelatedAsts;
            CommandAst? commandAst = null;

            for (var i = relatedAsts.Count - 1; i >= 0; --i)
            {
                if (relatedAsts[i] is CommandAst c)
                {
                    commandAst = c;
                    break;
                }
            }

            if (commandAst != null)
            {
                var commandName = commandAst.GetCommandName();
                var arguments = commandAst.CommandElements.Select(x => new PowerShellString(x));
                var prefix = ConstructCommandPrefix(commandAst);
                var dictionaryParsingContext = new DictionaryParsingContext(prefix, arguments);
                var result = GetSuggestions(dictionaryParsingContext).ToList();
                if (result.Count > 0)
                {
                    suggestionPackage = new SuggestionPackage(result);
                }
            }
        }
        catch (Exception ex)
        {
            exception = ex;
        }
        watch.Stop();
        if (exception != null || suggestionPackage.SuggestionEntries != null)
        {
            this.PredictionSummaryCollector.Add(when, context, exception, suggestionPackage, watch.Elapsed);
        }
        return suggestionPackage;
    }

    private IEnumerable<PredictiveSuggestion> GetSuggestions(DictionaryParsingContext dictionaryParsingContext)
    {
        if (!dictionaryParsingContext.HasValue)
        {
            yield break;
        }
        var commandName = dictionaryParsingContext.CurrentArgument;
        if (dictionaryParsingContext.Arguments.Count == 1)
        {
            foreach (var result in GetDictrionaryPredictons(commandName))
            {
                yield return result;
            }
        }
        if (TryGetSuggester(commandName, out var key, out var suggester))
        {
            dictionaryParsingContext.Command = new Parsing.Command(key, suggester.Dictionary);
            ExecutionEngine.Cache(suggester.Dictionary, currentWorkingDirectoryProvider.CurrentWorkingDirectory);
            foreach (var result in suggester.GetPredictions(dictionaryParsingContext))
            {
                yield return result;
            }
        }
    }

    private bool TryGetSuggester(PowerShellString command, out string key, out DictionarySuggester suggester)
    {
        var suggesters = ExecutionEngine.GetSuggesters();
        foreach (var innerSuggester in suggesters)
        {
            foreach (var suggesterKey in innerSuggester.Keys)
            {
                if (suggesterKey.Equals(command.RawValue, StringComparison.OrdinalIgnoreCase))
                {
                    key = suggesterKey;
                    suggester = innerSuggester;
                    return true;
                }
            }
        }
        key = null!;
        suggester = null!;
        return false;
    }

    private IEnumerable<PredictiveSuggestion> GetDictrionaryPredictons(PowerShellString commandName)
    {
        var suggesters = ExecutionEngine.GetSuggesters();
        foreach (var suggester in suggesters)
        {
            var key = suggester.Keys.FirstOrDefault(x => x.Contains(commandName.RawValue, StringComparison.OrdinalIgnoreCase));
            if (key != null)
            {
                yield return new PredictiveSuggestion(key, suggester.Description);
            }
        }
    }

    public void OnCommandLineAccepted(PredictionClient client, IReadOnlyList<string> history)
    {
        //This input is not needed
    }

    public void OnCommandLineExecuted(PredictionClient client, string commandLine, bool success)
    {
        //This input is not needed
        //We should use this to update sources!
        if (success)
        {
            var parts = commandLine.Split(' ', 2);
            if (parts.Length == 2)
            {
                var dictinaryIdentifer = PowerShellString.FromRawSmart(parts[0]);
                var command = parts[1];
                if (TryGetSuggester(dictinaryIdentifer, out string _, out var suggester))
                {
                    ExecutionEngine.CommandExecuted(suggester.Dictionary, currentWorkingDirectoryProvider.CurrentWorkingDirectory, command);
                }
            }
        }
    }

    public void OnSuggestionAccepted(PredictionClient client, uint session, string acceptedSuggestion)
    {
        //This input is not needed
    }

    public void OnSuggestionDisplayed(PredictionClient client, uint session, int countOrIndex)
    {
        //This input is not needed
    }

    public void Dispose()
    {
        ExecutionEngine.Stop();
        currentWorkingDirectoryProvider.Dispose();
    }
}
