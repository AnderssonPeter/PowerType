# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/uniq";
    Keys        = @("uniq");
    Name        = "uniq";
    Description = "report or omit repeated lines";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-D");
            Name        = "print all duplicate lines";
            Description = "print all duplicate lines";
        },
        [ValueParameter]@{
            Keys        = @("--all-repeated");
            Name        = "like -D, but allow separating groups";
            Description = "like -D, but allow separating groups";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--check-chars", "-w");
            Name        = "compare no more than N characters in lines";
            Description = "compare no more than N characters in lines";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--count", "-c");
            Name        = "prefix lines by the number of occurrences";
            Description = "prefix lines by the number of occurrences";
        },
        [ValueParameter]@{
            Keys        = @("--group");
            Name        = "show all items, separating groups with an empty line;";
            Description = "show all items, separating groups with an empty line;";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-i");
            Name        = "ignore differences in case when comparing";
            Description = "ignore differences in case when comparing";
        },
        [FlagParameter]@{
            Keys        = @("--repeated", "-d");
            Name        = "only print duplicate lines, one for each group";
            Description = "only print duplicate lines, one for each group";
        },
        [ValueParameter]@{
            Keys        = @("--skip-chars", "-s");
            Name        = "avoid comparing the first N characters";
            Description = "avoid comparing the first N characters";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--skip-fields", "-f");
            Name        = "avoid comparing the first N fields";
            Description = "avoid comparing the first N fields";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unique", "-u");
            Name        = "only print unique lines";
            Description = "only print unique lines";
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
