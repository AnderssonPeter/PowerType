# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/postmanlabs/newman";
    Keys        = @("newman");
    Name        = "newman";
    Description = "Newman is a command-line collection runner for Postman";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display help for command";
            Description = "display help for command";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "output the version number";
            Description = "output the version number";
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Initiate a Postman Collection run from a given URL or pat";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--bail");
                    Name        = "Specify whether or not to gracefully";
                    Description = "Specify whether or not to gracefully";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Enable/Disable colored output";
                    Description = "Enable/Disable colored output";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cookie-jar");
                    Name        = "Specify the path to a custom cookie jar";
                    Description = "Specify the path to a custom cookie jar";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--delay-request");
                    Name        = "Specify the extent of delay between";
                    Description = "Specify the extent of delay between";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-unicode");
                    Name        = "Forces Unicode compliant symbols to be";
                    Description = "Forces Unicode compliant symbols to be";
                },
                [ValueParameter]@{
                    Keys        = @("--env-var");
                    Name        = "Allows the specification of environment";
                    Description = "Allows the specification of environment";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--environment", "-e");
                    Name        = "Specify a URL or path to a Postman";
                    Description = "Specify a URL or path to a Postman";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--export-collection");
                    Name        = "Exports the executed collection to a";
                    Description = "Exports the executed collection to a";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--export-cookie-jar");
                    Name        = "Exports the cookie jar to a file after";
                    Description = "Exports the cookie jar to a file after";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--export-environment");
                    Name        = "Exports the final environment to a file";
                    Description = "Exports the final environment to a file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--export-globals");
                    Name        = "Exports the final globals to a file";
                    Description = "Exports the final globals to a file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--folder");
                    Name        = "Specify the folder to run from a";
                    Description = "Specify the folder to run from a";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--global-var");
                    Name        = "Allows the specification of global";
                    Description = "Allows the specification of global";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--globals", "-g");
                    Name        = "Specify a URL or path to a file";
                    Description = "Specify a URL or path to a file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "display help for command";
                    Description = "display help for command";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-redirects");
                    Name        = "Prevents Newman from automatically";
                    Description = "Prevents Newman from automatically";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure", "-k");
                    Name        = "Disables SSL validations";
                    Description = "Disables SSL validations";
                },
                [ValueParameter]@{
                    Keys        = @("--iteration-count", "-n");
                    Name        = "Define the number of iterations to run";
                    Description = "Define the number of iterations to run";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--iteration-data", "-d");
                    Name        = "Specify a data file to use for";
                    Description = "Specify a data file to use for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-insecure-file-read");
                    Name        = "Prevents reading the files situated";
                    Description = "Prevents reading the files situated";
                },
                [ValueParameter]@{
                    Keys        = @("--postman-api-key");
                    Name        = "API Key used to load the resources from";
                    Description = "API Key used to load the resources from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--reporters", "-r");
                    Name        = "Specify the reporters to use for this";
                    Description = "Specify the reporters to use for this";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--silent");
                    Name        = "Prevents Newman from showing output to";
                    Description = "Prevents Newman from showing output to";
                },
                [ValueParameter]@{
                    Keys        = @("--ssl-client-cert");
                    Name        = "Specify the path to a client";
                    Description = "Specify the path to a client";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssl-client-cert-list");
                    Name        = "Specify the path to a client";
                    Description = "Specify the path to a client";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssl-client-key");
                    Name        = "Specify the path to a client";
                    Description = "Specify the path to a client";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssl-client-passphrase");
                    Name        = "Specify the client certificate";
                    Description = "Specify the client certificate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssl-extra-ca-certs");
                    Name        = "Specify additionally trusted CA";
                    Description = "Specify additionally trusted CA";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--suppress-exit-code", "-x");
                    Name        = "Specify whether or not to override the";
                    Description = "Specify whether or not to override the";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "Specify a timeout for collection run";
                    Description = "Specify a timeout for collection run";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout-request");
                    Name        = "Specify a timeout for requests";
                    Description = "Specify a timeout for requests";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout-script");
                    Name        = "Specify a timeout for scripts";
                    Description = "Specify a timeout for scripts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose");
                    Name        = "Show detailed information of collection";
                    Description = "Show detailed information of collection";
                },
                [ValueParameter]@{
                    Keys        = @("--working-dir");
                    Name        = "Specify the path to the working";
                    Description = "Specify the path to the working";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
