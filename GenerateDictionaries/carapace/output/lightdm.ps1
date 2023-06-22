# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/canonical/lightdm";
    Keys        = @("lightdm");
    Name        = "lightdm";
    Description = "a display manager";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cache-dir");
            Name        = "Directory to cache information";
            Description = "Directory to cache information";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config", "-c");
            Name        = "Use configuration file";
            Description = "Use configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "Print debugging messages";
            Description = "Print debugging messages";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help options";
            Description = "Show help options";
        },
        [ValueParameter]@{
            Keys        = @("--log-dir");
            Name        = "Directory to write logs to";
            Description = "Directory to write logs to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pid-file");
            Name        = "File to write PID into";
            Description = "File to write PID into";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--run-dir");
            Name        = "Directory to store running state";
            Description = "Directory to store running state";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-config");
            Name        = "Show combined configuration";
            Description = "Show combined configuration";
        },
        [FlagParameter]@{
            Keys        = @("--test-mode");
            Name        = "Run as unprivileged user, skipping things that require root access";
            Description = "Run as unprivileged user, skipping things that require root access";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Show release version";
            Description = "Show release version";
        }
    )
}
