# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/w";
    Keys        = @("w");
    Name        = "w";
    Description = "Show who is logged on and what they are doing";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--from", "-f");
            Name        = "show remote hostname field";
            Description = "show remote hostname field";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ip-addr", "-i");
            Name        = "display IP address instead of hostname (if possible)";
            Description = "display IP address instead of hostname (if possible)";
        },
        [FlagParameter]@{
            Keys        = @("--no-current", "-u");
            Name        = "ignore current process username";
            Description = "ignore current process username";
        },
        [FlagParameter]@{
            Keys        = @("--no-header", "-h");
            Name        = "do not print header";
            Description = "do not print header";
        },
        [FlagParameter]@{
            Keys        = @("--old-style", "-o");
            Name        = "old style output";
            Description = "old style output";
        },
        [FlagParameter]@{
            Keys        = @("--short", "-s");
            Name        = "short format";
            Description = "short format";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
