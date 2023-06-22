# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/split";
    Keys        = @("split");
    Name        = "split";
    Description = "split a file into pieces";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--additional-suffix");
            Name        = "append an additional SUFFIX to file names";
            Description = "append an additional SUFFIX to file names";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bytes", "-b");
            Name        = "put SIZE bytes per output file";
            Description = "put SIZE bytes per output file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "use numeric suffixes starting at 0, not alphabetic";
            Description = "use numeric suffixes starting at 0, not alphabetic";
        },
        [FlagParameter]@{
            Keys        = @("--elide-empty-files", "-e");
            Name        = "do not generate empty output files with '-n'";
            Description = "do not generate empty output files with '-n'";
        },
        [ValueParameter]@{
            Keys        = @("--filter");
            Name        = "write to shell COMMAND; file name is `$FILE";
            Description = "write to shell COMMAND; file name is `$FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--hex-suffixes");
            Name        = "same as -x, but allow setting the start value";
            Description = "same as -x, but allow setting the start value";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--line-bytes", "-C");
            Name        = "put at most SIZE bytes of records per output file";
            Description = "put at most SIZE bytes of records per output file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--lines", "-l");
            Name        = "put NUMBER lines/records per output file";
            Description = "put NUMBER lines/records per output file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--number", "-n");
            Name        = "generate CHUNKS output files; see explanation below";
            Description = "generate CHUNKS output files; see explanation below";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--numeric-suffixes");
            Name        = "same as -d, but allow setting the start value";
            Description = "same as -d, but allow setting the start value";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--separator", "-t");
            Name        = "use SEP instead of newline as the record separator;";
            Description = "use SEP instead of newline as the record separator;";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--suffix-length", "-a");
            Name        = "generate suffixes of length N (default 2)";
            Description = "generate suffixes of length N (default 2)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unbuffered", "-u");
            Name        = "immediately copy input to output with '-n r/...'";
            Description = "immediately copy input to output with '-n r/...'";
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "print a diagnostic just before each";
            Description = "print a diagnostic just before each";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "use hex suffixes starting at 0, not alphabetic";
            Description = "use hex suffixes starting at 0, not alphabetic";
        }
    )
}
