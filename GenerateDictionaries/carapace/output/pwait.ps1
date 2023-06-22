# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/pgrep";
    Keys        = @("pwait");
    Name        = "pwait";
    Description = "wait for processes based on name and other attributes";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--count", "-c");
            Name        = "count of matching processes";
            Description = "count of matching processes";
        },
        [FlagParameter]@{
            Keys        = @("--echo", "-e");
            Name        = "display PIDs before waiting";
            Description = "display PIDs before waiting";
        },
        [ValueParameter]@{
            Keys        = @("--euid", "-u");
            Name        = "match by effective IDs";
            Description = "match by effective IDs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--exact", "-x");
            Name        = "match exactly with the command name";
            Description = "match exactly with the command name";
        },
        [FlagParameter]@{
            Keys        = @("--full", "-f");
            Name        = "use full process name to match";
            Description = "use full process name to match";
        },
        [ValueParameter]@{
            Keys        = @("--group", "-G");
            Name        = "match real group IDs";
            Description = "match real group IDs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-i");
            Name        = "match case insensitively";
            Description = "match case insensitively";
        },
        [FlagParameter]@{
            Keys        = @("--logpidfile", "-L");
            Name        = "fail if PID file is not locked";
            Description = "fail if PID file is not locked";
        },
        [FlagParameter]@{
            Keys        = @("--newest", "-n");
            Name        = "select most recently started";
            Description = "select most recently started";
        },
        [ValueParameter]@{
            Keys        = @("--ns");
            Name        = "match the processes that belong to the same namespace as <pid>";
            Description = "match the processes that belong to the same namespace as <pid>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--nslist");
            Name        = "list which namespaces will be considered for the --ns option.";
            Description = "list which namespaces will be considered for the --ns option.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--older", "-O");
            Name        = "select where older than seconds";
            Description = "select where older than seconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--oldest", "-o");
            Name        = "select least recently started";
            Description = "select least recently started";
        },
        [ValueParameter]@{
            Keys        = @("--parent", "-P");
            Name        = "match only child processes of the given parent";
            Description = "match only child processes of the given parent";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pgroup", "-g");
            Name        = "match listed process group IDs";
            Description = "match listed process group IDs";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pidfile", "-F");
            Name        = "read PIDs from file";
            Description = "read PIDs from file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--runstates", "-r");
            Name        = "match runstates [D,S,Z,...]";
            Description = "match runstates [D,S,Z,...]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--session", "-s");
            Name        = "match session IDs";
            Description = "match session IDs";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--terminal", "-t");
            Name        = "match by controlling terminal";
            Description = "match by controlling terminal";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--uid", "-U");
            Name        = "match by real IDs";
            Description = "match by real IDs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
