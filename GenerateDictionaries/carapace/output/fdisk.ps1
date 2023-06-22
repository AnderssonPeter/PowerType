# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Fdisk";
    Keys        = @("fdisk");
    Name        = "fdisk";
    Description = "manipulate disk partition table";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--bytes");
            Name        = "print SIZE in bytes rather than in human readable format";
            Description = "print SIZE in bytes rather than in human readable format";
        },
        [ValueParameter]@{
            Keys        = @("--color", "-L");
            Name        = "colorize output";
            Description = "colorize output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--compatibility", "-c");
            Name        = "mode is 'dos' or 'nondos' (default)";
            Description = "mode is 'dos' or 'nondos' (default)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cylinders", "-C");
            Name        = "specify the number of cylinders";
            Description = "specify the number of cylinders";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--getsz", "-s");
            Name        = "display device size in 512-byte sectors [DEPRECATED]";
            Description = "display device size in 512-byte sectors [DEPRECATED]";
        },
        [ValueParameter]@{
            Keys        = @("--heads", "-H");
            Name        = "specify the number of heads";
            Description = "specify the number of heads";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "display partitions and exit";
            Description = "display partitions and exit";
        },
        [FlagParameter]@{
            Keys        = @("--list-details", "-x");
            Name        = "like --list but with more details";
            Description = "like --list but with more details";
        },
        [ValueParameter]@{
            Keys        = @("--lock");
            Name        = "use exclusive device lock (yes, no or nonblock)";
            Description = "use exclusive device lock (yes, no or nonblock)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--noauto-pt", "-n");
            Name        = "don't create default partition table on empty devices";
            Description = "don't create default partition table on empty devices";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "output columns";
            Description = "output columns";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--protect-boot", "-B");
            Name        = "don't erase bootbits when creating a new label";
            Description = "don't erase bootbits when creating a new label";
        },
        [ValueParameter]@{
            Keys        = @("--sector-size", "-b");
            Name        = "physical and logical sector size";
            Description = "physical and logical sector size";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sectors", "-S");
            Name        = "specify the number of sectors per track";
            Description = "specify the number of sectors per track";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--type", "-t");
            Name        = "recognize specified partition table type only";
            Description = "recognize specified partition table type only";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--units", "-u");
            Name        = "display units: 'cylinders' or 'sectors' (default)";
            Description = "display units: 'cylinders' or 'sectors' (default)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        },
        [ValueParameter]@{
            Keys        = @("--wipe", "-w");
            Name        = "wipe signatures (auto, always or never)";
            Description = "wipe signatures (auto, always or never)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--wipe-partitions", "-W");
            Name        = "wipe signatures from new partitions (auto, always or never)";
            Description = "wipe signatures from new partitions (auto, always or never)";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
