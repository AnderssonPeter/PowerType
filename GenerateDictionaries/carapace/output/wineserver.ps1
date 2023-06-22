# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.winehq.org/Wineserver";
    Keys        = @("wineserver");
    Name        = "wineserver";
    Description = "the Wine server";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "set debug level to n or +1 if n not specified";
            Description = "set debug level to n or +1 if n not specified";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--foreground", "-f");
            Name        = "remain in the foreground for debugging";
            Description = "remain in the foreground for debugging";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message";
            Description = "display this help message";
        },
        [ValueParameter]@{
            Keys        = @("--kill", "-k");
            Name        = "kill the current wineserver, optionally with signal n";
            Description = "kill the current wineserver, optionally with signal n";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--persistent", "-p");
            Name        = "make server persistent, optionally for n seconds";
            Description = "make server persistent, optionally for n seconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "display version information and exit";
            Description = "display version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--wait", "-w");
            Name        = "wait until the current wineserver terminates";
            Description = "wait until the current wineserver terminates";
        }
    )
}
