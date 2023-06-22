# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/join";
    Keys        = @("join");
    Name        = "join";
    Description = "join lines of two files on a common field";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-1");
            Name        = "join on this FIELD of file 1";
            Description = "join on this FIELD of file 1";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-2");
            Name        = "join on this FIELD of file 2";
            Description = "join on this FIELD of file 2";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-a");
            Name        = "also print unpairable lines from file FILENUM, where";
            Description = "also print unpairable lines from file FILENUM, where";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--check-order");
            Name        = "check that the input is correctly sorted, even";
            Description = "check that the input is correctly sorted, even";
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "replace missing input fields with EMPTY";
            Description = "replace missing input fields with EMPTY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--header");
            Name        = "treat the first line in each file as field headers,";
            Description = "treat the first line in each file as field headers,";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-i");
            Name        = "ignore differences in case when comparing fields";
            Description = "ignore differences in case when comparing fields";
        },
        [ValueParameter]@{
            Keys        = @("-j");
            Name        = "equivalent to '-1 FIELD -2 FIELD'";
            Description = "equivalent to '-1 FIELD -2 FIELD'";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--nocheck-order");
            Name        = "do not check that the input is correctly sorted";
            Description = "do not check that the input is correctly sorted";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "obey FORMAT while constructing output line";
            Description = "obey FORMAT while constructing output line";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "use CHAR as input and output field separator";
            Description = "use CHAR as input and output field separator";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-v");
            Name        = "like -a FILENUM, but suppress joined output lines";
            Description = "like -a FILENUM, but suppress joined output lines";
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
