using System.Management.Automation;
using PowerType.Model;
using PowerType.Parsing;

namespace PowerType;

internal interface IExecutionContext
{
    IEnumerable<SourceItem> GetDynamicSourceItems(ScriptBlock scriptBlock, DictionaryParsingContext dictionaryParsingContext, Parameter parameter);
    bool GetCondition(ScriptBlock scriptBlock, DictionaryParsingContext dictionaryParsingContext, Parameter parameter);
}
