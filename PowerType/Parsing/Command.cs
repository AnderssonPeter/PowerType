namespace PowerType.Parsing;

public record Command(string Key, ISuggestor Suggestor)
{
    public int Size { get; set; } = 1;

    public override string ToString() => Key;
}

