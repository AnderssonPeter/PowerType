# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/diff";
    Keys        = @("diff");
    Name        = "diff";
    Description = "compare files line by line";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--GTYPE-group-format");
            Name        = "format GTYPE input groups with GFMT";
            Description = "format GTYPE input groups with GFMT";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--LTYPE-line-format");
            Name        = "format LTYPE input lines with LFMT";
            Description = "format LTYPE input lines with LFMT";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--brief", "-q");
            Name        = "report only when files differ";
            Description = "report only when files differ";
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "colorize the output";
            Description = "colorize the output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--context");
            Name        = "output NUM (default 3) lines of copied context";
            Description = "output NUM (default 3) lines of copied context";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ed", "-e");
            Name        = "output an ed script";
            Description = "output an ed script";
        },
        [ValueParameter]@{
            Keys        = @("--exclude", "-x");
            Name        = "exclude files that match PAT";
            Description = "exclude files that match PAT";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-from", "-X");
            Name        = "exclude files that match any pattern in FILE";
            Description = "exclude files that match any pattern in FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--expand-tabs", "-t");
            Name        = "expand tabs to spaces in output";
            Description = "expand tabs to spaces in output";
        },
        [ValueParameter]@{
            Keys        = @("--from-file");
            Name        = "compare FILE1 to all operands";
            Description = "compare FILE1 to all operands";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--horizon-lines");
            Name        = "keep NUM lines of the common prefix and suffix";
            Description = "keep NUM lines of the common prefix and suffix";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ifdef", "-D");
            Name        = "output merged file with '#ifdef NAME' diffs";
            Description = "output merged file with '#ifdef NAME' diffs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-all-space", "-w");
            Name        = "ignore all white space";
            Description = "ignore all white space";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-blank-lines", "-B");
            Name        = "ignore changes where lines are all blank";
            Description = "ignore changes where lines are all blank";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-i");
            Name        = "ignore case differences in file contents";
            Description = "ignore case differences in file contents";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-file-name-case");
            Name        = "ignore case when comparing file names";
            Description = "ignore case when comparing file names";
        },
        [ValueParameter]@{
            Keys        = @("--ignore-matching-lines", "-I");
            Name        = "ignore changes where all lines match RE";
            Description = "ignore changes where all lines match RE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-space-change", "-b");
            Name        = "ignore changes in the amount of white space";
            Description = "ignore changes in the amount of white space";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-tab-expansion", "-E");
            Name        = "ignore changes due to tab expansion";
            Description = "ignore changes due to tab expansion";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-trailing-space", "-Z");
            Name        = "ignore white space at line end";
            Description = "ignore white space at line end";
        },
        [FlagParameter]@{
            Keys        = @("--initial-tab", "-T");
            Name        = "make tabs line up by prepending a tab";
            Description = "make tabs line up by prepending a tab";
        },
        [ValueParameter]@{
            Keys        = @("--label");
            Name        = "use LABEL instead of file name and timestamp";
            Description = "use LABEL instead of file name and timestamp";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--left-column");
            Name        = "output only the left column of common lines";
            Description = "output only the left column of common lines";
        },
        [ValueParameter]@{
            Keys        = @("--line-format");
            Name        = "format all input lines with LFMT";
            Description = "format all input lines with LFMT";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--minimal", "-d");
            Name        = "try hard to find a smaller set of changes";
            Description = "try hard to find a smaller set of changes";
        },
        [FlagParameter]@{
            Keys        = @("--new-file", "-N");
            Name        = "treat absent files as empty";
            Description = "treat absent files as empty";
        },
        [FlagParameter]@{
            Keys        = @("--no-dereference");
            Name        = "don't follow symbolic links";
            Description = "don't follow symbolic links";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-file-name-case");
            Name        = "consider case when comparing file names";
            Description = "consider case when comparing file names";
        },
        [FlagParameter]@{
            Keys        = @("--normal");
            Name        = "output a normal diff (the default)";
            Description = "output a normal diff (the default)";
        },
        [FlagParameter]@{
            Keys        = @("--paginate", "-l");
            Name        = "pass output through 'pr' to paginate it";
            Description = "pass output through 'pr' to paginate it";
        },
        [ValueParameter]@{
            Keys        = @("--palette");
            Name        = "the colors to use when --color is active";
            Description = "the colors to use when --color is active";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rcs", "-n");
            Name        = "output an RCS format diff";
            Description = "output an RCS format diff";
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-r");
            Name        = "recursively compare any subdirectories found";
            Description = "recursively compare any subdirectories found";
        },
        [FlagParameter]@{
            Keys        = @("--report-identical-files", "-s");
            Name        = "report when two files are the same";
            Description = "report when two files are the same";
        },
        [FlagParameter]@{
            Keys        = @("--show-c-function", "-p");
            Name        = "show which C function each change is in";
            Description = "show which C function each change is in";
        },
        [ValueParameter]@{
            Keys        = @("--show-function-line", "-F");
            Name        = "show the most recent line matching RE";
            Description = "show the most recent line matching RE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--side-by-side", "-y");
            Name        = "output in two columns";
            Description = "output in two columns";
        },
        [FlagParameter]@{
            Keys        = @("--speed-large-files");
            Name        = "assume large files and many scattered small changes";
            Description = "assume large files and many scattered small changes";
        },
        [ValueParameter]@{
            Keys        = @("--starting-file", "-S");
            Name        = "start with FILE when comparing directories";
            Description = "start with FILE when comparing directories";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--strip-trailing-cr");
            Name        = "strip trailing carriage return on input";
            Description = "strip trailing carriage return on input";
        },
        [FlagParameter]@{
            Keys        = @("--suppress-blank-empty");
            Name        = "suppress space or tab before empty output lines";
            Description = "suppress space or tab before empty output lines";
        },
        [FlagParameter]@{
            Keys        = @("--suppress-common-lines");
            Name        = "do not output common lines";
            Description = "do not output common lines";
        },
        [ValueParameter]@{
            Keys        = @("--tabsize");
            Name        = "tab stops every NUM (default 8) print columns";
            Description = "tab stops every NUM (default 8) print columns";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--text", "-a");
            Name        = "treat all files as text";
            Description = "treat all files as text";
        },
        [ValueParameter]@{
            Keys        = @("--to-file");
            Name        = "compare all operands to FILE2";
            Description = "compare all operands to FILE2";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unidirectional-new-file");
            Name        = "treat absent first files as empty";
            Description = "treat absent first files as empty";
        },
        [ValueParameter]@{
            Keys        = @("--unified");
            Name        = "output NUM (default 3) lines of unified context";
            Description = "output NUM (default 3) lines of unified context";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--width", "-W");
            Name        = "output at most NUM (default 130) print columns";
            Description = "output at most NUM (default 130) print columns";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
