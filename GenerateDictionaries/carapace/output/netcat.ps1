# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://nc110.sourceforge.io/";
    Keys        = @("netcat");
    Name        = "netcat";
    Description = "simple Unix utility which reads and writes data across network connections";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--close", "-c");
            Name        = "close connection on EOF from stdin";
            Description = "close connection on EOF from stdin";
        },
        [FlagParameter]@{
            Keys        = @("--dont-resolve", "-n");
            Name        = "numeric-only IP addresses, no DNS";
            Description = "numeric-only IP addresses, no DNS";
        },
        [ValueParameter]@{
            Keys        = @("--exec", "-e");
            Name        = "program to exec after connect";
            Description = "program to exec after connect";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gateway", "-g");
            Name        = "source-routing hop point[s], up to 8";
            Description = "source-routing hop point[s], up to 8";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--hexdump", "-x");
            Name        = "hexdump incoming and outgoing traffic";
            Description = "hexdump incoming and outgoing traffic";
        },
        [ValueParameter]@{
            Keys        = @("--interval", "-i");
            Name        = "delay interval for lines sent, ports scanned";
            Description = "delay interval for lines sent, ports scanned";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--listen", "-l");
            Name        = "listen mode, for inbound connects";
            Description = "listen mode, for inbound connects";
        },
        [ValueParameter]@{
            Keys        = @("--local-port", "-p");
            Name        = "local port number";
            Description = "local port number";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "output hexdump traffic to FILE (implies -x)";
            Description = "output hexdump traffic to FILE (implies -x)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pointer", "-G");
            Name        = "source-routing pointer: 4, 8, 12, ...";
            Description = "source-routing pointer: 4, 8, 12, ...";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--randomize", "-r");
            Name        = "randomize local and remote ports";
            Description = "randomize local and remote ports";
        },
        [ValueParameter]@{
            Keys        = @("--source", "-s");
            Name        = "local source address (ip or hostname)";
            Description = "local source address (ip or hostname)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tcp", "-t");
            Name        = "TCP mode (default)";
            Description = "TCP mode (default)";
        },
        [FlagParameter]@{
            Keys        = @("--telnet", "-T");
            Name        = "answer using TELNET negotiation";
            Description = "answer using TELNET negotiation";
        },
        [ValueParameter]@{
            Keys        = @("--tunnel", "-L");
            Name        = "forward local port to remote address";
            Description = "forward local port to remote address";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--udp", "-u");
            Name        = "UDP mode";
            Description = "UDP mode";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbose (use twice to be more verbose)";
            Description = "verbose (use twice to be more verbose)";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--wait", "-w");
            Name        = "timeout for connects and final net reads";
            Description = "timeout for connects and final net reads";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--zero", "-z");
            Name        = "zero-I/O mode (used for scanning)";
            Description = "zero-I/O mode (used for scanning)";
        }
    )
}
