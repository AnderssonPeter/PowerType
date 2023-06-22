# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/killall";
    Keys        = @("killall");
    Name        = "killall";
    Description = "kill processes by name";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--exact", "-e");
            Name        = "require exact match for very long names";
            Description = "require exact match for very long names";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-I");
            Name        = "case insensitive process name match";
            Description = "case insensitive process name match";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "ask for confirmation before killing";
            Description = "ask for confirmation before killing";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "list all known signal names";
            Description = "list all known signal names";
        },
        [ValueParameter]@{
            Keys        = @("--ns", "-n");
            Name        = "match processes that belong to the same namespaces as PID";
            Description = "match processes that belong to the same namespaces as PID";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--older-than", "-o");
            Name        = "kill processes older than TIME";
            Description = "kill processes older than TIME";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--process-group", "-g");
            Name        = "kill process group instead of process";
            Description = "kill process group instead of process";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "don't print complaints";
            Description = "don't print complaints";
        },
        [FlagParameter]@{
            Keys        = @("--regexp", "-r");
            Name        = "interpret NAME as an extended regular expression";
            Description = "interpret NAME as an extended regular expression";
        },
        [ValueParameter]@{
            Keys        = @("--signal", "-s");
            Name        = "send this signal instead of SIGTERM";
            Description = "send this signal instead of SIGTERM";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user", "-u");
            Name        = "kill only process(es) running as USER";
            Description = "kill only process(es) running as USER";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "report if the signal was successfully sent";
            Description = "report if the signal was successfully sent";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version information";
            Description = "display version information";
        },
        [FlagParameter]@{
            Keys        = @("--wait", "-w");
            Name        = "wait for processes to die";
            Description = "wait for processes to die";
        },
        [ValueParameter]@{
            Keys        = @("--younger-than", "-y");
            Name        = "kill processes younger than TIME";
            Description = "kill processes younger than TIME";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
