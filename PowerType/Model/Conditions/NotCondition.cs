namespace PowerType.Model.Conditions;

public class NotCondition : Condition
{
    private readonly Condition condition;

    public NotCondition(Condition condition)
    {
        this.condition = condition;
    }

    public override bool Evaluate(Dictionary<string, object> parameters) =>
        !condition.Evaluate(parameters);
}
