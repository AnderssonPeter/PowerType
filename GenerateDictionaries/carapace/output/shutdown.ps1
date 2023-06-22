# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/shutdown";
    Keys        = @("shutdown");
    Name        = "shutdown";
    Description = "Shut down the system";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-c");
            Name        = "Cancel a pending shutdown";
            Description = "Cancel a pending shutdown";
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "Equivalent to --poweroff, overridden by --halt";
            Description = "Equivalent to --poweroff, overridden by --halt";
        },
        [FlagParameter]@{
            Keys        = @("--halt", "-H");
            Name        = "Halt the machine";
            Description = "Halt the machine";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [FlagParameter]@{
            Keys        = @("-k");
            Name        = "Don't halt/power-off/reboot, just send warnings";
            Description = "Don't halt/power-off/reboot, just send warnings";
        },
        [FlagParameter]@{
            Keys        = @("--no-wall");
            Name        = "Don't send wall message before halt/power-off/reboot";
            Description = "Don't send wall message before halt/power-off/reboot";
        },
        [FlagParameter]@{
            Keys        = @("--poweroff", "-P");
            Name        = "Power-off the machine";
            Description = "Power-off the machine";
        },
        [FlagParameter]@{
            Keys        = @("--reboot", "-r");
            Name        = "Reboot the machine";
            Description = "Reboot the machine";
        }
    )
}
