# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/unexpand";
    Keys        = @("unexpand");
    Name        = "unexpand";
    Description = "convert spaces to tabs";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "convert all blanks, instead of just initial blanks";
            Description = "convert all blanks, instead of just initial blanks";
        },
        [FlagParameter]@{
            Keys        = @("--first-only");
            Name        = "convert only leading sequences of blanks (overrides -a)";
            Description = "convert only leading sequences of blanks (overrides -a)";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--tabs", "-t");
            Name        = "have tabs N characters apart instead of 8 (enables -a) or use comma separated list of tab positions";
            Description = "have tabs N characters apart instead of 8 (enables -a) or use comma separated list of tab positions";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
