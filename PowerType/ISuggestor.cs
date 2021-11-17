using PowerType.Parsing;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Management.Automation;
using System.Management.Automation.Language;
using System.Management.Automation.Subsystem.Prediction;
using System.Text;
using System.Threading.Tasks;

namespace PowerType;

public interface ISuggestor
{
    public IEnumerable<string> Keys { get; }
    public bool HasKey(string key);
    public string Name { get; }
    public string Description { get; }
    public IEnumerable<PredictiveSuggestion> GetPredictions(DictionaryParsingContext dictionaryParsingContext);
}

