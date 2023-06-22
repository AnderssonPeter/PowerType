# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Chsh";
    Keys        = @("chsh");
    Name        = "chsh";
    Description = "Change your login shell";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-u");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--list-shells", "-l");
            Name        = "print list of shells and exit";
            Description = "print list of shells and exit";
        },
        [ValueParameter]@{
            Keys        = @("--shell", "-s");
            Name        = "specify login shell";
            Description = "specify login shell";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "display version";
            Description = "display version";
        }
    )
}
