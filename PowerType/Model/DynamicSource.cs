using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;

namespace PowerType.Model
{
    public class DynamicSource : Source
    {
        IExecutionContext executionContext = null!;

        public ScriptBlock Command { get; set; } = null!;

        internal override IEnumerable<SourceItem> GetItems() => executionContext.ExecuteQuery<SourceItem>(Command, null!);

        internal void Initialize(IExecutionContext executionContext)
        {
            this.executionContext = executionContext;
        }

        override internal void Validate()
        {
            base.Validate();
            if (Command == null)
            {
                throw new ArgumentNullException(nameof(Command));
            }
        }
    }
}
