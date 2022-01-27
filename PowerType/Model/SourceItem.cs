using PowerType.Parsing;

namespace PowerType.Model;

public class SourceItem
{
    public string Name { get; set; } = null!;
    public string? Description { get; set; }

    public static SourceItem FromName(string name) => new SourceItem { Name = name };

    public bool IsPartialMatch(PowerShellString value) => Name.Contains(value.RawValue, StringComparison.OrdinalIgnoreCase);
    public bool IsPerfectMatch(PowerShellString value) => Name.Equals(value.RawValue, StringComparison.OrdinalIgnoreCase);
}
