# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://help.gnome.org/users/gnome-terminal/stable/";
    Keys        = @("gnome-terminal");
    Name        = "gnome-terminal";
    Description = "A terminal emulator for GNOME";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
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
        [FlagParameter]@{
            Keys        = @("--help-terminal");
            Name        = "Show terminal options";
            Description = "Show terminal options";
        },
        [FlagParameter]@{
            Keys        = @("--help-terminal-options");
            Name        = "Show per-terminal options";
            Description = "Show per-terminal options";
        },
        [FlagParameter]@{
            Keys        = @("--help-window-options");
            Name        = "Show per-window options";
            Description = "Show per-window options";
        },
        [ValueParameter]@{
            Keys        = @("--load-config");
            Name        = "Load a terminal configuration file";
            Description = "Load a terminal configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-environment");
            Name        = "Do not pass the environment";
            Description = "Do not pass the environment";
        },
        [FlagParameter]@{
            Keys        = @("--preferences");
            Name        = "Show preferences window";
            Description = "Show preferences window";
        },
        [FlagParameter]@{
            Keys        = @("--print-environment", "-p");
            Name        = "Print environment variables to interact with the terminal";
            Description = "Print environment variables to interact with the terminal";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Suppress output";
            Description = "Suppress output";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Increase diagnostic verbosity";
            Description = "Increase diagnostic verbosity";
        }
    )
}
