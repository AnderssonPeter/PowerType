# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/greshake/i3status-rust";
    Keys        = @("i3status-rs");
    Name        = "i3status-rs";
    Description = "A feature-rich and resource-friendly replacement for i3status, written in Rust";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--exit-on-error");
            Name        = "Exit rather than printing errors to i3bar and continuing";
            Description = "Exit rather than printing errors to i3bar and continuing";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [FlagParameter]@{
            Keys        = @("--never-pause");
            Name        = "Ignore any attempts by i3 to pause the bar when hidden/fullscreen";
            Description = "Ignore any attempts by i3 to pause the bar when hidden/fullscreen";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Prints version information";
            Description = "Prints version information";
        }
    )
}
