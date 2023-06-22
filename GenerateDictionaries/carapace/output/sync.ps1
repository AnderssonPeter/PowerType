# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/sync";
    Keys        = @("sync");
    Name        = "sync";
    Description = "Synchronize cached writes to persistent storage";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--data", "-d");
            Name        = "sync only file data, no unneeded metadata";
            Description = "sync only file data, no unneeded metadata";
        },
        [FlagParameter]@{
            Keys        = @("--file-system", "-f");
            Name        = "sync the file systems that contain the files";
            Description = "sync the file systems that contain the files";
        },
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
