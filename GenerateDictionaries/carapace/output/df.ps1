# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/df";
    Keys        = @("df");
    Name        = "df";
    Description = "report file system disk space usage";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "include pseudo, duplicate, inaccessible file systems";
            Description = "include pseudo, duplicate, inaccessible file systems";
        },
        [ValueParameter]@{
            Keys        = @("--block-size", "-B");
            Name        = "scale sizes by SIZE before printing them";
            Description = "scale sizes by SIZE before printing them";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-type", "-x");
            Name        = "limit listing to file systems not of type TYPE";
            Description = "limit listing to file systems not of type TYPE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--human-readable", "-h");
            Name        = "print sizes in powers of 1024 (e.g., 1023M)";
            Description = "print sizes in powers of 1024 (e.g., 1023M)";
        },
        [FlagParameter]@{
            Keys        = @("--inodes", "-i");
            Name        = "list inode information instead of block usage";
            Description = "list inode information instead of block usage";
        },
        [FlagParameter]@{
            Keys        = @("-k");
            Name        = "like --block-size=1K";
            Description = "like --block-size=1K";
        },
        [FlagParameter]@{
            Keys        = @("--local", "-l");
            Name        = "limit listing to local file systems";
            Description = "limit listing to local file systems";
        },
        [FlagParameter]@{
            Keys        = @("--no-sync");
            Name        = "do not invoke sync before getting usage info (default)";
            Description = "do not invoke sync before getting usage info (default)";
        },
        [ValueParameter]@{
            Keys        = @("--output");
            Name        = "use the output format defined by FIELD_LIST, or print all fields if FIELD_LIST is omitted.";
            Description = "use the output format defined by FIELD_LIST, or print all fields if FIELD_LIST is omitted.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--portability", "-P");
            Name        = "use the POSIX output format";
            Description = "use the POSIX output format";
        },
        [FlagParameter]@{
            Keys        = @("--print-type", "-T");
            Name        = "print file system type";
            Description = "print file system type";
        },
        [FlagParameter]@{
            Keys        = @("--si", "-H");
            Name        = "print sizes in powers of 1000 (e.g., 1.1G)";
            Description = "print sizes in powers of 1000 (e.g., 1.1G)";
        },
        [FlagParameter]@{
            Keys        = @("--sync");
            Name        = "invoke sync before getting usage info";
            Description = "invoke sync before getting usage info";
        },
        [FlagParameter]@{
            Keys        = @("--total");
            Name        = "elide all entries insignificant to available space, and produce a grand total";
            Description = "elide all entries insignificant to available space, and produce a grand total";
        },
        [ValueParameter]@{
            Keys        = @("--type", "-t");
            Name        = "limit listing to file systems of type TYPE";
            Description = "limit listing to file systems of type TYPE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "(ignored)";
            Description = "(ignored)";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
