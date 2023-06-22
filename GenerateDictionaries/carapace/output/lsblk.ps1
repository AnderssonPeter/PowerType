# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/lsblk";
    Keys        = @("lsblk");
    Name        = "lsblk";
    Description = "list block devices";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "print all devices";
            Description = "print all devices";
        },
        [FlagParameter]@{
            Keys        = @("--ascii", "-i");
            Name        = "use ascii characters only";
            Description = "use ascii characters only";
        },
        [FlagParameter]@{
            Keys        = @("--bytes", "-b");
            Name        = "print SIZE in bytes rather than in human readable format";
            Description = "print SIZE in bytes rather than in human readable format";
        },
        [ValueParameter]@{
            Keys        = @("--dedup", "-E");
            Name        = "de-duplicate output by <column>";
            Description = "de-duplicate output by <column>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--discard", "-D");
            Name        = "print discard capabilities";
            Description = "print discard capabilities";
        },
        [ValueParameter]@{
            Keys        = @("--exclude", "-e");
            Name        = "exclude devices by major number (default: RAM disks)";
            Description = "exclude devices by major number (default: RAM disks)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fs", "-f");
            Name        = "output info about filesystems";
            Description = "output info about filesystems";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [ValueParameter]@{
            Keys        = @("--include", "-I");
            Name        = "show only devices with specified major numbers";
            Description = "show only devices with specified major numbers";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--inverse", "-s");
            Name        = "inverse dependencies";
            Description = "inverse dependencies";
        },
        [FlagParameter]@{
            Keys        = @("--json", "-J");
            Name        = "use JSON output format";
            Description = "use JSON output format";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "use list format output";
            Description = "use list format output";
        },
        [FlagParameter]@{
            Keys        = @("--merge", "-M");
            Name        = "group parents of sub-trees (usable for RAIDs, Multi-path)";
            Description = "group parents of sub-trees (usable for RAIDs, Multi-path)";
        },
        [FlagParameter]@{
            Keys        = @("--nodeps", "-d");
            Name        = "don't print slaves or holders";
            Description = "don't print slaves or holders";
        },
        [FlagParameter]@{
            Keys        = @("--noheadings", "-n");
            Name        = "don't print headings";
            Description = "don't print headings";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "output columns";
            Description = "output columns";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--output-all", "-O");
            Name        = "output all columns";
            Description = "output all columns";
        },
        [FlagParameter]@{
            Keys        = @("--pairs", "-P");
            Name        = "use key=`"value`" output format";
            Description = "use key=`"value`" output format";
        },
        [FlagParameter]@{
            Keys        = @("--paths", "-p");
            Name        = "print complete device path";
            Description = "print complete device path";
        },
        [FlagParameter]@{
            Keys        = @("--perms", "-m");
            Name        = "output info about permissions";
            Description = "output info about permissions";
        },
        [FlagParameter]@{
            Keys        = @("--raw", "-r");
            Name        = "use raw output format";
            Description = "use raw output format";
        },
        [FlagParameter]@{
            Keys        = @("--scsi", "-S");
            Name        = "output info about SCSI devices";
            Description = "output info about SCSI devices";
        },
        [ValueParameter]@{
            Keys        = @("--sort", "-x");
            Name        = "sort output by <column>";
            Description = "sort output by <column>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sysroot");
            Name        = "use specified directory as system root";
            Description = "use specified directory as system root";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--topology", "-t");
            Name        = "output info about topology";
            Description = "output info about topology";
        },
        [ValueParameter]@{
            Keys        = @("--tree", "-T");
            Name        = "use tree format output";
            Description = "use tree format output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        },
        [FlagParameter]@{
            Keys        = @("--zoned", "-z");
            Name        = "print zone model";
            Description = "print zone model";
        }
    )
}
