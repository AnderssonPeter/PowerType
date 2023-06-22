# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/rsteube/carapace-bin";
    Keys        = @("carapace");
    Name        = "carapace";
    Description = "multi-shell multi-command argument completer";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for carapace";
            Description = "help for carapace";
        },
        [FlagParameter]@{
            Keys        = @("--list");
            Name        = "list completers";
            Description = "list completers";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "version for carapace";
            Description = "version for carapace";
        }
    )
}
