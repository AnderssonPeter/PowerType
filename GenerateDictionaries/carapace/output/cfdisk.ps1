# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Cfdisk";
    Keys        = @("cfdisk");
    Name        = "cfdisk";
    Description = "display or manipulate a disk partition table";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--color", "-L");
            Name        = "colorize output";
            Description = "colorize output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [ValueParameter]@{
            Keys        = @("--lock");
            Name        = "use exclusive device lock";
            Description = "use exclusive device lock";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        },
        [FlagParameter]@{
            Keys        = @("--zero", "-z");
            Name        = "start with zeroed partition table";
            Description = "start with zeroed partition table";
        }
    )
}
