# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/bats-core/bats-core";
    Keys        = @("bats");
    Name        = "bats";
    Description = "Bash Automated Testing System";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--count", "-c");
            Name        = "Count the number of test cases without running any tests";
            Description = "Count the number of test cases without running any tests";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display this help message";
            Description = "Display this help message";
        },
        [FlagParameter]@{
            Keys        = @("--pretty", "-p");
            Name        = "Show results in pretty format (default for terminals)";
            Description = "Show results in pretty format (default for terminals)";
        },
        [FlagParameter]@{
            Keys        = @("--tap", "-t");
            Name        = "Show results in TAP format";
            Description = "Show results in TAP format";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display the version number";
            Description = "Display the version number";
        }
    )
}
