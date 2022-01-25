using System.Management.Automation;

namespace PowerType;

/// <summary>
/// <para type="synopsis">Cmdlet to disable PowerType Predictor and start receiving suggestions</para>
/// <para type="description">Use this cmdlet to disable PowerType Predictor and start receiving suggestions</para>
/// </summary>
[Cmdlet("Get", "PowerTypeHistory"), OutputType(typeof(bool))]
public class GetPowerTypeHistory : PowerTypeCmdlet
{
    /// <summary>
    /// <para type="description">Indicates whether the user would like to receive output. </para>
    /// </summary>
    [Parameter(Mandatory = false, HelpMessage = "Only return rows with exceptions")]
    public SwitchParameter OnlyErrors { get; set; }

    /// <inheritdoc/>
    protected override void ProcessRecord()
    {
        var instance = PowerTypePredictor.Instance;
        if (instance == null)
        {
            throw new InvalidOperationException("Please call 'Enable-PowerTypePredictor' first");
        }
        this.WriteObject(instance.PredictionSummaryCollector.Get().Where(x => !OnlyErrors.IsPresent || x.Exception != null));
    }
}

