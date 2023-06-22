# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.winehq.org/";
    Keys        = @("wine");
    Name        = "wine";
    Description = "run Windows programs on Unix";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "show help";
            Description = "show help";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show version";
            Description = "show version";
        }
    )
}
