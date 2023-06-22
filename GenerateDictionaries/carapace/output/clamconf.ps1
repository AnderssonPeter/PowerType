# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamconf");
    Name        = "clamconf";
    Description = "Clam AntiVirus configuration utility";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--config-dir", "-c");
            Name        = "Read configuration files from DIR";
            Description = "Read configuration files from DIR";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--generate-config", "-g");
            Name        = "Generate example config file";
            Description = "Generate example config file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [FlagParameter]@{
            Keys        = @("--non-default", "-n");
            Name        = "Only display non-default settings";
            Description = "Only display non-default settings";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version";
            Description = "Show version";
        }
    )
}
