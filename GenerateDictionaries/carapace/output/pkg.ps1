# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.termux.com/wiki/Package_Management";
    Keys        = @("pkg");
    Name        = "pkg";
    Description = "A tool for managing packages";
    Parameters  = @(
        [CommandParameter]@{
            Keys        = @("autoclean");
            Name        = "autoclean";
            Description = "Remove all outdated packages from .deb package cache";
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "Remove all packages from .deb package cache";
        },
        [CommandParameter]@{
            Keys        = @("files");
            Name        = "files";
            Description = "Show all files installed by packages";
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "show help";
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Install specified packages";
        },
        [CommandParameter]@{
            Keys        = @("list-all");
            Name        = "list-all";
            Description = "List all packages available in repositories";
        },
        [CommandParameter]@{
            Keys        = @("list-installed");
            Name        = "list-installed";
            Description = "List installed packages";
        },
        [CommandParameter]@{
            Keys        = @("reinstall");
            Name        = "reinstall";
            Description = "Reinstall specified installed packages at the latest version";
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "Search package by query";
        },
        [CommandParameter]@{
            Keys        = @("show");
            Name        = "show";
            Description = "Show basic metadata, such as dependencies";
        },
        [CommandParameter]@{
            Keys        = @("uninstall");
            Name        = "uninstall";
            Description = "Uninstall specified packages";
        },
        [CommandParameter]@{
            Keys        = @("upgrade");
            Name        = "upgrade";
            Description = "Upgrade all installed packages to the latest version";
        }
    )
}
