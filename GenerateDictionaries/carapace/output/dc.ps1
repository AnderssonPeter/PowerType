# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/dc";
    Keys        = @("dc");
    Name        = "dc";
    Description = "an arbitrary precision calculator";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--expression", "-e");
            Name        = "evaluate expression";
            Description = "evaluate expression";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "evaluate contents of file";
            Description = "evaluate contents of file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
