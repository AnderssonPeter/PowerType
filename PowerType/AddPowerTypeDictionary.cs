using PowerType.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;
using System.Management.Automation.Subsystem;

namespace PowerType;

[Cmdlet(VerbsCommon.Add, "PowerTypeDictionary")]
public class AddPowerTypeDictionary : PowerTypeCmdlet
{
    [Parameter(Mandatory = true)]
    public PowerTypeDictionary Dictionary { get; set; } = null!;

    protected override void ProcessRecord()
    {
        WriteDebug($"Adding {Dictionary.Name}");
        var executionContext = new ExecutionContext(InvokeCommand, SessionState);
        Dictionary.Initialize(executionContext);
        var suggestor = new DictionarySuggestor(Dictionary);
        WriteObject(suggestor);
        base.ProcessRecord();
    }
}
