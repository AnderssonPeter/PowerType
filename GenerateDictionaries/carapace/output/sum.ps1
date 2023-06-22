# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/sum";
    Keys        = @("sum");
    Name        = "sum";
    Description = "checksum and count the blocks in a file";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "use BSD sum algorithm, use 1K blocks";
            Description = "use BSD sum algorithm, use 1K blocks";
        },
        [FlagParameter]@{
            Keys        = @("--sysv", "-s");
            Name        = "use System V sum algorithm, use 512 bytes blocks";
            Description = "use System V sum algorithm, use 512 bytes blocks";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
