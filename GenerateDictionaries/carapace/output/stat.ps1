# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/2/stat";
    Keys        = @("stat");
    Name        = "stat";
    Description = "display file or file system status";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cached");
            Name        = "specify how to use cached attributes;";
            Description = "specify how to use cached attributes;";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dereference", "-L");
            Name        = "follow links";
            Description = "follow links";
        },
        [FlagParameter]@{
            Keys        = @("--file-system", "-f");
            Name        = "display file system status instead of file status";
            Description = "display file system status instead of file status";
        },
        [ValueParameter]@{
            Keys        = @("--format", "-c");
            Name        = "use the specified FORMAT instead of the default;";
            Description = "use the specified FORMAT instead of the default;";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--printf");
            Name        = "like --format, but interpret backslash escapes,";
            Description = "like --format, but interpret backslash escapes,";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--terse", "-t");
            Name        = "print the information in terse form";
            Description = "print the information in terse form";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
