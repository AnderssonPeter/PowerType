using PowerType.Model;
using PowerType.Parsing;
using System.Management.Automation.Language;
using System.Management.Automation.Subsystem.Prediction;

namespace PowerType;

internal class DictionarySuggestor
{
    private readonly List<DynamicSource> dynamicSources;
    public PowerTypeDictionary Dictionary { get; }

    public string Name => Dictionary.Name;

    public string Description => Dictionary.Description;

    public IEnumerable<string> Keys => Dictionary.Keys;

    public bool HasKey(string key) => Keys.Contains(key, StringComparer.OrdinalIgnoreCase);

    public DictionarySuggestor(PowerTypeDictionary dictionary)
    {
        this.Dictionary = dictionary;
        dynamicSources = dictionary.Parameters.SelectMany(p => RecursiveGet(p)).ToList();
    }

    public IEnumerable<DynamicSource> GetDynamicSources() => dynamicSources;

    public static IEnumerable<DynamicSource> RecursiveGet(Parameter parameter)
    {
        if (parameter is ValueParameter valueParameter && valueParameter.Source is DynamicSource dynamicSource)
        {
            yield return dynamicSource;
        }
        else if (parameter is CommandParameter commandParameter)
        {
            foreach (Parameter subParameter in commandParameter.Parameters)
            {
                foreach (DynamicSource dynamicSource2 in RecursiveGet(subParameter))
                {
                    yield return dynamicSource2;
                }
            }
        }
    }

    public IEnumerable<PredictiveSuggestion> GetPredictions(DictionaryParsingContext dictionaryParsingContext) =>
        Parse(Dictionary.Parameters, dictionaryParsingContext, Enumerable.Empty<Parameter>());

    private IEnumerable<PredictiveSuggestion> Parse(IEnumerable<Parameter> parameters, DictionaryParsingContext context, IEnumerable<Parameter> additionalParameters)
    {
        var allParameters = parameters.Union(additionalParameters);
        if (!context.HasValue)
        {
            return GetPartialMatches(context, allParameters, PowerShellString.Empty);
        }
        var currentArgument = context.CurrentArgument;
        //Check if we can find a perfect match
        var perfectMatch = allParameters.FirstOrDefault(parameter => parameter.IsPerfectKeyMatch(currentArgument) && parameter.IsAvailable(context));
        if (perfectMatch != null)
        {
            return GetPerfectMatches(parameters, context, additionalParameters, currentArgument, perfectMatch);
        }
        else if (context.IsLast)
        {
            //Check for partial matches
            return GetPartialMatches(context, allParameters, currentArgument);
        }
        else
        {
            //Failed to find a match add empty to context and try again, skipping this value
            context.Parameters.Add(new ParameterWithValue(currentArgument, null));
            return Parse(parameters, context, additionalParameters);
        }
    }

