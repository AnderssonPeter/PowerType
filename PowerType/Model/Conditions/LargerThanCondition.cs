namespace PowerType.Model.Conditions;

public class LargerThanCondition : CompareCondition
{
    public LargerThanCondition(object firstValue, object secondValue) : base(firstValue, secondValue)
    {
    }

    protected override bool Evaluate(int value) => value > 0;
}
