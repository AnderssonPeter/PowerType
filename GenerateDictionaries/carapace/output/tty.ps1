# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/tty";
    Keys        = @("tty");
    Name        = "tty";
    Description = "print the file name of the terminal connected to standard input";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "print nothing, only return an exit status";
            Description = "print nothing, only return an exit status";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-s");
            Name        = "print nothing, only return an exit status";
            Description = "print nothing, only return an exit status";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
