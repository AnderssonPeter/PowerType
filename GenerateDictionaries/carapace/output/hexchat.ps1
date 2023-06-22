# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://hexchat.github.io/";
    Keys        = @("hexchat");
    Name        = "hexchat";
    Description = "IRC Client";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cfgdir", "-d");
            Name        = "Use a different config directory";
            Description = "Use a different config directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--command", "-c");
            Name        = "Execute command";
            Description = "Execute command";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--configdir", "-u");
            Name        = "Show user config directory";
            Description = "Show user config directory";
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--existing", "-e");
            Name        = "Open URL or execute command in an existing HexChat";
            Description = "Open URL or execute command in an existing HexChat";
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
            Keys        = @("--minimize");
            Name        = "Begin minimized. Level 0=Normal 1=Iconified 2=Tray";
            Description = "Begin minimized. Level 0=Normal 1=Iconified 2=Tray";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-auto", "-a");
            Name        = "Don't auto connect to servers";
            Description = "Don't auto connect to servers";
        },
        [FlagParameter]@{
            Keys        = @("--no-plugins", "-n");
            Name        = "Don't auto load any plugins";
            Description = "Don't auto load any plugins";
        },
        [FlagParameter]@{
            Keys        = @("--plugindir", "-p");
            Name        = "Show plugin/script auto-load directory";
            Description = "Show plugin/script auto-load directory";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Show version information";
            Description = "Show version information";
        }
    )
}
