# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/locale";
    Keys        = @("locale");
    Name        = "locale";
    Description = "Get locale-specific information";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all-locales", "-a");
            Name        = "Write names of available locales";
            Description = "Write names of available locales";
        },
        [FlagParameter]@{
            Keys        = @("--category-name", "-c");
            Name        = "Write names of selected categories";
            Description = "Write names of selected categories";
        },
        [FlagParameter]@{
            Keys        = @("--charmaps", "-m");
            Name        = "Write names of available charmaps";
            Description = "Write names of available charmaps";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "Give this help list";
            Description = "Give this help list";
        },
        [FlagParameter]@{
            Keys        = @("--keyword-name", "-k");
            Name        = "Write names of selected keywords";
            Description = "Write names of selected keywords";
        },
        [FlagParameter]@{
            Keys        = @("--usage");
            Name        = "Give a short usage message";
            Description = "Give a short usage message";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Print more information";
            Description = "Print more information";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print program version";
            Description = "Print program version";
        }
    )
}
