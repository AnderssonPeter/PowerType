# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/kmonad/kmonad";
    Keys        = @("kmonad");
    Name        = "kmonad";
    Description = "an onion of buttons";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--dry-run", "-d");
            Name        = "only try parsing the config file";
            Description = "only try parsing the config file";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help text";
            Description = "Show this help text";
        },
        [ValueParameter]@{
            Keys        = @("--log-level", "-l");
            Name        = "How much info to print out";
            Description = "How much info to print out";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
