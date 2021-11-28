using PowerType.Parsing;
using System.Management.Automation.Language;
using System.Management.Automation.Subsystem.Prediction;

namespace PowerType;

public sealed class PowerTypePredictor : ICommandPredictor, IDisposable
{
    public string Description => "Provides suggestions for common command tools";

    public Guid Id => Identifier;

    internal static readonly Guid Identifier = new("599d1760-4ee1-4ed2-806e-f2a1b1a0ba4d");

    public string Name => "PowerType";

    public List<ISuggestor> Suggestors { get; }

    public PowerTypePredictor(IEnumerable<ISuggestor> suggestors)
    {
        this.Suggestors = suggestors.ToList();
    }

    public bool CanAcceptFeedback(PredictionClient client, PredictorFeedbackKind feedback)
    {
        return true;
    }

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
            return new SuggestionPackage();
        }
        return new SuggestionPackage(result);
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
            dictionaryParsingContext.Command = new Command(key, suggestor);
            foreach (var result in suggestor.GetPredictions(dictionaryParsingContext))
            {
                yield return result;
            }
        }
    }

    private bool TryGetSuggestor(PowerShellString command, out string key, out ISuggestor suggestor)
    {
        foreach (var innerSuggestor in Suggestors)
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
        foreach(var suggestor in Suggestors)
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
    }

    public void OnCommandLineExecuted(PredictionClient client, string commandLine, bool success)
    {
    }

    public void OnSuggestionAccepted(PredictionClient client, uint session, string acceptedSuggestion)
    {
    }

    public void OnSuggestionDisplayed(PredictionClient client, uint session, int countOrIndex)
    {
    }

    public void Dispose()
    {
    }
}
