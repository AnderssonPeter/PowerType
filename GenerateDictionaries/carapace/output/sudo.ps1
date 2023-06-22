# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/sudo";
    Keys        = @("sudo");
    Name        = "sudo";
    Description = "execute a command as another user";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--askpass", "-A");
            Name        = "use a helper program for password prompting";
            Description = "use a helper program for password prompting";
        },
        [FlagParameter]@{
            Keys        = @("--background", "-b");
            Name        = "run command in the background";
            Description = "run command in the background";
        },
        [FlagParameter]@{
            Keys        = @("--bell", "-B");
            Name        = "ring bell when prompting";
            Description = "ring bell when prompting";
        },
        [ValueParameter]@{
            Keys        = @("--close-from", "-C");
            Name        = "close all file descriptors >= num";
            Description = "close all file descriptors >= num";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--edit", "-e");
            Name        = "edit files instead of running a command";
            Description = "edit files instead of running a command";
        },
        [ValueParameter]@{
            Keys        = @("--group", "-g");
            Name        = "run command as the specified group name or ID";
            Description = "run command as the specified group name or ID";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display help message and exit";
            Description = "display help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--host");
            Name        = "run command on host (if supported by plugin)";
            Description = "run command on host (if supported by plugin)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "list user's privileges or check a specific command; use twice for longer format";
            Description = "list user's privileges or check a specific command; use twice for longer format";
        },
        [FlagParameter]@{
            Keys        = @("--login", "-i");
            Name        = "run login shell as the target user; a command may also be specified";
            Description = "run login shell as the target user; a command may also be specified";
        },
        [FlagParameter]@{
            Keys        = @("--non-interactive", "-n");
            Name        = "non-interactive mode, no prompts are used";
            Description = "non-interactive mode, no prompts are used";
        },
        [ValueParameter]@{
            Keys        = @("--other-user", "-U");
            Name        = "in list mode, display privileges for user";
            Description = "in list mode, display privileges for user";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--preserve-env", "-E");
            Name        = "preserve user environment when running command";
            Description = "preserve user environment when running command";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--preserve-groups", "-P");
            Name        = "preserve group vector instead of setting to target's";
            Description = "preserve group vector instead of setting to target's";
        },
        [ValueParameter]@{
            Keys        = @("--prompt", "-p");
            Name        = "use the specified password prompt";
            Description = "use the specified password prompt";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--remove-timestamp", "-K");
            Name        = "remove timestamp file completely";
            Description = "remove timestamp file completely";
        },
        [FlagParameter]@{
            Keys        = @("--reset-timestamp", "-k");
            Name        = "invalidate timestamp file";
            Description = "invalidate timestamp file";
        },
        [FlagParameter]@{
            Keys        = @("--set-home", "-H");
            Name        = "set HOME variable to target user's home dir";
            Description = "set HOME variable to target user's home dir";
        },
        [FlagParameter]@{
            Keys        = @("--shell", "-s");
            Name        = "run shell as the target user; a command may also be specified";
            Description = "run shell as the target user; a command may also be specified";
        },
        [FlagParameter]@{
            Keys        = @("--stdin", "-S");
            Name        = "read password from standard input";
            Description = "read password from standard input";
        },
        [ValueParameter]@{
            Keys        = @("--user", "-u");
            Name        = "run command (or edit file) as specified user name or ID";
            Description = "run command (or edit file) as specified user name or ID";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--validate", "-v");
            Name        = "update user's timestamp without running a command";
            Description = "update user's timestamp without running a command";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version information and exit";
            Description = "display version information and exit";
        }
    )
}
