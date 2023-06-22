# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/dig";
    Keys        = @("dig");
    Name        = "dig";
    Description = "DNS lookup utility";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "This option indicates that only IPv4 should be used.";
            Description = "This option indicates that only IPv4 should be used.";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "This option indicates that only IPv6 should be used.";
            Description = "This option indicates that only IPv6 should be used.";
        },
        [ValueParameter]@{
            Keys        = @("-b");
            Name        = "This option sets the source IP address of the query.";
            Description = "This option sets the source IP address of the query.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "This  option  sets the query class.";
            Description = "This  option  sets the query class.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "This option sets batch mode.";
            Description = "This option sets batch mode.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-k");
            Name        = "This option tells named to sign queries using TSIG using a key read  from  the  given file.";
            Description = "This option tells named to sign queries using TSIG using a key read  from  the  given file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "This option enables memory usage debugging.";
            Description = "This option enables memory usage debugging.";
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "This option sends the query to a non-standard port on the server.";
            Description = "This option sends the query to a non-standard port on the server.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-q");
            Name        = "This option specifies the domain name to query.";
            Description = "This option specifies the domain name to query.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "This  option  indicates  that options from `${HOME}/.digrc should not be read.";
            Description = "This  option  indicates  that options from `${HOME}/.digrc should not be read.";
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "This option indicates the resource record type to query.";
            Description = "This option indicates the resource record type to query.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "This option indicates that print query times should be provided in  microseconds  instead of milliseconds.";
            Description = "This option indicates that print query times should be provided in  microseconds  instead of milliseconds.";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "This option prints the version number and exits.";
            Description = "This option prints the version number and exits.";
        },
        [ValueParameter]@{
            Keys        = @("-x");
            Name        = "This option sets simplified reverse lookups, for mapping addresses to names.";
            Description = "This option sets simplified reverse lookups, for mapping addresses to names.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-y");
            Name        = "This option signs queries using TSIG with the given authentication key.";
            Description = "This option signs queries using TSIG with the given authentication key.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
