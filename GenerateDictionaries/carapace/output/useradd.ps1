# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/useradd";
    Keys        = @("useradd");
    Name        = "useradd";
    Description = "create a new user or update default new user information";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--badnames");
            Name        = "do not check for bad names";
            Description = "do not check for bad names";
        },
        [ValueParameter]@{
            Keys        = @("--base-dir", "-b");
            Name        = "base directory for the home directory of the";
            Description = "base directory for the home directory of the";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--btrfs-subvolume-home");
            Name        = "use BTRFS subvolume for home directory";
            Description = "use BTRFS subvolume for home directory";
        },
        [ValueParameter]@{
            Keys        = @("--comment", "-c");
            Name        = "GECOS field of the new account";
            Description = "GECOS field of the new account";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--create-home", "-m");
            Name        = "create the user's home directory";
            Description = "create the user's home directory";
        },
        [FlagParameter]@{
            Keys        = @("--defaults", "-D");
            Name        = "print or change default useradd configuration";
            Description = "print or change default useradd configuration";
        },
        [ValueParameter]@{
            Keys        = @("--expiredate", "-e");
            Name        = "expiration date of the new account";
            Description = "expiration date of the new account";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gid", "-g");
            Name        = "name or ID of the primary group of the new";
            Description = "name or ID of the primary group of the new";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--groups", "-G");
            Name        = "list of supplementary groups of the new";
            Description = "list of supplementary groups of the new";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--home-dir", "-d");
            Name        = "home directory of the new account";
            Description = "home directory of the new account";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--inactive", "-f");
            Name        = "password inactivity period of the new account";
            Description = "password inactivity period of the new account";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key", "-K");
            Name        = "override /etc/login.defs defaults";
            Description = "override /etc/login.defs defaults";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-create-home", "-M");
            Name        = "do not create the user's home directory";
            Description = "do not create the user's home directory";
        },
        [FlagParameter]@{
            Keys        = @("--no-log-init", "-l");
            Name        = "do not add the user to the lastlog and";
            Description = "do not add the user to the lastlog and";
        },
        [FlagParameter]@{
            Keys        = @("--no-user-group", "-N");
            Name        = "do not create a group with the same name as";
            Description = "do not create a group with the same name as";
        },
        [FlagParameter]@{
            Keys        = @("--non-unique", "-o");
            Name        = "allow to create users with duplicate";
            Description = "allow to create users with duplicate";
        },
        [ValueParameter]@{
            Keys        = @("--password", "-p");
            Name        = "encrypted password of the new account";
            Description = "encrypted password of the new account";
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
            Name        = "login shell of the new account";
            Description = "login shell of the new account";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--skel", "-k");
            Name        = "use this alternative skeleton directory";
            Description = "use this alternative skeleton directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--system", "-r");
            Name        = "create a system account";
            Description = "create a system account";
        },
        [ValueParameter]@{
            Keys        = @("--uid", "-u");
            Name        = "user ID of the new account";
            Description = "user ID of the new account";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--user-group", "-U");
            Name        = "create a group with the same name as the user";
            Description = "create a group with the same name as the user";
        }
    )
}
