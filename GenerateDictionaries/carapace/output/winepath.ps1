# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.winehq.org/Winepath";
    Keys        = @("winepath");
    Name        = "winepath";
    Description = "Tool to convert Unix paths to/from Win32 paths";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-0");
            Name        = "separate output with \0 character, instead of a newline";
            Description = "separate output with \0 character, instead of a newline";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "output this help message and exit";
            Description = "output this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--long", "-l");
            Name        = "converts the short Windows path of an existing file or directory to the long format";
            Description = "converts the short Windows path of an existing file or directory to the long format";
        },
        [FlagParameter]@{
            Keys        = @("--short", "-s");
            Name        = "converts the long Windows path of an existing file or directory to the short format";
            Description = "converts the long Windows path of an existing file or directory to the short format";
        },
        [FlagParameter]@{
            Keys        = @("--unix", "-u");
            Name        = "converts a Windows path to a Unix path";
            Description = "converts a Windows path to a Unix path";
        },
        [FlagParameter]@{
            Keys        = @("--windows", "-w");
            Name        = "converts a Unix path to a long Windows path";
            Description = "converts a Unix path to a long Windows path";
        }
    )
}
