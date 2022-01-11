using System.Collections.Generic;

namespace PowerType.Model;

public class CommandParameter : Parameter
{
    public List<Parameter> Parameters { get; set; } = new List<Parameter>();

    internal override void Initialize(ISystemTime systemTime)
    {
        base.Initialize(systemTime);
        foreach (var parameter in Parameters)
        {
            parameter.Initialize(systemTime);
        }
    }

    internal override void Validate()
    {
        base.Validate();
        if (Parameters == null)
        {
            throw new ArgumentNullException(nameof(Parameters));
        }
        foreach (var parameter in Parameters)
        {
            parameter.Validate();
        }
    }
}
