# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/tr";
    Keys        = @("tr");
    Name        = "tr";
    Description = "translate or delete characters";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--delete", "-d");
            Name        = "delete characters in SET1, do not translate";
            Description = "delete characters in SET1, do not translate";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--squeeze-repeats", "-s");
            Name        = "replace each sequence of a repeated character";
            Description = "replace each sequence of a repeated character";
        },
        [FlagParameter]@{
            Keys        = @("--truncate-set1", "-t");
            Name        = "first truncate SET1 to length of SET2";
            Description = "first truncate SET1 to length of SET2";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
