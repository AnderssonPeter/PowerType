# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/groupadd";
    Keys        = @("groupadd");
    Name        = "groupadd";
    Description = "create a new group";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "exit successfully if the group already exists,";
            Description = "exit successfully if the group already exists,";
        },
        [ValueParameter]@{
            Keys        = @("--gid", "-g");
            Name        = "use GID for the new group";
            Description = "use GID for the new group";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--key", "-K");
            Name        = "override /etc/login.defs defaults";
            Description = "override /etc/login.defs defaults";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--non-unique", "-o");
            Name        = "allow to create groups with duplicate";
            Description = "allow to create groups with duplicate";
        },
        [ValueParameter]@{
            Keys        = @("--password", "-p");
            Name        = "use this encrypted password for the new group";
            Description = "use this encrypted password for the new group";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--prefix", "-P");
            Name        = "directory prefix";
            Description = "directory prefix";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--root", "-R");
            Name        = "directory to chroot into";
            Description = "directory to chroot into";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--system", "-r");
            Name        = "create a system account";
            Description = "create a system account";
        }
    )
}