    private IEnumerable<PredictiveSuggestion> GetPerfectMatches(IEnumerable<Parameter> parameters, DictionaryParsingContext context, IEnumerable<Parameter> additionalParameters, PowerShellString currentArgument, Parameter perfectMatch)
    {
        var repeat = (Parameter perfectMatch) =>
                        Parse(parameters.Where(parameter => parameter != perfectMatch), context, additionalParameters);

        if (perfectMatch is CommandParameter commandParameter)
        {
            var recursiveParameters = parameters.Where(x => x.Recursive).ToList();
            context.Parameters.Add(new ParameterWithValue(currentArgument, perfectMatch));
            return Parse(commandParameter.Parameters, context, additionalParameters.Union(recursiveParameters));
        }
        else if (perfectMatch is ValueParameter valueParameter)
        {
            if (valueParameter.TryGetKeyAndValue(currentArgument, out var key, out PowerShellString value))
            {
                var isDone = IsValueDone(context.IsLast, value);
                context.Parameters.Add(new ParameterWithValue(key, perfectMatch)
                {
                    Value = !isDone ? null : value,
                    UsedEqualSign = true
                });
                if (isDone)
                {
                    return repeat(perfectMatch);
                }
                if (!context.HasValue)
                {
                    if (valueParameter.Source != null)
                    {
                        return GetPartialSourceMatches(context, valueParameter.Source, value);
                    }
                    return Enumerable.Empty<PredictiveSuggestion>();
                }
            }
            else if (context.IsLast)
            {
                context.Parameters.Add(new ParameterWithValue(currentArgument, perfectMatch));
                return GetAllSourceMatches(context, currentArgument, valueParameter);
            }
            else if (context.HasThreeOrMoreLeft)
            {
                context.Parameters.Add(new ParameterWithValue(currentArgument, perfectMatch)
                {
                    Value = context.NextArgument
                });
            }
            else if (context.IsSecondLast)
            {
                var search = context.NextArgument;
                var isDone = IsValueDone(true, search);
                context.Parameters.Add(new ParameterWithValue(currentArgument, perfectMatch)
                {
                    Value = !isDone ? null : search
                });
                if (valueParameter.Source != null)
                {
                    return GetPartialSourceMatches(context, valueParameter.Source, search);
                }
            }
            else
            {
                throw new InvalidOperationException();
                //context.Parameters.Add(new ParameterWithValue(currentArgument, perfectMatch));
            }
        }
        else
        {
            context.Parameters.Add(new ParameterWithValue(currentArgument, perfectMatch));
        }
        //Check for more matches on same level
        return repeat(perfectMatch);
    }

    private static IEnumerable<PredictiveSuggestion> GetAllSourceMatches(DictionaryParsingContext context, PowerShellString currentArgument, ValueParameter valueParameter)
    {
        if (valueParameter.Source != null)
        {
            return valueParameter.Source
                .GetItems()
                .Select(x => new PredictiveSuggestion(context.Reconstruct(GetFromRawWithPreferredType(currentArgument.Type, x.Name)), x.Description));
        }
        return Enumerable.Empty<PredictiveSuggestion>();
    }

    private static IEnumerable<PredictiveSuggestion> GetPartialSourceMatches(DictionaryParsingContext context, Source source, PowerShellString value) => source
                            .GetItems()
                            .Where(x => x.Name.Contains(value.RawValue, StringComparison.OrdinalIgnoreCase))
                            .Select(x => new PredictiveSuggestion(context.Reconstruct(GetFromRawWithPreferredType(value.Type, x.Name)), x.Description));
    private static bool IsValueDone(bool isLast, PowerShellString value) =>
        !isLast || (value.Type != StringConstantType.BareWord && value.IsEscapedOpened() && value.IsEscapedClosed());

    private static IEnumerable<PredictiveSuggestion> GetPartialMatches(DictionaryParsingContext context, IEnumerable<Parameter> parameters, PowerShellString currentArgument)
    {
        foreach (var parameter in parameters)
        {
            if (parameter.IsAvailable(context))
            {
                if (parameter.HasKeys)
                {
                    foreach (var key in parameter.Keys)
                    {
                        if (key.Contains(currentArgument.RawValue, StringComparison.OrdinalIgnoreCase))
                        {
                            yield return new PredictiveSuggestion(context.Reconstruct(key), parameter.Description);
                            break;
                        }
                    }
                }
                else if (parameter is ValueParameter valueParameter && valueParameter.Source != null)
                {
                    foreach (var sourceItem in valueParameter.Source.GetItems().Where(item => item.Name.Contains(currentArgument.RawValue, StringComparison.OrdinalIgnoreCase)))
                    {
                        yield return new PredictiveSuggestion(context.Reconstruct(GetFromRawWithPreferredType(currentArgument.Type, sourceItem.Name)), sourceItem.Description);
                    }
                }
            }
        }
    }

    private static PowerShellString GetFromRawWithPreferredType(StringConstantType preferredType, string rawValue)
    {
        if (preferredType == StringConstantType.BareWord && rawValue.Contains(' '))
        {
            preferredType = StringConstantType.DoubleQuoted;
        }
        return PowerShellString.FromRaw(preferredType, rawValue);
    }
}
