# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/fakechroot";
    Keys        = @("fakechroot");
    Name        = "fakechroot";
    Description = "gives a fake chroot environment";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--bindir", "-b");
            Name        = "Specify a directory which contains the replacement executables shipped with fakechroot.";
            Description = "Specify a directory which contains the replacement executables shipped with fakechroot.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config-dir", "-c");
            Name        = "Specify a directory which contains additional configuration for fakechroot.";
            Description = "Specify a directory which contains additional configuration for fakechroot.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--elfloader", "-d");
            Name        = "Specify an alternative dynamic linker.";
            Description = "Specify an alternative dynamic linker.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--environment", "-e");
            Name        = "Load additional configuration with environment.";
            Description = "Load additional configuration with environment.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display help.";
            Description = "Display help.";
        },
        [ValueParameter]@{
            Keys        = @("--lib", "-l");
            Name        = "Specify an alternative wrapper library.";
            Description = "Specify an alternative wrapper library.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--use-system-libs", "-s");
            Name        = "Use system libraries before chroot's libraries.";
            Description = "Use system libraries before chroot's libraries.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display version.";
            Description = "Display version.";
        }
    )
}
