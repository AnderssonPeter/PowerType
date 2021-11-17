using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Management.Automation;
using System.Management.Automation.Subsystem;
using System.Management.Automation.Subsystem.Prediction;
using System.Reflection;
using System.Text;

namespace PowerType;

/// <summary>
/// <para type="synopsis">Cmdlet to enable Az Predictor and start receiving suggestions</para>
/// <para type="description">Use this cmdlet to enable Az Predictor and start receiving suggestions</para>
/// </summary>
[Cmdlet("Enable", "PowerType"), OutputType(typeof(bool))]
public class EnablePowerTypePredictor : PowerTypeCmdlet
{
    private static readonly string enableStatement = "Set-PSReadLineOption -PredictionSource Plugin";


    /// <summary>
    /// <para type="description">Indicates whether the user would like to receive output. </para>
    /// </summary>
    [Parameter(Mandatory = false, HelpMessage = "Indicates whether the user would like to receive output.")]
    public SwitchParameter PassThru { get; set; }


    /// <summary>
    /// <para type="description">Lazy load prediction dictionaries. </para>
    /// </summary>
    [Parameter(Mandatory = false, HelpMessage = "Lazy load prediction dictionaries.")]
    public SwitchParameter LazyLoad { get; set; }

    /// <summary>
    /// <para type="description">List of dictionaries to load, if not provided all are loaded. </para>
    /// </summary>
    [Parameter(Mandatory = false, HelpMessage = "List of dictionaries to load, if not provided all are loaded.")]
    public string[]? DictionariesToLoad { get; set; }


    /// <inheritdoc/>
    protected override void ProcessRecord()
    {
        var scriptToRun = new StringBuilder();
        var _ = scriptToRun.Append(EnablePowerTypePredictor.enableStatement);

        InvokeCommand.InvokeScript(scriptToRun.ToString());

        var suggestors = LoadDictionaries();


        var predictor = new PowerTypePredictor(suggestors);
        SubsystemManager.RegisterSubsystem<ICommandPredictor, PowerTypePredictor>(predictor);

        if (PassThru.IsPresent)
        {
            WriteObject(true);
        }
    }

    public static string AssemblyPath
    {
        get
        {
            string codeBase = Assembly.GetExecutingAssembly().Location;
            UriBuilder uri = new UriBuilder(codeBase);
            return Uri.UnescapeDataString(uri.Path);;
        }
    }

    public static string ModuleDirectory => Path.GetDirectoryName(AssemblyPath) ?? throw new Exception("Failed to get ModuleDirectory");

    public static string DictionariesDirectory => Path.Combine(ModuleDirectory, "Dictionaries");

    private IEnumerable<ISuggestor> LoadDictionaries()
    {
        WriteDebug($"Loading dictionaries");
        foreach (var dictionaryPath in Directory.EnumerateFiles(DictionariesDirectory, "*.ps1"))
        {
            WriteDebug($"Loading {dictionaryPath}");
            var script = ScriptBlock.Create($"using namespace PowerType.Model\n{dictionaryPath}");
            var watch = Stopwatch.StartNew();
            var result = InvokeCommand.InvokeScript(true, script, new List<object>());
            var suggestor = result.Select(x => x.BaseObject).Cast<ISuggestor>().Single();
            watch.Stop();
            WriteDebug($"Loaded {dictionaryPath}, {watch.ElapsedMilliseconds} ms");
            yield return suggestor;
        }
    }
}
