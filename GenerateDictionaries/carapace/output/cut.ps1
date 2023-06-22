# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/cut";
    Keys        = @("cut");
    Name        = "cut";
    Description = "remove sections from each line of files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-M");
            Name        = "from first to M'th (included) byte, character or field";
            Description = "from first to M'th (included) byte, character or field";
        },
        [ValueParameter]@{
            Keys        = @("--bytes", "-b");
            Name        = "select only these bytes";
            Description = "select only these bytes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--characters", "-c");
            Name        = "select only these characters";
            Description = "select only these characters";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--complement");
            Name        = "complement the set of selected bytes, characters";
            Description = "complement the set of selected bytes, characters";
        },
        [ValueParameter]@{
            Keys        = @("--delimiter", "-d");
            Name        = "use DELIM instead of TAB for field delimiter";
            Description = "use DELIM instead of TAB for field delimiter";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fields", "-f");
            Name        = "select only these fields;  also print any line";
            Description = "select only these fields;  also print any line";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "(ignored)";
            Description = "(ignored)";
        },
        [FlagParameter]@{
            Keys        = @("--only-delimited", "-s");
            Name        = "do not print lines not containing delimiters";
            Description = "do not print lines not containing delimiters";
        },
        [ValueParameter]@{
            Keys        = @("--output-delimiter");
            Name        = "use STRING as the output delimiter";
            Description = "use STRING as the output delimiter";
            # Source = $?? # todo: Fix or remove this!
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
