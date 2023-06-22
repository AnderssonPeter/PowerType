# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/gpasswd";
    Keys        = @("gpasswd");
    Name        = "gpasswd";
    Description = "administer /etc/group and /etc/gshadow";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--add", "-a");
            Name        = "add USER to GROUP";
            Description = "add USER to GROUP";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--administrators", "-A");
            Name        = "set the list of administrators for GROUP";
            Description = "set the list of administrators for GROUP";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--delete", "-d");
            Name        = "remove USER from GROUP";
            Description = "remove USER from GROUP";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--members", "-M");
            Name        = "set the list of members of GROUP";
            Description = "set the list of members of GROUP";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--remove-password", "-r");
            Name        = "remove the GROUP's password";
            Description = "remove the GROUP's password";
        },
        [FlagParameter]@{
            Keys        = @("--restrict", "-R");
            Name        = "restrict access to GROUP to its members";
            Description = "restrict access to GROUP to its members";
        },
        [ValueParameter]@{
            Keys        = @("--root", "-Q");
            Name        = "directory to chroot into";
            Description = "directory to chroot into";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
