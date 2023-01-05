using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PowerType.Parsing;

namespace PowerType.Model.Conditions;

public class InclusiveParameterCondition : Condition
{
    private readonly string[] parameterNames;

    public InclusiveParameterCondition(params string[] parameterNames)
    {
        if (parameterNames == null)
        {
            throw new ArgumentNullException(nameof(parameterNames));
        }
        else if (parameterNames.Length == 0)
        {
            throw new ArgumentOutOfRangeException(nameof(parameterNames), "Must have at least one name");
        }
        this.parameterNames = parameterNames;
    }

    public override bool Evaluate(Dictionary<string, object> parameters)
    {
        var dictionaryParsingContext = (DictionaryParsingContext)parameters[nameof(DictionaryParsingContext)];
        return dictionaryParsingContext.Parameters.Any(x => parameterNames.Contains(x.Parameter?.Name));
    }
}
