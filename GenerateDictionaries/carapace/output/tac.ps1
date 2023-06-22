# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/tac";
    Keys        = @("tac");
    Name        = "tac";
    Description = "concatenate and print files in reverse";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--before", "-b");
            Name        = "attach the separator before instead of after";
            Description = "attach the separator before instead of after";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--regex", "-r");
            Name        = "interpret the separator as a regular expression";
            Description = "interpret the separator as a regular expression";
        },
        [ValueParameter]@{
            Keys        = @("--separator", "-s");
            Name        = "use STRING as the separator instead of newline";
            Description = "use STRING as the separator instead of newline";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
