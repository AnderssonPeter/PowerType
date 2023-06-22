# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/passwd";
    Keys        = @("passwd");
    Name        = "passwd";
    Description = "change user password";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "report password status on all accounts";
            Description = "report password status on all accounts";
        },
        [FlagParameter]@{
            Keys        = @("--delete", "-d");
            Name        = "delete the password for the named account";
            Description = "delete the password for the named account";
        },
        [FlagParameter]@{
            Keys        = @("--expire", "-e");
            Name        = "force expire the password for the named account";
            Description = "force expire the password for the named account";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--inactive", "-i");
            Name        = "set password inactive after expiration to INACTIVE";
            Description = "set password inactive after expiration to INACTIVE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--keep-tokens", "-k");
            Name        = "change password only if expired";
            Description = "change password only if expired";
        },
        [FlagParameter]@{
            Keys        = @("--lock", "-l");
            Name        = "lock the password of the named account";
            Description = "lock the password of the named account";
        },
        [ValueParameter]@{
            Keys        = @("--maxdays", "-x");
            Name        = "set maximum number of days before password change to MAX_DAYS";
            Description = "set maximum number of days before password change to MAX_DAYS";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mindays", "-n");
            Name        = "set minimum number of days before password change to MIN_DAYS";
            Description = "set minimum number of days before password change to MIN_DAYS";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "quiet mode";
            Description = "quiet mode";
        },
        [ValueParameter]@{
            Keys        = @("--repository", "-r");
            Name        = "change password in REPOSITORY repository";
            Description = "change password in REPOSITORY repository";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--root", "-R");
            Name        = "directory to chroot into";
            Description = "directory to chroot into";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--status", "-S");
            Name        = "report password status on the named account";
            Description = "report password status on the named account";
        },
        [FlagParameter]@{
            Keys        = @("--unlock", "-u");
            Name        = "unlock the password of the named account";
            Description = "unlock the password of the named account";
        },
        [ValueParameter]@{
            Keys        = @("--warndays", "-w");
            Name        = "set expiration warning days to WARN_DAYS";
            Description = "set expiration warning days to WARN_DAYS";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
