# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.gnome.org/Projects/GnomeKeyring/";
    Keys        = @("gnome-keyring-daemon");
    Name        = "gnome-keyring-daemon";
    Description = "The Gnome Keyring Daemon";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--components", "-c");
            Name        = "The optional components to run";
            Description = "The optional components to run";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--control-directory", "-C");
            Name        = "The directory for sockets and control data";
            Description = "The directory for sockets and control data";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--daemonize", "-d");
            Name        = "Run as a daemon";
            Description = "Run as a daemon";
        },
        [FlagParameter]@{
            Keys        = @("--foreground", "-f");
            Name        = "Run in the foreground";
            Description = "Run in the foreground";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help options";
            Description = "Show help options";
        },
        [FlagParameter]@{
            Keys        = @("--login", "-l");
            Name        = "Run by PAM for a user login. Read login password from stdin";
            Description = "Run by PAM for a user login. Read login password from stdin";
        },
        [FlagParameter]@{
            Keys        = @("--replace", "-r");
            Name        = "Replace the daemon for this desktop login environment.";
            Description = "Replace the daemon for this desktop login environment.";
        },
        [FlagParameter]@{
            Keys        = @("--start", "-s");
            Name        = "Start a dameon or initialize an already running daemon.";
            Description = "Start a dameon or initialize an already running daemon.";
        },
        [FlagParameter]@{
            Keys        = @("--unlock");
            Name        = "Prompt for login keyring password, or read from stdin";
            Description = "Prompt for login keyring password, or read from stdin";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show the version number and exit.";
            Description = "Show the version number and exit.";
        }
    )
}
