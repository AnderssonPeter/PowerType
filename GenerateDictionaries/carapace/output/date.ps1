# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/date";
    Keys        = @("date");
    Name        = "date";
    Description = "print or set the system date and time";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--date", "-d");
            Name        = "display time described by STRING, not 'now'";
            Description = "display time described by STRING, not 'now'";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "annotate the parsed date,";
            Description = "annotate the parsed date,";
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "like --date; once for each line of DATEFILE";
            Description = "like --date; once for each line of DATEFILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--iso-8601", "-I");
            Name        = "output date/time in ISO 8601 format";
            Description = "output date/time in ISO 8601 format";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--reference", "-r");
            Name        = "display the last modification time of FILE";
            Description = "display the last modification time of FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--rfc-3339");
            Name        = "output date/time in RFC 3339 format.";
            Description = "output date/time in RFC 3339 format.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rfc-email", "-R");
            Name        = "output date and time in RFC 5322 format.";
            Description = "output date and time in RFC 5322 format.";
        },
        [ValueParameter]@{
            Keys        = @("--set", "-s");
            Name        = "set time described by STRING";
            Description = "set time described by STRING";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--universal");
            Name        = "print or set Coordinated Universal Time (UTC)";
            Description = "print or set Coordinated Universal Time (UTC)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--utc,", "-u");
            Name        = "print or set Coordinated Universal Time (UTC)";
            Description = "print or set Coordinated Universal Time (UTC)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
