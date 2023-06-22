# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/sclevine/yj";
    Keys        = @("yj");
    Name        = "yj";
    Description = "Convert between YAML, TOML, JSON, and HCL";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-e");
            Name        = "Escape HTML (JSON out only)";
            Description = "Escape HTML (JSON out only)";
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "Show this help message";
            Description = "Show this help message";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "Indent output (JSON or TOML out only)";
            Description = "Indent output (JSON or TOML out only)";
        },
        [FlagParameter]@{
            Keys        = @("-k");
            Name        = "Attempt to parse keys as objects or numbers types (YAML out only)";
            Description = "Attempt to parse keys as objects or numbers types (YAML out only)";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "Do not covert inf, -inf, and NaN to/from strings (YAML or TOML only)";
            Description = "Do not covert inf, -inf, and NaN to/from strings (YAML or TOML only)";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Show version";
            Description = "Show version";
        }
    )
}
