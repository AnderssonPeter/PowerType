# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/xbacklight";
    Keys        = @("xbacklight");
    Name        = "xbacklight";
    Description = "adjust backlight brightness using RandR extension";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--d");
            Name        = "Display to set backlight for.";
            Description = "Display to set backlight for.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dec");
            Name        = "Decreases brightness by the specified amount.";
            Description = "Decreases brightness by the specified amount.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "Display to set backlight for.";
            Description = "Display to set backlight for.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--get");
            Name        = "Print  out  the  current backlight brightness of each output with such a control.";
            Description = "Print  out  the  current backlight brightness of each output with such a control.";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Print out a summary of the usage and exit.";
            Description = "Print out a summary of the usage and exit.";
        },
        [ValueParameter]@{
            Keys        = @("--inc");
            Name        = "Increases brightness by the specified amount.";
            Description = "Increases brightness by the specified amount.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--set");
            Name        = "Sets each backlight brightness to the specified level.";
            Description = "Sets each backlight brightness to the specified level.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--steps");
            Name        = "Number of steps to take while fading.";
            Description = "Number of steps to take while fading.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time");
            Name        = "Length of time to spend fading the backlight between old and new value.";
            Description = "Length of time to spend fading the backlight between old and new value.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Print out the program version and exit.";
            Description = "Print out the program version and exit.";
        }
    )
}
