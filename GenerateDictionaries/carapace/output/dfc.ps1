# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/rolinh/dfc";
    Keys        = @("dfc");
    Name        = "dfc";
    Description = "report file system space usage information with style";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-M");
            Name        = "do not print `"mounted on`"";
            Description = "do not print `"mounted on`"";
        },
        [FlagParameter]@{
            Keys        = @("-T");
            Name        = "show filesystem type";
            Description = "show filesystem type";
        },
        [FlagParameter]@{
            Keys        = @("-W");
            Name        = "wide filename (un truncate)";
            Description = "wide filename (un truncate)";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "print all mounted filesystem";
            Description = "print all mounted filesystem";
        },
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "do not show the graph bar";
            Description = "do not show the graph bar";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "choose color mode.";
            Description = "choose color mode.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "show used size";
            Description = "show used size";
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "export to specified format.";
            Description = "export to specified format.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "disable auto-adjust mode (force display)";
            Description = "disable auto-adjust mode (force display)";
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "print this message";
            Description = "print this message";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "info about inodes";
            Description = "info about inodes";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "only show information about locally mounted file systems";
            Description = "only show information about locally mounted file systems";
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "use metric (SI unit)";
            Description = "use metric (SI unit)";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "do not print header";
            Description = "do not print header";
        },
        [FlagParameter]@{
            Keys        = @("-o");
            Name        = "show mount flags";
            Description = "show mount flags";
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "filter by file system name.";
            Description = "filter by file system name.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-q");
            Name        = "sort the output.";
            Description = "sort the output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "sum the total usage";
            Description = "sum the total usage";
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "filter by file system type.";
            Description = "filter by file system type.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-u");
            Name        = "choose the unit in which to show the values.";
            Description = "choose the unit in which to show the values.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "print program version";
            Description = "print program version";
        },
        [FlagParameter]@{
            Keys        = @("-w");
            Name        = "use a wider bar";
            Description = "use a wider bar";
        }
    )
}
