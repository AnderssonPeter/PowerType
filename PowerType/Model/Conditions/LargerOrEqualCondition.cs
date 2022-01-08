namespace PowerType.Model.Conditions;

public class LargerOrEqualCondition : CompareCondition
{
    public LargerOrEqualCondition(object firstValue, object secondValue) : base(firstValue, secondValue)
    {
    }

    protected override bool Evaluate(int value) => value >= 0;
}
