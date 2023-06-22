# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/diff3";
    Keys        = @("diff3");
    Name        = "diff3";
    Description = "compare three files line by line";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-X");
            Name        = "like -x, but bracket conflicts";
            Description = "like -x, but bracket conflicts";
        },
        [ValueParameter]@{
            Keys        = @("--diff-program");
            Name        = "use PROGRAM to compare files";
            Description = "use PROGRAM to compare files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--easy-only", "-3");
            Name        = "like -e, but incorporate only nonoverlapping changes";
            Description = "like -e, but incorporate only nonoverlapping changes";
        },
        [FlagParameter]@{
            Keys        = @("--ed", "-e");
            Name        = "output ed script incorporating changes";
            Description = "output ed script incorporating changes";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "append 'w' and 'q' commands to ed scripts";
            Description = "append 'w' and 'q' commands to ed scripts";
        },
        [FlagParameter]@{
            Keys        = @("--initial-tab", "-T");
            Name        = "make tabs line up by prepending a tab";
            Description = "make tabs line up by prepending a tab";
        },
        [ValueParameter]@{
            Keys        = @("--label", "-L");
            Name        = "use LABEL instead of file name";
            Description = "use LABEL instead of file name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--merge", "-m");
            Name        = "output actual merged file";
            Description = "output actual merged file";
        },
        [FlagParameter]@{
            Keys        = @("--overlap-only", "-x");
            Name        = "like -e, but incorporate only overlapping changes";
            Description = "like -e, but incorporate only overlapping changes";
        },
        [FlagParameter]@{
            Keys        = @("--show-all", "-A");
            Name        = "output all changes, bracketing conflicts";
            Description = "output all changes, bracketing conflicts";
        },
        [FlagParameter]@{
            Keys        = @("--show-overlap", "-E");
            Name        = "like -e, but bracket conflicts";
            Description = "like -e, but bracket conflicts";
        },
        [FlagParameter]@{
            Keys        = @("--strip-trailing-cr");
            Name        = "strip trailing carriage return on input";
            Description = "strip trailing carriage return on input";
        },
        [FlagParameter]@{
            Keys        = @("--text", "-a");
            Name        = "treat all files as text";
            Description = "treat all files as text";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
