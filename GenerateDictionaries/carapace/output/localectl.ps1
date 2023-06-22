# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.man7.org/linux/man-pages/man1/localectl.1.html";
    Keys        = @("localectl");
    Name        = "localectl";
    Description = "Query or change system locale and keyboard settings";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [ValueParameter]@{
            Keys        = @("--host", "-H");
            Name        = "Operate on remote host";
            Description = "Operate on remote host";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--machine", "-M");
            Name        = "Operate on local container";
            Description = "Operate on local container";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-ask-password");
            Name        = "Do not prompt for password";
            Description = "Do not prompt for password";
        },
        [FlagParameter]@{
            Keys        = @("--no-convert");
            Name        = "Don't convert keyboard mappings";
            Description = "Don't convert keyboard mappings";
        },
        [FlagParameter]@{
            Keys        = @("--no-pager");
            Name        = "Do not pipe output into a pager";
            Description = "Do not pipe output into a pager";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show package version";
            Description = "Show package version";
        },
        [CommandParameter]@{
            Keys        = @("list-keymaps");
            Name        = "list-keymaps";
            Description = "Show known virtual console keyboard mapping";
        },
        [CommandParameter]@{
            Keys        = @("list-x11-keymap-layouts");
            Name        = "list-x11-keymap-layouts";
            Description = "Show known X11 keyboard mapping layouts";
        },
        [CommandParameter]@{
            Keys        = @("list-x11-keymap-models");
            Name        = "list-x11-keymap-models";
            Description = "Show known X11 keyboard mapping models";
        },
        [CommandParameter]@{
            Keys        = @("list-x11-keymap-options");
            Name        = "list-x11-keymap-options";
            Description = "Show known X11 keyboard mapping options";
        },
        [CommandParameter]@{
            Keys        = @("list-x11-keymap-variants");
            Name        = "list-x11-keymap-variants";
            Description = "Show known X11 keyboard mapping variants";
        },
        [CommandParameter]@{
            Keys        = @("set-keymap");
            Name        = "set-keymap";
            Description = "Set console and X11 keyboard mappings";
        },
        [CommandParameter]@{
            Keys        = @("set-locale");
            Name        = "set-locale";
            Description = "Set system locale";
        },
        [CommandParameter]@{
            Keys        = @("set-x11-keymap");
            Name        = "set-x11-keymap";
            Description = "Set X11 and console keyboard mappings";
        },
        [CommandParameter]@{
            Keys        = @("status");
            Name        = "status";
            Description = "Show current locale settings";
        }
    )
}
