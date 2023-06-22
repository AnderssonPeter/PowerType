# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/fc-cache";
    Keys        = @("fc-cache");
    Name        = "fc-cache";
    Description = "Build font information caches";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--error-on-no-fonts", "-E");
            Name        = "raise an error if no fonts in a directory";
            Description = "raise an error if no fonts in a directory";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "scan directories with apparently valid caches";
            Description = "scan directories with apparently valid caches";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--really-force", "-r");
            Name        = "erase all existing caches, then rescan";
            Description = "erase all existing caches, then rescan";
        },
        [ValueParameter]@{
            Keys        = @("--sysroot", "-y");
            Name        = "prepend SYSROOT to all paths for scanning";
            Description = "prepend SYSROOT to all paths for scanning";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--system-only", "-s");
            Name        = "scan system-wide directories only";
            Description = "scan system-wide directories only";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "display status information while busy";
            Description = "display status information while busy";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display font config version and exit";
            Description = "display font config version and exit";
        }
    )
}
