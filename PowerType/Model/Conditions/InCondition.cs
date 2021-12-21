using System.Collections;

namespace PowerType.Model.Conditions;

public class InCondition : Condition
{
    private readonly object? value;
    private readonly object? collection;

    public InCondition(object? value, object? collection)
    {
        this.value = value;
        this.collection = collection;
    }

    public override bool Evaluate(Dictionary<string, object> parameters)
    {
        var value = ResolveValue(this.value, parameters);
        var collection = ResolveValue(this.collection, parameters);
        if (collection is IEnumerable items)
        {
            foreach(var item in items)
            {
                if (Equals(value, item))
                {
                    return true;
                }
            }
        }
        return false;
    }
}
