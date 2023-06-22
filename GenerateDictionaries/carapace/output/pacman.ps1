# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.archlinux.de/title/Pacman";
    Keys        = @("pacman");
    Name        = "pacman";
    Description = "package manager utility";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--database", "-D");
            Name        = "Operate on the package database";
            Description = "Operate on the package database";
        },
        [FlagParameter]@{
            Keys        = @("--deptest", "-T");
            Name        = "Check dependencies";
            Description = "Check dependencies";
        },
        [FlagParameter]@{
            Keys        = @("--files", "-F");
            Name        = "Query the files database";
            Description = "Query the files database";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display syntas for the given operation";
            Description = "Display syntas for the given operation";
        },
        [FlagParameter]@{
            Keys        = @("--query", "-Q");
            Name        = "Query the package database";
            Description = "Query the package database";
        },
        [FlagParameter]@{
            Keys        = @("--remove", "-R");
            Name        = "Remove packages from the system";
            Description = "Remove packages from the system";
        },
        [FlagParameter]@{
            Keys        = @("--sync", "-S");
            Name        = "Synchronize packages";
            Description = "Synchronize packages";
        },
        [FlagParameter]@{
            Keys        = @("--upgrade", "-U");
            Name        = "Upgrade or add packages";
            Description = "Upgrade or add packages";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Display version";
            Description = "Display version";
        }
    )
}
