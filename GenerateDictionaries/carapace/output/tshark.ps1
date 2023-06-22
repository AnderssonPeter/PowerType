# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://tshark.dev/";
    Keys        = @("tshark");
    Name        = "tshark";
    Description = "Dump and analyze network traffic";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-2");
            Name        = "perform a two-pass analysis";
            Description = "perform a two-pass analysis";
        },
        [ValueParameter]@{
            Keys        = @("-C");
            Name        = "start with specified configuration profile";
            Description = "start with specified configuration profile";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-E");
            Name        = "set options for output";
            Description = "set options for output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-F");
            Name        = "set the output file type";
            Description = "set the output file type";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-G");
            Name        = "dump one of several available reports and exit";
            Description = "dump one of several available reports and exit";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-H");
            Name        = "read a list of entries from a hosts file";
            Description = "read a list of entries from a hosts file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-J");
            Name        = "top level protocol filter";
            Description = "top level protocol filter";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-K");
            Name        = "keytab file to use for kerberos decryption";
            Description = "keytab file to use for kerberos decryption";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-M");
            Name        = "perform session auto reset";
            Description = "perform session auto reset";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-N");
            Name        = "enable specific name resolution";
            Description = "enable specific name resolution";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-O");
            Name        = "Only show packet details of these protocols";
            Description = "Only show packet details of these protocols";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-Q");
            Name        = "only log true errors to stderr";
            Description = "only log true errors to stderr";
        },
        [ValueParameter]@{
            Keys        = @("-S");
            Name        = "the line separator to print between packets";
            Description = "the line separator to print between packets";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-T");
            Name        = "format of text output";
            Description = "format of text output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-U");
            Name        = "PDUs export mode, see the man page for details";
            Description = "PDUs export mode, see the man page for details";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "add output of packet tree";
            Description = "add output of packet tree";
        },
        [ValueParameter]@{
            Keys        = @("-W");
            Name        = "Save extra information in the file, if supported.";
            Description = "Save extra information in the file, if supported.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-X");
            Name        = "eXtension options, see the man page for details";
            Description = "eXtension options, see the man page for details";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--autostop", "-a");
            Name        = "specify stop criterion ";
            Description = "specify stop criterion ";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--buffer-size", "-B");
            Name        = "size of kernel buffer";
            Description = "size of kernel buffer";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "stop after n packets (def: infinite)";
            Description = "stop after n packets (def: infinite)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--capture-comment");
            Name        = "set the capture file comment";
            Description = "set the capture file comment";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--color");
            Name        = "color output text similarly to the Wireshark GUI";
            Description = "color output text similarly to the Wireshark GUI";
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
            Keys        = @("-e");
            Name        = "field to print";
            Description = "field to print";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--elastic-mapping-filter");
            Name        = "put only the specified protocols within the mapping file";
            Description = "put only the specified protocols within the mapping file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--enable-heuristic");
            Name        = "enable dissection of heuristic protocol";
            Description = "enable dissection of heuristic protocol";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--enable-protocol");
            Name        = "<proto_name>   enable dissection of proto_name";
            Description = "<proto_name>   enable dissection of proto_name";
        },
        [ValueParameter]@{
            Keys        = @("--export-objects");
            Name        = "save exported objects for a protocol to a directory";
            Description = "save exported objects for a protocol to a directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "packet filter in libpcap filter syntax";
            Description = "packet filter in libpcap filter syntax";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-g");
            Name        = "enable group read access on the output file(s)";
            Description = "enable group read access on the output file(s)";
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
        [ValueParameter]@{
            Keys        = @("-j");
            Name        = "protocols layers filter";
            Description = "protocols layers filter";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "flush standard output after each packet";
            Description = "flush standard output after each packet";
        },
        [ValueParameter]@{
            Keys        = @("--linktype", "-y");
            Name        = "link layer type";
            Description = "link layer type";
            # Source = $?? # todo: Fix or remove this!
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
            Name        = "disable all name resolutions (def: all enabled)";
            Description = "disable all name resolutions (def: all enabled)";
        },
        [FlagParameter]@{
            Keys        = @("--no-duplicate-keys");
            Name        = "merge duplicate keys in an object into a single key";
            Description = "merge duplicate keys in an object into a single key";
        },
        [FlagParameter]@{
            Keys        = @("--no-promiscuous-mode", "-p");
            Name        = "don't capture in promiscuous mode";
            Description = "don't capture in promiscuous mode";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "override preference setting";
            Description = "override preference setting";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print", "-P");
            Name        = "print packet summary even when writing to a file";
            Description = "print packet summary even when writing to a file";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "be more quiet on stdout";
            Description = "be more quiet on stdout";
        },
        [ValueParameter]@{
            Keys        = @("--read-file", "-r");
            Name        = "set the filename to read from";
            Description = "set the filename to read from";
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
            Name        = "output format of time stamps";
            Description = "output format of time stamps";
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
            Name        = "write packets to a pcapng-format file named `"outfile`"";
            Description = "write packets to a pcapng-format file named `"outfile`"";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "add output of hex and ASCII dump (Packet Bytes)";
            Description = "add output of hex and ASCII dump (Packet Bytes)";
        },
        [ValueParameter]@{
            Keys        = @("-z");
            Name        = "various statistics, see the man page for details";
            Description = "various statistics, see the man page for details";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
