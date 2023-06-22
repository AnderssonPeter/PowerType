# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://st.suckless.org/";
    Keys        = @("st");
    Name        = "st";
    Description = "simple terminal";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-T");
            Name        = "defines the window title (default 'st').";
            Description = "defines the window title (default 'st').";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "disable alternate screens in terminal";
            Description = "disable alternate screens in terminal";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "defines the window class (default `$TERM).";
            Description = "defines the window class (default `$TERM).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "st executes command instead of the shell.";
            Description = "st executes command instead of the shell.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "defines the font to use when st is run.";
            Description = "defines the font to use when st is run.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-g");
            Name        = "defines the X11 geometry string.";
            Description = "defines the X11 geometry string.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "will fixate the position given with the -g option.";
            Description = "will fixate the position given with the -g option.";
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "use a tty line instead of a pseudo terminal.";
            Description = "use a tty line instead of a pseudo terminal.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-n");
            Name        = "defines the window instance name (default `$TERM).";
            Description = "defines the window instance name (default `$TERM).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "writes all the I/O to iofile.";
            Description = "writes all the I/O to iofile.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "defines the window title (default 'st').";
            Description = "defines the window title (default 'st').";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "prints version information to stderr, then exits.";
            Description = "prints version information to stderr, then exits.";
        },
        [ValueParameter]@{
            Keys        = @("-w");
            Name        = "embeds st within the window identified by windowid";
            Description = "embeds st within the window identified by windowid";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
