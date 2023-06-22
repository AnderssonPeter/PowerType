# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/kill";
    Keys        = @("kill");
    Name        = "kill";
    Description = "Forcibly terminate a process";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "do not restrict the name-to-pid conversion to processes";
            Description = "do not restrict the name-to-pid conversion to processes";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [ValueParameter]@{
            Keys        = @("--list", "-l");
            Name        = "list signal names, or convert a signal number to a name";
            Description = "list signal names, or convert a signal number to a name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--pid", "-p");
            Name        = "print pids without signaling them";
            Description = "print pids without signaling them";
        },
        [ValueParameter]@{
            Keys        = @("--queue", "-q");
            Name        = "use sigqueue(2), not kill(2), and pass <value> as data";
            Description = "use sigqueue(2), not kill(2), and pass <value> as data";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--signal", "-s");
            Name        = "send this <signal> instead of SIGTERM";
            Description = "send this <signal> instead of SIGTERM";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--table", "-L");
            Name        = "list signal names and numbers";
            Description = "list signal names and numbers";
        },
        [ValueParameter]@{
            Keys        = @("--timeout");
            Name        = "wait up to timeout and send follow-up signal";
            Description = "wait up to timeout and send follow-up signal";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "print pids that will be signaled";
            Description = "print pids that will be signaled";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
