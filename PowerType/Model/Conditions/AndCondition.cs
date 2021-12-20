namespace PowerType.Model.Conditions;

public class AndCondition : Condition
{
    private readonly Condition[] conditions;

    public AndCondition(params Condition[] conditions)
    {
        this.conditions = conditions;
        if (conditions.Length == 0)
        {
            throw new ArgumentOutOfRangeException(nameof(conditions), "Must have at least one sub condition!");
        }
    }
    public override bool Evaluate(Dictionary<string, object> parameters) =>
        conditions.All(x => x.Evaluate(parameters));

}
