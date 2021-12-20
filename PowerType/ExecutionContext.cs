using System.Diagnostics;
using System.Linq;
using System.Management.Automation;
using PowerType.Model;
using PowerType.Parsing;

namespace PowerType;

internal class ExecutionContext : IExecutionContext
{
    private readonly CommandInvocationIntrinsics commandInvocationIntrinsics;
    private readonly SessionState sessionState;

    public ExecutionContext(CommandInvocationIntrinsics commandInvocationIntrinsics, SessionState sessionState)
    {
        this.commandInvocationIntrinsics = commandInvocationIntrinsics;
        this.sessionState = sessionState;
    }

    private IEnumerable<PSObject> ExecuteQuery(ScriptBlock scriptBlock, DictionaryParsingContext dictionaryParsingContext, Parameter parameter)
    {
        try
        {

            var stopwatch = Stopwatch.StartNew();
            var result = scriptBlock.Invoke();
            /*var result = commandInvocationIntrinsics.InvokeScript(sessionState, scriptBlock, new
            {
                dictionaryParsingContext,
                parameter
            });*/
            //var result = commandInvocationIntrinsics.InvokeScript(true, command, new List<object>());
            stopwatch.Stop();


            return result;
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        finally
        {
            Console.WriteLine("done");
        }
        return Enumerable.Empty<PSObject>();
    }

    public bool GetCondition(ScriptBlock scriptBlock, DictionaryParsingContext dictionaryParsingContext, Parameter parameter) =>
        ExecuteQuery(scriptBlock, dictionaryParsingContext, parameter).Select(item => (bool)item.BaseObject).Single();

    public IEnumerable<SourceItem> GetDynamicSourceItems(ScriptBlock command, DictionaryParsingContext dictionaryParsingContext, Parameter parameter) =>
        ExecuteQuery(command, dictionaryParsingContext, parameter).Select(item => item.BaseObject is string ? new SourceItem { Name = (string)item.BaseObject } : (SourceItem)item.BaseObject);
}
