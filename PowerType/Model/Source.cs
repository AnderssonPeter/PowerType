using System.Collections.Generic;
using System.Management.Automation;

namespace PowerType.Model
{
    public abstract class Source
    {
        public string Name { get; set; } = null!;
        public string? Description { get; set; }
        internal abstract IEnumerable<SourceItem> GetItems();

        internal virtual void Validate()
        {
            if (string.IsNullOrEmpty(Name))
            {
                throw new ArgumentNullException(nameof(Name));
            }
        }
    }
}
