namespace PowerType.Model;

public class SourceItem
{
    public string Name { get; set; } = null!;
    public string? Description { get; set; }

    public static SourceItem FromName(string name) => new SourceItem { Name = name };
}
