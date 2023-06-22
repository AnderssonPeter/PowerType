# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://users.xfce.org/~benny/xfce/apps.html";
    Keys        = @("mousepad");
    Name        = "mousepad";
    Description = "Mousepad is a simple text editor for the Xfce desktop environment";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--column", "-c");
            Name        = "Column number the cursor to position to (COLUMN >= 0 from start, COLUMN < 0 from end)";
            Description = "Column number the cursor to position to (COLUMN >= 0 from start, COLUMN < 0 from end)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disable-server");
            Name        = "Do not register with the D-BUS session message bus";
            Description = "Do not register with the D-BUS session message bus";
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--encoding", "-e");
            Name        = "Encoding to be used to open files (leave empty to open files in the encoding dialog)";
            Description = "Encoding to be used to open files (leave empty to open files in the encoding dialog)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help options";
            Description = "Show help options";
        },
        [FlagParameter]@{
            Keys        = @("--help-all");
            Name        = "Show all help options";
            Description = "Show all help options";
        },
        [FlagParameter]@{
            Keys        = @("--help-gapplication");
            Name        = "Show GApplication options";
            Description = "Show GApplication options";
        },
        [FlagParameter]@{
            Keys        = @("--help-gtk");
            Name        = "Show GTK+ Options";
            Description = "Show GTK+ Options";
        },
        [ValueParameter]@{
            Keys        = @("--line", "-l");
            Name        = "Line number the cursor to position to (LINE > 0 from top, LINE < 0 from bottom)";
            Description = "Line number the cursor to position to (LINE > 0 from top, LINE < 0 from bottom)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-encodings");
            Name        = "Display a list of possible encodings to open files";
            Description = "Display a list of possible encodings to open files";
        },
        [ValueParameter]@{
            Keys        = @("--opening-mode", "-o");
            Name        = "File opening mode: `"tab`", `"window`" or `"mixed`" (open tabs in a new window)";
            Description = "File opening mode: `"tab`", `"window`" or `"mixed`" (open tabs in a new window)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--preferences");
            Name        = "Open the preferences dialog";
            Description = "Open the preferences dialog";
        },
        [FlagParameter]@{
            Keys        = @("--quit", "-q");
            Name        = "Quit a running Mousepad primary instance";
            Description = "Quit a running Mousepad primary instance";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version information and exit";
            Description = "Print version information and exit";
        }
    )
}
