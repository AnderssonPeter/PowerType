# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/jondot/goweight";
    Keys        = @("goweight");
    Name        = "goweight";
    Description = "A tool to analyze and troubleshoot a Go binary size";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Show context-sensitive help";
            Description = "Show context-sensitive help";
        },
        [FlagParameter]@{
            Keys        = @("--json", "-j");
            Name        = "Output json";
            Description = "Output json";
        },
        [ValueParameter]@{
            Keys        = @("--tags");
            Name        = "Build tags";
            Description = "Build tags";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show application version";
            Description = "Show application version";
        }
    )
}
