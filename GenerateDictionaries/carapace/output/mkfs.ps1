# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/mkfs";
    Keys        = @("mkfs");
    Name        = "mkfs";
    Description = "Make a Linux filesystem";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [ValueParameter]@{
            Keys        = @("--type", "-t");
            Name        = "filesystem type; when unspecified, ext2 is used";
            Description = "filesystem type; when unspecified, ext2 is used";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "explain what is being done;";
            Description = "explain what is being done;";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
