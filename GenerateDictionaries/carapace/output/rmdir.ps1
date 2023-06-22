# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/rmdir";
    Keys        = @("rmdir");
    Name        = "rmdir";
    Description = "remove empty directories";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-fail-on-non-empty");
            Name        = "each failure that is solely because a directory is non-empty";
            Description = "each failure that is solely because a directory is non-empty";
        },
        [FlagParameter]@{
            Keys        = @("--parents", "-p");
            Name        = "remove DIRECTORY and its ancestors";
            Description = "remove DIRECTORY and its ancestors";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "output a diagnostic for every directory processed";
            Description = "output a diagnostic for every directory processed";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
