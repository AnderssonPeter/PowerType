# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://ultimaker.com/software/ultimaker-cura";
    Keys        = @("cura");
    Name        = "cura";
    Description = "Powerful, easy-to-use 3D printing software";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Turn on the debug mode by setting this option.";
            Description = "Turn on the debug mode by setting this option.";
        },
        [FlagParameter]@{
            Keys        = @("--external-backend");
            Name        = "Use an externally started backend instead of starting";
            Description = "Use an externally started backend instead of starting";
        },
        [FlagParameter]@{
            Keys        = @("--headless");
            Name        = "Hides all GUI elements.";
            Description = "Hides all GUI elements.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show help";
            Description = "show help";
        },
        [FlagParameter]@{
            Keys        = @("--single-instance");
            Name        = "run a single instance only";
            Description = "run a single instance only";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show program's version number and exit";
            Description = "show program's version number and exit";
        }
    )
}
