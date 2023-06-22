# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/ftpd";
    Keys        = @("ftpd");
    Name        = "ftpd";
    Description = "File Transfer Protocol daemon";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--anonymous-only", "-A");
            Name        = "server configured for anonymous service only";
            Description = "server configured for anonymous service only";
        },
        [ValueParameter]@{
            Keys        = @("--auth", "-a");
            Name        = "use AUTH for authentication";
            Description = "use AUTH for authentication";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--daemon", "-D");
            Name        = "start the ftpd standalone";
            Description = "start the ftpd standalone";
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "debug mode";
            Description = "debug mode";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "give this help list";
            Description = "give this help list";
        },
        [FlagParameter]@{
            Keys        = @("--ipv4", "-4");
            Name        = "restrict daemon to IPv4";
            Description = "restrict daemon to IPv4";
        },
        [FlagParameter]@{
            Keys        = @("--ipv6", "-6");
            Name        = "restrict daemon to IPv6";
            Description = "restrict daemon to IPv6";
        },
        [FlagParameter]@{
            Keys        = @("--logging", "-l");
            Name        = "increase verbosity of syslog messages";
            Description = "increase verbosity of syslog messages";
        },
        [ValueParameter]@{
            Keys        = @("--max-timeout", "-T");
            Name        = "set maximum value of timeout allowed";
            Description = "set maximum value of timeout allowed";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-version", "-q");
            Name        = "do not display version in banner";
            Description = "do not display version in banner";
        },
        [FlagParameter]@{
            Keys        = @("--non-rfc2577");
            Name        = "neglect RFC 2577 by giving info on missing users";
            Description = "neglect RFC 2577 by giving info on missing users";
        },
        [ValueParameter]@{
            Keys        = @("--pidfile", "-p");
            Name        = "change default location of pidfile";
            Description = "change default location of pidfile";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--timeout", "-t");
            Name        = "set default idle timeout";
            Description = "set default idle timeout";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--umask", "-u");
            Name        = "set default umask";
            Description = "set default umask";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--usage");
            Name        = "give a short usage message";
            Description = "give a short usage message";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "print program version";
            Description = "print program version";
        }
    )
}
