# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/watchexec/watchexec";
    Keys        = @("watchexec");
    Name        = "watchexec";
    Description = "Execute commands when watched files change";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--changes-only");
            Name        = "Only print path change information. Overridden by --verbose";
            Description = "Only print path change information. Overridden by --verbose";
        },
        [FlagParameter]@{
            Keys        = @("--clear", "-c");
            Name        = "Clear screen before executing command";
            Description = "Clear screen before executing command";
        },
        [ValueParameter]@{
            Keys        = @("--debounce", "-d");
            Name        = "Set the timeout between detected change and command execution, defaults to 100ms";
            Description = "Set the timeout between detected change and command execution, defaults to 100ms";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exts", "-e");
            Name        = "Comma-separated list of file extensions to watch";
            Description = "Comma-separated list of file extensions to watch";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--filter", "-f");
            Name        = "Ignore all modifications except those matching the pattern";
            Description = "Ignore all modifications except those matching the pattern";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--force-poll");
            Name        = "Force polling mode (interval in milliseconds)";
            Description = "Force polling mode (interval in milliseconds)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [ValueParameter]@{
            Keys        = @("--ignore", "-i");
            Name        = "Ignore modifications to paths matching the pattern";
            Description = "Ignore modifications to paths matching the pattern";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-default-ignore");
            Name        = "Skip auto-ignoring of commonly ignored globs";
            Description = "Skip auto-ignoring of commonly ignored globs";
        },
        [FlagParameter]@{
            Keys        = @("--no-environment");
            Name        = "Do not set WATCHEXEC_*_PATH environment variables for the command";
            Description = "Do not set WATCHEXEC_*_PATH environment variables for the command";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore");
            Name        = "Skip auto-loading of ignore files (.gitignore, .ignore, etc.) for filtering";
            Description = "Skip auto-loading of ignore files (.gitignore, .ignore, etc.) for filtering";
        },
        [FlagParameter]@{
            Keys        = @("--no-meta");
            Name        = "Ignore metadata changes";
            Description = "Ignore metadata changes";
        },
        [FlagParameter]@{
            Keys        = @("--no-process-group");
            Name        = "Do not use a process group when running the command";
            Description = "Do not use a process group when running the command";
        },
        [FlagParameter]@{
            Keys        = @("--no-shell", "-n");
            Name        = "Do not wrap command in a shell. Deprecated: use --shell=none instead.";
            Description = "Do not wrap command in a shell. Deprecated: use --shell=none instead.";
        },
        [FlagParameter]@{
            Keys        = @("--no-vcs-ignore");
            Name        = "Skip auto-loading of .gitignore files for filtering";
            Description = "Skip auto-loading of .gitignore files for filtering";
        },
        [FlagParameter]@{
            Keys        = @("--notify", "-N");
            Name        = "Send a desktop notification when watchexec notices a change";
            Description = "Send a desktop notification when watchexec notices a change";
        },
        [ValueParameter]@{
            Keys        = @("--on-busy-update");
            Name        = "Select the behaviour to use when receiving events while the command is running.";
            Description = "Select the behaviour to use when receiving events while the command is running.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--postpone", "-p");
            Name        = "Wait until first change to execute command";
            Description = "Wait until first change to execute command";
        },
        [FlagParameter]@{
            Keys        = @("--restart", "-r");
            Name        = "Restart the process if it's still running.";
            Description = "Restart the process if it's still running.";
        },
        [ValueParameter]@{
            Keys        = @("--shell");
            Name        = "Use a different shell, or ``none``. E.g. --shell=bash";
            Description = "Use a different shell, or ``none``. E.g. --shell=bash";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--signal", "-s");
            Name        = "Send signal to process upon changes, e.g. SIGHUP";
            Description = "Send signal to process upon changes, e.g. SIGHUP";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Print debugging messages to stderr";
            Description = "Print debugging messages to stderr";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Prints version information";
            Description = "Prints version information";
        },
        [ValueParameter]@{
            Keys        = @("--watch", "-w");
            Name        = "Watch a specific file or directory";
            Description = "Watch a specific file or directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--watch-when-idle", "-W");
            Name        = "Deprecated alias for --on-busy-update=do-nothing, which will become the";
            Description = "Deprecated alias for --on-busy-update=do-nothing, which will become the";
        }
    )
}
