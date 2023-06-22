# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://apps.gnome.org/app/org.gnome.Maps/";
    Keys        = @("gnome-maps");
    Name        = "gnome-maps";
    Description = "A map application for GNOME";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--force-online");
            Name        = "Ignore network availability";
            Description = "Ignore network availability";
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
            Keys        = @("--help-gapplication");
            Name        = "Show GApplication options";
            Description = "Show GApplication options";
        },
        [FlagParameter]@{
            Keys        = @("--help-gtk");
            Name        = "Show GTK+ Options";
            Description = "Show GTK+ Options";
        },
        [FlagParameter]@{
            Keys        = @("--local");
            Name        = "A path to a local tiles directory structure";
            Description = "A path to a local tiles directory structure";
        },
        [FlagParameter]@{
            Keys        = @("--local-tile-size");
            Name        = "Tile size for local tiles directory";
            Description = "Tile size for local tiles directory";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Show the version of the program";
            Description = "Show the version of the program";
        }
    )
}
