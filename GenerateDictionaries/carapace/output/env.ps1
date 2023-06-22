# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/env";
    Keys        = @("env");
    Name        = "env";
    Description = "run a program in a modified environment";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--block-signal");
            Name        = "block delivery of SIG signal(s) to COMMAND";
            Description = "block delivery of SIG signal(s) to COMMAND";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--chdir", "-C");
            Name        = "change working directory to DIR";
            Description = "change working directory to DIR";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-v");
            Name        = "print verbose information for each processing step";
            Description = "print verbose information for each processing step";
        },
        [ValueParameter]@{
            Keys        = @("--default-signal");
            Name        = "reset handling of SIG signal(s) to the default";
            Description = "reset handling of SIG signal(s) to the default";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-environment", "-i");
            Name        = "start with an empty environment";
            Description = "start with an empty environment";
        },
        [ValueParameter]@{
            Keys        = @("--ignore-signal");
            Name        = "set handling of SIG signals(s) to do nothing";
            Description = "set handling of SIG signals(s) to do nothing";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-signal-handling");
            Name        = "list non default signal handling to stderr";
            Description = "list non default signal handling to stderr";
        },
        [FlagParameter]@{
            Keys        = @("--null", "-0");
            Name        = "end each output line with NUL, not newline";
            Description = "end each output line with NUL, not newline";
        },
        [ValueParameter]@{
            Keys        = @("--split-string", "-S");
            Name        = "process and split S into separate arguments;";
            Description = "process and split S into separate arguments;";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--unset", "-u");
            Name        = "remove variable from the environment";
            Description = "remove variable from the environment";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
