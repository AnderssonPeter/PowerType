# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/groupmems";
    Keys        = @("groupmems");
    Name        = "groupmems";
    Description = "administer members of a user's primary group";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--add", "-a");
            Name        = "add username to the members of the group";
            Description = "add username to the members of the group";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--delete", "-d");
            Name        = "remove username from the members of the group";
            Description = "remove username from the members of the group";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--group", "-g");
            Name        = "change groupname instead of the user's group";
            Description = "change groupname instead of the user's group";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "list the members of the group";
            Description = "list the members of the group";
        },
        [FlagParameter]@{
            Keys        = @("--purge", "-p");
            Name        = "purge all members from the group";
            Description = "purge all members from the group";
        },
        [ValueParameter]@{
            Keys        = @("--root", "-R");
            Name        = "directory to chroot into";
            Description = "directory to chroot into";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
