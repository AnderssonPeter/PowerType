# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamav-milter");
    Name        = "clamav-milter";
    Description = "milter compatible scanner";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--config-file", "-c");
            Name        = "Read configuration from file";
            Description = "Read configuration from file";
            # Source = $?? # todo: Fix or remove this!
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
