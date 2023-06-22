# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/sysctl";
    Keys        = @("sysctl");
    Name        = "sysctl";
    Description = "configure kernel parameters at runtime";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-A");
            Name        = "alias of -a";
            Description = "alias of -a";
        },
        [FlagParameter]@{
            Keys        = @("-X");
            Name        = "alias of -a";
            Description = "alias of -a";
        },
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "display all variables";
            Description = "display all variables";
        },
        [FlagParameter]@{
            Keys        = @("--binary", "-b");
            Name        = "print value without new line";
            Description = "print value without new line";
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "alias of -h";
            Description = "alias of -h";
        },
        [FlagParameter]@{
            Keys        = @("--deprecated");
            Name        = "include deprecated parameters to listing";
            Description = "include deprecated parameters to listing";
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "alias of -p";
            Description = "alias of -p";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore", "-e");
            Name        = "ignore unknown variables errors";
            Description = "ignore unknown variables errors";
        },
        [ValueParameter]@{
            Keys        = @("--load", "-p");
            Name        = "read values from file";
            Description = "read values from file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--names", "-N");
            Name        = "print variable names without values";
            Description = "print variable names without values";
        },
        [FlagParameter]@{
            Keys        = @("-o");
            Name        = "does nothing";
            Description = "does nothing";
        },
        [ValueParameter]@{
            Keys        = @("--pattern", "-r");
            Name        = "select setting that match expression";
            Description = "select setting that match expression";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "do not echo variable set";
            Description = "do not echo variable set";
        },
        [FlagParameter]@{
            Keys        = @("--system");
            Name        = "read values from all system directories";
            Description = "read values from all system directories";
        },
        [FlagParameter]@{
            Keys        = @("--values", "-n");
            Name        = "print only values of the given variable(s)";
            Description = "print only values of the given variable(s)";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--write", "-w");
            Name        = "enable writing a value to variable";
            Description = "enable writing a value to variable";
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "does nothing";
            Description = "does nothing";
        }
    )
}
