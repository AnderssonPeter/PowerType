# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/dircolors";
    Keys        = @("dircolors");
    Name        = "dircolors";
    Description = "color setup for ls";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--bourne-shell");
            Name        = "output Bourne shell code to set LS_COLORS";
            Description = "output Bourne shell code to set LS_COLORS";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--c-shell");
            Name        = "output C shell code to set LS_COLORS";
            Description = "output C shell code to set LS_COLORS";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--csh,", "-c");
            Name        = "output C shell code to set LS_COLORS";
            Description = "output C shell code to set LS_COLORS";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--print-database", "-p");
            Name        = "output defaults";
            Description = "output defaults";
        },
        [ValueParameter]@{
            Keys        = @("--sh,", "-b");
            Name        = "output Bourne shell code to set LS_COLORS";
            Description = "output Bourne shell code to set LS_COLORS";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
