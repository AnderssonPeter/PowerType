# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/fold";
    Keys        = @("fold");
    Name        = "fold";
    Description = "wrap each input line to fit in specified width";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--bytes", "-b");
            Name        = "count bytes rather than columns";
            Description = "count bytes rather than columns";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--spaces", "-s");
            Name        = "break at spaces";
            Description = "break at spaces";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--width", "-w");
            Name        = "use WIDTH columns instead of 80";
            Description = "use WIDTH columns instead of 80";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
