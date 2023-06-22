# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/dmenu";
    Keys        = @("dmenu");
    Name        = "dmenu";
    Description = "dynamic menu";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--b");
            Name        = "dmenu appears at the bottom of the screen.";
            Description = "dmenu appears at the bottom of the screen.";
        },
        [FlagParameter]@{
            Keys        = @("--f");
            Name        = "dmenu grabs the keyboard before reading stdin if not reading from a tty.";
            Description = "dmenu grabs the keyboard before reading stdin if not reading from a tty.";
        },
        [ValueParameter]@{
            Keys        = @("--fn");
            Name        = "defines the font or font set used.";
            Description = "defines the font or font set used.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--h");
            Name        = "dmenu uses a menu line of at least 'height' pixels tall, but no less than 8.";
            Description = "dmenu uses a menu line of at least 'height' pixels tall, but no less than 8.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--i");
            Name        = "dmenu matches menu items case insensitively.";
            Description = "dmenu matches menu items case insensitively.";
        },
        [ValueParameter]@{
            Keys        = @("--l");
            Name        = "dmenu lists items vertically, with the given number of lines.";
            Description = "dmenu lists items vertically, with the given number of lines.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--m");
            Name        = "dmenu is displayed on the monitor number supplied.";
            Description = "dmenu is displayed on the monitor number supplied.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--nb");
            Name        = "defines the normal background color.";
            Description = "defines the normal background color.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--nf");
            Name        = "defines the normal foreground color.";
            Description = "defines the normal foreground color.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--p");
            Name        = "defines the prompt to be displayed to the left of the input field.";
            Description = "defines the prompt to be displayed to the left of the input field.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sb");
            Name        = "defines the selected background color.";
            Description = "defines the selected background color.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sf");
            Name        = "defines the selected foreground color.";
            Description = "defines the selected foreground color.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "prints version information to stdout, then exits.";
            Description = "prints version information to stdout, then exits.";
        },
        [ValueParameter]@{
            Keys        = @("--w");
            Name        = "sets the width of the dmenu window.";
            Description = "sets the width of the dmenu window.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--x");
            Name        = "dmenu is placed at this offset measured from the left side of the monitor.";
            Description = "dmenu is placed at this offset measured from the left side of the monitor.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--y");
            Name        = "dmenu is placed at this offset measured from the top of the monitor.";
            Description = "dmenu is placed at this offset measured from the top of the monitor.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
