# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/mkswap";
    Keys        = @("mkswap");
    Name        = "mkswap";
    Description = "Set up a Linux swap area";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--check", "-c");
            Name        = "check bad blocks before creating the swap area";
            Description = "check bad blocks before creating the swap area";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "allow swap size area be larger than device";
            Description = "allow swap size area be larger than device";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [ValueParameter]@{
            Keys        = @("--label", "-L");
            Name        = "specify label";
            Description = "specify label";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--lock");
            Name        = "use exclusive device lock (yes, no or nonblock)";
            Description = "use exclusive device lock (yes, no or nonblock)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pagesize", "-p");
            Name        = "specify page size in bytes";
            Description = "specify page size in bytes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--swapversion", "-v");
            Name        = "specify swap-space version number";
            Description = "specify swap-space version number";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--uuid", "-U");
            Name        = "specify the uuid to use";
            Description = "specify the uuid to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "verbose output";
            Description = "verbose output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
