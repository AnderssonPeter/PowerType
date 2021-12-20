using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;

namespace PowerType.Model;

public class DynamicSource : Source
{
    public Cache Cache { get; set; } = null!;

    public ScriptBlock CommandExpression { get; set; } = null!;

    internal override IEnumerable<SourceItem> GetItems() =>
        Cache.GetCachedItems();

    internal override void Initialize(ISystemTime systemTime)
    {
        Cache.Initialize(systemTime);
        base.Initialize(systemTime);
    }

    override internal void Validate()
    {
        base.Validate();
        if (CommandExpression == null)
        {
            throw new ArgumentNullException(nameof(CommandExpression));
        }
        if (Cache == null)
        {
            throw new ArgumentNullException(nameof(Cache));
        }
        Cache.Validate();
    }
}
