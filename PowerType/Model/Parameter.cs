using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Management.Automation;
using PowerType.Model.Conditions;
using PowerType.Parsing;

namespace PowerType.Model;

[DebuggerDisplay("{Name}")]
public abstract class Parameter
{
    public List<string> Keys { get; set; } = null!;
    protected virtual bool AllowEmptyKeys => false;
    public string Name { get; set; } = null!;
    public string? Description { get; set; }
    public bool Recursive { get; set; }
    public Condition? Condition { get; set; }

    internal virtual void Initialize(ISystemTime systemTime)
    {
    }

    internal virtual void Validate()
    {
        if (!AllowEmptyKeys && !HasKeys)
        {
            throw new Exception("Parameter must have at least one key");
        }
        if (string.IsNullOrEmpty(Name))
        {
            throw new ArgumentNullException(nameof(Name));
        }
        Condition?.Validate();
    }

    internal bool IsAvailable(DictionaryParsingContext dictionaryParsingContext) =>
        Condition?.Evaluate(new Dictionary<string, object>
        {
            { nameof(DictionaryParsingContext), dictionaryParsingContext },
            { nameof(Parameter), this }
        }) != false;

    internal bool HasKeys => Keys?.Count > 0;

    internal virtual bool IsPerfectKeyMatch(PowerShellString value) => HasKeys && Keys.Exists(key => key.Equals(value.RawValue, StringComparison.OrdinalIgnoreCase));

    internal bool IsPartialKeyMatch(PowerShellString value) => HasKeys && Keys.Exists(key => key.Contains(value.RawValue, StringComparison.OrdinalIgnoreCase));
}
