namespace PowerType.Model.Conditions;

public class LargerOrEqualThanCondition : CompareCondition
{
    public LargerOrEqualThanCondition(object firstValue, object secondValue) : base(firstValue, secondValue)
    {
    }

    protected override bool Evaluate(int value) => value >= 0;
}
