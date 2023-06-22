# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://i3wm.org/";
    Keys        = @("i3");
    Name        = "i3";
    Description = "an improved dynamic, tiling window manager";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "validate configuration file and exit";
            Description = "validate configuration file and exit";
        },
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "path to the serialized layout during restarts";
            Description = "path to the serialized layout during restarts";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "enable verbose mode";
            Description = "enable verbose mode";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "disable autostart ('exec' lines in config)";
            Description = "disable autostart ('exec' lines in config)";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "use the provided configfile instead";
            Description = "use the provided configfile instead";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-d");
            Name        = "enable debug output";
            Description = "enable debug output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--force-xinerama");
            Name        = "Use Xinerama instead of RandR.";
            Description = "Use Xinerama instead of RandR.";
        },
        [FlagParameter]@{
            Keys        = @("--get-socketpath");
            Name        = "Retrieve the i3 IPC socket path from X11, print it, then exit.";
            Description = "Retrieve the i3 IPC socket path from X11, print it, then exit.";
        },
        [ValueParameter]@{
            Keys        = @("--shmlog-size");
            Name        = "Limits the size of the i3 SHM log to <limit> bytes.";
            Description = "Limits the size of the i3 SHM log to <limit> bytes.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "display version and exit";
            Description = "display version and exit";
        }
    )
}
