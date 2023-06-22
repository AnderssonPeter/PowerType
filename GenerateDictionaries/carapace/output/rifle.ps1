# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://ranger.github.io/";
    Keys        = @("rifle");
    Name        = "rifle";
    Description = "ranger's file opener";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "read config from specified file instead of default";
            Description = "read config from specified file instead of default";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "use additional flags";
            Description = "use additional flags";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "list possible ways to open the files";
            Description = "list possible ways to open the files";
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "pick a method to open the files";
            Description = "pick a method to open the files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show program's version number and exit";
            Description = "show program's version number and exit";
        },
        [ValueParameter]@{
            Keys        = @("-w");
            Name        = "open the files with PROGRAM";
            Description = "open the files with PROGRAM";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
