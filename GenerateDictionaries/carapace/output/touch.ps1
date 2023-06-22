# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/touch";
    Keys        = @("touch");
    Name        = "touch";
    Description = "change file timestamps";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "change only the access time";
            Description = "change only the access time";
        },
        [ValueParameter]@{
            Keys        = @("--date", "-d");
            Name        = "parse STRING and use it instead of current time";
            Description = "parse STRING and use it instead of current time";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "(ignored)";
            Description = "(ignored)";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "change only the modification time";
            Description = "change only the modification time";
        },
        [FlagParameter]@{
            Keys        = @("--no-create", "-c");
            Name        = "do not create any files";
            Description = "do not create any files";
        },
        [FlagParameter]@{
            Keys        = @("--no-dereference", "-h");
            Name        = "affect each symbolic link instead of any referenced file";
            Description = "affect each symbolic link instead of any referenced file";
        },
        [ValueParameter]@{
            Keys        = @("--reference", "-r");
            Name        = "use this file's times instead of current time";
            Description = "use this file's times instead of current time";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "use [[CC]YY]MMDDhhmm[.ss] instead of current time";
            Description = "use [[CC]YY]MMDDhhmm[.ss] instead of current time";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time");
            Name        = "change the specified time";
            Description = "change the specified time";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
