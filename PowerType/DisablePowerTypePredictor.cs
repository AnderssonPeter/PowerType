using System.Management.Automation;
using System.Management.Automation.Subsystem;
using System.Management.Automation.Subsystem.Prediction;

namespace PowerType;

/// <summary>
/// <para type="synopsis">Cmdlet to enable Az Predictor and start receiving suggestions</para>
/// <para type="description">Use this cmdlet to enable Az Predictor and start receiving suggestions</para>
/// </summary>
[Cmdlet("Disable", "PowerType"), OutputType(typeof(bool))]
public class DisablePowerTypePredictor : PowerTypeCmdlet
{
    /// <summary>
    /// <para type="description">Indicates whether the user would like to receive output. </para>
    /// </summary>
    [Parameter(Mandatory = false, HelpMessage = "Indicates whether the user would like to receive output.")]
    public SwitchParameter PassThru { get; set; }

    /// <inheritdoc/>
    protected override void ProcessRecord()
    {
        SubsystemManager.UnregisterSubsystem<ICommandPredictor>(PowerTypePredictor.Identifier);
    }
}

