namespace PowerType.Model.Conditions;

public class LesserOrEqualCondition : CompareCondition
{
    public LesserOrEqualCondition(object firstValue, object secondValue) : base(firstValue, secondValue)
    {
    }

    protected override bool Evaluate(int value) => value <= 0;
}
