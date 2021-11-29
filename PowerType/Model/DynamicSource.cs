using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;

namespace PowerType.Model
{
    public class DynamicSource : Source
    {
        IExecutionContext executionContext = null!;

        public ScriptBlock CommandExpression { get; set; } = null!;

        internal override IEnumerable<SourceItem> GetItems() => executionContext.ExecuteQuery<SourceItem>(CommandExpression, null!);

        internal void Initialize(IExecutionContext executionContext)
        {
            this.executionContext = executionContext;
        }

        override internal void Validate()
        {
            base.Validate();
            if (CommandExpression == null)
            {
                throw new ArgumentNullException(nameof(CommandExpression));
            }
        }
    }
}
