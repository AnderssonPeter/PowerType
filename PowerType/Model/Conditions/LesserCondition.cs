namespace PowerType.Model.Conditions;

public class LesserCondition : CompareCondition
{
    public LesserCondition(object firstValue, object secondValue) : base(firstValue, secondValue)
    {
    }

    protected override bool Evaluate(int value) => value < 0;
}
