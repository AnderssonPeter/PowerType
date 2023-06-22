# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.man7.org/linux/man-pages/man1/lsmem.1.html";
    Keys        = @("lsmem");
    Name        = "lsmem";
    Description = "list the ranges of available memory with their online status";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "list each individual memory block";
            Description = "list each individual memory block";
        },
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
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "output columns";
            Description = "output columns";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--output-all");
            Name        = "output all columns";
            Description = "output all columns";
        },
        [FlagParameter]@{
            Keys        = @("--pairs", "-P");
            Name        = "use key=`"value`" output format";
            Description = "use key=`"value`" output format";
        },
        [FlagParameter]@{
            Keys        = @("--raw", "-r");
            Name        = "use raw output format";
            Description = "use raw output format";
        },
        [ValueParameter]@{
            Keys        = @("--split", "-S");
            Name        = "split ranges by specified columns";
            Description = "split ranges by specified columns";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--summary");
            Name        = "print summary information";
            Description = "print summary information";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sysroot", "-s");
            Name        = "use the specified directory as system root";
            Description = "use the specified directory as system root";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
