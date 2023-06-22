# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/AWK";
    Keys        = @("awk");
    Name        = "awk";
    Description = "pattern scanning and processing language";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--assign", "-v");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--bignum", "-M");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--characters-as-bytes", "-b");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--copyright", "-C");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--debug", "-D");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dump-variables", "-d");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exec", "-E");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--field-separator", "-F");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--gen-pot", "-g");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--include", "-i");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--lint", "-L");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--lint-old", "-t");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--load", "-l");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-optimize", "-s");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--non-decimal-data", "-n");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--optimize", "-O");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--posix", "-P");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--pretty-print", "-o");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile", "-p");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--re-interval", "-r");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--sandbox", "-S");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--source", "-e");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--traditional", "-c");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--use-lc-numeric", "-N");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "";
            Description = "";
        }
    )
}
