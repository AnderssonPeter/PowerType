namespace PowerType.Model.Conditions;

public class EqualsCondition : Condition
{
    private readonly object firstValue;
    private readonly object secondValue;

    public EqualsCondition(object firstValue, object secondValue)
    {
        this.firstValue = firstValue;
        this.secondValue = secondValue;
    }

    public override bool Evaluate(Dictionary<string, object> parameters) =>
        Equals(ResolveValue(firstValue, parameters), ResolveValue(secondValue, parameters));
}
