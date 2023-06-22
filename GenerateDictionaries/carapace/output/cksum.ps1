# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Cksum";
    Keys        = @("cksum");
    Name        = "cksum";
    Description = "checksum and count the bytes in a file";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
