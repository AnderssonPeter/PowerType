using System.Collections.Generic;
using System.Management.Automation;
using PowerType.Parsing;

namespace PowerType.Model
{
    public class StaticSource : Source
    {
        public List<SourceItem> Items { get; set; } = null!;

        internal override IEnumerable<SourceItem> GetItems() =>
            Items;

        internal override void Validate()
        {
            if (Items == null || Items.Count == 0)
            {
                throw new ArgumentNullException(nameof(Items));
            }
            base.Validate();
        }
    }
}
