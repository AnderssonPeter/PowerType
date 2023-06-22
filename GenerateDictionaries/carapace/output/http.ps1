# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://httpie.io/";
    Keys        = @("http");
    Name        = "http";
    Description = "command-line HTTP client for the API era";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all");
            Name        = "Show any intermediary requests/responses as well.";
            Description = "Show any intermediary requests/responses as well.";
        },
        [ValueParameter]@{
            Keys        = @("--auth", "-a");
            Name        = "If only the username is provided (-a username), HTTPie will prompt for the password.";
            Description = "If only the username is provided (-a username), HTTPie will prompt for the password.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--auth-type", "-A");
            Name        = "The authentication mechanism to be used.";
            Description = "The authentication mechanism to be used.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--body", "-b");
            Name        = "Print only the response body.";
            Description = "Print only the response body.";
        },
        [ValueParameter]@{
            Keys        = @("--boundary");
            Name        = "Specify a custom boundary string for multipart/form-data requests.";
            Description = "Specify a custom boundary string for multipart/form-data requests.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cert");
            Name        = "You can specify a local cert to use as client side SSL certificate.";
            Description = "You can specify a local cert to use as client side SSL certificate.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cert-key");
            Name        = "The private key to use with SSL.";
            Description = "The private key to use with SSL.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--check-status");
            Name        = "By default, HTTPie exits with 0 when no network or other fatal errors occur.";
            Description = "By default, HTTPie exits with 0 when no network or other fatal errors occur.";
        },
        [FlagParameter]@{
            Keys        = @("--chunked");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--ciphers");
            Name        = "A string in the OpenSSL cipher list format.";
            Description = "A string in the OpenSSL cipher list format.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--compress", "-x");
            Name        = "Content compressed (encoded) with Deflate algorithm.";
            Description = "Content compressed (encoded) with Deflate algorithm.";
        },
        [FlagParameter]@{
            Keys        = @("--continue", "-c");
            Name        = "Resume an interrupted download.";
            Description = "Resume an interrupted download.";
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Prints the exception traceback should one occur.";
            Description = "Prints the exception traceback should one occur.";
        },
        [ValueParameter]@{
            Keys        = @("--default-scheme");
            Name        = "The default scheme to use if not specified in the URL.";
            Description = "The default scheme to use if not specified in the URL.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--download", "-d");
            Name        = "Do not print the response body to stdout.";
            Description = "Do not print the response body to stdout.";
        },
        [FlagParameter]@{
            Keys        = @("--follow", "-F");
            Name        = "Follow 30x Location redirects.";
            Description = "Follow 30x Location redirects.";
        },
        [FlagParameter]@{
            Keys        = @("--form", "-f");
            Name        = "Data items from the command line are serialized as form fields.";
            Description = "Data items from the command line are serialized as form fields.";
        },
        [ValueParameter]@{
            Keys        = @("--format-options");
            Name        = "Controls output formatting.";
            Description = "Controls output formatting.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--headers", "-h");
            Name        = "Print only the response headers.";
            Description = "Print only the response headers.";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Show this help message and exit.";
            Description = "Show this help message and exit.";
        },
        [ValueParameter]@{
            Keys        = @("--history-print", "-P");
            Name        = "The same as --print, -p but applies only to intermediary requests/responses.";
            Description = "The same as --print, -p but applies only to intermediary requests/responses.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-netrc");
            Name        = "Ignore credentials from .netrc.";
            Description = "Ignore credentials from .netrc.";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-stdin", "-I");
            Name        = "Do not attempt to read stdin.";
            Description = "Do not attempt to read stdin.";
        },
        [FlagParameter]@{
            Keys        = @("--json", "-j");
            Name        = "Data items from the command line are serialized as a JSON object.";
            Description = "Data items from the command line are serialized as a JSON object.";
        },
        [ValueParameter]@{
            Keys        = @("--max-headers");
            Name        = "The maximum number of response headers to be read before giving up.";
            Description = "The maximum number of response headers to be read before giving up.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-redirects");
            Name        = "By default, requests have a limit of 30 redirects (works with --follow).";
            Description = "By default, requests have a limit of 30 redirects (works with --follow).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--multipart");
            Name        = "Similar to --form, but always sends a multipart/form-data request.";
            Description = "Similar to --form, but always sends a multipart/form-data request.";
        },
        [FlagParameter]@{
            Keys        = @("--offline");
            Name        = "Build the request and print it but don’t actually send it.";
            Description = "Build the request and print it but don’t actually send it.";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "Save output to FILE instead of stdout.";
            Description = "Save output to FILE instead of stdout.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--path-as-is");
            Name        = "Bypass dot segment (/../ or /./) URL squashing.";
            Description = "Bypass dot segment (/../ or /./) URL squashing.";
        },
        [ValueParameter]@{
            Keys        = @("--pretty");
            Name        = "Controls output processing.";
            Description = "Controls output processing.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--print", "-p");
            Name        = "String specifying what the output should contain.";
            Description = "String specifying what the output should contain.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy");
            Name        = "String mapping protocol to the URL of the proxy.";
            Description = "String mapping protocol to the URL of the proxy.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Do not print to stdout or stderr.";
            Description = "Do not print to stdout or stderr.";
        },
        [ValueParameter]@{
            Keys        = @("--session");
            Name        = "Create, or reuse and update a session.";
            Description = "Create, or reuse and update a session.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--session-read-only");
            Name        = "Create or read a session without updating it form the request/response exchange.";
            Description = "Create or read a session without updating it form the request/response exchange.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sorted");
            Name        = "Re-enables all sorting options while formatting output.";
            Description = "Re-enables all sorting options while formatting output.";
        },
        [ValueParameter]@{
            Keys        = @("--ssl");
            Name        = "The desired protocol version to use.";
            Description = "The desired protocol version to use.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stream", "-S");
            Name        = "Always stream the response body by line, i.e., behave like ``tail -f'.";
            Description = "Always stream the response body by line, i.e., behave like ``tail -f'.";
        },
        [ValueParameter]@{
            Keys        = @("--style", "-s");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--timeout");
            Name        = "The connection timeout of the request in seconds.";
            Description = "The connection timeout of the request in seconds.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--traceback");
            Name        = "Prints the exception traceback should one occur.";
            Description = "Prints the exception traceback should one occur.";
        },
        [FlagParameter]@{
            Keys        = @("--unsorted");
            Name        = "Disables all sorting while formatting output.";
            Description = "Disables all sorting while formatting output.";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Verbose output.";
            Description = "Verbose output.";
        },
        [ValueParameter]@{
            Keys        = @("--verify");
            Name        = "Set to `"no`" (or `"false`") to skip checking the host's SSL certificate.";
            Description = "Set to `"no`" (or `"false`") to skip checking the host's SSL certificate.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show version and exit.";
            Description = "Show version and exit.";
        }
    )
}
