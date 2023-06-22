# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/xargs";
    Keys        = @("xargs");
    Name        = "xargs";
    Description = "build and execute command lines from standard input";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-E");
            Name        = "set logical EOF string";
            Description = "set logical EOF string";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-I");
            Name        = "same as --replace=R";
            Description = "same as --replace=R";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--arg-file", "-a");
            Name        = "read arguments from FILE";
            Description = "read arguments from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--delimiter", "-d");
            Name        = "items in input stream are separated by CHARACTER";
            Description = "items in input stream are separated by CHARACTER";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--eof", "-e");
            Name        = "equivalent to -E END if END is specified";
            Description = "equivalent to -E END if END is specified";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--exit", "-x");
            Name        = "exit if the size (see -s) is exceeded";
            Description = "exit if the size (see -s) is exceeded";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-p");
            Name        = "prompt before running commands";
            Description = "prompt before running commands";
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "similar to -L but defaults to at most one non- blank input line";
            Description = "similar to -L but defaults to at most one non- blank input line";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-args", "-n");
            Name        = "use at most MAX-ARGS arguments per command line";
            Description = "use at most MAX-ARGS arguments per command line";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-chars", "-s");
            Name        = "limit length of command line to MAX-CHARS";
            Description = "limit length of command line to MAX-CHARS";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-lines", "-L");
            Name        = "use at most MAX-LINES non-blank input lines per command line";
            Description = "use at most MAX-LINES non-blank input lines per command line";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-procs", "-P");
            Name        = "run at most MAX-PROCS processes at a time";
            Description = "run at most MAX-PROCS processes at a time";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-run-if-empty", "-r");
            Name        = "if there are no arguments, then do not run COMMAND";
            Description = "if there are no arguments, then do not run COMMAND";
        },
        [FlagParameter]@{
            Keys        = @("--null", "-0");
            Name        = "items are separated by a null";
            Description = "items are separated by a null";
        },
        [FlagParameter]@{
            Keys        = @("--open-tty", "-o");
            Name        = "Reopen stdin as /dev/tty in the child process";
            Description = "Reopen stdin as /dev/tty in the child process";
        },
        [ValueParameter]@{
            Keys        = @("--process-slot-var");
            Name        = "set environment variable VAR in child processes";
            Description = "set environment variable VAR in child processes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--replace", "-i");
            Name        = "replace R in INITIAL-ARGS with names";
            Description = "replace R in INITIAL-ARGS with names";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-limits");
            Name        = "show limits on command-line length";
            Description = "show limits on command-line length";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-t");
            Name        = "print commands before executing them";
            Description = "print commands before executing them";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
