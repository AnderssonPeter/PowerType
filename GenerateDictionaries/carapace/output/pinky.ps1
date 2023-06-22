# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/pinky";
    Keys        = @("pinky");
    Name        = "pinky";
    Description = "lightweight finger";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "omit the user's home directory and shell in long format";
            Description = "omit the user's home directory and shell in long format";
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "omit the line of column headings in short format";
            Description = "omit the line of column headings in short format";
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "omit the user's project file in long format";
            Description = "omit the user's project file in long format";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "omit the user's full name and remote host in short format";
            Description = "omit the user's full name and remote host in short format";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "produce long format output for the specified USERs";
            Description = "produce long format output for the specified USERs";
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "omit the user's plan file in long format";
            Description = "omit the user's plan file in long format";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "omit the user's full name, remote host and idle time";
            Description = "omit the user's full name, remote host and idle time";
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "do short format output, this is the default";
            Description = "do short format output, this is the default";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("-w");
            Name        = "omit the user's full name in short format";
            Description = "omit the user's full name in short format";
        }
    )
}
