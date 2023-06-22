# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.lxde.org/en/PCManFM";
    Keys        = @("pcmanfm");
    Name        = "pcmanfm";
    Description = "A lightweight Gtk+ based file manager for X Window";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--class");
            Name        = "Program class as used by the window manager";
            Description = "Program class as used by the window manager";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--daemon-mode", "-d");
            Name        = "Run PCManFM as a daemon";
            Description = "Run PCManFM as a daemon";
        },
        [FlagParameter]@{
            Keys        = @("--desktop");
            Name        = "Launch desktop manager";
            Description = "Launch desktop manager";
        },
        [FlagParameter]@{
            Keys        = @("--desktop-off");
            Name        = "Turn off desktop manager if it's running";
            Description = "Turn off desktop manager if it's running";
        },
        [FlagParameter]@{
            Keys        = @("--desktop-pref");
            Name        = "Open desktop preference dialog";
            Description = "Open desktop preference dialog";
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--find-files", "-f");
            Name        = "Open a Find Files window";
            Description = "Open a Find Files window";
        },
        [FlagParameter]@{
            Keys        = @("--g-fatal-warnings");
            Name        = "Make all warnings fatal";
            Description = "Make all warnings fatal";
        },
        [ValueParameter]@{
            Keys        = @("--gtk-module");
            Name        = "Load additional GTK+ modules";
            Description = "Load additional GTK+ modules";
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
            Keys        = @("--help-gtk");
            Name        = "Show GTK+ Options";
            Description = "Show GTK+ Options";
        },
        [ValueParameter]@{
            Keys        = @("--name");
            Name        = "Program name as used by the window manager";
            Description = "Program name as used by the window manager";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--new-win", "-n");
            Name        = "Open new window";
            Description = "Open new window";
        },
        [FlagParameter]@{
            Keys        = @("--no-desktop");
            Name        = "No function. Just to be compatible with nautilus";
            Description = "No function. Just to be compatible with nautilus";
        },
        [FlagParameter]@{
            Keys        = @("--one-screen");
            Name        = "Use --desktop option only for one screen";
            Description = "Use --desktop option only for one screen";
        },
        [ValueParameter]@{
            Keys        = @("--profile", "-p");
            Name        = "Name of configuration profile";
            Description = "Name of configuration profile";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--role");
            Name        = "Window role for usage by window manager";
            Description = "Window role for usage by window manager";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--screen");
            Name        = "X screen to use";
            Description = "X screen to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--set-wallpaper", "-w");
            Name        = "Set desktop wallpaper from image FILE";
            Description = "Set desktop wallpaper from image FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--show-pref");
            Name        = "Open Preferences dialog on the page N";
            Description = "Open Preferences dialog on the page N";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sync");
            Name        = "Make X calls synchronous";
            Description = "Make X calls synchronous";
        },
        [ValueParameter]@{
            Keys        = @("--wallpaper-mode");
            Name        = "Set mode of desktop wallpaper";
            Description = "Set mode of desktop wallpaper";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
