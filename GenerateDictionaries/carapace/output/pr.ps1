# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/pr";
    Keys        = @("pr");
    Name        = "pr";
    Description = "convert text files for printing";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-F");
            Name        = "use form feeds instead of newlines to separate pages";
            Description = "use form feeds instead of newlines to separate pages";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--across", "-a");
            Name        = "print columns across rather than down, used together";
            Description = "print columns across rather than down, used together";
        },
        [ValueParameter]@{
            Keys        = @("--columns");
            Name        = "output COLUMN columns and print columns down";
            Description = "output COLUMN columns and print columns down";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--date-format", "-D");
            Name        = "use FORMAT for the header date";
            Description = "use FORMAT for the header date";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--double-space", "-d");
            Name        = "double space the output";
            Description = "double space the output";
        },
        [ValueParameter]@{
            Keys        = @("--expand", "-e");
            Name        = "expand input CHARs (TABs) to tab WIDTH (8)";
            Description = "expand input CHARs (TABs) to tab WIDTH (8)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-N");
            Name        = "start counting with NUMBER at 1st line of first page printed";
            Description = "start counting with NUMBER at 1st line of first page printed";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--form-feed", "-f");
            Name        = "use form feeds instead of newlines to separate pages";
            Description = "use form feeds instead of newlines to separate pages";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--header", "-h");
            Name        = "use a centered HEADER instead of filename in page header";
            Description = "use a centered HEADER instead of filename in page header";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--indent", "-o");
            Name        = "offset each line with MARGIN (zero) spaces,";
            Description = "offset each line with MARGIN (zero) spaces,";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--join-lines", "-J");
            Name        = "merge full lines, turns off -W line truncation, no column";
            Description = "merge full lines, turns off -W line truncation, no column";
        },
        [ValueParameter]@{
            Keys        = @("--length", "-l");
            Name        = "set the page length to PAGE_LENGTH (66) lines";
            Description = "set the page length to PAGE_LENGTH (66) lines";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--merge", "-m");
            Name        = "print all files in parallel, one in each column,";
            Description = "print all files in parallel, one in each column,";
        },
        [FlagParameter]@{
            Keys        = @("--no-file-warnings", "-r");
            Name        = "omit warning when a file cannot be opened";
            Description = "omit warning when a file cannot be opened";
        },
        [ValueParameter]@{
            Keys        = @("--number-lines", "-n");
            Name        = "number lines, use DIGITS (5) digits";
            Description = "number lines, use DIGITS (5) digits";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--omit-header", "-t");
            Name        = "omit page headers and trailers;";
            Description = "omit page headers and trailers;";
        },
        [FlagParameter]@{
            Keys        = @("--omit-pagination", "-T");
            Name        = "omit page headers and trailers, eliminate any pagination";
            Description = "omit page headers and trailers, eliminate any pagination";
        },
        [ValueParameter]@{
            Keys        = @("--output-tabs", "-i");
            Name        = "replace spaces with CHARs (TABs) to tab WIDTH (8)";
            Description = "replace spaces with CHARs (TABs) to tab WIDTH (8)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--page-width", "-W");
            Name        = "set page width to PAGE_WIDTH (72) characters alway";
            Description = "set page width to PAGE_WIDTH (72) characters alway";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pages");
            Name        = "begin [stop] printing with page";
            Description = "begin [stop] printing with page";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sep-string", "-S");
            Name        = "separate columns by STRING";
            Description = "separate columns by STRING";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--separator", "-s");
            Name        = "separate columns by a single character";
            Description = "separate columns by a single character";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-control-chars", "-c");
            Name        = "use hat notation (^G) and octal backslash notation";
            Description = "use hat notation (^G) and octal backslash notation";
        },
        [FlagParameter]@{
            Keys        = @("--show-nonprinting", "-v");
            Name        = "use octal backslash notation";
            Description = "use octal backslash notation";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--width", "-w");
            Name        = "set page width to PAGE_WIDTH (72) characters";
            Description = "set page width to PAGE_WIDTH (72) characters";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
