# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/du";
    Keys        = @("du");
    Name        = "du";
    Description = "estimate file space usage";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-H");
            Name        = "equivalent to --dereference-args (-D)";
            Description = "equivalent to --dereference-args (-D)";
        },
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "write counts for all files, not just directories";
            Description = "write counts for all files, not just directories";
        },
        [FlagParameter]@{
            Keys        = @("--apparent-size");
            Name        = "print apparent sizes, rather than disk usage; although";
            Description = "print apparent sizes, rather than disk usage; although";
        },
        [ValueParameter]@{
            Keys        = @("--block-size", "-B");
            Name        = "scale sizes by SIZE before printing them; e.g.,";
            Description = "scale sizes by SIZE before printing them; e.g.,";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--bytes", "-b");
            Name        = "equivalent to '--apparent-size --block-size=1'";
            Description = "equivalent to '--apparent-size --block-size=1'";
        },
        [FlagParameter]@{
            Keys        = @("--count-links", "-l");
            Name        = "count sizes many times if hard linked";
            Description = "count sizes many times if hard linked";
        },
        [FlagParameter]@{
            Keys        = @("--dereference", "-L");
            Name        = "dereference all symbolic links";
            Description = "dereference all symbolic links";
        },
        [FlagParameter]@{
            Keys        = @("--dereference-args", "-D");
            Name        = "dereference only symlinks that are listed on the";
            Description = "dereference only symlinks that are listed on the";
        },
        [ValueParameter]@{
            Keys        = @("--exclude");
            Name        = "exclude files that match PATTERN";
            Description = "exclude files that match PATTERN";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-from", "-X");
            Name        = "exclude files that match any pattern in FILE";
            Description = "exclude files that match any pattern in FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--files0-from");
            Name        = "summarize disk usage of the";
            Description = "summarize disk usage of the";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--human-readable", "-h");
            Name        = "print sizes in human readable format (e.g., 1K 234M 2G)";
            Description = "print sizes in human readable format (e.g., 1K 234M 2G)";
        },
        [FlagParameter]@{
            Keys        = @("--inodes");
            Name        = "list inode usage information instead of block usage";
            Description = "list inode usage information instead of block usage";
        },
        [FlagParameter]@{
            Keys        = @("-k");
            Name        = "like --block-size=1K";
            Description = "like --block-size=1K";
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "like --block-size=1M";
            Description = "like --block-size=1M";
        },
        [ValueParameter]@{
            Keys        = @("--max-depth", "-d");
            Name        = "print the total for a directory (or file, with --all)";
            Description = "print the total for a directory (or file, with --all)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-dereference", "-P");
            Name        = "don't follow any symbolic links (this is the default)";
            Description = "don't follow any symbolic links (this is the default)";
        },
        [FlagParameter]@{
            Keys        = @("--null", "-0");
            Name        = "end each output line with NUL, not newline";
            Description = "end each output line with NUL, not newline";
        },
        [FlagParameter]@{
            Keys        = @("--one-file-system", "-x");
            Name        = "skip directories on different file systems";
            Description = "skip directories on different file systems";
        },
        [FlagParameter]@{
            Keys        = @("--separate-dirs", "-S");
            Name        = "for directories do not include size of subdirectories";
            Description = "for directories do not include size of subdirectories";
        },
        [FlagParameter]@{
            Keys        = @("--si");
            Name        = "like -h, but use powers of 1000 not 1024";
            Description = "like -h, but use powers of 1000 not 1024";
        },
        [FlagParameter]@{
            Keys        = @("--summarize", "-s");
            Name        = "display only a total for each argument";
            Description = "display only a total for each argument";
        },
        [ValueParameter]@{
            Keys        = @("--threshold", "-t");
            Name        = "exclude entries smaller than SIZE if positive,";
            Description = "exclude entries smaller than SIZE if positive,";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time");
            Name        = "show time as WORD instead of modification time:";
            Description = "show time as WORD instead of modification time:";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time-style");
            Name        = "show times using STYLE, which can be:";
            Description = "show times using STYLE, which can be:";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--total", "-c");
            Name        = "produce a grand total";
            Description = "produce a grand total";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
