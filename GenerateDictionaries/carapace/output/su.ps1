# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/su";
    Keys        = @("su");
    Name        = "su";
    Description = "run a command with substitute user and group ID";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--command", "-c");
            Name        = "pass a single command";
            Description = "pass a single command";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fast", "-f");
            Name        = "pass -f to the shell";
            Description = "pass -f to the shell";
        },
        [ValueParameter]@{
            Keys        = @("--group", "-g");
            Name        = "specify the primary group";
            Description = "specify the primary group";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--login", "-l");
            Name        = "make the shell a login shell";
            Description = "make the shell a login shell";
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "do not reset environment variables";
            Description = "do not reset environment variables";
        },
        [FlagParameter]@{
            Keys        = @("--preserve-environment", "-p");
            Name        = "do not reset environment variables";
            Description = "do not reset environment variables";
        },
        [FlagParameter]@{
            Keys        = @("--pty", "-P");
            Name        = "create a new pseudo-terminal";
            Description = "create a new pseudo-terminal";
        },
        [ValueParameter]@{
            Keys        = @("--session-command");
            Name        = "pass a single command and do not create a new session";
            Description = "pass a single command and do not create a new session";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--shell", "-s");
            Name        = "run given shell";
            Description = "run given shell";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--supp-group", "-G");
            Name        = "specify a supplemental group";
            Description = "specify a supplemental group";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        },
        [ValueParameter]@{
            Keys        = @("--whitelist-environment", "-w");
            Name        = "don't reset specified variables";
            Description = "don't reset specified variables";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
