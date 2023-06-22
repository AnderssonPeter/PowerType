# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Dnsmasq";
    Keys        = @("dnsmasq");
    Name        = "dnsmasq";
    Description = "A lightweight DHCP and caching DNS server";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--add-cpe-id");
            Name        = "Add client identification to forwarded DNS queries.";
            Description = "Add client identification to forwarded DNS queries.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--add-mac");
            Name        = "Add requestor's MAC address to forwarded DNS queries.";
            Description = "Add requestor's MAC address to forwarded DNS queries.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--addn-hosts", "-H");
            Name        = "Specify a hosts file to be read in addition to /etc/hosts.";
            Description = "Specify a hosts file to be read in addition to /etc/hosts.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--address", "-A");
            Name        = "Return ipaddr for all hosts in specified domains.";
            Description = "Return ipaddr for all hosts in specified domains.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--alias", "-V");
            Name        = "Translate IPv4 addresses from upstream servers.";
            Description = "Translate IPv4 addresses from upstream servers.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--all-servers");
            Name        = "Always perform DNS queries to all servers.";
            Description = "Always perform DNS queries to all servers.";
        },
        [ValueParameter]@{
            Keys        = @("--auth-peer");
            Name        = "Peers which are allowed to do zone transfer";
            Description = "Peers which are allowed to do zone transfer";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--auth-sec-servers");
            Name        = "Secondary authoritative nameservers for forward domains";
            Description = "Secondary authoritative nameservers for forward domains";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--auth-server");
            Name        = "Export local names to global DNS";
            Description = "Export local names to global DNS";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--auth-soa");
            Name        = "Set authoritative zone information";
            Description = "Set authoritative zone information";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--auth-ttl");
            Name        = "Set TTL for authoritative replies";
            Description = "Set TTL for authoritative replies";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--auth-zone");
            Name        = "Domain to export to global DNS";
            Description = "Domain to export to global DNS";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--bind-dynamic");
            Name        = "Bind to interfaces in use - check for new interfaces";
            Description = "Bind to interfaces in use - check for new interfaces";
        },
        [FlagParameter]@{
            Keys        = @("--bind-interfaces", "-z");
            Name        = "Bind only to interfaces in use.";
            Description = "Bind only to interfaces in use.";
        },
        [ValueParameter]@{
            Keys        = @("--bogus-nxdomain", "-B");
            Name        = "Treat ipaddr as NXDOMAIN (defeats Verisign wildcard).";
            Description = "Treat ipaddr as NXDOMAIN (defeats Verisign wildcard).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--bogus-priv", "-b");
            Name        = "Fake reverse lookups for RFC1918 private address ranges.";
            Description = "Fake reverse lookups for RFC1918 private address ranges.";
        },
        [ValueParameter]@{
            Keys        = @("--bootp-dynamic", "-3");
            Name        = "Enable dynamic address allocation for bootp.";
            Description = "Enable dynamic address allocation for bootp.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bridge-interface");
            Name        = "Treat DHCP requests on aliases as arriving from interface.";
            Description = "Treat DHCP requests on aliases as arriving from interface.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--caa-record");
            Name        = "Specify certification authority authorization record";
            Description = "Specify certification authority authorization record";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cache-size", "-c");
            Name        = "Specify the size of the cache in entries (defaults to 150).";
            Description = "Specify the size of the cache in entries (defaults to 150).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--clear-on-reload");
            Name        = "Clear DNS cache when reloading /etc/resolv.conf.";
            Description = "Clear DNS cache when reloading /etc/resolv.conf.";
        },
        [ValueParameter]@{
            Keys        = @("--cname");
            Name        = "Specify alias name for LOCAL DNS name.";
            Description = "Specify alias name for LOCAL DNS name.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--conf-dir", "-7");
            Name        = "Read configuration from all the files in this directory.";
            Description = "Read configuration from all the files in this directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--conf-file", "-C");
            Name        = "Specify configuration file (defaults to /etc/dnsmasq.conf).";
            Description = "Specify configuration file (defaults to /etc/dnsmasq.conf).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--conntrack");
            Name        = "Copy connection-track mark from queries to upstream connections.";
            Description = "Copy connection-track mark from queries to upstream connections.";
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-alternate-port");
            Name        = "Use alternative ports for DHCP.";
            Description = "Use alternative ports for DHCP.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dhcp-authoritative", "-K");
            Name        = "Assume we are the only DHCP server on the local network.";
            Description = "Assume we are the only DHCP server on the local network.";
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-broadcast");
            Name        = "Force broadcast replies for hosts with tag set.";
            Description = "Force broadcast replies for hosts with tag set.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-circuitid");
            Name        = "Map RFC3046 circuit-id to tag.";
            Description = "Map RFC3046 circuit-id to tag.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dhcp-client-update");
            Name        = "Allow DHCP clients to do their own DDNS updates.";
            Description = "Allow DHCP clients to do their own DDNS updates.";
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-duid");
            Name        = "Specify DUID_EN-type DHCPv6 server DUID";
            Description = "Specify DUID_EN-type DHCPv6 server DUID";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dhcp-fqdn");
            Name        = "Use only fully qualified domain names for DHCP clients.";
            Description = "Use only fully qualified domain names for DHCP clients.";
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-generate-names");
            Name        = "Generate hostnames based on MAC address for nameless clients.";
            Description = "Generate hostnames based on MAC address for nameless clients.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-host", "-G");
            Name        = "Set address or hostname for a specified machine.";
            Description = "Set address or hostname for a specified machine.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-hostsdir");
            Name        = "Read DHCP host specs from a directory.";
            Description = "Read DHCP host specs from a directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-hostsfile");
            Name        = "Read DHCP host specs from file.";
            Description = "Read DHCP host specs from file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-ignore", "-J");
            Name        = "Don't do DHCP for hosts with tag set.";
            Description = "Don't do DHCP for hosts with tag set.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dhcp-ignore-clid");
            Name        = "Ignore client identifier option sent by DHCP clients.";
            Description = "Ignore client identifier option sent by DHCP clients.";
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-ignore-names");
            Name        = "Ignore hostnames provided by DHCP clients.";
            Description = "Ignore hostnames provided by DHCP clients.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-lease-max", "-X");
            Name        = "Specify maximum number of DHCP leases (defaults to 1000).";
            Description = "Specify maximum number of DHCP leases (defaults to 1000).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-leasefile", "-l");
            Name        = "Specify where to store DHCP leases (defaults to /var/lib/misc/dnsmasq.leases).";
            Description = "Specify where to store DHCP leases (defaults to /var/lib/misc/dnsmasq.leases).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-luascript");
            Name        = "Lua script to run on DHCP lease creation and destruction.";
            Description = "Lua script to run on DHCP lease creation and destruction.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-match");
            Name        = "Set tag if client includes matching option in request.";
            Description = "Set tag if client includes matching option in request.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-name-match");
            Name        = "Set tag if client provides given name.";
            Description = "Set tag if client provides given name.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dhcp-no-override");
            Name        = "Do NOT reuse filename and server fields for extra DHCP options.";
            Description = "Do NOT reuse filename and server fields for extra DHCP options.";
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-option", "-O");
            Name        = "Specify options to be sent to DHCP clients.";
            Description = "Specify options to be sent to DHCP clients.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-option-force");
            Name        = "DHCP option sent even if the client does not request it.";
            Description = "DHCP option sent even if the client does not request it.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-optsdir");
            Name        = "Read DHCP options from a directory.";
            Description = "Read DHCP options from a directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-optsfile");
            Name        = "Read DHCP option specs from file.";
            Description = "Read DHCP option specs from file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-proxy");
            Name        = "Use these DHCP relays as full proxies.";
            Description = "Use these DHCP relays as full proxies.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-pxe-vendor");
            Name        = "Specify vendor class to match for PXE requests.";
            Description = "Specify vendor class to match for PXE requests.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-range", "-F");
            Name        = "Enable DHCP in the range given with lease duration.";
            Description = "Enable DHCP in the range given with lease duration.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dhcp-rapid-commit");
            Name        = "Enables DHCPv4 Rapid Commit option.";
            Description = "Enables DHCPv4 Rapid Commit option.";
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-relay");
            Name        = "Relay DHCP requests to a remote server";
            Description = "Relay DHCP requests to a remote server";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-remoteid");
            Name        = "Map RFC3046 remote-id to tag.";
            Description = "Map RFC3046 remote-id to tag.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-reply-delay");
            Name        = "Delay DHCP replies for at least number of seconds.";
            Description = "Delay DHCP replies for at least number of seconds.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-script", "-6");
            Name        = "Shell script to run on DHCP lease creation and destruction.";
            Description = "Shell script to run on DHCP lease creation and destruction.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-scriptuser");
            Name        = "Run lease-change scripts as this user.";
            Description = "Run lease-change scripts as this user.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dhcp-sequential-ip");
            Name        = "Attempt to allocate sequential IP addresses to DHCP clients.";
            Description = "Attempt to allocate sequential IP addresses to DHCP clients.";
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-subscrid");
            Name        = "Map RFC3993 subscriber-id to tag.";
            Description = "Map RFC3993 subscriber-id to tag.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-ttl");
            Name        = "Set TTL in DNS responses with DHCP-derived addresses.";
            Description = "Set TTL in DNS responses with DHCP-derived addresses.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-userclass", "-j");
            Name        = "Map DHCP user class to tag.";
            Description = "Map DHCP user class to tag.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dhcp-vendorclass", "-U");
            Name        = "Map DHCP vendor class to tag.";
            Description = "Map DHCP vendor class to tag.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dns-forward-max", "-0");
            Name        = "Maximum number of concurrent DNS queries. (defaults to 150)";
            Description = "Maximum number of concurrent DNS queries. (defaults to 150)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dns-loop-detect");
            Name        = "Detect and remove DNS forwarding loops.";
            Description = "Detect and remove DNS forwarding loops.";
        },
        [ValueParameter]@{
            Keys        = @("--dns-rr");
            Name        = "Specify arbitrary DNS resource record";
            Description = "Specify arbitrary DNS resource record";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dnssec");
            Name        = "Activate DNSSEC validation";
            Description = "Activate DNSSEC validation";
        },
        [FlagParameter]@{
            Keys        = @("--dnssec-check-unsigned");
            Name        = "Ensure answers without DNSSEC are in unsigned zones.";
            Description = "Ensure answers without DNSSEC are in unsigned zones.";
        },
        [FlagParameter]@{
            Keys        = @("--dnssec-debug");
            Name        = "Disable upstream checking for DNSSEC debugging.";
            Description = "Disable upstream checking for DNSSEC debugging.";
        },
        [FlagParameter]@{
            Keys        = @("--dnssec-no-timecheck");
            Name        = "Don't check DNSSEC signature timestamps until first cache-reload";
            Description = "Don't check DNSSEC signature timestamps until first cache-reload";
        },
        [ValueParameter]@{
            Keys        = @("--dnssec-timestamp");
            Name        = "Timestamp file to verify system clock for DNSSEC";
            Description = "Timestamp file to verify system clock for DNSSEC";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--domain", "-s");
            Name        = "Specify the domain to be assigned in DHCP leases.";
            Description = "Specify the domain to be assigned in DHCP leases.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--domain-needed", "-D");
            Name        = "Do NOT forward queries with no domain part.";
            Description = "Do NOT forward queries with no domain part.";
        },
        [ValueParameter]@{
            Keys        = @("--dumpfile");
            Name        = "Path to debug packet dump file";
            Description = "Path to debug packet dump file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dumpmask");
            Name        = "Mask which packets to dump";
            Description = "Mask which packets to dump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--edns-packet-max", "-P");
            Name        = "Maximum supported UDP packet size for EDNS.0 (defaults to 4096).";
            Description = "Maximum supported UDP packet size for EDNS.0 (defaults to 4096).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--enable-dbus", "-1");
            Name        = "Enable the DBus interface for setting upstream servers, etc.";
            Description = "Enable the DBus interface for setting upstream servers, etc.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--enable-ra");
            Name        = "Send router-advertisements for interfaces doing DHCPv6";
            Description = "Send router-advertisements for interfaces doing DHCPv6";
        },
        [ValueParameter]@{
            Keys        = @("--enable-tftp");
            Name        = "Enable integrated read-only TFTP server.";
            Description = "Enable integrated read-only TFTP server.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--enable-ubus");
            Name        = "Enable the UBus interface.";
            Description = "Enable the UBus interface.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--except-interface", "-I");
            Name        = "Specify interface(s) NOT to listen on.";
            Description = "Specify interface(s) NOT to listen on.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--expand-hosts", "-E");
            Name        = "Expand simple names in /etc/hosts with domain-suffix.";
            Description = "Expand simple names in /etc/hosts with domain-suffix.";
        },
        [FlagParameter]@{
            Keys        = @("--filterwin2k", "-f");
            Name        = "Don't forward spurious DNS requests from Windows hosts.";
            Description = "Don't forward spurious DNS requests from Windows hosts.";
        },
        [ValueParameter]@{
            Keys        = @("--group", "-g");
            Name        = "Change to this group after startup (defaults to dip).";
            Description = "Change to this group after startup (defaults to dip).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-w");
            Name        = "Display this message. Use --help dhcp or --help dhcp6 for known DHCP options.";
            Description = "Display this message. Use --help dhcp or --help dhcp6 for known DHCP options.";
        },
        [ValueParameter]@{
            Keys        = @("--host-record");
            Name        = "Specify host (A/AAAA and PTR) records";
            Description = "Specify host (A/AAAA and PTR) records";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--hostsdir");
            Name        = "Read hosts files from a directory.";
            Description = "Read hosts files from a directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ignore-address");
            Name        = "Ignore DNS responses containing ipaddr.";
            Description = "Ignore DNS responses containing ipaddr.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--interface", "-i");
            Name        = "Specify interface(s) to listen on.";
            Description = "Specify interface(s) to listen on.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--interface-name");
            Name        = "Give DNS name to IPv4 address of interface.";
            Description = "Give DNS name to IPv4 address of interface.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ipset");
            Name        = "Specify ipsets to which matching domains should be added";
            Description = "Specify ipsets to which matching domains should be added";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--keep-in-foreground", "-k");
            Name        = "Do NOT fork into the background, do NOT run in debug mode.";
            Description = "Do NOT fork into the background, do NOT run in debug mode.";
        },
        [FlagParameter]@{
            Keys        = @("--leasefile-ro", "-9");
            Name        = "Do not use leasefile.";
            Description = "Do not use leasefile.";
        },
        [ValueParameter]@{
            Keys        = @("--listen-address", "-a");
            Name        = "Specify local address(es) to listen on.";
            Description = "Specify local address(es) to listen on.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--local");
            Name        = "Never forward queries to specified domains.";
            Description = "Never forward queries to specified domains.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--local-service");
            Name        = "Accept queries only from directly-connected networks.";
            Description = "Accept queries only from directly-connected networks.";
        },
        [ValueParameter]@{
            Keys        = @("--local-ttl", "-T");
            Name        = "Specify time-to-live in seconds for replies from /etc/hosts.";
            Description = "Specify time-to-live in seconds for replies from /etc/hosts.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--localise-queries", "-y");
            Name        = "Answer DNS queries based on the interface a query was sent to.";
            Description = "Answer DNS queries based on the interface a query was sent to.";
        },
        [FlagParameter]@{
            Keys        = @("--localmx", "-L");
            Name        = "Return MX records for local hosts.";
            Description = "Return MX records for local hosts.";
        },
        [ValueParameter]@{
            Keys        = @("--log-async");
            Name        = "Enable async. logging; optionally set queue length.";
            Description = "Enable async. logging; optionally set queue length.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--log-debug");
            Name        = "Log debugging information.";
            Description = "Log debugging information.";
        },
        [FlagParameter]@{
            Keys        = @("--log-dhcp");
            Name        = "Extra logging for DHCP.";
            Description = "Extra logging for DHCP.";
        },
        [ValueParameter]@{
            Keys        = @("--log-facility", "-8");
            Name        = "Log to this syslog facility or file. (defaults to DAEMON)";
            Description = "Log to this syslog facility or file. (defaults to DAEMON)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--log-queries", "-q");
            Name        = "Log DNS queries.";
            Description = "Log DNS queries.";
        },
        [ValueParameter]@{
            Keys        = @("--max-cache-ttl");
            Name        = "Specify time-to-live ceiling for cache.";
            Description = "Specify time-to-live ceiling for cache.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-port");
            Name        = "Specify highest port available for DNS query transmission.";
            Description = "Specify highest port available for DNS query transmission.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-ttl");
            Name        = "Specify time-to-live in seconds for maximum TTL to send to clients.";
            Description = "Specify time-to-live in seconds for maximum TTL to send to clients.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--min-cache-ttl");
            Name        = "Specify time-to-live floor for cache.";
            Description = "Specify time-to-live floor for cache.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--min-port");
            Name        = "Specify lowest port available for DNS query transmission.";
            Description = "Specify lowest port available for DNS query transmission.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mx-host", "-m");
            Name        = "Specify an MX record.";
            Description = "Specify an MX record.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mx-target", "-t");
            Name        = "Specify default target in an MX record.";
            Description = "Specify default target in an MX record.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--naptr-record");
            Name        = "Specify NAPTR DNS record.";
            Description = "Specify NAPTR DNS record.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--neg-ttl");
            Name        = "Specify time-to-live in seconds for negative caching.";
            Description = "Specify time-to-live in seconds for negative caching.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-daemon", "-d");
            Name        = "Do NOT fork into the background: run in debug mode.";
            Description = "Do NOT fork into the background: run in debug mode.";
        },
        [ValueParameter]@{
            Keys        = @("--no-dhcp-interface", "-2");
            Name        = "Do not provide DHCP on this interface, only provide DNS.";
            Description = "Do not provide DHCP on this interface, only provide DNS.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-hosts", "-h");
            Name        = "Do NOT load /etc/hosts file.";
            Description = "Do NOT load /etc/hosts file.";
        },
        [FlagParameter]@{
            Keys        = @("--no-negcache", "-N");
            Name        = "Do NOT cache failed search results.";
            Description = "Do NOT cache failed search results.";
        },
        [FlagParameter]@{
            Keys        = @("--no-ping", "-5");
            Name        = "Disable ICMP echo address checking in the DHCP server.";
            Description = "Disable ICMP echo address checking in the DHCP server.";
        },
        [FlagParameter]@{
            Keys        = @("--no-poll", "-n");
            Name        = "Do NOT poll /etc/resolv.conf file, reload only on SIGHUP.";
            Description = "Do NOT poll /etc/resolv.conf file, reload only on SIGHUP.";
        },
        [FlagParameter]@{
            Keys        = @("--no-resolv", "-R");
            Name        = "Do NOT read resolv.conf.";
            Description = "Do NOT read resolv.conf.";
        },
        [ValueParameter]@{
            Keys        = @("--pid-file", "-x");
            Name        = "Specify path of PID file (defaults to /var/run/dnsmasq.pid).";
            Description = "Specify path of PID file (defaults to /var/run/dnsmasq.pid).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--port", "-p");
            Name        = "Specify port to listen for DNS requests on (defaults to 53).";
            Description = "Specify port to listen for DNS requests on (defaults to 53).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--proxy-dnssec");
            Name        = "Proxy DNSSEC validation results from upstream nameservers.";
            Description = "Proxy DNSSEC validation results from upstream nameservers.";
        },
        [ValueParameter]@{
            Keys        = @("--ptr-record");
            Name        = "Specify PTR DNS record.";
            Description = "Specify PTR DNS record.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pxe-prompt");
            Name        = "Prompt to send to PXE clients.";
            Description = "Prompt to send to PXE clients.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pxe-service");
            Name        = "Boot service for PXE menu.";
            Description = "Boot service for PXE menu.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--query-port", "-Q");
            Name        = "Force the originating port for upstream DNS queries.";
            Description = "Force the originating port for upstream DNS queries.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet-dhcp");
            Name        = "Do not log routine DHCP.";
            Description = "Do not log routine DHCP.";
        },
        [FlagParameter]@{
            Keys        = @("--quiet-dhcp6");
            Name        = "Do not log routine DHCPv6.";
            Description = "Do not log routine DHCPv6.";
        },
        [FlagParameter]@{
            Keys        = @("--quiet-ra");
            Name        = "Do not log RA.";
            Description = "Do not log RA.";
        },
        [FlagParameter]@{
            Keys        = @("--read-ethers", "-Z");
            Name        = "Read DHCP static host information from /etc/ethers.";
            Description = "Read DHCP static host information from /etc/ethers.";
        },
        [ValueParameter]@{
            Keys        = @("--rebind-domain-ok");
            Name        = "Inhibit DNS-rebind protection on this domain.";
            Description = "Inhibit DNS-rebind protection on this domain.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rebind-localhost-ok");
            Name        = "Allow rebinding of 127.0.0.0/8, for RBL servers.";
            Description = "Allow rebinding of 127.0.0.0/8, for RBL servers.";
        },
        [ValueParameter]@{
            Keys        = @("--resolv-file", "-r");
            Name        = "Specify path to resolv.conf (defaults to /etc/resolv.conf).";
            Description = "Specify path to resolv.conf (defaults to /etc/resolv.conf).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--rev-server");
            Name        = "Specify address of upstream servers for reverse address queries";
            Description = "Specify address of upstream servers for reverse address queries";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--script-arp");
            Name        = "Call dhcp-script with changes to local ARP table.";
            Description = "Call dhcp-script with changes to local ARP table.";
        },
        [FlagParameter]@{
            Keys        = @("--script-on-renewal");
            Name        = "Call dhcp-script when lease expiry changes.";
            Description = "Call dhcp-script when lease expiry changes.";
        },
        [FlagParameter]@{
            Keys        = @("--selfmx", "-e");
            Name        = "Return self-pointing MX records for local hosts.";
            Description = "Return self-pointing MX records for local hosts.";
        },
        [ValueParameter]@{
            Keys        = @("--server", "-S");
            Name        = "Specify address(es) of upstream servers with optional domains.";
            Description = "Specify address(es) of upstream servers with optional domains.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--servers-file");
            Name        = "Specify path to file with server= options";
            Description = "Specify path to file with server= options";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--shared-network");
            Name        = "Specify extra networks sharing a broadcast domain for DHCP";
            Description = "Specify extra networks sharing a broadcast domain for DHCP";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--srv-host", "-W");
            Name        = "Specify a SRV record.";
            Description = "Specify a SRV record.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stop-dns-rebind");
            Name        = "Stop DNS rebinding. Filter private IP ranges when resolving.";
            Description = "Stop DNS rebinding. Filter private IP ranges when resolving.";
        },
        [FlagParameter]@{
            Keys        = @("--strict-order", "-o");
            Name        = "Use nameservers strictly in the order given in /etc/resolv.conf.";
            Description = "Use nameservers strictly in the order given in /etc/resolv.conf.";
        },
        [ValueParameter]@{
            Keys        = @("--synth-domain");
            Name        = "Specify a domain and address range for synthesised names";
            Description = "Specify a domain and address range for synthesised names";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tag-if");
            Name        = "Evaluate conditional tag expression.";
            Description = "Evaluate conditional tag expression.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--test");
            Name        = "Check configuration syntax.";
            Description = "Check configuration syntax.";
        },
        [FlagParameter]@{
            Keys        = @("--tftp-lowercase");
            Name        = "Convert TFTP filenames to lowercase";
            Description = "Convert TFTP filenames to lowercase";
        },
        [ValueParameter]@{
            Keys        = @("--tftp-max");
            Name        = "Maximum number of concurrent TFTP transfers (defaults to 50).";
            Description = "Maximum number of concurrent TFTP transfers (defaults to 50).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tftp-mtu");
            Name        = "Maximum MTU to use for TFTP transfers.";
            Description = "Maximum MTU to use for TFTP transfers.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tftp-no-blocksize");
            Name        = "Disable the TFTP blocksize extension.";
            Description = "Disable the TFTP blocksize extension.";
        },
        [FlagParameter]@{
            Keys        = @("--tftp-no-fail");
            Name        = "Do not terminate the service if TFTP directories are inaccessible.";
            Description = "Do not terminate the service if TFTP directories are inaccessible.";
        },
        [ValueParameter]@{
            Keys        = @("--tftp-port-range");
            Name        = "Ephemeral port range for use by TFTP transfers.";
            Description = "Ephemeral port range for use by TFTP transfers.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tftp-root");
            Name        = "Export files by TFTP only from the specified subtree.";
            Description = "Export files by TFTP only from the specified subtree.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tftp-secure");
            Name        = "Allow access only to files owned by the user running dnsmasq.";
            Description = "Allow access only to files owned by the user running dnsmasq.";
        },
        [FlagParameter]@{
            Keys        = @("--tftp-single-port");
            Name        = "Use only one port for TFTP server.";
            Description = "Use only one port for TFTP server.";
        },
        [ValueParameter]@{
            Keys        = @("--tftp-unique-root");
            Name        = "Add client IP or hardware address to tftp-root.";
            Description = "Add client IP or hardware address to tftp-root.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--trust-anchor");
            Name        = "Specify trust anchor key digest.";
            Description = "Specify trust anchor key digest.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--txt-record", "-Y");
            Name        = "Specify TXT DNS record.";
            Description = "Specify TXT DNS record.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user", "-u");
            Name        = "Change to this user after startup. (defaults to nobody).";
            Description = "Change to this user after startup. (defaults to nobody).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display dnsmasq version and copyright information.";
            Description = "Display dnsmasq version and copyright information.";
        }
    )
}
