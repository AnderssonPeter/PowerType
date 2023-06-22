# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/ping";
    Keys        = @("ping");
    Name        = "ping";
    Description = "send ICMP ECHO_REQUEST to network hosts";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "use IPv4";
            Description = "use IPv4";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "use IPv6";
            Description = "use IPv6";
        },
        [FlagParameter]@{
            Keys        = @("-A");
            Name        = "use adaptive ping";
            Description = "use adaptive ping";
        },
        [FlagParameter]@{
            Keys        = @("-B");
            Name        = "sticky source address";
            Description = "sticky source address";
        },
        [FlagParameter]@{
            Keys        = @("-D");
            Name        = "print timestamps";
            Description = "print timestamps";
        },
        [ValueParameter]@{
            Keys        = @("-F");
            Name        = "define flow label, default is random";
            Description = "define flow label, default is random";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-I");
            Name        = "either interface name or address";
            Description = "either interface name or address";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-L");
            Name        = "suppress loopback of multicast packets";
            Description = "suppress loopback of multicast packets";
        },
        [ValueParameter]@{
            Keys        = @("-M");
            Name        = "define mtu discovery";
            Description = "define mtu discovery";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-O");
            Name        = "report outstanding replies";
            Description = "report outstanding replies";
        },
        [ValueParameter]@{
            Keys        = @("-Q");
            Name        = "use quality of service <tclass> bits";
            Description = "use quality of service <tclass> bits";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "record route";
            Description = "record route";
        },
        [ValueParameter]@{
            Keys        = @("-S");
            Name        = "use <size> as SO_SNDBUF socket option value";
            Description = "use <size> as SO_SNDBUF socket option value";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-T");
            Name        = "define timestamp, can be one of <tsonly|tsandaddr|tsprespec>";
            Description = "define timestamp, can be one of <tsonly|tsandaddr|tsprespec>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-U");
            Name        = "print user-to-user latency";
            Description = "print user-to-user latency";
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "print version and exit";
            Description = "print version and exit";
        },
        [ValueParameter]@{
            Keys        = @("-W");
            Name        = "time to wait for response";
            Description = "time to wait for response";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "use audible ping";
            Description = "use audible ping";
        },
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "allow pinging broadcast";
            Description = "allow pinging broadcast";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "stop after <count> replies";
            Description = "stop after <count> replies";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "use SO_DEBUG socket option";
            Description = "use SO_DEBUG socket option";
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "flood ping";
            Description = "flood ping";
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "print help and exit";
            Description = "print help and exit";
        },
        [ValueParameter]@{
            Keys        = @("-i");
            Name        = "seconds between sending each packet";
            Description = "seconds between sending each packet";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "send <preload> number of packages while waiting replies";
            Description = "send <preload> number of packages while waiting replies";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-m");
            Name        = "tag the packets going out";
            Description = "tag the packets going out";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "no dns name resolution";
            Description = "no dns name resolution";
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "contents of padding byte";
            Description = "contents of padding byte";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "quiet output";
            Description = "quiet output";
        },
        [ValueParameter]@{
            Keys        = @("-s");
            Name        = "use <size> as number of data bytes to be sent";
            Description = "use <size> as number of data bytes to be sent";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "define time to live";
            Description = "define time to live";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "verbose output";
            Description = "verbose output";
        },
        [ValueParameter]@{
            Keys        = @("-w");
            Name        = "reply wait <deadline> in seconds";
            Description = "reply wait <deadline> in seconds";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
