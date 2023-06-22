# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://supervisord.org/";
    Keys        = @("supervisord");
    Name        = "supervisord";
    Description = "run a set of applications as daemons";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--childlogdir", "-q");
            Name        = "the log directory for child process logs";
            Description = "the log directory for child process logs";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--configuration", "-c");
            Name        = "configuration file path ";
            Description = "configuration file path ";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--directory", "-d");
            Name        = "directory to chdir to when daemonized";
            Description = "directory to chdir to when daemonized";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "print this usage message and exit";
            Description = "print this usage message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--identifier", "-i");
            Name        = "identifier used for this instance of supervisord";
            Description = "identifier used for this instance of supervisord";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--logfile", "-l");
            Name        = "use FILENAME as logfile path";
            Description = "use FILENAME as logfile path";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--logfile_backups", "-z");
            Name        = "number of backups to keep when max bytes reached";
            Description = "number of backups to keep when max bytes reached";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--logfile_maxbytes", "-y");
            Name        = "use BYTES to limit the max size of logfile";
            Description = "use BYTES to limit the max size of logfile";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--loglevel", "-e");
            Name        = "use LEVEL as log level ";
            Description = "use LEVEL as log level ";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--minfds", "-a");
            Name        = "the minimum number of file descriptors for start success";
            Description = "the minimum number of file descriptors for start success";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--minprocs");
            Name        = "the minimum number of processes available for start success";
            Description = "the minimum number of processes available for start success";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--nocleanup", "-k");
            Name        = "prevent the process from performing cleanup ";
            Description = "prevent the process from performing cleanup ";
        },
        [FlagParameter]@{
            Keys        = @("--nodaemon", "-n");
            Name        = "run in the foreground ";
            Description = "run in the foreground ";
        },
        [ValueParameter]@{
            Keys        = @("--pidfile", "-j");
            Name        = "write a pid file for the daemon process to FILENAME";
            Description = "write a pid file for the daemon process to FILENAME";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile_options");
            Name        = "run supervisord under profiler and output results";
            Description = "run supervisord under profiler and output results";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-s");
            Name        = "no logs to stdout ";
            Description = "no logs to stdout ";
        },
        [FlagParameter]@{
            Keys        = @("--strip_ansi", "-t");
            Name        = "strip ansi escape codes from process output";
            Description = "strip ansi escape codes from process output";
        },
        [ValueParameter]@{
            Keys        = @("--umask", "-m");
            Name        = "use this umask for daemon subprocess ";
            Description = "use this umask for daemon subprocess ";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user", "-u");
            Name        = "run supervisord as this user ";
            Description = "run supervisord as this user ";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "print supervisord version number and exit";
            Description = "print supervisord version number and exit";
        }
    )
}
