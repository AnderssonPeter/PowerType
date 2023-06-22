# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/comm";
    Keys        = @("comm");
    Name        = "comm";
    Description = "compare two sorted files line by line";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-1");
            Name        = "suppress column 1 (lines unique to FILE1)";
            Description = "suppress column 1 (lines unique to FILE1)";
        },
        [FlagParameter]@{
            Keys        = @("-2");
            Name        = "suppress column 2 (lines unique to FILE2)";
            Description = "suppress column 2 (lines unique to FILE2)";
        },
        [FlagParameter]@{
            Keys        = @("-3");
            Name        = "suppress column 3 (lines that appear in both files)";
            Description = "suppress column 3 (lines that appear in both files)";
        },
        [FlagParameter]@{
            Keys        = @("--check-order");
            Name        = "check that the input is correctly sorted";
            Description = "check that the input is correctly sorted";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--nocheck-order");
            Name        = "do not check that the input is correctly sorted";
            Description = "do not check that the input is correctly sorted";
        },
        [ValueParameter]@{
            Keys        = @("--output-delimiter");
            Name        = "separate columns with STR";
            Description = "separate columns with STR";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--total");
            Name        = "output a summary";
            Description = "output a summary";
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
