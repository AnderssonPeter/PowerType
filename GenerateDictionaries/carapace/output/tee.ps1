# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/tee";
    Keys        = @("tee");
    Name        = "tee";
    Description = "read from standard input and write to standard output and files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--append", "-a");
            Name        = "append to the given FILEs, do not overwrite";
            Description = "append to the given FILEs, do not overwrite";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-interrupts", "-i");
            Name        = "ignore interrupt signals";
            Description = "ignore interrupt signals";
        },
        [ValueParameter]@{
            Keys        = @("--output-error");
            Name        = "set behavior on write error.";
            Description = "set behavior on write error.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "diagnose errors writing to non pipes";
            Description = "diagnose errors writing to non pipes";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
