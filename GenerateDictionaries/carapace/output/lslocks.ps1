# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://man7.org/linux/man-pages/man8/lslocks.8.html";
    Keys        = @("lslocks");
    Name        = "lslocks";
    Description = "List local system locks";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--bytes", "-b");
            Name        = "print SIZE in bytes rather than in human readable format";
            Description = "print SIZE in bytes rather than in human readable format";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--json", "-J");
            Name        = "use JSON output format";
            Description = "use JSON output format";
        },
        [FlagParameter]@{
            Keys        = @("--noheadings", "-n");
            Name        = "don't print headings";
            Description = "don't print headings";
        },
        [FlagParameter]@{
            Keys        = @("--noinaccessible", "-i");
            Name        = "ignore locks without read permissions";
            Description = "ignore locks without read permissions";
        },
        [FlagParameter]@{
            Keys        = @("--notruncate", "-u");
            Name        = "don't truncate text in columns";
            Description = "don't truncate text in columns";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "define which output columns to use";
            Description = "define which output columns to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--output-all");
            Name        = "output all columns";
            Description = "output all columns";
        },
        [ValueParameter]@{
            Keys        = @("--pid", "-p");
            Name        = "display only locks held by this process";
            Description = "display only locks held by this process";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--raw", "-r");
            Name        = "use the raw output format";
            Description = "use the raw output format";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
