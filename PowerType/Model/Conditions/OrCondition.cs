namespace PowerType.Model.Conditions;

public class OrCondition : Condition
{
    private readonly Condition[] conditions;

    public OrCondition(params Condition[] conditions)
    {
        if (conditions.Length == 0)
        {
            throw new ArgumentOutOfRangeException(nameof(conditions), "Must have at least one sub condition!");
        }
        this.conditions = conditions;
    }
    public override bool Evaluate(Dictionary<string, object> parameters) =>
        conditions.Any(x => x.Evaluate(parameters));
}
