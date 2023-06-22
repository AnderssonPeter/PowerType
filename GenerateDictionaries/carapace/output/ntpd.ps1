# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/ntpd";
    Keys        = @("ntpd");
    Name        = "ntpd";
    Description = "NTP daemon program";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-!");
            Name        = "extended usage information passed thru pager";
            Description = "extended usage information passed thru pager";
        },
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "Force IPv4 DNS name resolution";
            Description = "Force IPv4 DNS name resolution";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "Force IPv6 DNS name resolution";
            Description = "Force IPv6 DNS name resolution";
        },
        [FlagParameter]@{
            Keys        = @("-?");
            Name        = "display extended usage information and exit";
            Description = "display extended usage information and exit";
        },
        [FlagParameter]@{
            Keys        = @("-A");
            Name        = "Do not require crypto authentication";
            Description = "Do not require crypto authentication";
        },
        [ValueParameter]@{
            Keys        = @("-D");
            Name        = "Set the debug verbosity level";
            Description = "Set the debug verbosity level";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-G");
            Name        = "Step any initial offset correction.";
            Description = "Step any initial offset correction.";
        },
        [ValueParameter]@{
            Keys        = @("-I");
            Name        = "Listen on an interface name or address";
            Description = "Listen on an interface name or address";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-L");
            Name        = "Do not listen to virtual interfaces";
            Description = "Do not listen to virtual interfaces";
        },
        [FlagParameter]@{
            Keys        = @("-N");
            Name        = "Run at high priority";
            Description = "Run at high priority";
        },
        [ValueParameter]@{
            Keys        = @("-P");
            Name        = "Process priority";
            Description = "Process priority";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-U");
            Name        = "interval in seconds between scans for new or dropped interfaces";
            Description = "interval in seconds between scans for new or dropped interfaces";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "Require crypto authentication";
            Description = "Require crypto authentication";
        },
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "Allow us to sync to broadcast servers";
            Description = "Allow us to sync to broadcast servers";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "configuration file name";
            Description = "configuration file name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "Increase debug verbosity level";
            Description = "Increase debug verbosity level";
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "frequency drift file name";
            Description = "frequency drift file name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-g");
            Name        = "Allow the first adjustment to be Big";
            Description = "Allow the first adjustment to be Big";
        },
        [ValueParameter]@{
            Keys        = @("-i");
            Name        = "Jail directory";
            Description = "Jail directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-k");
            Name        = "path to symmetric keys";
            Description = "path to symmetric keys";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "path to the log file";
            Description = "path to the log file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "Do not fork";
            Description = "Do not fork";
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "path to the PID file";
            Description = "path to the PID file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "Set the time and quit";
            Description = "Set the time and quit";
        },
        [ValueParameter]@{
            Keys        = @("-r");
            Name        = "Broadcast/propagation delay";
            Description = "Broadcast/propagation delay";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-s");
            Name        = "Statistics file location";
            Description = "Statistics file location";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "Trusted key number";
            Description = "Trusted key number";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-u");
            Name        = "Run as userid (or userid:groupid)";
            Description = "Run as userid (or userid:groupid)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-w");
            Name        = "Seconds to wait for first clock sync";
            Description = "Seconds to wait for first clock sync";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "Slew up to 600 seconds";
            Description = "Slew up to 600 seconds";
        }
    )
}
