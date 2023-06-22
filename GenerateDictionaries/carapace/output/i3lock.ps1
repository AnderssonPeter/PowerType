# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://i3wm.org/i3lock/";
    Keys        = @("i3lock");
    Name        = "i3lock";
    Description = "improved screen locker";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--beep", "-b");
            Name        = "Enable beeping.";
            Description = "Enable beeping.";
        },
        [ValueParameter]@{
            Keys        = @("--color", "-c");
            Name        = "Turn the screen into the given color instead of white.";
            Description = "Turn the screen into the given color instead of white.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Enables debug logging.";
            Description = "Enables debug logging.";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-empty-password", "-e");
            Name        = "Do not validate empty password.";
            Description = "Do not validate empty password.";
        },
        [ValueParameter]@{
            Keys        = @("--image", "-i");
            Name        = "Display the given PNG image instead of a blank screen.";
            Description = "Display the given PNG image instead of a blank screen.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-unlock-indicator", "-u");
            Name        = "Disable  the  unlock indicator.";
            Description = "Disable  the  unlock indicator.";
        },
        [FlagParameter]@{
            Keys        = @("--nofork", "-n");
            Name        = "Don't fork after starting.";
            Description = "Don't fork after starting.";
        },
        [ValueParameter]@{
            Keys        = @("--pointer", "-p");
            Name        = "Set pointer.";
            Description = "Set pointer.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--raw");
            Name        = "Read the image given by --image as a raw image instead of PNG.";
            Description = "Read the image given by --image as a raw image instead of PNG.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-failed-attempts", "-f");
            Name        = "Show the number of failed attempts, if any.";
            Description = "Show the number of failed attempts, if any.";
        },
        [FlagParameter]@{
            Keys        = @("--tiling", "-t");
            Name        = "If an image is specified (via -i) it will display the image tiled all over the screen";
            Description = "If an image is specified (via -i) it will display the image tiled all over the screen";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display the version of your i3lock";
            Description = "Display the version of your i3lock";
        }
    )
}
