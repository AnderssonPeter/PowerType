# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/expand";
    Keys        = @("expand");
    Name        = "expand";
    Description = "convert tabs to spaces";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--initial", "-i");
            Name        = "do not convert tabs after non blanks";
            Description = "do not convert tabs after non blanks";
        },
        [ValueParameter]@{
            Keys        = @("--tabs", "-t");
            Name        = "have tabs N characters apart, not 8. use comma separated list of tab positions";
            Description = "have tabs N characters apart, not 8. use comma separated list of tab positions";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
