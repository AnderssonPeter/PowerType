using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;
using System.Text;
using System.Threading.Tasks;

namespace PowerType;

public abstract class PowerTypeCmdlet : PSCmdlet
{

#if DEBUG
    /// <inheritdoc/>
    protected override void BeginProcessing()
    {
        var invocation = MyInvocation;
        var command = invocation.MyCommand;
        var parameters = new StringBuilder("{");

        foreach (var parameter in invocation.BoundParameters)
        {
            parameters.Append($"{parameter.Key}: {parameter.Value},");
        }

        if (parameters.Length > 1)
        {
            parameters.Remove(parameters.Length - 1, 1);
        }

        parameters.Append("}");
        WriteDebug($"command name: {command.Name}, parameters: {parameters}");
        base.BeginProcessing();
    }
#endif
}

