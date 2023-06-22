# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/lscpu";
    Keys        = @("lscpu");
    Name        = "lscpu";
    Description = "display information about the CPU architecture";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "print both online and offline CPUs (default for -e)";
            Description = "print both online and offline CPUs (default for -e)";
        },
        [FlagParameter]@{
            Keys        = @("--bytes", "-B");
            Name        = "print sizes in bytes rather than in human readable format";
            Description = "print sizes in bytes rather than in human readable format";
        },
        [ValueParameter]@{
            Keys        = @("--caches", "-C");
            Name        = "info about caches in extended readable format";
            Description = "info about caches in extended readable format";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extended", "-e");
            Name        = "print out an extended readable format";
            Description = "print out an extended readable format";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--hex", "-x");
            Name        = "print hexadecimal masks rather than lists of CPUs";
            Description = "print hexadecimal masks rather than lists of CPUs";
        },
        [FlagParameter]@{
            Keys        = @("--json", "-J");
            Name        = "use JSON for default or extended format";
            Description = "use JSON for default or extended format";
        },
        [FlagParameter]@{
            Keys        = @("--offline", "-c");
            Name        = "print offline CPUs only";
            Description = "print offline CPUs only";
        },
        [FlagParameter]@{
            Keys        = @("--online", "-b");
            Name        = "print online CPUs only (default for -p)";
            Description = "print online CPUs only (default for -p)";
        },
        [FlagParameter]@{
            Keys        = @("--output-all");
            Name        = "print all available columns for -e, -p or -C";
            Description = "print all available columns for -e, -p or -C";
        },
        [ValueParameter]@{
            Keys        = @("--parse", "-p");
            Name        = "print out a parsable format";
            Description = "print out a parsable format";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--physical", "-y");
            Name        = "print physical instead of logical IDs";
            Description = "print physical instead of logical IDs";
        },
        [ValueParameter]@{
            Keys        = @("--sysroot", "-s");
            Name        = "use specified directory as system root";
            Description = "use specified directory as system root";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
