# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/head";
    Keys        = @("head");
    Name        = "head";
    Description = "output the first part of files";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--bytes", "-c");
            Name        = "print the first NUM bytes of each file;";
            Description = "print the first NUM bytes of each file;";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--lines", "-n");
            Name        = "print the first NUM lines instead of the first 10;";
            Description = "print the first NUM lines instead of the first 10;";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "never print headers giving file names";
            Description = "never print headers giving file names";
        },
        [FlagParameter]@{
            Keys        = @("--silent");
            Name        = "never print headers giving file names";
            Description = "never print headers giving file names";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "always print headers giving file names";
            Description = "always print headers giving file names";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--zero-terminated", "-z");
            Name        = "line delimiter is NUL, not newline";
            Description = "line delimiter is NUL, not newline";
        }
    )
}
