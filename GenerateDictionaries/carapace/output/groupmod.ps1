# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/groupmod";
    Keys        = @("groupmod");
    Name        = "groupmod";
    Description = "modify a group definition on the system";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--gid", "-g");
            Name        = "change the group ID to GID";
            Description = "change the group ID to GID";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--new-name", "-n");
            Name        = "change the name to NEW_GROUP";
            Description = "change the name to NEW_GROUP";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--non-unique", "-o");
            Name        = "allow to use a duplicate (non-unique) GID";
            Description = "allow to use a duplicate (non-unique) GID";
        },
        [ValueParameter]@{
            Keys        = @("--password", "-p");
            Name        = "change the password to this (encrypted)";
            Description = "change the password to this (encrypted)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--prefix", "-P");
            Name        = "prefix directory where are located the /etc/* files";
            Description = "prefix directory where are located the /etc/* files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--root", "-R");
            Name        = "directory to chroot into";
            Description = "directory to chroot into";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
