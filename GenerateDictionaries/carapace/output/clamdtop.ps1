# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamdtop");
    Name        = "clamdtop";
    Description = "monitor the Clam AntiVirus Daemon";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--config-file", "-c");
            Name        = "Read clamd's configuration files from FILE";
            Description = "Read clamd's configuration files from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--defaultcolors", "-d");
            Name        = "Use default terminal colors";
            Description = "Use default terminal colors";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version";
            Description = "Show version";
        }
    )
}
