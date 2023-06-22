# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://siyanpanayotov.com/project/viewnior";
    Keys        = @("viewnior");
    Name        = "viewnior";
    Description = "simple, fast and elegant image viewer";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fullscreen");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help options";
            Description = "Show help options";
        },
        [FlagParameter]@{
            Keys        = @("--help-all");
            Name        = "Show all help options";
            Description = "Show all help options";
        },
        [FlagParameter]@{
            Keys        = @("--help-gtk");
            Name        = "Show GTK+ Options";
            Description = "Show GTK+ Options";
        },
        [FlagParameter]@{
            Keys        = @("--slideshow");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "";
            Description = "";
        }
    )
}
