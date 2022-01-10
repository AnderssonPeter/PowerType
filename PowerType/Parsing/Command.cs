using PowerType.Model;

namespace PowerType.Parsing;

public record Command(string Key, PowerTypeDictionary Dictionary)
{
    public int Size { get; set; } = 1;

    public override string ToString() => Key;
}

