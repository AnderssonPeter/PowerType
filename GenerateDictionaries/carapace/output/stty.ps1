# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/stty";
    Keys        = @("stty");
    Name        = "stty";
    Description = "change and print terminal line settings";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "print all current settings in human-readable form";
            Description = "print all current settings in human-readable form";
        },
        [ValueParameter]@{
            Keys        = @("--file", "-F");
            Name        = "open and use the specified DEVICE instead of stdin";
            Description = "open and use the specified DEVICE instead of stdin";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--save", "-g");
            Name        = "print all current settings in a stty-readable form";
            Description = "print all current settings in a stty-readable form";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
