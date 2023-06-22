# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.wireshark.org/";
    Keys        = @("wireshark");
    Name        = "wireshark";
    Description = "Interactively dump and analyze network traffic";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-C");
            Name        = "start with specified configuration profile";
            Description = "start with specified configuration profile";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-H");
            Name        = "hide the capture info dialog during packet capture";
            Description = "hide the capture info dialog during packet capture";
        },
        [ValueParameter]@{
            Keys        = @("-J");
            Name        = "jump to the first packet matching the (display) filter";
            Description = "jump to the first packet matching the (display) filter";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-K");
            Name        = "keytab file to use for kerberos decryption";
            Description = "keytab file to use for kerberos decryption";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-N");
            Name        = "enable specific name resolution";
            Description = "enable specific name resolution";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-P");
            Name        = "personal files";
            Description = "personal files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-S");
            Name        = "update packet display when new packets are captured";
            Description = "update packet display when new packets are captured";
        },
        [ValueParameter]@{
            Keys        = @("-X");
            Name        = "eXtension options";
            Description = "eXtension options";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--autostop", "-a");
            Name        = "specify stop criterion";
            Description = "specify stop criterion";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--capture-comment");
            Name        = "set the capture file comment, if supported";
            Description = "set the capture file comment, if supported";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-d");
            Name        = "specify layer type dissection";
            Description = "specify layer type dissection";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--disable-heuristic");
            Name        = "disable dissection of heuristic protocol";
            Description = "disable dissection of heuristic protocol";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--disable-protocol");
            Name        = "disable dissection of proto_name";
            Description = "disable dissection of proto_name";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--display-filter", "-Y");
            Name        = "start with the given display filter";
            Description = "start with the given display filter";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--enable-heuristic");
            Name        = "enable dissection of heuristic protocol";
            Description = "enable dissection of heuristic protocol";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--enable-protocol");
            Name        = "enable dissection of proto_name";
            Description = "enable dissection of proto_name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fullscreen");
            Name        = "start Wireshark in full screen";
            Description = "start Wireshark in full screen";
        },
        [ValueParameter]@{
            Keys        = @("-g");
            Name        = "go to specified packet number after `"-r`"";
            Description = "go to specified packet number after `"-r`"";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--interface", "-i");
            Name        = "name or idx of interface";
            Description = "name or idx of interface";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-j");
            Name        = "search backwards for a matching packet after `"-J`"";
            Description = "search backwards for a matching packet after `"-J`"";
        },
        [FlagParameter]@{
            Keys        = @("-k");
            Name        = "start capturing immediately";
            Description = "start capturing immediately";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "turn on automatic scrolling while -S is in use";
            Description = "turn on automatic scrolling while -S is in use";
        },
        [FlagParameter]@{
            Keys        = @("--list-data-link-types", "-L");
            Name        = "print list of link-layer types of iface and exit";
            Description = "print list of link-layer types of iface and exit";
        },
        [FlagParameter]@{
            Keys        = @("--list-interfaces", "-D");
            Name        = "print list of interfaces and exit";
            Description = "print list of interfaces and exit";
        },
        [FlagParameter]@{
            Keys        = @("--list-time-stamp-types");
            Name        = "print list of timestamp types for iface and exit";
            Description = "print list of timestamp types for iface and exit";
        },
        [FlagParameter]@{
            Keys        = @("--monitor-mode", "-I");
            Name        = "capture in monitor mode, if available";
            Description = "capture in monitor mode, if available";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "disable all name resolutions";
            Description = "disable all name resolutions";
        },
        [FlagParameter]@{
            Keys        = @("--no-promiscuous-mode", "-p");
            Name        = "don't capture in promiscuous mode";
            Description = "don't capture in promiscuous mode";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "override preference or recent setting";
            Description = "override preference or recent setting";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--read-file", "-r");
            Name        = "set the filename to read from";
            Description = "set the filename to read from";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--read-filter", "-R");
            Name        = "packet filter in Wireshark display filter syntax";
            Description = "packet filter in Wireshark display filter syntax";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ring-buffer", "-b");
            Name        = "run in 'multiple files' mode";
            Description = "run in 'multiple files' mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--snapshot-length", "-s");
            Name        = "packet snapshot length";
            Description = "packet snapshot length";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "format of time stamps";
            Description = "format of time stamps";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time-stamp-type");
            Name        = "timestamp method for interface";
            Description = "timestamp method for interface";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-u");
            Name        = "output format of seconds";
            Description = "output format of seconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "display version info and exit";
            Description = "display version info and exit";
        },
        [ValueParameter]@{
            Keys        = @("-w");
            Name        = "set the output filename";
            Description = "set the output filename";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-z");
            Name        = "show various statistics";
            Description = "show various statistics";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
