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
        //Check for duplicate names
        var duplcateNames = Parameters.GroupBy(x => x.Name)
            .Where(x => x.Count() > 1)
            .Select(x => x.Key);
        if (duplcateNames.Any())
        {
            throw new ArgumentOutOfRangeException($"Parameters with duplicate names where found, names: {string.Join(", ", duplcateNames)}");
        }
        //Check for duplicate keys
        var duplicateKeys = Parameters.Where(x => x.HasKeys)
            .SelectMany(x => x.Keys)
            .GroupBy(x => x)
            .Where(x => x.Count() > 1)
            .Select(x => x.Key);

        if (duplicateKeys.Any())
        {
            throw new ArgumentOutOfRangeException($"Parameters with duplicate keys where found, keys: {string.Join(", ", duplicateKeys)}");
        }
    }
}
