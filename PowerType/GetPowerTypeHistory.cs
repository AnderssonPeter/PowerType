using System.Management.Automation;

namespace PowerType;

/// <summary>
/// <para type="synopsis">Cmdlet to disable PowerType Predictor and start receiving suggestions</para>
/// <para type="description">Use this cmdlet to disable PowerType Predictor and start receiving suggestions</para>
/// </summary>
[Cmdlet("Get", "PowerTypeHistory"), OutputType(typeof(bool))]
public class GetPowerTypeHistory : PowerTypeCmdlet
{
    /// <inheritdoc/>
    protected override void ProcessRecord()
    {
        var instance = PowerTypePredictor.Instance;
        if (instance == null)
        {
            throw new InvalidOperationException("Please call 'Enable-PowerTypePredictor' first");
        }
        this.WriteObject(instance.PredictionSummaryCollector.Get());
    }
}

