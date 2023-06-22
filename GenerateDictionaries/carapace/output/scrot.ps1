# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Scrot";
    Keys        = @("scrot");
    Name        = "scrot";
    Description = "command line screen capture utility";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--autoselect", "-a");
            Name        = "non-interactively choose a rectangle of x,y,w,h";
            Description = "non-interactively choose a rectangle of x,y,w,h";
        },
        [FlagParameter]@{
            Keys        = @("--border", "-b");
            Name        = "When selecting a window, grab wm border too";
            Description = "When selecting a window, grab wm border too";
        },
        [ValueParameter]@{
            Keys        = @("--class", "-C");
            Name        = "Window class name. Associative with options: -k";
            Description = "Window class name. Associative with options: -k";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--count", "-c");
            Name        = "show a countdown before taking the shot";
            Description = "show a countdown before taking the shot";
        },
        [ValueParameter]@{
            Keys        = @("--delay", "-d");
            Name        = "wait NUM seconds before taking a shot";
            Description = "wait NUM seconds before taking a shot";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--display", "-D");
            Name        = "Set DISPLAY target other than current";
            Description = "Set DISPLAY target other than current";
        },
        [ValueParameter]@{
            Keys        = @("--exec", "-e");
            Name        = "run APP on the resulting screenshot";
            Description = "run APP on the resulting screenshot";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--focused", "-u");
            Name        = "use the currently focused window";
            Description = "use the currently focused window";
        },
        [FlagParameter]@{
            Keys        = @("--freeze", "-f");
            Name        = "Freeze the screen when the selection is used: --select";
            Description = "Freeze the screen when the selection is used: --select";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--line", "-l");
            Name        = "Indicates the style of the line when the selection is used: --select";
            Description = "Indicates the style of the line when the selection is used: --select";
        },
        [FlagParameter]@{
            Keys        = @("--multidisp", "-m");
            Name        = "For multiple heads, grab shot from each and join them together.";
            Description = "For multiple heads, grab shot from each and join them together.";
        },
        [FlagParameter]@{
            Keys        = @("--note", "-n");
            Name        = "Draw a text note.";
            Description = "Draw a text note.";
        },
        [FlagParameter]@{
            Keys        = @("--overwrite", "-o");
            Name        = "By default scrot does not overwrite the files, use this option to allow it.";
            Description = "By default scrot does not overwrite the files, use this option to allow it.";
        },
        [FlagParameter]@{
            Keys        = @("--pointer", "-p");
            Name        = "Capture the mouse pointer.";
            Description = "Capture the mouse pointer.";
        },
        [ValueParameter]@{
            Keys        = @("--quality", "-q");
            Name        = "Image quality (1-100) high value means high size, low compression";
            Description = "Image quality (1-100) high value means high size, low compression";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--script", "-S");
            Name        = "Imlib2 script commands";
            Description = "Imlib2 script commands";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--select", "-s");
            Name        = "interactively choose a window or rectangle with the mouse";
            Description = "interactively choose a window or rectangle with the mouse";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-z");
            Name        = "Prevent beeping";
            Description = "Prevent beeping";
        },
        [FlagParameter]@{
            Keys        = @("--stack", "-k");
            Name        = "Capture stack/overlapped windows and join them together.";
            Description = "Capture stack/overlapped windows and join them together.";
        },
        [ValueParameter]@{
            Keys        = @("--thumb", "-t");
            Name        = "generate thumbnail too";
            Description = "generate thumbnail too";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
