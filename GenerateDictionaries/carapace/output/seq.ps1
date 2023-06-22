# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/seq";
    Keys        = @("seq");
    Name        = "seq";
    Description = "print a sequence of numbers";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--equal-width", "-w");
            Name        = "equalize width by padding with leading zeroes";
            Description = "equalize width by padding with leading zeroes";
        },
        [ValueParameter]@{
            Keys        = @("--format", "-f");
            Name        = "use printf style floating-point FORMAT";
            Description = "use printf style floating-point FORMAT";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--separator", "-s");
            Name        = "use STRING to separate numbers (default: 
)";
            Description = "use STRING to separate numbers (default: 
)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
