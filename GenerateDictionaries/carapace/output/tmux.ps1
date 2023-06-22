# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/tmux/tmux/wiki";
    Keys        = @("tmux");
    Name        = "tmux";
    Description = "terminal multiplexer";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-2");
            Name        = "Force tmux to assume the terminal supports 256 colours";
            Description = "Force tmux to assume the terminal supports 256 colours";
        },
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "Start in control mode";
            Description = "Start in control mode";
        },
        [FlagParameter]@{
            Keys        = @("-D");
            Name        = "Do not start the tmux server as a daemon";
            Description = "Do not start the tmux server as a daemon";
        },
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "specify socket name";
            Description = "specify socket name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-N");
            Name        = "Do not start the server even if the command would normally do so";
            Description = "Do not start the server even if the command would normally do so";
        },
        [ValueParameter]@{
            Keys        = @("-S");
            Name        = "Specify a full alternative path to the server socket";
            Description = "Specify a full alternative path to the server socket";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-T");
            Name        = "Set terminal features for the client";
            Description = "Set terminal features for the client";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "Report the tmux version.";
            Description = "Report the tmux version.";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Execute shell-command using the default shell";
            Description = "Execute shell-command using the default shell";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "Specify an alternative configuration file";
            Description = "Specify an alternative configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "Behave as a login shell";
            Description = "Behave as a login shell";
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "Write UTF-8 output to the terminal";
            Description = "Write UTF-8 output to the terminal";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Request verbose logging";
            Description = "Request verbose logging";
        }
    )
}
