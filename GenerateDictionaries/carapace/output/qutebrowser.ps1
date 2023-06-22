# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://qutebrowser.org/";
    Keys        = @("qutebrowser");
    Name        = "qutebrowser";
    Description = "a keyboard-driven, vim-like browser based on PyQt5";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--backend");
            Name        = "Which backend to use";
            Description = "Which backend to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--basedir", "-B");
            Name        = "Base directory for all storage";
            Description = "Base directory for all storage";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config-py", "-C");
            Name        = "Path to config.py";
            Description = "Path to config.py";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "Turn on debugging options";
            Description = "Turn on debugging options";
        },
        [ValueParameter]@{
            Keys        = @("--debug-flag", "-D");
            Name        = "Pass name of debugging feature to be turned on";
            Description = "Pass name of debugging feature to be turned on";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--enable-webengine-inspector");
            Name        = "Enable the web inspector";
            Description = "Enable the web inspector";
        },
        [FlagParameter]@{
            Keys        = @("--force-color");
            Name        = "Force colored logging";
            Description = "Force colored logging";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--json-logging");
            Name        = "Output log lines in JSON format (one object per line)";
            Description = "Output log lines in JSON format (one object per line)";
        },
        [ValueParameter]@{
            Keys        = @("--logfilter");
            Name        = "Comma-separated list of things to be logged";
            Description = "Comma-separated list of things to be logged";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--loglevel", "-l");
            Name        = "Override the configured console loglevel";
            Description = "Override the configured console loglevel";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--loglines");
            Name        = "How many lines of the debug log to keep in RAM";
            Description = "How many lines of the debug log to keep in RAM";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-err-windows");
            Name        = "Don't show any error windows";
            Description = "Don't show any error windows";
        },
        [FlagParameter]@{
            Keys        = @("--nocolor");
            Name        = "Turn off colored logging";
            Description = "Turn off colored logging";
        },
        [FlagParameter]@{
            Keys        = @("--nowindow");
            Name        = "Don't show the main window";
            Description = "Don't show the main window";
        },
        [FlagParameter]@{
            Keys        = @("--override-restore", "-R");
            Name        = "Don't restore a session even if one would be restored";
            Description = "Don't restore a session even if one would be restored";
        },
        [ValueParameter]@{
            Keys        = @("--qt-flag");
            Name        = "Pass an argument to Qt as flag";
            Description = "Pass an argument to Qt as flag";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--restore", "-r");
            Name        = "Restore a named session";
            Description = "Restore a named session";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target");
            Name        = "How URLs should be opened";
            Description = "How URLs should be opened";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--temp-basedir", "-T");
            Name        = "Use a temporary basedir";
            Description = "Use a temporary basedir";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version and quit";
            Description = "Show version and quit";
        }
    )
}
