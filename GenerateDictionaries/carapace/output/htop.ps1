# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://htop.dev/";
    Keys        = @("htop");
    Name        = "htop";
    Description = "interactive process viewer";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--delay", "-d");
            Name        = "Set the delay between updates, in tenths of seconds";
            Description = "Set the delay between updates, in tenths of seconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--drop-capabilities");
            Name        = "Drop Linux capabilities when running as root";
            Description = "Drop Linux capabilities when running as root";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--filter", "-F");
            Name        = "Show only the commands matching the given filter";
            Description = "Show only the commands matching the given filter";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this help screen";
            Description = "Print this help screen";
        },
        [FlagParameter]@{
            Keys        = @("--highlight-changes", "-H");
            Name        = "Highlight new and old processes";
            Description = "Highlight new and old processes";
        },
        [FlagParameter]@{
            Keys        = @("--no-color", "-C");
            Name        = "Use a monochrome color scheme";
            Description = "Use a monochrome color scheme";
        },
        [FlagParameter]@{
            Keys        = @("--no-mouse", "-m");
            Name        = "Disable the mouse";
            Description = "Disable the mouse";
        },
        [FlagParameter]@{
            Keys        = @("--no-unicode", "-U");
            Name        = "Do not use unicode but plain ASCII";
            Description = "Do not use unicode but plain ASCII";
        },
        [ValueParameter]@{
            Keys        = @("--pid", "-p");
            Name        = "Show only the given PIDs";
            Description = "Show only the given PIDs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--readonly");
            Name        = "Disable all system and process changing feature";
            Description = "Disable all system and process changing feature";
        },
        [ValueParameter]@{
            Keys        = @("--sort-key", "-s");
            Name        = "Sort by COLUMN (try --sort-key=help for a list)";
            Description = "Sort by COLUMN (try --sort-key=help for a list)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tree", "-t");
            Name        = "Show the tree view by default";
            Description = "Show the tree view by default";
        },
        [ValueParameter]@{
            Keys        = @("--user", "-u");
            Name        = "Show only processes for a given user (or `$USER)";
            Description = "Show only processes for a given user (or `$USER)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version info";
            Description = "Print version info";
        }
    )
}
