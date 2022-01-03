using System.Collections;

namespace PowerType.Model.Conditions;

public abstract class CompareCondition : Condition
{
    private readonly object firstValue;
    private readonly object secondValue;

    protected CompareCondition(object firstValue, object secondValue)
    {
        this.firstValue = firstValue;
        this.secondValue = secondValue;
    }

    public override bool Evaluate(Dictionary<string, object> parameters)
    {
        var firstValue = ResolveValue(this.firstValue, parameters);
        var secondValue = ResolveValue(this.secondValue, parameters);
        var type = firstValue?.GetType() ?? secondValue?.GetType();
        if (type == null)
            return false;
        var genericType = typeof(System.Collections.Generic.Comparer<>).MakeGenericType(type);

        var comparerProperty = genericType.GetProperty("Default");
        if (comparerProperty == null)
        {
            throw new Exception("Failed to get Default Comparer Property!");
        }
        var comparer = (IComparer?)comparerProperty.GetValue(null);
        if (comparer == null)
        {
            throw new Exception("Failed to get Comparer from property!");
        }
        var result = comparer.Compare(firstValue, secondValue);
        return Evaluate(result);
    }

    protected abstract bool Evaluate(int value);
}
