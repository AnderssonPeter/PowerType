# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://cmus.github.io/";
    Keys        = @("cmus");
    Name        = "cmus";
    Description = "Curses based music player";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--listen");
            Name        = "listen on ADDR instead of `$CMUS_SOCKET or `$XDG_RUNTIME_DIR/cmus-socket";
            Description = "listen on ADDR instead of `$CMUS_SOCKET or `$XDG_RUNTIME_DIR/cmus-socket";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--plugins");
            Name        = "list available plugins and exit";
            Description = "list available plugins and exit";
        },
        [FlagParameter]@{
            Keys        = @("--show-cursor");
            Name        = "always visible cursor";
            Description = "always visible cursor";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show version";
            Description = "show version";
        }
    )
}
