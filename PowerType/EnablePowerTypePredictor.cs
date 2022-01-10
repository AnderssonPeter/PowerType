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
/// <para type="synopsis">Cmdlet to enable PowerType Predictor and start receiving suggestions</para>
/// <para type="description">Use this cmdlet to enable PowerType Predictor and start receiving suggestions</para>
/// </summary>
[Cmdlet("Enable", "PowerType"), OutputType(typeof(bool))]
public class EnablePowerTypePredictor : PowerTypeCmdlet
{
    private const string enableStatement = "Set-PSReadLineOption -PredictionSource Plugin";

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

    /// <summary>
    /// <para type="description">List of dictionaries to load, if not provided all are loaded. </para>
    /// </summary>
    [Parameter(Mandatory = false, HelpMessage = "List of dictionaries to load, if not provided all are loaded.")]
    public string[]? DictionariesToIgnore { get; set; }

    /// <inheritdoc/>
    protected override void ProcessRecord()
    {
        var scriptToRun = new StringBuilder();
        scriptToRun.Append(enableStatement);

        InvokeCommand.InvokeScript(scriptToRun.ToString());

        var currentWorkingDirectoryProvider = new CurrentWorkingDirectoryProvider(SessionState);
        var predictor = new PowerTypePredictor(currentWorkingDirectoryProvider, GetDictionaries());
        SubsystemManager.RegisterSubsystem<ICommandPredictor, PowerTypePredictor>(predictor);
        PowerTypePredictor.Instance = predictor;

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
            UriBuilder uri = new(codeBase);
            return Uri.UnescapeDataString(uri.Path);
        }
    }

    public static string ModuleDirectory => Path.GetDirectoryName(AssemblyPath) ?? throw new Exception("Failed to get ModuleDirectory");

    public static string DictionariesDirectory => Path.Combine(ModuleDirectory, "Dictionaries");

    private IEnumerable<string> GetDictionaries()
    {
        foreach (var dictionaryPath in Directory.EnumerateFiles(DictionariesDirectory, "*.ps1"))
        {
            var filename = Path.GetFileNameWithoutExtension(dictionaryPath);
            if (DictionariesToLoad != null)
            {
                if (DictionariesToLoad.Contains(filename, StringComparer.OrdinalIgnoreCase))
                {
                    yield return filename;
                }
            }
            else if (DictionariesToIgnore != null)
            {
                if (!DictionariesToIgnore.Contains(filename, StringComparer.OrdinalIgnoreCase))
                {
                    yield return filename;
                }
            }
            else
            {
                yield return dictionaryPath;
            }
        }
    }
}
