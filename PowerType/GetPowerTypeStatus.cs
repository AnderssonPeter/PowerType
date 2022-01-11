using System.Management.Automation;
using System.Management.Automation.Subsystem;

namespace PowerType;

public record PowerTypeStatus(bool ExecutionEngineIsRunning, Exception? ExecutionEngineException);

/// <summary>
/// <para type="synopsis">Cmdlet to disable PowerType Predictor and start receiving suggestions</para>
/// <para type="description">Use this cmdlet to disable PowerType Predictor and start receiving suggestions</para>
/// </summary>
[Cmdlet("Get", "PowerTypeStatus"), OutputType(typeof(bool))]
public class GetPowerTypeStatus : PowerTypeCmdlet
{
    /// <inheritdoc/>
    protected override void ProcessRecord()
    {
        var instance = PowerTypePredictor.Instance;
        if (instance == null)
        {
            throw new InvalidOperationException("Please call 'Enable-PowerTypePredictor' first");
        }
        this.WriteObject(new PowerTypeStatus(instance.ExecutionEngine.IsHealthy(out Exception? exception), exception));
    }
}