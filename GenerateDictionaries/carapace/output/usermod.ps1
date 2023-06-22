# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/usermod";
    Keys        = @("usermod");
    Name        = "usermod";
    Description = "modify a user account";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--add-subgids", "-w");
            Name        = "add range of subordinate gids";
            Description = "add range of subordinate gids";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--add-subuids", "-v");
            Name        = "add range of subordinate uids";
            Description = "add range of subordinate uids";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--append", "-a");
            Name        = "append the user to the supplemental GROUPS";
            Description = "append the user to the supplemental GROUPS";
        },
        [FlagParameter]@{
            Keys        = @("--badnames", "-b");
            Name        = "allow bad names";
            Description = "allow bad names";
        },
        [ValueParameter]@{
            Keys        = @("--comment", "-c");
            Name        = "new value of the GECOS field";
            Description = "new value of the GECOS field";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--del-subgids", "-W");
            Name        = "remove range of subordinate gids";
            Description = "remove range of subordinate gids";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--del-subuids", "-V");
            Name        = "remove range of subordinate uids";
            Description = "remove range of subordinate uids";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--expiredate", "-e");
            Name        = "set account expiration date to EXPIRE_DATE";
            Description = "set account expiration date to EXPIRE_DATE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gid", "-g");
            Name        = "force use GROUP as new primary group";
            Description = "force use GROUP as new primary group";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--groups", "-G");
            Name        = "new list of supplementary GROUPS";
            Description = "new list of supplementary GROUPS";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--home", "-d");
            Name        = "new home directory for the user account";
            Description = "new home directory for the user account";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--inactive", "-f");
            Name        = "set password inactive after expiration";
            Description = "set password inactive after expiration";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--lock", "-L");
            Name        = "lock the user account";
            Description = "lock the user account";
        },
        [ValueParameter]@{
            Keys        = @("--login", "-l");
            Name        = "new value of the login name";
            Description = "new value of the login name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--move-home", "-m");
            Name        = "move contents of the home directory to the";
            Description = "move contents of the home directory to the";
        },
        [FlagParameter]@{
            Keys        = @("--non-unique", "-o");
            Name        = "allow using duplicate (non-unique) UID";
            Description = "allow using duplicate (non-unique) UID";
        },
        [ValueParameter]@{
            Keys        = @("--password", "-p");
            Name        = "use encrypted password for the new password";
            Description = "use encrypted password for the new password";
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
        },
        [ValueParameter]@{
            Keys        = @("--shell", "-s");
            Name        = "new login shell for the user account";
            Description = "new login shell for the user account";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--uid", "-u");
            Name        = "new UID for the user account";
            Description = "new UID for the user account";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unlock", "-U");
            Name        = "unlock the user account";
            Description = "unlock the user account";
        }
    )
}
