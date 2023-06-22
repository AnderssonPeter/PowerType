# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/brndnmtthws/conky";
    Keys        = @("conky");
    Name        = "conky";
    Description = "A system  monitor for X originally based on the torsmo code";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--alignment", "-a");
            Name        = "text alignment on screen";
            Description = "text alignment on screen";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config", "-c");
            Name        = "config file to load";
            Description = "config file to load";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--daemonize", "-d");
            Name        = "daemonize, fork to background";
            Description = "daemonize, fork to background";
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-D");
            Name        = "increase debugging output, ie. -DD for more debugging";
            Description = "increase debugging output, ie. -DD for more debugging";
        },
        [ValueParameter]@{
            Keys        = @("--display", "-X");
            Name        = "X11 display to use";
            Description = "X11 display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--double-buffer", "-b");
            Name        = "double buffer (prevents flickering)";
            Description = "double buffer (prevents flickering)";
        },
        [ValueParameter]@{
            Keys        = @("--font", "-f");
            Name        = "font to use";
            Description = "font to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help";
            Description = "help";
        },
        [ValueParameter]@{
            Keys        = @("-i");
            Name        = "number of times to update conky (and quit)";
            Description = "number of times to update conky (and quit)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--interval", "-u");
            Name        = "update interval";
            Description = "update interval";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--own-window", "-o");
            Name        = "create own window to draw";
            Description = "create own window to draw";
        },
        [ValueParameter]@{
            Keys        = @("--pause", "-p");
            Name        = "pause for SECS seconds at startup before doing anything";
            Description = "pause for SECS seconds at startup before doing anything";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-config", "-C");
            Name        = "print the builtin default config to stdout";
            Description = "print the builtin default config to stdout";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "quiet mode";
            Description = "quiet mode";
        },
        [ValueParameter]@{
            Keys        = @("--text", "-t");
            Name        = "text to render, remember single quotes, like -t '`$uptime'";
            Description = "text to render, remember single quotes, like -t '`$uptime'";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "version";
            Description = "version";
        },
        [ValueParameter]@{
            Keys        = @("--window-id", "-w");
            Name        = "window id to draw";
            Description = "window id to draw";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-x");
            Name        = "x position";
            Description = "x position";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--xinerama-head", "-m");
            Name        = "Xinerama monitor index (0=first)";
            Description = "Xinerama monitor index (0=first)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-y");
            Name        = "y position";
            Description = "y position";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
