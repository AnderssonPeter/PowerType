# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamsubmit");
    Name        = "clamsubmit";
    Description = "File submission utility for ClamAV";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-?");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [ValueParameter]@{
            Keys        = @("-N");
            Name        = "Your name contained in quotation marks (required)";
            Description = "Your name contained in quotation marks (required)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-V");
            Name        = "Detected virus name (required with -p)";
            Description = "Detected virus name (required with -p)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "Enable debug output";
            Description = "Enable debug output";
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "Your email address (required)";
            Description = "Your email address (required)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [ValueParameter]@{
            Keys        = @("-n");
            Name        = "Submit a false negative (FN)";
            Description = "Submit a false negative (FN)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "Submit a false positive (FP)";
            Description = "Submit a false positive (FP)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Show version";
            Description = "Show version";
        }
    )
}
