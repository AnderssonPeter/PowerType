# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/tail";
    Keys        = @("tail");
    Name        = "tail";
    Description = "output the last part of files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-F");
            Name        = "same as --follow=name --retry";
            Description = "same as --follow=name --retry";
        },
        [ValueParameter]@{
            Keys        = @("--bytes", "-c");
            Name        = "output the last NUM bytes; or use -c +NUM to";
            Description = "output the last NUM bytes; or use -c +NUM to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--follow", "-f");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--lines", "-n");
            Name        = "output the last NUM lines, instead of the last 10;";
            Description = "output the last NUM lines, instead of the last 10;";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-unchanged-stats");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pid");
            Name        = "with -f, terminate after process ID, PID dies";
            Description = "with -f, terminate after process ID, PID dies";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "never output headers giving file names";
            Description = "never output headers giving file names";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--retry");
            Name        = "keep trying to open a file if it is inaccessible";
            Description = "keep trying to open a file if it is inaccessible";
        },
        [ValueParameter]@{
            Keys        = @("--sleep-interval", "-s");
            Name        = "with -f, sleep for approximately N seconds";
            Description = "with -f, sleep for approximately N seconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "always output headers giving file names";
            Description = "always output headers giving file names";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--zero-terminated", "-z");
            Name        = "line delimiter is NUL, not newline";
            Description = "line delimiter is NUL, not newline";
        }
    )
}
