# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/ftp";
    Keys        = @("ftp");
    Name        = "ftp";
    Description = "File Transfer Protocol client";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--active", "-A");
            Name        = "enable active mode transfer";
            Description = "enable active mode transfer";
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "enable debugging output";
            Description = "enable debugging output";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "give this help list";
            Description = "give this help list";
        },
        [FlagParameter]@{
            Keys        = @("--ipv4", "-4");
            Name        = "contact IPv4 hosts";
            Description = "contact IPv4 hosts";
        },
        [FlagParameter]@{
            Keys        = @("--ipv6", "-6");
            Name        = "contact IPv6 hosts";
            Description = "contact IPv6 hosts";
        },
        [ValueParameter]@{
            Keys        = @("--netrc", "-N");
            Name        = "select a specific initialization file";
            Description = "select a specific initialization file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-edit", "-e");
            Name        = "disable command line editing";
            Description = "disable command line editing";
        },
        [FlagParameter]@{
            Keys        = @("--no-glob", "-g");
            Name        = "turn off file name globbing";
            Description = "turn off file name globbing";
        },
        [FlagParameter]@{
            Keys        = @("--no-login", "-n");
            Name        = "do not automatically login to the remote system";
            Description = "do not automatically login to the remote system";
        },
        [FlagParameter]@{
            Keys        = @("--no-prompt", "-i");
            Name        = "do not prompt during multiple file transfers";
            Description = "do not prompt during multiple file transfers";
        },
        [FlagParameter]@{
            Keys        = @("--passive", "-p");
            Name        = "enable passive mode transfer, default for ``pftp'";
            Description = "enable passive mode transfer, default for ``pftp'";
        },
        [ValueParameter]@{
            Keys        = @("--prompt");
            Name        = "print a command line PROMPT (optionally), even if not on a tty";
            Description = "print a command line PROMPT (optionally), even if not on a tty";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--trace", "-t");
            Name        = "enable packet tracing";
            Description = "enable packet tracing";
        },
        [FlagParameter]@{
            Keys        = @("--usage");
            Name        = "give a short usage message";
            Description = "give a short usage message";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbose output";
            Description = "verbose output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "print program version";
            Description = "print program version";
        }
    )
}
