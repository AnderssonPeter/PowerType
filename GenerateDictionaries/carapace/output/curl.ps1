# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/curl/curl";
    Keys        = @("curl");
    Name        = "curl";
    Description = "transfer a URL";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--abstract-unix-socket");
            Name        = "Connect via abstract Unix domain socket";
            Description = "Connect via abstract Unix domain socket";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--alt-svc");
            Name        = "Enable alt-svc with this cache file";
            Description = "Enable alt-svc with this cache file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--anyauth");
            Name        = "Pick any authentication method";
            Description = "Pick any authentication method";
        },
        [FlagParameter]@{
            Keys        = @("--append", "-a");
            Name        = "Append to target file when uploading";
            Description = "Append to target file when uploading";
        },
        [FlagParameter]@{
            Keys        = @("--basic");
            Name        = "Use HTTP Basic Authentication";
            Description = "Use HTTP Basic Authentication";
        },
        [ValueParameter]@{
            Keys        = @("--cacert");
            Name        = "CA certificate to verify peer against";
            Description = "CA certificate to verify peer against";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--capath");
            Name        = "CA directory to verify peer against";
            Description = "CA directory to verify peer against";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cert", "-E");
            Name        = "Client certificate file and password";
            Description = "Client certificate file and password";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cert-status");
            Name        = "Verify the status of the server certificate";
            Description = "Verify the status of the server certificate";
        },
        [ValueParameter]@{
            Keys        = @("--cert-type");
            Name        = "Certificate file type (DER/PEM/ENG)";
            Description = "Certificate file type (DER/PEM/ENG)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ciphers");
            Name        = "of ciphers> SSL ciphers to use";
            Description = "of ciphers> SSL ciphers to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--compressed");
            Name        = "Request compressed response";
            Description = "Request compressed response";
        },
        [ValueParameter]@{
            Keys        = @("--compressed-ssh");
            Name        = "SSH compression";
            Description = "SSH compression";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config", "-K");
            Name        = "Read config from a file";
            Description = "Read config from a file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--connect-timeout");
            Name        = "Maximum time allowed for connection";
            Description = "Maximum time allowed for connection";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--connect-to");
            Name        = "Connect to host";
            Description = "Connect to host";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--continue-at", "-C");
            Name        = "Resumed transfer offset";
            Description = "Resumed transfer offset";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cookie", "-b");
            Name        = "Send cookies from string/file";
            Description = "Send cookies from string/file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cookie-jar", "-c");
            Name        = "Write cookies to <filename> after operation";
            Description = "Write cookies to <filename> after operation";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--create-dirs");
            Name        = "Create necessary local directory hierarchy";
            Description = "Create necessary local directory hierarchy";
        },
        [FlagParameter]@{
            Keys        = @("--crlf");
            Name        = "Convert LF to CRLF in upload";
            Description = "Convert LF to CRLF in upload";
        },
        [ValueParameter]@{
            Keys        = @("--crlfile");
            Name        = "Get a CRL list in PEM format from the given file";
            Description = "Get a CRL list in PEM format from the given file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--data", "-d");
            Name        = "HTTP POST data";
            Description = "HTTP POST data";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--data-ascii");
            Name        = "HTTP POST ASCII data";
            Description = "HTTP POST ASCII data";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--data-binary");
            Name        = "HTTP POST binary data";
            Description = "HTTP POST binary data";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--data-raw");
            Name        = "HTTP POST data, '@' allowed";
            Description = "HTTP POST data, '@' allowed";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--data-urlencode");
            Name        = "HTTP POST data url encoded";
            Description = "HTTP POST data url encoded";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--delegation");
            Name        = "GSS-API delegation permission";
            Description = "GSS-API delegation permission";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--digest");
            Name        = "Use HTTP Digest Authentication";
            Description = "Use HTTP Digest Authentication";
        },
        [FlagParameter]@{
            Keys        = @("--disable", "-q");
            Name        = "Disable .curlrc";
            Description = "Disable .curlrc";
        },
        [FlagParameter]@{
            Keys        = @("--disable-eprt");
            Name        = "Inhibit using EPRT or LPRT";
            Description = "Inhibit using EPRT or LPRT";
        },
        [FlagParameter]@{
            Keys        = @("--disable-epsv");
            Name        = "Inhibit using EPSV";
            Description = "Inhibit using EPSV";
        },
        [ValueParameter]@{
            Keys        = @("--disallow-username-in-url");
            Name        = "username in url";
            Description = "username in url";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dns-interface");
            Name        = "Interface to use for DNS requests";
            Description = "Interface to use for DNS requests";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dns-ipv4-addr");
            Name        = "IPv4 address to use for DNS requests";
            Description = "IPv4 address to use for DNS requests";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dns-ipv6-addr");
            Name        = "IPv6 address to use for DNS requests";
            Description = "IPv6 address to use for DNS requests";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dns-servers");
            Name        = "DNS server addrs to use";
            Description = "DNS server addrs to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--doh-url");
            Name        = "Resolve host names over DOH";
            Description = "Resolve host names over DOH";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dump-header", "-D");
            Name        = "Write the received headers to <filename>";
            Description = "Write the received headers to <filename>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--egd-file");
            Name        = "EGD socket path for random data";
            Description = "EGD socket path for random data";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--engine");
            Name        = "Crypto engine to use";
            Description = "Crypto engine to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--etag-compare");
            Name        = "Get an ETag from a file and send a conditional request";
            Description = "Get an ETag from a file and send a conditional request";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--etag-save");
            Name        = "Get an ETag from response header and save it to a FILE";
            Description = "Get an ETag from response header and save it to a FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--expect100-timeout");
            Name        = "How long to wait for 100-continue";
            Description = "How long to wait for 100-continue";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fail", "-f");
            Name        = "Fail silently (no output at all) on HTTP errors";
            Description = "Fail silently (no output at all) on HTTP errors";
        },
        [FlagParameter]@{
            Keys        = @("--fail-early");
            Name        = "Fail on first transfer error, do not continue";
            Description = "Fail on first transfer error, do not continue";
        },
        [FlagParameter]@{
            Keys        = @("--false-start");
            Name        = "Enable TLS False Start";
            Description = "Enable TLS False Start";
        },
        [ValueParameter]@{
            Keys        = @("--form", "-F");
            Name        = "Specify multipart MIME data";
            Description = "Specify multipart MIME data";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--form-string");
            Name        = "Specify multipart MIME data";
            Description = "Specify multipart MIME data";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ftp-account");
            Name        = "Account data string";
            Description = "Account data string";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ftp-alternative-to-user");
            Name        = "String to replace USER [name]";
            Description = "String to replace USER [name]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ftp-create-dirs");
            Name        = "the remote dirs if not present";
            Description = "the remote dirs if not present";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ftp-method");
            Name        = "Control CWD usage";
            Description = "Control CWD usage";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ftp-pasv");
            Name        = "Use PASV/EPSV instead of PORT";
            Description = "Use PASV/EPSV instead of PORT";
        },
        [ValueParameter]@{
            Keys        = @("--ftp-port", "-P");
            Name        = "Use PORT instead of PASV";
            Description = "Use PORT instead of PASV";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ftp-pret");
            Name        = "Send PRET before PASV";
            Description = "Send PRET before PASV";
        },
        [ValueParameter]@{
            Keys        = @("--ftp-skip-pasv-ip");
            Name        = "the IP address for PASV";
            Description = "the IP address for PASV";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ftp-ssl-ccc");
            Name        = "Send CCC after authenticating";
            Description = "Send CCC after authenticating";
        },
        [ValueParameter]@{
            Keys        = @("--ftp-ssl-ccc-mode");
            Name        = "Set CCC mode";
            Description = "Set CCC mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ftp-ssl-control");
            Name        = "SSL/TLS for FTP login, clear for transfer";
            Description = "SSL/TLS for FTP login, clear for transfer";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--get", "-G");
            Name        = "Put the post data in the URL and use GET";
            Description = "Put the post data in the URL and use GET";
        },
        [FlagParameter]@{
            Keys        = @("--globoff", "-g");
            Name        = "Disable URL sequences and ranges using {} and []";
            Description = "Disable URL sequences and ranges using {} and []";
        },
        [ValueParameter]@{
            Keys        = @("--happy-eyeballs-timeout-ms");
            Name        = "How long to wait in milliseconds for IPv6 before trying IPv4";
            Description = "How long to wait in milliseconds for IPv6 before trying IPv4";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--haproxy-protocol");
            Name        = "HAProxy PROXY protocol v1 header";
            Description = "HAProxy PROXY protocol v1 header";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--head", "-I");
            Name        = "Show document info only";
            Description = "Show document info only";
        },
        [ValueParameter]@{
            Keys        = @("--header", "-H");
            Name        = "Pass custom header(s) to server";
            Description = "Pass custom header(s) to server";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "This help text";
            Description = "This help text";
        },
        [ValueParameter]@{
            Keys        = @("--hostpubmd5");
            Name        = "Acceptable MD5 hash of the host public key";
            Description = "Acceptable MD5 hash of the host public key";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--http0.9");
            Name        = "Allow HTTP 0.9 responses";
            Description = "Allow HTTP 0.9 responses";
        },
        [FlagParameter]@{
            Keys        = @("--http1.0", "-0");
            Name        = "Use HTTP 1.0";
            Description = "Use HTTP 1.0";
        },
        [FlagParameter]@{
            Keys        = @("--http1.1");
            Name        = "Use HTTP 1.1";
            Description = "Use HTTP 1.1";
        },
        [FlagParameter]@{
            Keys        = @("--http2");
            Name        = "Use HTTP 2";
            Description = "Use HTTP 2";
        },
        [ValueParameter]@{
            Keys        = @("--http2-prior-knowledge");
            Name        = "HTTP 2 without HTTP/1.1 Upgrade";
            Description = "HTTP 2 without HTTP/1.1 Upgrade";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--http3");
            Name        = "Use HTTP v3";
            Description = "Use HTTP v3";
        },
        [ValueParameter]@{
            Keys        = @("--ignore-content-length");
            Name        = "the size of the remote resource";
            Description = "the size of the remote resource";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--include", "-i");
            Name        = "Include protocol response headers in the output";
            Description = "Include protocol response headers in the output";
        },
        [FlagParameter]@{
            Keys        = @("--insecure", "-k");
            Name        = "Allow insecure server connections when using SSL";
            Description = "Allow insecure server connections when using SSL";
        },
        [ValueParameter]@{
            Keys        = @("--interface");
            Name        = "Use network INTERFACE (or address)";
            Description = "Use network INTERFACE (or address)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ipv4", "-4");
            Name        = "Resolve names to IPv4 addresses";
            Description = "Resolve names to IPv4 addresses";
        },
        [FlagParameter]@{
            Keys        = @("--ipv6", "-6");
            Name        = "Resolve names to IPv6 addresses";
            Description = "Resolve names to IPv6 addresses";
        },
        [ValueParameter]@{
            Keys        = @("--junk-session-cookies", "-j");
            Name        = "session cookies read from file";
            Description = "session cookies read from file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--keepalive-time");
            Name        = "Interval time for keepalive probes";
            Description = "Interval time for keepalive probes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key");
            Name        = "Private key file name";
            Description = "Private key file name";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-type");
            Name        = "Private key file type (DER/PEM/ENG)";
            Description = "Private key file type (DER/PEM/ENG)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--krb");
            Name        = "Enable Kerberos with security <level>";
            Description = "Enable Kerberos with security <level>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--libcurl");
            Name        = "Dump libcurl equivalent code of this command line";
            Description = "Dump libcurl equivalent code of this command line";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--limit-rate");
            Name        = "Limit transfer speed to RATE";
            Description = "Limit transfer speed to RATE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-only", "-l");
            Name        = "List only mode";
            Description = "List only mode";
        },
        [ValueParameter]@{
            Keys        = @("--local-port");
            Name        = "Force use of RANGE for local port numbers";
            Description = "Force use of RANGE for local port numbers";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--location", "-L");
            Name        = "Follow redirects";
            Description = "Follow redirects";
        },
        [ValueParameter]@{
            Keys        = @("--location-trusted");
            Name        = "--location, and send auth to other hosts";
            Description = "--location, and send auth to other hosts";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--login-options");
            Name        = "Server login options";
            Description = "Server login options";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mail-auth");
            Name        = "Originator address of the original email";
            Description = "Originator address of the original email";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mail-from");
            Name        = "Mail from this address";
            Description = "Mail from this address";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mail-rcpt");
            Name        = "Mail to this address";
            Description = "Mail to this address";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mail-rcpt-allowfails");
            Name        = "RCPT TO command to fail for some recipients";
            Description = "RCPT TO command to fail for some recipients";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--manual", "-M");
            Name        = "Display the full manual";
            Description = "Display the full manual";
        },
        [ValueParameter]@{
            Keys        = @("--max-filesize");
            Name        = "Maximum file size to download";
            Description = "Maximum file size to download";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-redirs");
            Name        = "Maximum number of redirects allowed";
            Description = "Maximum number of redirects allowed";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-time", "-m");
            Name        = "Maximum time allowed for the transfer";
            Description = "Maximum time allowed for the transfer";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--metalink");
            Name        = "Process given URLs as metalink XML file";
            Description = "Process given URLs as metalink XML file";
        },
        [FlagParameter]@{
            Keys        = @("--negotiate");
            Name        = "Use HTTP Negotiate (SPNEGO) authentication";
            Description = "Use HTTP Negotiate (SPNEGO) authentication";
        },
        [FlagParameter]@{
            Keys        = @("--netrc", "-n");
            Name        = "Must read .netrc for user name and password";
            Description = "Must read .netrc for user name and password";
        },
        [ValueParameter]@{
            Keys        = @("--netrc-file");
            Name        = "Specify FILE for netrc";
            Description = "Specify FILE for netrc";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--netrc-optional");
            Name        = "either .netrc or URL";
            Description = "either .netrc or URL";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--next", "-:");
            Name        = "Make next URL use its separate set of options";
            Description = "Make next URL use its separate set of options";
        },
        [FlagParameter]@{
            Keys        = @("--no-alpn");
            Name        = "Disable the ALPN TLS extension";
            Description = "Disable the ALPN TLS extension";
        },
        [FlagParameter]@{
            Keys        = @("--no-buffer", "-N");
            Name        = "Disable buffering of the output stream";
            Description = "Disable buffering of the output stream";
        },
        [FlagParameter]@{
            Keys        = @("--no-keepalive");
            Name        = "Disable TCP keepalive on the connection";
            Description = "Disable TCP keepalive on the connection";
        },
        [FlagParameter]@{
            Keys        = @("--no-npn");
            Name        = "Disable the NPN TLS extension";
            Description = "Disable the NPN TLS extension";
        },
        [ValueParameter]@{
            Keys        = @("--no-progress-meter");
            Name        = "not show the progress meter";
            Description = "not show the progress meter";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-sessionid");
            Name        = "Disable SSL session-ID reusing";
            Description = "Disable SSL session-ID reusing";
        },
        [ValueParameter]@{
            Keys        = @("--noproxy");
            Name        = "List of hosts which do not use proxy";
            Description = "List of hosts which do not use proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ntlm");
            Name        = "Use HTTP NTLM authentication";
            Description = "Use HTTP NTLM authentication";
        },
        [FlagParameter]@{
            Keys        = @("--ntlm-wb");
            Name        = "Use HTTP NTLM authentication with winbind";
            Description = "Use HTTP NTLM authentication with winbind";
        },
        [ValueParameter]@{
            Keys        = @("--oauth2-bearer");
            Name        = "OAuth 2 Bearer Token";
            Description = "OAuth 2 Bearer Token";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "Write to file instead of stdout";
            Description = "Write to file instead of stdout";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--output-dir");
            Name        = "specifies the directory in which files should be stored";
            Description = "specifies the directory in which files should be stored";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--parallel", "-Z");
            Name        = "Perform transfers in parallel";
            Description = "Perform transfers in parallel";
        },
        [ValueParameter]@{
            Keys        = @("--parallel-immediate");
            Name        = "not wait for multiplexing (with --parallel)";
            Description = "not wait for multiplexing (with --parallel)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--parallel-max");
            Name        = "Maximum concurrency for parallel transfers";
            Description = "Maximum concurrency for parallel transfers";
        },
        [ValueParameter]@{
            Keys        = @("--pass");
            Name        = "Pass phrase for the private key";
            Description = "Pass phrase for the private key";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--path-as-is");
            Name        = "Do not squash .. sequences in URL path";
            Description = "Do not squash .. sequences in URL path";
        },
        [ValueParameter]@{
            Keys        = @("--pinnedpubkey");
            Name        = "FILE/HASHES Public key to verify peer against";
            Description = "FILE/HASHES Public key to verify peer against";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--post301");
            Name        = "Do not switch to GET after following a 301";
            Description = "Do not switch to GET after following a 301";
        },
        [FlagParameter]@{
            Keys        = @("--post302");
            Name        = "Do not switch to GET after following a 302";
            Description = "Do not switch to GET after following a 302";
        },
        [FlagParameter]@{
            Keys        = @("--post303");
            Name        = "Do not switch to GET after following a 303";
            Description = "Do not switch to GET after following a 303";
        },
        [ValueParameter]@{
            Keys        = @("--preproxy");
            Name        = "Use this proxy first";
            Description = "Use this proxy first";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--progress-bar", "-#");
            Name        = "Display transfer progress as a bar";
            Description = "Display transfer progress as a bar";
        },
        [ValueParameter]@{
            Keys        = @("--proto");
            Name        = "Enable/disable PROTOCOLS";
            Description = "Enable/disable PROTOCOLS";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proto-default");
            Name        = "Use PROTOCOL for any URL missing a scheme";
            Description = "Use PROTOCOL for any URL missing a scheme";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proto-redir");
            Name        = "Enable/disable PROTOCOLS on redirect";
            Description = "Enable/disable PROTOCOLS on redirect";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy", "-x");
            Name        = "Use this proxy";
            Description = "Use this proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-anyauth");
            Name        = "any proxy authentication method";
            Description = "any proxy authentication method";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--proxy-basic");
            Name        = "Use Basic authentication on the proxy";
            Description = "Use Basic authentication on the proxy";
        },
        [ValueParameter]@{
            Keys        = @("--proxy-cacert");
            Name        = "CA certificate to verify peer against for proxy";
            Description = "CA certificate to verify peer against for proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-capath");
            Name        = "CA directory to verify peer against for proxy";
            Description = "CA directory to verify peer against for proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-cert");
            Name        = "Set client certificate for proxy";
            Description = "Set client certificate for proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-cert-type");
            Name        = "Client certificate type for HTTPS proxy";
            Description = "Client certificate type for HTTPS proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-ciphers");
            Name        = "SSL ciphers to use for proxy";
            Description = "SSL ciphers to use for proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-crlfile");
            Name        = "Set a CRL list for proxy";
            Description = "Set a CRL list for proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--proxy-digest");
            Name        = "Use Digest authentication on the proxy";
            Description = "Use Digest authentication on the proxy";
        },
        [ValueParameter]@{
            Keys        = @("--proxy-header");
            Name        = "Pass custom header(s) to proxy";
            Description = "Pass custom header(s) to proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-insecure");
            Name        = "HTTPS proxy connections without verifying the proxy";
            Description = "HTTPS proxy connections without verifying the proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-key");
            Name        = "Private key for HTTPS proxy";
            Description = "Private key for HTTPS proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-key-type");
            Name        = "Private key file type for proxy";
            Description = "Private key file type for proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-negotiate");
            Name        = "HTTP Negotiate (SPNEGO) authentication on the proxy";
            Description = "HTTP Negotiate (SPNEGO) authentication on the proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--proxy-ntlm");
            Name        = "Use NTLM authentication on the proxy";
            Description = "Use NTLM authentication on the proxy";
        },
        [ValueParameter]@{
            Keys        = @("--proxy-pass");
            Name        = "Pass phrase for the private key for HTTPS proxy";
            Description = "Pass phrase for the private key for HTTPS proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-pinnedpubkey");
            Name        = "FILE/HASHES public key to verify proxy with";
            Description = "FILE/HASHES public key to verify proxy with";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-service-name");
            Name        = "SPNEGO proxy service name";
            Description = "SPNEGO proxy service name";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-ssl-allow-beast");
            Name        = "security flaw for interop for HTTPS proxy";
            Description = "security flaw for interop for HTTPS proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-tls13-ciphers");
            Name        = "TLS 1.3 ciphersuites for proxy (OpenSSL)";
            Description = "TLS 1.3 ciphersuites for proxy (OpenSSL)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-tlsauthtype");
            Name        = "TLS authentication type for HTTPS proxy";
            Description = "TLS authentication type for HTTPS proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-tlspassword");
            Name        = "TLS password for HTTPS proxy";
            Description = "TLS password for HTTPS proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-tlsuser");
            Name        = "TLS username for HTTPS proxy";
            Description = "TLS username for HTTPS proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--proxy-tlsv1");
            Name        = "Use TLSv1 for HTTPS proxy";
            Description = "Use TLSv1 for HTTPS proxy";
        },
        [ValueParameter]@{
            Keys        = @("--proxy-user", "-U");
            Name        = "Proxy user and password";
            Description = "Proxy user and password";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy1.0");
            Name        = "Use HTTP/1.0 proxy on given port";
            Description = "Use HTTP/1.0 proxy on given port";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--proxytunnel", "-p");
            Name        = "Operate through an HTTP proxy tunnel (using CONNECT)";
            Description = "Operate through an HTTP proxy tunnel (using CONNECT)";
        },
        [ValueParameter]@{
            Keys        = @("--pubkey");
            Name        = "SSH Public key file name";
            Description = "SSH Public key file name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quote", "-Q");
            Name        = "Send command(s) to server before transfer";
            Description = "Send command(s) to server before transfer";
        },
        [ValueParameter]@{
            Keys        = @("--random-file");
            Name        = "File for reading random data from";
            Description = "File for reading random data from";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--range", "-r");
            Name        = "Retrieve only the bytes within RANGE";
            Description = "Retrieve only the bytes within RANGE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--raw");
            Name        = "Do HTTP `"raw`"; no transfer decoding";
            Description = "Do HTTP `"raw`"; no transfer decoding";
        },
        [ValueParameter]@{
            Keys        = @("--referer", "-e");
            Name        = "Referrer URL";
            Description = "Referrer URL";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--remote-header-name", "-J");
            Name        = "the header-provided filename";
            Description = "the header-provided filename";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--remote-name", "-O");
            Name        = "Write output to a file named as the remote file";
            Description = "Write output to a file named as the remote file";
        },
        [ValueParameter]@{
            Keys        = @("--remote-name-all");
            Name        = "the remote file name for all URLs";
            Description = "the remote file name for all URLs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--remote-time", "-R");
            Name        = "Set the remote file's time on the local output";
            Description = "Set the remote file's time on the local output";
        },
        [ValueParameter]@{
            Keys        = @("--request", "-X");
            Name        = "Specify request command to use";
            Description = "Specify request command to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--request-target");
            Name        = "the target for this request";
            Description = "the target for this request";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--resolve");
            Name        = "Resolve the host+port to this address";
            Description = "Resolve the host+port to this address";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--retry");
            Name        = "Retry request if transient problems occur";
            Description = "Retry request if transient problems occur";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--retry-connrefused");
            Name        = "on connection refused (use with --retry)";
            Description = "on connection refused (use with --retry)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--retry-delay");
            Name        = "Wait time between retries";
            Description = "Wait time between retries";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--retry-max-time");
            Name        = "Retry only within this period";
            Description = "Retry only within this period";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sasl-authzid");
            Name        = "Use this identity to act as during SASL PLAIN authentication";
            Description = "Use this identity to act as during SASL PLAIN authentication";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sasl-ir");
            Name        = "Enable initial response in SASL authentication";
            Description = "Enable initial response in SASL authentication";
        },
        [ValueParameter]@{
            Keys        = @("--service-name");
            Name        = "SPNEGO service name";
            Description = "SPNEGO service name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-error", "-S");
            Name        = "Show error even when -s is used";
            Description = "Show error even when -s is used";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-s");
            Name        = "Silent mode";
            Description = "Silent mode";
        },
        [ValueParameter]@{
            Keys        = @("--socks4");
            Name        = "SOCKS4 proxy on given host + port";
            Description = "SOCKS4 proxy on given host + port";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--socks4a");
            Name        = "SOCKS4a proxy on given host + port";
            Description = "SOCKS4a proxy on given host + port";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--socks5");
            Name        = "SOCKS5 proxy on given host + port";
            Description = "SOCKS5 proxy on given host + port";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--socks5-basic");
            Name        = "Enable username/password auth for SOCKS5 proxies";
            Description = "Enable username/password auth for SOCKS5 proxies";
        },
        [ValueParameter]@{
            Keys        = @("--socks5-gssapi");
            Name        = "GSS-API auth for SOCKS5 proxies";
            Description = "GSS-API auth for SOCKS5 proxies";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--socks5-gssapi-nec");
            Name        = "with NEC SOCKS5 server";
            Description = "with NEC SOCKS5 server";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--socks5-gssapi-service");
            Name        = "SOCKS5 proxy service name for GSS-API";
            Description = "SOCKS5 proxy service name for GSS-API";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--socks5-hostname");
            Name        = "SOCKS5 proxy, pass host name to proxy";
            Description = "SOCKS5 proxy, pass host name to proxy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--speed-limit", "-Y");
            Name        = "Stop transfers slower than this";
            Description = "Stop transfers slower than this";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--speed-time", "-y");
            Name        = "Trigger 'speed-limit' abort after this time";
            Description = "Trigger 'speed-limit' abort after this time";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ssl");
            Name        = "Try SSL/TLS";
            Description = "Try SSL/TLS";
        },
        [ValueParameter]@{
            Keys        = @("--ssl-allow-beast");
            Name        = "security flaw to improve interop";
            Description = "security flaw to improve interop";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ssl-no-revoke");
            Name        = "cert revocation checks (Schannel)";
            Description = "cert revocation checks (Schannel)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ssl-reqd");
            Name        = "Require SSL/TLS";
            Description = "Require SSL/TLS";
        },
        [ValueParameter]@{
            Keys        = @("--ssl-revoke-best-effort");
            Name        = "revocation offline or missing revocation list errors (Schannel)";
            Description = "revocation offline or missing revocation list errors (Schannel)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sslv2", "-2");
            Name        = "Use SSLv2";
            Description = "Use SSLv2";
        },
        [FlagParameter]@{
            Keys        = @("--sslv3", "-3");
            Name        = "Use SSLv3";
            Description = "Use SSLv3";
        },
        [FlagParameter]@{
            Keys        = @("--stderr");
            Name        = "Where to redirect stderr";
            Description = "Where to redirect stderr";
        },
        [ValueParameter]@{
            Keys        = @("--styled-output");
            Name        = "styled output for HTTP headers";
            Description = "styled output for HTTP headers";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--suppress-connect-headers");
            Name        = "proxy CONNECT response headers";
            Description = "proxy CONNECT response headers";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tcp-fastopen");
            Name        = "Use TCP Fast Open";
            Description = "Use TCP Fast Open";
        },
        [FlagParameter]@{
            Keys        = @("--tcp-nodelay");
            Name        = "Use the TCP_NODELAY option";
            Description = "Use the TCP_NODELAY option";
        },
        [ValueParameter]@{
            Keys        = @("--telnet-option", "-t");
            Name        = "Set telnet option";
            Description = "Set telnet option";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tftp-blksize");
            Name        = "Set TFTP BLKSIZE option";
            Description = "Set TFTP BLKSIZE option";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tftp-no-options");
            Name        = "not send any TFTP options";
            Description = "not send any TFTP options";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time-cond", "-z");
            Name        = "Transfer based on a time condition";
            Description = "Transfer based on a time condition";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tls-max");
            Name        = "Set maximum allowed TLS version";
            Description = "Set maximum allowed TLS version";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tls13-ciphers");
            Name        = "TLS 1.3 ciphersuites (OpenSSL)";
            Description = "TLS 1.3 ciphersuites (OpenSSL)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tlsauthtype");
            Name        = "TLS authentication type";
            Description = "TLS authentication type";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tlspassword");
            Name        = "TLS password";
            Description = "TLS password";
        },
        [ValueParameter]@{
            Keys        = @("--tlsuser");
            Name        = "TLS user name";
            Description = "TLS user name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tlsv1", "-1");
            Name        = "Use TLSv1.0 or greater";
            Description = "Use TLSv1.0 or greater";
        },
        [FlagParameter]@{
            Keys        = @("--tlsv1.0");
            Name        = "Use TLSv1.0 or greater";
            Description = "Use TLSv1.0 or greater";
        },
        [FlagParameter]@{
            Keys        = @("--tlsv1.1");
            Name        = "Use TLSv1.1 or greater";
            Description = "Use TLSv1.1 or greater";
        },
        [FlagParameter]@{
            Keys        = @("--tlsv1.2");
            Name        = "Use TLSv1.2 or greater";
            Description = "Use TLSv1.2 or greater";
        },
        [FlagParameter]@{
            Keys        = @("--tlsv1.3");
            Name        = "Use TLSv1.3 or greater";
            Description = "Use TLSv1.3 or greater";
        },
        [FlagParameter]@{
            Keys        = @("--tr-encoding");
            Name        = "Request compressed transfer encoding";
            Description = "Request compressed transfer encoding";
        },
        [ValueParameter]@{
            Keys        = @("--trace");
            Name        = "Write a debug trace to FILE";
            Description = "Write a debug trace to FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--trace-ascii");
            Name        = "Like --trace, but without hex output";
            Description = "Like --trace, but without hex output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--trace-time");
            Name        = "Add time stamps to trace/verbose output";
            Description = "Add time stamps to trace/verbose output";
        },
        [ValueParameter]@{
            Keys        = @("--unix-socket");
            Name        = "Connect through this Unix domain socket";
            Description = "Connect through this Unix domain socket";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--upload-file", "-T");
            Name        = "Transfer local FILE to destination";
            Description = "Transfer local FILE to destination";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--url");
            Name        = "URL to work with";
            Description = "URL to work with";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--use-ascii", "-B");
            Name        = "Use ASCII/text transfer";
            Description = "Use ASCII/text transfer";
        },
        [ValueParameter]@{
            Keys        = @("--user", "-u");
            Name        = "Server user and password";
            Description = "Server user and password";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user-agent", "-A");
            Name        = "Send User-Agent <name> to server";
            Description = "Send User-Agent <name> to server";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Make the operation more talkative";
            Description = "Make the operation more talkative";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version number and quit";
            Description = "Show version number and quit";
        },
        [ValueParameter]@{
            Keys        = @("--write-out", "-w");
            Name        = "Use output FORMAT after completion";
            Description = "Use output FORMAT after completion";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--xattr");
            Name        = "Store metadata in extended file attributes";
            Description = "Store metadata in extended file attributes";
        }
    )
}
