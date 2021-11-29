using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Management.Automation;
using PowerType.Parsing;

namespace PowerType.Model
{
    [DebuggerDisplay("{Name}")]
    public abstract class Parameter
    {
        private IExecutionContext executionContext = null!;
        public List<string> Keys { get; set; } = null!;
        public string Name { get; set; } = null!;
        public string? Description { get; set; }
        public bool Recursive { get; set; }
        public ScriptBlock? ConditionExpression { get; set; }

        internal virtual void Initialize(IExecutionContext executionContext)
        {
            this.executionContext = executionContext;
            Validate();
        }

        protected virtual void Validate()
        {
            if (this is not ValueParameter && !HasKeys)
            {
                throw new Exception("Parameter must have at least one key");
            }
            if (string.IsNullOrEmpty(Name))
            {
                throw new ArgumentNullException(nameof(Name));
            }
        }

        internal bool Condition() => ConditionExpression == null || executionContext.ExecuteValue<bool>(ConditionExpression, null!);

        internal bool HasKeys => Keys != null && Keys.Count > 0;

        internal virtual bool IsPerfectKeyMatch(PowerShellString value) => HasKeys && Keys.Exists(key => key.Equals(value.RawValue, StringComparison.OrdinalIgnoreCase));

        internal bool IsPartialKeyMatch(PowerShellString value) => HasKeys && Keys.Exists(key => key.Contains(value.RawValue, StringComparison.OrdinalIgnoreCase));
    }
}
