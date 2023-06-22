# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/ncdu";
    Keys        = @("ncdu");
    Name        = "ncdu";
    Description = "NCurses Disk Usage";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-0");
            Name        = "UI to use when scanning";
            Description = "UI to use when scanning";
        },
        [FlagParameter]@{
            Keys        = @("-1");
            Name        = "UI to use when scanning";
            Description = "UI to use when scanning";
        },
        [FlagParameter]@{
            Keys        = @("-2");
            Name        = "UI to use when scanning";
            Description = "UI to use when scanning";
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "Print version";
            Description = "Print version";
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "Set color scheme";
            Description = "Set color scheme";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--confirm-quit");
            Name        = "Confirm quitting ncdu";
            Description = "Confirm quitting ncdu";
        },
        [FlagParameter]@{
            Keys        = @("-e");
            Name        = "Enable extended information";
            Description = "Enable extended information";
        },
        [ValueParameter]@{
            Keys        = @("--exclude");
            Name        = "Exclude files that match PATTERN";
            Description = "Exclude files that match PATTERN";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--exclude-caches");
            Name        = "Exclude directories containing CACHEDIR.TAG";
            Description = "Exclude directories containing CACHEDIR.TAG";
        },
        [ValueParameter]@{
            Keys        = @("--exclude-from", "-X");
            Name        = "Exclude files that match any pattern in FILE";
            Description = "Exclude files that match any pattern in FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--exclude-kernfs");
            Name        = "Exclude Linux pseudo filesystems";
            Description = "Exclude Linux pseudo filesystems";
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "Import scanned directory from FILE";
            Description = "Import scanned directory from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--follow-symlinks", "-L");
            Name        = "Follow symbolic links";
            Description = "Follow symbolic links";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "This help message";
            Description = "This help message";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "Export scanned directory to FILE";
            Description = "Export scanned directory to FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "Quiet mode, refresh interval 2 seconds";
            Description = "Quiet mode, refresh interval 2 seconds";
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "Read only";
            Description = "Read only";
        },
        [FlagParameter]@{
            Keys        = @("--si");
            Name        = "Use base 10 (SI) prefixes instead of base 2";
            Description = "Use base 10 (SI) prefixes instead of base 2";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version";
            Description = "Print version";
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "Same filesystem";
            Description = "Same filesystem";
        }
    )
}
