# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.speedtest.net/apps/cli";
    Keys        = @("speedtest-cli");
    Name        = "speedtest-cli";
    Description = "Command line interface for testing internet bandwidth using speedtest.net";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--bytes");
            Name        = "Display values in bytes instead of bits.";
            Description = "Display values in bytes instead of bits.";
        },
        [FlagParameter]@{
            Keys        = @("--csv");
            Name        = "Suppress verbose output, only show basic information in CSV format.";
            Description = "Suppress verbose output, only show basic information in CSV format.";
        },
        [ValueParameter]@{
            Keys        = @("--csv-delimiter");
            Name        = "Single character delimiter to use in CSV output.";
            Description = "Single character delimiter to use in CSV output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--csv-header");
            Name        = "Print CSV headers";
            Description = "Print CSV headers";
        },
        [ValueParameter]@{
            Keys        = @("--exclude");
            Name        = "Exclude a server from selection.";
            Description = "Exclude a server from selection.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--json");
            Name        = "Suppress verbose output, only show basic information in JSON format.";
            Description = "Suppress verbose output, only show basic information in JSON format.";
        },
        [FlagParameter]@{
            Keys        = @("--list");
            Name        = "Display a list of speedtest.net servers sorted by distance";
            Description = "Display a list of speedtest.net servers sorted by distance";
        },
        [ValueParameter]@{
            Keys        = @("--mini");
            Name        = "URL of the Speedtest Mini server";
            Description = "URL of the Speedtest Mini server";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-download");
            Name        = "Do not perform download test";
            Description = "Do not perform download test";
        },
        [FlagParameter]@{
            Keys        = @("--no-pre-allocate");
            Name        = "Do not pre allocate upload data.";
            Description = "Do not pre allocate upload data.";
        },
        [FlagParameter]@{
            Keys        = @("--no-upload");
            Name        = "Do not perform upload test";
            Description = "Do not perform upload test";
        },
        [FlagParameter]@{
            Keys        = @("--secure");
            Name        = "Use HTTPS instead of HTTP when communicating with speedtest.net operated servers";
            Description = "Use HTTPS instead of HTTP when communicating with speedtest.net operated servers";
        },
        [ValueParameter]@{
            Keys        = @("--server");
            Name        = "Specify a server ID to test against.";
            Description = "Specify a server ID to test against.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--share");
            Name        = "Generate and provide a URL to the speedtest.net share results image";
            Description = "Generate and provide a URL to the speedtest.net share results image";
        },
        [FlagParameter]@{
            Keys        = @("--simple");
            Name        = "Suppress verbose output, only show basic information";
            Description = "Suppress verbose output, only show basic information";
        },
        [FlagParameter]@{
            Keys        = @("--single");
            Name        = "Only use a single connection instead of multiple.";
            Description = "Only use a single connection instead of multiple.";
        },
        [ValueParameter]@{
            Keys        = @("--source");
            Name        = "Source IP address to bind to";
            Description = "Source IP address to bind to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--timeout");
            Name        = "HTTP timeout in seconds. Default 10";
            Description = "HTTP timeout in seconds. Default 10";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show the version number and exit";
            Description = "Show the version number and exit";
        }
    )
}
