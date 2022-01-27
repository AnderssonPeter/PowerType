namespace PowerType.Model;

public class PowerTypeDictionary
{
    public PowerTypeDictionary()
    {

    }

    public List<string> Keys { get; set; } = null!;
    public Platforms Platforms { get; set; }
    public string Name { get; set; } = null!;
    public string Description { get; set; } = string.Empty;
    public List<Parameter> Parameters { get; set; } = null!;
    public string Url { get; set; } = null!;
    public DictionaryState State { get; set; }
    public Version? Version { get; set; }
    public string Source { get; set; } = null!;


    internal void Initialize(ISystemTime systemTime)
    {
        if (Parameters != null)
        {
            foreach (var parameter in Parameters)
            {
                parameter.Initialize(systemTime);
            }
        }
    }

    internal void Validate()
    {
        if (Keys == null || Keys.Count == 0)
        {
            throw new ArgumentNullException(nameof(Keys));
        }

        if (Platforms == 0)
        {
            throw new ArgumentNullException(nameof(Platforms));
        }

        if (string.IsNullOrEmpty(Name))
        {
            throw new ArgumentNullException(nameof(Name));
        }
        if (Parameters == null || Parameters.Count == 0)
        {
            throw new ArgumentNullException(nameof(Parameters));
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

        foreach (var parameter in Parameters)
        {
            parameter.Validate();
        }
    }
}
