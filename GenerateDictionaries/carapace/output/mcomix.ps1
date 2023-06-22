# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://sourceforge.net/projects/mcomix/";
    Keys        = @("mcomix");
    Name        = "mcomix";
    Description = "GTK Comic Book Viewer";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-W");
            Name        = "Sets the desired output log level.";
            Description = "Sets the desired output log level.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--double-page", "-d");
            Name        = "Start the application in double page mode.";
            Description = "Start the application in double page mode.";
        },
        [FlagParameter]@{
            Keys        = @("--fullscreen", "-f");
            Name        = "Start the application in fullscreen mode.";
            Description = "Start the application in fullscreen mode.";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Show this help and exit.";
            Description = "Show this help and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--library", "-l");
            Name        = "Show the library on startup.";
            Description = "Show the library on startup.";
        },
        [FlagParameter]@{
            Keys        = @("--manga", "-m");
            Name        = "Start the application in manga mode.";
            Description = "Start the application in manga mode.";
        },
        [FlagParameter]@{
            Keys        = @("--slideshow", "-s");
            Name        = "Start the application in slideshow mode.";
            Description = "Start the application in slideshow mode.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Show the version number and exit.";
            Description = "Show the version number and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--zoom-best", "-b");
            Name        = "Start the application with zoom set to best fit mode.";
            Description = "Start the application with zoom set to best fit mode.";
        },
        [FlagParameter]@{
            Keys        = @("--zoom-height", "-h");
            Name        = "Start the application with zoom set to fit height.";
            Description = "Start the application with zoom set to fit height.";
        },
        [FlagParameter]@{
            Keys        = @("--zoom-width", "-w");
            Name        = "Start the application with zoom set to fit width.";
            Description = "Start the application with zoom set to fit width.";
        }
    )
}
