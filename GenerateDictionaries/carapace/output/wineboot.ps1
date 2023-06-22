# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.winehq.org/Wineboot";
    Keys        = @("wineboot");
    Name        = "wineboot";
    Description = "perform Wine initialization, startup, and shutdown task";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--end-session", "-e");
            Name        = "End the current session cleanly";
            Description = "End the current session cleanly";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "Force exit for processes that don't exit cleanly";
            Description = "Force exit for processes that don't exit cleanly";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display this help message";
            Description = "Display this help message";
        },
        [FlagParameter]@{
            Keys        = @("--init", "-i");
            Name        = "Perform initialization for first Wine instance";
            Description = "Perform initialization for first Wine instance";
        },
        [FlagParameter]@{
            Keys        = @("--kill", "-k");
            Name        = "Kill running processes without any cleanup";
            Description = "Kill running processes without any cleanup";
        },
        [FlagParameter]@{
            Keys        = @("--restart", "-r");
            Name        = "Restart only, don't do normal startup operations";
            Description = "Restart only, don't do normal startup operations";
        },
        [FlagParameter]@{
            Keys        = @("--shutdown", "-s");
            Name        = "Shutdown only, don't reboot";
            Description = "Shutdown only, don't reboot";
        },
        [FlagParameter]@{
            Keys        = @("--update", "-u");
            Name        = "Update the wineprefix directory";
            Description = "Update the wineprefix directory";
        }
    )
}
