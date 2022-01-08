namespace PowerType.Model.Conditions;

public class LargerCondition : CompareCondition
{
    public LargerCondition(object firstValue, object secondValue) : base(firstValue, secondValue)
    {
    }

    protected override bool Evaluate(int value) => value > 0;
}
