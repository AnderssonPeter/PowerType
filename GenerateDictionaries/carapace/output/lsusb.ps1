# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/lsusb";
    Keys        = @("lsusb");
    Name        = "lsusb";
    Description = "list USB devices";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-D");
            Name        = "Selects which device lsusb will examine";
            Description = "Selects which device lsusb will examine";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-d");
            Name        = "Show only devices with the specified vendor and product ID numbers";
            Description = "Show only devices with the specified vendor and product ID numbers";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show usage and help";
            Description = "Show usage and help";
        },
        [ValueParameter]@{
            Keys        = @("-s");
            Name        = "Show only devices with specified device and/or bus numbers";
            Description = "Show only devices with specified device and/or bus numbers";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tree", "-t");
            Name        = "Dump the physical USB device hierarchy as a tree";
            Description = "Dump the physical USB device hierarchy as a tree";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Increase verbosity";
            Description = "Increase verbosity";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version of program";
            Description = "Show version of program";
        }
    )
}
