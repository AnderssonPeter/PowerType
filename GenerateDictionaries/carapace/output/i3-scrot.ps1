# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://gitlab.manjaro.org/packages/community/i3/i3-scrot";
    Keys        = @("i3-scrot");
    Name        = "i3-scrot";
    Description = "simple screenshot script";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--desk", "-d");
            Name        = "full screen";
            Description = "full screen";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this information";
            Description = "display this information";
        },
        [FlagParameter]@{
            Keys        = @("--select", "-s");
            Name        = "selection";
            Description = "selection";
        },
        [FlagParameter]@{
            Keys        = @("--window", "-w");
            Name        = "active window";
            Description = "active window";
        }
    )
}
