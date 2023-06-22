# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.winehq.org/Winetricks";
    Keys        = @("winetricks");
    Name        = "winetricks";
    Description = "manage virtual Windows environments using Wine";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--country");
            Name        = "Set country code to CC and don't detect your IP address";
            Description = "Set country code to CC and don't detect your IP address";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ddrescue", "-r");
            Name        = "Retry hard when caching scratched discs";
            Description = "Retry hard when caching scratched discs";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "Don't check whether packages were already installed";
            Description = "Don't check whether packages were already installed";
        },
        [FlagParameter]@{
            Keys        = @("--gui");
            Name        = "Show gui diagnostics even when driven by commandline";
            Description = "Show gui diagnostics even when driven by commandline";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display this message and exit";
            Description = "Display this message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--isolate");
            Name        = "Install each app or game in its own bottle (WINEPREFIX)";
            Description = "Install each app or game in its own bottle (WINEPREFIX)";
        },
        [FlagParameter]@{
            Keys        = @("--keep_isos", "-k");
            Name        = "Cache isos (allows later installation without disc)";
            Description = "Cache isos (allows later installation without disc)";
        },
        [FlagParameter]@{
            Keys        = @("--no-clean");
            Name        = "Don't delete temp directories (useful during debugging)";
            Description = "Don't delete temp directories (useful during debugging)";
        },
        [FlagParameter]@{
            Keys        = @("--self-update");
            Name        = "Update this application to the last version";
            Description = "Update this application to the last version";
        },
        [FlagParameter]@{
            Keys        = @("--torify", "-t");
            Name        = "Run downloads under torify, if available";
            Description = "Run downloads under torify, if available";
        },
        [FlagParameter]@{
            Keys        = @("--unattended", "-q");
            Name        = "Don't ask any questions, just install automatically";
            Description = "Don't ask any questions, just install automatically";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Echo all commands as they are executed";
            Description = "Echo all commands as they are executed";
        },
        [FlagParameter]@{
            Keys        = @("--verify");
            Name        = "Run (automated) GUI tests for verbs, if available";
            Description = "Run (automated) GUI tests for verbs, if available";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Display version and exit";
            Description = "Display version and exit";
        },
        [CommandParameter]@{
            Keys        = @("annihilate");
            Name        = "annihilate";
            Description = "Delete ALL DATA AND APPLICATIONS INSIDE THIS WINEPREFIX";
        },
        [CommandParameter]@{
            Keys        = @("apps");
            Name        = "apps";
            Description = "";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list verbs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("benchmarks");
            Name        = "benchmarks";
            Description = "";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list verbs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("dlls");
            Name        = "dlls";
            Description = "";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list verbs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fonts");
            Name        = "fonts";
            Description = "";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list verbs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("games");
            Name        = "games";
            Description = "";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list verbs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "list categories";
        },
        [CommandParameter]@{
            Keys        = @("list-all");
            Name        = "list-all";
            Description = "list all categories and their verbs";
        },
        [CommandParameter]@{
            Keys        = @("list-cached");
            Name        = "list-cached";
            Description = "list cached-and-ready-to-install verbs";
        },
        [CommandParameter]@{
            Keys        = @("list-download");
            Name        = "list-download";
            Description = "list verbs which download automatically";
        },
        [CommandParameter]@{
            Keys        = @("list-installed");
            Name        = "list-installed";
            Description = "list already-installed verbs";
        },
        [CommandParameter]@{
            Keys        = @("list-manual-download");
            Name        = "list-manual-download";
            Description = "list verbs which download with some help from the user";
        },
        [CommandParameter]@{
            Keys        = @("settings");
            Name        = "settings";
            Description = "";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list verbs";
                }
            )
        }
    )
}
