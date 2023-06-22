# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.gnome.org/action/show/Apps/DiskUsageAnalyzer";
    Keys        = @("baobab");
    Name        = "baobab";
    Description = "A graphical disk usage analyzer for the GNOME deskto";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all-file-systems", "-a");
            Name        = "Do not skip directories on different file systems. Ignored if DIRECTORY is not specified.";
            Description = "Do not skip directories on different file systems. Ignored if DIRECTORY is not specified.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help options";
            Description = "Show help options";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version information and exit";
            Description = "Print version information and exit";
        }
    )
}
