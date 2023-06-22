# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/modinfo";
    Keys        = @("modinfo");
    Name        = "modinfo";
    Description = "Show information about a Linux Kernel module";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--author", "-a");
            Name        = "Print only 'author'";
            Description = "Print only 'author'";
        },
        [ValueParameter]@{
            Keys        = @("--basedir", "-b");
            Name        = "Use DIR as filesystem root for /lib/modules";
            Description = "Use DIR as filesystem root for /lib/modules";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--description", "-d");
            Name        = "Print only 'description'";
            Description = "Print only 'description'";
        },
        [ValueParameter]@{
            Keys        = @("--field", "-F");
            Name        = "Print only provided FIELD";
            Description = "Print only provided FIELD";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--filename", "-n");
            Name        = "Print only 'filename'";
            Description = "Print only 'filename'";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [FlagParameter]@{
            Keys        = @("--license", "-l");
            Name        = "Print only 'license'";
            Description = "Print only 'license'";
        },
        [FlagParameter]@{
            Keys        = @("--null", "-0");
            Name        = "Use \0 instead of \n";
            Description = "Use \0 instead of \n";
        },
        [FlagParameter]@{
            Keys        = @("--parameters", "-p");
            Name        = "Print only 'parm'";
            Description = "Print only 'parm'";
        },
        [ValueParameter]@{
            Keys        = @("--set-version", "-k");
            Name        = "Use VERSION instead of ``uname -r``";
            Description = "Use VERSION instead of ``uname -r``";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version";
            Description = "Show version";
        }
    )
}
