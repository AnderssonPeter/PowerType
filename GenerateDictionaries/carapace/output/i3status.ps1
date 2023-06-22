# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://i3wm.org/i3status/";
    Keys        = @("i3status");
    Name        = "i3status";
    Description = "Generates a status line for i3bar, dzen2, xmobar or lemonbar";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Specifies an alternate configuration file path.";
            Description = "Specifies an alternate configuration file path.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
