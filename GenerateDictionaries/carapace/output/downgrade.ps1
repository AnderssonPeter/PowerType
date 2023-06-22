# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/pbrisbin/downgrade";
    Keys        = @("downgrade");
    Name        = "downgrade";
    Description = "Downgrade Arch Linux packages";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--ala-only");
            Name        = "only use ALA server";
            Description = "only use ALA server";
        },
        [ValueParameter]@{
            Keys        = @("--ala-url");
            Name        = "location of ALA server";
            Description = "location of ALA server";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cached-only");
            Name        = "only use cached packages";
            Description = "only use cached packages";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show help script";
            Description = "show help script";
        },
        [ValueParameter]@{
            Keys        = @("--maxdepth");
            Name        = "maximum depth to search for cached packages";
            Description = "maximum depth to search for cached packages";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pacman");
            Name        = "pacman command to use";
            Description = "pacman command to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pacman-cache");
            Name        = "pacman cache directory";
            Description = "pacman cache directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pacman-conf");
            Name        = "pacman configuration file";
            Description = "pacman configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pacman-log");
            Name        = "pacman log file";
            Description = "pacman log file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show downgrade version";
            Description = "show downgrade version";
        }
    )
}
