# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Chmod";
    Keys        = @("chmod");
    Name        = "chmod";
    Description = "change file mode bits";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--changes", "-c");
            Name        = "like verbose but report only when a change is made";
            Description = "like verbose but report only when a change is made";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--no-preserve-root");
            Name        = "do not treat '/' specially (the default)";
            Description = "do not treat '/' specially (the default)";
        },
        [FlagParameter]@{
            Keys        = @("--preserve-root");
            Name        = "fail to operate recursively on '/'";
            Description = "fail to operate recursively on '/'";
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "suppress most error messages";
            Description = "suppress most error messages";
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-R");
            Name        = "change files and directories recursively";
            Description = "change files and directories recursively";
        },
        [ValueParameter]@{
            Keys        = @("--reference");
            Name        = "use RFILE's mode instead of MODE values";
            Description = "use RFILE's mode instead of MODE values";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-f");
            Name        = "suppress most error messages";
            Description = "suppress most error messages";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "output a diagnostic for every file processed";
            Description = "output a diagnostic for every file processed";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
