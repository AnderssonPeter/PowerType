# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/telnet";
    Keys        = @("telnet");
    Name        = "telnet";
    Description = "User interface to TELNET";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--binary", "-8");
            Name        = "use an 8-bit data transmission";
            Description = "use an 8-bit data transmission";
        },
        [FlagParameter]@{
            Keys        = @("--binary-output", "-L");
            Name        = "use an 8-bit data transmission for output only";
            Description = "use an 8-bit data transmission for output only";
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "turn on debugging";
            Description = "turn on debugging";
        },
        [ValueParameter]@{
            Keys        = @("--escape", "-e");
            Name        = "use CHAR as an escape character";
            Description = "use CHAR as an escape character";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "give this help list";
            Description = "give this help list";
        },
        [FlagParameter]@{
            Keys        = @("--ipv4", "-4");
            Name        = "use only IPv4";
            Description = "use only IPv4";
        },
        [FlagParameter]@{
            Keys        = @("--ipv6", "-6");
            Name        = "use only IPv6";
            Description = "use only IPv6";
        },
        [FlagParameter]@{
            Keys        = @("--login", "-a");
            Name        = "attempt automatic login";
            Description = "attempt automatic login";
        },
        [FlagParameter]@{
            Keys        = @("--no-escape", "-E");
            Name        = "use no escape character";
            Description = "use no escape character";
        },
        [FlagParameter]@{
            Keys        = @("--no-login", "-K");
            Name        = "do not automatically login to the remote system";
            Description = "do not automatically login to the remote system";
        },
        [FlagParameter]@{
            Keys        = @("--no-rc", "-c");
            Name        = "do not read the user's .telnetrc file";
            Description = "do not read the user's .telnetrc file";
        },
        [FlagParameter]@{
            Keys        = @("--rlogin", "-r");
            Name        = "use a user-interface similar to rlogin";
            Description = "use a user-interface similar to rlogin";
        },
        [ValueParameter]@{
            Keys        = @("--trace", "-n");
            Name        = "record trace information into FILE";
            Description = "record trace information into FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--usage");
            Name        = "give a short usage message";
            Description = "give a short usage message";
        },
        [ValueParameter]@{
            Keys        = @("--user", "-l");
            Name        = "attempt automatic login as USER";
            Description = "attempt automatic login as USER";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "print program version";
            Description = "print program version";
        }
    )
}
