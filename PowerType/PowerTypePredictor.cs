using PowerType.BackgroundProcessing;
using PowerType.Parsing;
using System.Management.Automation.Language;
using System.Management.Automation.Subsystem.Prediction;

namespace PowerType;

public sealed class PowerTypePredictor : ICommandPredictor, IDisposable
{
    private readonly ExecutionEngine executionEngine;
    public string Description => "Provides suggestions for common command tools";

    public Guid Id => Identifier;

    internal static readonly Guid Identifier = new("599d1760-4ee1-4ed2-806e-f2a1b1a0ba4d");
    private readonly ICurrentWorkingDirectoryProvider currentWorkingDirectoryProvider;

    public string Name => "PowerType";

    public PowerTypePredictor(ICurrentWorkingDirectoryProvider currentWorkingDirectoryProvider, IEnumerable<string> dictionaryFiles)
    {
        executionEngine = new ExecutionEngine();
        executionEngine.Start();
        foreach(var dictionaryFile in dictionaryFiles)
        {
            executionEngine.InitialDictionary(dictionaryFile);
        }

        this.currentWorkingDirectoryProvider = currentWorkingDirectoryProvider;
    }

    public bool CanAcceptFeedback(PredictionClient client, PredictorFeedbackKind feedback) => false;

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

            if (commandAst == null)
            {
                return new SuggestionPackage();
            }

            var commandName = commandAst.GetCommandName();
            var arguments = commandAst.CommandElements.Select(x => new PowerShellString(x));
            var prefix = ConstructCommandPrefix(commandAst);
            var dictionaryParsingContext = new DictionaryParsingContext(prefix, arguments);
            var result = GetSuggestions(dictionaryParsingContext).ToList();
            if (result.Count == 0)
            {
                return default;
            }
            return new SuggestionPackage(result);
        }
        catch (Exception ex)
        {
            Console.WriteLine("input: {0}", context.InputAst);
            Console.WriteLine("exception: {0}", ex);
            return default;
        }
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
        if (TryGetSuggestor(commandName, out var key, out var suggestor))
        {
            dictionaryParsingContext.Command = new Parsing.Command(key, suggestor);
            executionEngine.Cache(suggestor.Dictionary, currentWorkingDirectoryProvider.CurrentWorkingDirectory);
            foreach (var result in suggestor.GetPredictions(dictionaryParsingContext))
            {
                yield return result;
            }
        }
    }

    private bool TryGetSuggestor(PowerShellString command, out string key, out DictionarySuggestor suggestor)
    {
        var suggestors = executionEngine.GetSuggestors();
        foreach (var innerSuggestor in suggestors)
        {
            foreach (var suggestorKey in innerSuggestor.Keys)
            {
                if (suggestorKey.Equals(command.RawValue, StringComparison.OrdinalIgnoreCase))
                {
                    key = suggestorKey;
                    suggestor = innerSuggestor;
                    return true;
                }
            }
        }
        key = null!;
        suggestor = null!;
        return false;
    }

    private IEnumerable<PredictiveSuggestion> GetDictrionaryPredictons(PowerShellString commandName)
    {
        var suggestors = executionEngine.GetSuggestors();
        foreach (var suggestor in suggestors)
        {
            var key = suggestor.Keys.FirstOrDefault(x => x.Contains(commandName.RawValue, StringComparison.OrdinalIgnoreCase));
            if (key != null)
            {
                yield return new PredictiveSuggestion(key, suggestor.Description);
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
        executionEngine.Stop();
        currentWorkingDirectoryProvider.Dispose();
    }
}
