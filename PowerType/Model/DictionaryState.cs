namespace PowerType.Model;

[Flags]
public enum DictionaryState
{
    Unknown = 0,
    Generated = 1,
    Experimental = 2,
    Incomplete = 4
}