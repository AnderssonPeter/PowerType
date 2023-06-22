# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamd");
    Name        = "clamd";
    Description = "an anti-virus daemon";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--config-file", "-c");
            Name        = "Read configuration from FILE";
            Description = "Read configuration from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Enable debug mode";
            Description = "Enable debug mode";
        },
        [FlagParameter]@{
            Keys        = @("--foreground", "-F");
            Name        = "Run in foreground; do not daemonize";
            Description = "Run in foreground; do not daemonize";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [ValueParameter]@{
            Keys        = @("--log", "-l");
            Name        = "Log into FILE";
            Description = "Log into FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version number";
            Description = "Show version number";
        }
    )
}
