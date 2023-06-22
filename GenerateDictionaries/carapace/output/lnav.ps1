# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://lnav.org/";
    Keys        = @("lnav");
    Name        = "lnav";
    Description = "ncurses-based log file viewer";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "Check configuration and then exit.";
            Description = "Check configuration and then exit.";
        },
        [FlagParameter]@{
            Keys        = @("-H");
            Name        = "Display the internal help text.";
            Description = "Display the internal help text.";
        },
        [ValueParameter]@{
            Keys        = @("-I");
            Name        = "An additional configuration directory.";
            Description = "An additional configuration directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "Load older rotated log files as well.";
            Description = "Load older rotated log files as well.";
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "Print version information.";
            Description = "Print version information.";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "Load all of the most recent log file types.";
            Description = "Load all of the most recent log file types.";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Execute a command after the files have been loaded.";
            Description = "Execute a command after the files have been loaded.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-d");
            Name        = "Write debug messages to the given file.";
            Description = "Write debug messages to the given file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "Execute the commands in the given file.";
            Description = "Execute the commands in the given file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "Print this message, then exit.";
            Description = "Print this message, then exit.";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "Install the given format files and exit.  Pass 'extra'";
            Description = "Install the given format files and exit.  Pass 'extra'";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "Run without the curses UI. (headless mode)";
            Description = "Run without the curses UI. (headless mode)";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "Do not print the log messages after executing all";
            Description = "Do not print the log messages after executing all";
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "Recursively load files from the given directory hierarchies.";
            Description = "Recursively load files from the given directory hierarchies.";
        },
        [FlagParameter]@{
            Keys        = @("-t");
            Name        = "Prepend timestamps to the lines of data being read in";
            Description = "Prepend timestamps to the lines of data being read in";
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "Update formats installed from git repositories.";
            Description = "Update formats installed from git repositories.";
        },
        [ValueParameter]@{
            Keys        = @("-w");
            Name        = "Write the contents of the standard input to this file.";
            Description = "Write the contents of the standard input to this file.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
