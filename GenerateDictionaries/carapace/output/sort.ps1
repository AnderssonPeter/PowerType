# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/sort";
    Keys        = @("sort");
    Name        = "sort";
    Description = "sort lines of text files";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-C");
            Name        = "--check=silent  like -c, but do not report first bad line";
            Description = "--check=silent  like -c, but do not report first bad line";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--batch-size");
            Name        = "merge at most NMERGE inputs at once";
            Description = "merge at most NMERGE inputs at once";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--buffer-size", "-S");
            Name        = "use SIZE for main memory buffer";
            Description = "use SIZE for main memory buffer";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--check", "-c");
            Name        = "check for sorted input; do not sort";
            Description = "check for sorted input; do not sort";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--compress-program");
            Name        = "compress temporaries with PROG";
            Description = "compress temporaries with PROG";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "annotate the part of the line used to sort, and warn about questionable usage to stderr";
            Description = "annotate the part of the line used to sort, and warn about questionable usage to stderr";
        },
        [FlagParameter]@{
            Keys        = @("--dictionary-order", "-d");
            Name        = "consider only blanks and alphanumeric characters";
            Description = "consider only blanks and alphanumeric characters";
        },
        [ValueParameter]@{
            Keys        = @("--field-separator", "-t");
            Name        = "use SEP instead of non-blank to blank transition";
            Description = "use SEP instead of non-blank to blank transition";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--files0-from");
            Name        = "read input from the files specified by NUL-terminated names in file F";
            Description = "read input from the files specified by NUL-terminated names in file F";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--general-numeric-sort", "-g");
            Name        = "compare according to general numerical value";
            Description = "compare according to general numerical value";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--human-numeric-sort", "-h");
            Name        = "compare human readable numbers (e.g., 2K 1G)";
            Description = "compare human readable numbers (e.g., 2K 1G)";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-f");
            Name        = "fold lower case to upper case characters";
            Description = "fold lower case to upper case characters";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-leading-blanks", "-b");
            Name        = "ignore leading blanks";
            Description = "ignore leading blanks";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-nonprinting", "-i");
            Name        = "consider only printable characters";
            Description = "consider only printable characters";
        },
        [ValueParameter]@{
            Keys        = @("--key", "-k");
            Name        = "sort via a key; KEYDEF gives location and type";
            Description = "sort via a key; KEYDEF gives location and type";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--merge", "-m");
            Name        = "merge already sorted files; do not sort";
            Description = "merge already sorted files; do not sort";
        },
        [FlagParameter]@{
            Keys        = @("--month-sort", "-M");
            Name        = "compare (unknown) < 'JAN' < ... < 'DEC'";
            Description = "compare (unknown) < 'JAN' < ... < 'DEC'";
        },
        [FlagParameter]@{
            Keys        = @("--numeric-sort", "-n");
            Name        = "compare according to string numerical value";
            Description = "compare according to string numerical value";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "write result to FILE instead of standard output";
            Description = "write result to FILE instead of standard output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--parallel");
            Name        = "change the number of sorts run concurrently to N";
            Description = "change the number of sorts run concurrently to N";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--random-sort", "-R");
            Name        = "shuffle, but group identical keys.  See shuf(1)";
            Description = "shuffle, but group identical keys.  See shuf(1)";
        },
        [ValueParameter]@{
            Keys        = @("--random-source");
            Name        = "get random bytes from FILE";
            Description = "get random bytes from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--reverse", "-r");
            Name        = "reverse the result of comparisons";
            Description = "reverse the result of comparisons";
        },
        [ValueParameter]@{
            Keys        = @("--sort");
            Name        = "sort according to WORD";
            Description = "sort according to WORD";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stable", "-s");
            Name        = "stabilize sort by disabling last-resort comparison";
            Description = "stabilize sort by disabling last-resort comparison";
        },
        [ValueParameter]@{
            Keys        = @("--temporary-directory", "-T");
            Name        = "use DIR for temporaries, not `$TMPDIR or /tmp;";
            Description = "use DIR for temporaries, not `$TMPDIR or /tmp;";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unique", "-u");
            Name        = "with -c, check for strict ordering; without -c, output only the first of an equal run";
            Description = "with -c, check for strict ordering; without -c, output only the first of an equal run";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--version-sort", "-V");
            Name        = "natural sort of (version) numbers within text";
            Description = "natural sort of (version) numbers within text";
        },
        [FlagParameter]@{
            Keys        = @("--zero-terminated", "-z");
            Name        = "line delimiter is NUL, not newline";
            Description = "line delimiter is NUL, not newline";
        }
    )
}
