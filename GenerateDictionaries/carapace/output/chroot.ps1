# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Chroot";
    Keys        = @("chroot");
    Name        = "chroot";
    Description = "run command or interactive shell with special root directory";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--groups");
            Name        = "specify supplementary groups as g1,g2,..,gN";
            Description = "specify supplementary groups as g1,g2,..,gN";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--skip-chdir");
            Name        = "do not change working directory to '/'";
            Description = "do not change working directory to '/'";
        },
        [ValueParameter]@{
            Keys        = @("--userspec");
            Name        = "specify user and group (ID or name) to use";
            Description = "specify user and group (ID or name) to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
