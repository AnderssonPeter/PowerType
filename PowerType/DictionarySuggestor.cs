using PowerType.Model;
using PowerType.Parsing;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Management.Automation.Language;
using System.Management.Automation.Subsystem.Prediction;
using System.Text;
using System.Threading.Tasks;

namespace PowerType;

internal class DictionarySuggestor : ISuggestor
{
    private readonly PowerTypeDictionary dictionary;

    public string Name => dictionary.Name;

    public string Description => dictionary.Description;

    public IEnumerable<string> Keys => dictionary.Keys;

    public bool HasKey(string key) => Keys.Contains(key, StringComparer.OrdinalIgnoreCase);

    public DictionarySuggestor(PowerTypeDictionary dictionary)
    {
        this.dictionary = dictionary;
    }

    public IEnumerable<PredictiveSuggestion> GetPredictions(DictionaryParsingContext dictionaryParsingContext)
    {
        return Parse(dictionary.Parameters, dictionaryParsingContext, Enumerable.Empty<Parameter>());
    }

    private IEnumerable<PredictiveSuggestion> Parse(IEnumerable<Parameter> parameters, DictionaryParsingContext context, IEnumerable<Parameter> additionalParameters)
    {
        var repeat = (Parameter perfectMatch) =>
            Parse(parameters.Where(parameter => parameter != perfectMatch), context, additionalParameters);

        var allParameters = parameters.Union(additionalParameters);
        if (!context.HasValue)
        {
            //todo: change .First to configuration (longest/shortest)
            return allParameters.Where(x => x.HasKeys).Select(x => new PredictiveSuggestion(context.Reconstruct(PowerShellString.FromRawSmart(x.Keys.First())), x.Description));
        }
        var currentArgument = context.CurrentArgument;
        //Check if we can find a perfect match
        var perfectMatch = allParameters.FirstOrDefault(parameter => parameter.IsPerfectKeyMatch(currentArgument) && parameter.ConditionValue());
        if (perfectMatch != null)
        {
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
                    context.Parameters.Add(new ParameterWithValue(key, perfectMatch)
                    {
                        Value = context.IsLast && !value.IsEscapedClosed() ? null : value,
                        UsedEqualSign = true
                    });
                    if (IsValueDone(value))
                    {
                        return repeat(perfectMatch);
                    }
                    if (!context.HasValue)
                    {
                        if (valueParameter.Source != null)
                        {
                            return valueParameter.Source
                                .GetItems()
                                .Where(x => x.Name.Contains(value.RawValue, StringComparison.OrdinalIgnoreCase))
                                .Select(x => new PredictiveSuggestion(context.Reconstruct(GetFromRawWithPreferredType(value.Type, x.Name)), x.Description));
                        }
                        return Enumerable.Empty<PredictiveSuggestion>();
                    }
                }
                else if (context.IsLast)
                {
                    context.Parameters.Add(new ParameterWithValue(currentArgument, perfectMatch));
                    if (valueParameter.Source != null)
                    {
                        return valueParameter.Source
                            .GetItems()
                            .Select(x => new PredictiveSuggestion(context.Reconstruct(GetFromRawWithPreferredType(currentArgument.Type, x.Name)), x.Description));
                    }
                    return Enumerable.Empty<PredictiveSuggestion>();
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
                    context.Parameters.Add(new ParameterWithValue(currentArgument, perfectMatch));
                    if (valueParameter.Source != null)
                    {
                        return valueParameter.Source
                            .GetItems()
                            .Where(x => x.Name.Contains(search.RawValue, StringComparison.OrdinalIgnoreCase))
                            .Select(x => new PredictiveSuggestion(context.Reconstruct(GetFromRawWithPreferredType(currentArgument.Type, x.Name)), x.Description));
                    }
                    return Enumerable.Empty<PredictiveSuggestion>();
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

    private bool IsValueDone(PowerShellString value)
    {
        return value.IsEscapedOpened() && value.IsEscapedClosed();
    }

    private IEnumerable<PredictiveSuggestion> GetPartialMatches(DictionaryParsingContext context, IEnumerable<Parameter> parameters, PowerShellString currentArgument)
    {
        foreach (var parameter in parameters)
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

    private PowerShellString GetFromRawWithPreferredType(StringConstantType preferredType, string rawValue)
    {
        if (preferredType == StringConstantType.BareWord && rawValue.Contains(' '))
        {
            preferredType = StringConstantType.DoubleQuoted;
        }
        return PowerShellString.FromRaw(preferredType, rawValue);
    }
}
