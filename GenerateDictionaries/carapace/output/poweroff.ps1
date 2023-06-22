# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/halt";
    Keys        = @("poweroff");
    Name        = "poweroff";
    Description = "poweroff the machine";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "Force immediate halt/power-off/reboot";
            Description = "Force immediate halt/power-off/reboot";
        },
        [FlagParameter]@{
            Keys        = @("--halt");
            Name        = "Halt the machine";
            Description = "Halt the machine";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [FlagParameter]@{
            Keys        = @("--no-wall");
            Name        = "Don't send wall message before halt/power-off/reboot";
            Description = "Don't send wall message before halt/power-off/reboot";
        },
        [FlagParameter]@{
            Keys        = @("--no-wtmp", "-d");
            Name        = "Don't write wtmp record";
            Description = "Don't write wtmp record";
        },
        [FlagParameter]@{
            Keys        = @("--poweroff", "-p");
            Name        = "Switch off the machine";
            Description = "Switch off the machine";
        },
        [FlagParameter]@{
            Keys        = @("--reboot");
            Name        = "Reboot the machine";
            Description = "Reboot the machine";
        }
    )
}
