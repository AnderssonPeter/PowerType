# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Basename";
    Keys        = @("basename");
    Name        = "basename";
    Description = "strip directory and suffix from filenames";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--multiple", "-a");
            Name        = "support multiple arguments and treat each as a NAME";
            Description = "support multiple arguments and treat each as a NAME";
        },
        [ValueParameter]@{
            Keys        = @("--suffix", "-s");
            Name        = "remove a trailing SUFFIX; implies -a";
            Description = "remove a trailing SUFFIX; implies -a";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--zero", "-z");
            Name        = "end each output line with NUL, not newline";
            Description = "end each output line with NUL, not newline";
        }
    )
}
