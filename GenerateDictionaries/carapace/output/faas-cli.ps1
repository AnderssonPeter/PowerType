# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/openfaas/faas-cli";
    Keys        = @("faas-cli");
    Name        = "faas-cli";
    Description = "Manage your OpenFaaS functions from the command line";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--filter");
            Name        = "Wildcard to match with function names in YAML file";
            Description = "Wildcard to match with function names in YAML file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--regex");
            Name        = "Regex to match with function names in YAML file";
            Description = "Regex to match with function names in YAML file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--yaml", "-f");
            Name        = "Path to YAML file describing function(s)";
            Description = "Path to YAML file describing function(s)";
            # Source = $?? # todo: Fix or remove this!
        },
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("auth");
            Name        = "auth";
            Description = "Obtain a token for your OpenFaaS gateway";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--audience");
                    Name        = "OAuth2 audience";
                    Description = "OAuth2 audience";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--auth-url");
                    Name        = "OAuth2 Authorize URL i.e. http://idp/oauth/authorize";
                    Description = "OAuth2 Authorize URL i.e. http://idp/oauth/authorize";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-id");
                    Name        = "OAuth2 client_id";
                    Description = "OAuth2 client_id";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-secret");
                    Name        = "OAuth2 client_secret, for use with client_credentials grant";
                    Description = "OAuth2 client_secret, for use with client_credentials grant";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--grant");
                    Name        = "grant for OAuth2 flow - either implicit, implicit-id or client_credentials";
                    Description = "grant for OAuth2 flow - either implicit, implicit-id or client_credentials";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--launch-browser");
                    Name        = "Launch browser for OAuth2 redirect";
                    Description = "Launch browser for OAuth2 redirect";
                },
                [ValueParameter]@{
                    Keys        = @("--listen-port");
                    Name        = "OAuth2 local port for receiving cookie";
                    Description = "OAuth2 local port for receiving cookie";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--redirect-host");
                    Name        = "Host for OAuth2 redirection in the implicit flow including URL scheme";
                    Description = "Host for OAuth2 redirection in the implicit flow including URL scheme";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--scope");
                    Name        = "scope for OAuth2 flow - i.e. `"openid profile`"";
                    Description = "scope for OAuth2 flow - i.e. `"openid profile`"";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Builds OpenFaaS function containers";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--build-arg", "-b");
                    Name        = "Add a build-arg for Docker (KEY=VALUE)";
                    Description = "Add a build-arg for Docker (KEY=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-label");
                    Name        = "Add a label for Docker image (LABEL=VALUE)";
                    Description = "Add a label for Docker image (LABEL=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-option", "-o");
                    Name        = "Set a build option, e.g. dev";
                    Description = "Set a build option, e.g. dev";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--copy-extra");
                    Name        = "Extra paths that will be copied into the function build context";
                    Description = "Extra paths that will be copied into the function build context";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-stack-pull");
                    Name        = "Disables the template configuration in the stack.yml";
                    Description = "Disables the template configuration in the stack.yml";
                },
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--handler");
                    Name        = "Directory with handler for function, e.g. handler.js";
                    Description = "Directory with handler for function, e.g. handler.js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image");
                    Name        = "Docker image name to build";
                    Description = "Docker image name to build";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lang");
                    Name        = "Programming language template";
                    Description = "Programming language template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Name of the deployed function";
                    Description = "Name of the deployed function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-cache");
                    Name        = "Do not use Docker's build cache";
                    Description = "Do not use Docker's build cache";
                },
                [ValueParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Build in parallel to depth specified.";
                    Description = "Build in parallel to depth specified.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet");
                    Name        = "Perform a quiet build, without showing output from Docker";
                    Description = "Perform a quiet build, without showing output from Docker";
                },
                [FlagParameter]@{
                    Keys        = @("--shrinkwrap");
                    Name        = "Just write files to ./build/ folder for shrink-wrapping";
                    Description = "Just write files to ./build/ folder for shrink-wrapping";
                },
                [FlagParameter]@{
                    Keys        = @("--squash");
                    Name        = "Use Docker's squash flag for smaller images [experimental] ";
                    Description = "Use Docker's squash flag for smaller images [experimental] ";
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', or 'describe'";
                    Description = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', or 'describe'";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cloud");
            Name        = "cloud";
            Description = "OpenFaaS Cloud commands";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("seal");
                    Name        = "seal";
                    Description = "Seal a secret for usage with OpenFaaS Cloud";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--cert", "-c");
                            Name        = "Filename of public certificate";
                            Description = "Filename of public certificate";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--download");
                            Name        = "Download the kubeseal binary required for this command, see also --download-version";
                            Description = "Download the kubeseal binary required for this command, see also --download-version";
                        },
                        [ValueParameter]@{
                            Keys        = @("--download-to");
                            Name        = "Specify download path for kubeseal, leave empty for a temp dir";
                            Description = "Specify download path for kubeseal, leave empty for a temp dir";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--download-version");
                            Name        = "Specify a kubeseal version to download";
                            Description = "Specify a kubeseal version to download";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from-file", "-i");
                            Name        = "Read a secret from a from file";
                            Description = "Read a secret from a from file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--literal", "-l");
                            Name        = "Secret literal key-value data";
                            Description = "Secret literal key-value data";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "Secret name";
                            Description = "Secret name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace", "-n");
                            Name        = "Secret name";
                            Description = "Secret name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output-file", "-o");
                            Name        = "Output file for secrets";
                            Description = "Output file for secrets";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Generates shell auto completion";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--shell");
                    Name        = "Outputs shell completion, must be bash or zsh";
                    Description = "Outputs shell completion, must be bash or zsh";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("deploy");
            Name        = "deploy";
            Description = "Deploy OpenFaaS functions";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--annotation");
                    Name        = "Set one or more annotation (ANNOTATION=VALUE)";
                    Description = "Set one or more annotation (ANNOTATION=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--constraint");
                    Name        = "Apply a constraint to the function";
                    Description = "Apply a constraint to the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--env", "-e");
                    Name        = "Set one or more environment variables (ENVVAR=VALUE)";
                    Description = "Set one or more environment variables (ENVVAR=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--fprocess");
                    Name        = "fprocess value to be run as a serverless function by the watchdog";
                    Description = "fprocess value to be run as a serverless function by the watchdog";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--handler");
                    Name        = "Directory with handler for function, e.g. handler.js";
                    Description = "Directory with handler for function, e.g. handler.js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image");
                    Name        = "Docker image name to build";
                    Description = "Docker image name to build";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label", "-l");
                    Name        = "Set one or more label (LABEL=VALUE)";
                    Description = "Set one or more label (LABEL=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lang");
                    Name        = "Programming language template";
                    Description = "Programming language template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Name of the deployed function";
                    Description = "Name of the deployed function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "Namespace of the function";
                    Description = "Namespace of the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--network");
                    Name        = "Name of the network";
                    Description = "Name of the network";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--read-template");
                    Name        = "Read the function's template";
                    Description = "Read the function's template";
                },
                [FlagParameter]@{
                    Keys        = @("--readonly");
                    Name        = "Force the root container filesystem to be read only";
                    Description = "Force the root container filesystem to be read only";
                },
                [FlagParameter]@{
                    Keys        = @("--replace");
                    Name        = "Remove and re-create existing function(s)";
                    Description = "Remove and re-create existing function(s)";
                },
                [ValueParameter]@{
                    Keys        = @("--secret");
                    Name        = "Give the function access to a secure secret";
                    Description = "Give the function access to a secure secret";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', or 'describe'";
                    Description = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', or 'describe'";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--token", "-k");
                    Name        = "Pass a JWT token to use instead of basic auth";
                    Description = "Pass a JWT token to use instead of basic auth";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--update");
                    Name        = "Perform rolling update on existing function(s)";
                    Description = "Perform rolling update on existing function(s)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("describe");
            Name        = "describe";
            Description = "Describe an OpenFaaS function";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Name of the function";
                    Description = "Name of the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "Namespace of the function";
                    Description = "Namespace of the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--token", "-k");
                    Name        = "Pass a JWT token to use instead of basic auth";
                    Description = "Pass a JWT token to use instead of basic auth";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("generate");
            Name        = "generate";
            Description = "Generate Kubernetes CRD YAML file";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--annotation");
                    Name        = "Any annotations you want to add (to store functions only)";
                    Description = "Any annotations you want to add (to store functions only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--api");
                    Name        = "CRD API version e.g openfaas.com/v1, serving.knative.dev/v1";
                    Description = "CRD API version e.g openfaas.com/v1, serving.knative.dev/v1";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--arch");
                    Name        = "Desired image arch. (Default x86_64)";
                    Description = "Desired image arch. (Default x86_64)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--from-store");
                    Name        = "generate using a store image";
                    Description = "generate using a store image";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "Kubernetes namespace for functions";
                    Description = "Kubernetes namespace for functions";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', 'describe'";
                    Description = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', 'describe'";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("invoke");
            Name        = "invoke";
            Description = "Invoke an OpenFaaS function";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--async", "-a");
                    Name        = "Invoke the function asynchronously";
                    Description = "Invoke the function asynchronously";
                },
                [ValueParameter]@{
                    Keys        = @("--content-type");
                    Name        = "The content-type HTTP header such as application/json";
                    Description = "The content-type HTTP header such as application/json";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--header", "-H");
                    Name        = "pass HTTP request header";
                    Description = "pass HTTP request header";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--key");
                    Name        = "key to be used to sign the request (must be used with --sign)";
                    Description = "key to be used to sign the request (must be used with --sign)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--method", "-m");
                    Name        = "pass HTTP request method";
                    Description = "pass HTTP request method";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Name of the deployed function";
                    Description = "Name of the deployed function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "Namespace of the deployed function";
                    Description = "Namespace of the deployed function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--query");
                    Name        = "pass query-string options";
                    Description = "pass query-string options";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--sign");
                    Name        = "name of HTTP request header to hold the signature";
                    Description = "name of HTTP request header to hold the signature";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "List OpenFaaS functions";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "Namespace of the function";
                    Description = "Namespace of the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Quiet mode - print out only the function's ID";
                    Description = "Quiet mode - print out only the function's ID";
                },
                [ValueParameter]@{
                    Keys        = @("--sort");
                    Name        = "Sort the functions by `"name`" or `"invocations`"";
                    Description = "Sort the functions by `"name`" or `"invocations`"";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--token", "-k");
                    Name        = "Pass a JWT token to use instead of basic auth";
                    Description = "Pass a JWT token to use instead of basic auth";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Verbose output for the function list";
                    Description = "Verbose output for the function list";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("login");
            Name        = "login";
            Description = "Log in to OpenFaaS gateway";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--password", "-p");
                    Name        = "Gateway password";
                    Description = "Gateway password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--password-stdin", "-s");
                    Name        = "Reads the gateway password from stdin";
                    Description = "Reads the gateway password from stdin";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "Override the timeout for this API call";
                    Description = "Override the timeout for this API call";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--username", "-u");
                    Name        = "Gateway username";
                    Description = "Gateway username";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logout");
            Name        = "logout";
            Description = "Log out from OpenFaaS gateway";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logs");
            Name        = "logs";
            Description = "Fetch logs for a functions";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--instance");
                    Name        = "print the function instance name/id";
                    Description = "print the function instance name/id";
                },
                [ValueParameter]@{
                    Keys        = @("--lines");
                    Name        = "number of recent log lines file to display. Defaults to -1, unlimited if <=0";
                    Description = "number of recent log lines file to display. Defaults to -1, unlimited if <=0";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--name");
                    Name        = "print the function name";
                    Description = "print the function name";
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "Namespace of the function";
                    Description = "Namespace of the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "output logs as (plain|keyvalue|json), JSON includes all available keys";
                    Description = "output logs as (plain|keyvalue|json), JSON includes all available keys";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--since");
                    Name        = "return logs newer than a relative duration like 5s";
                    Description = "return logs newer than a relative duration like 5s";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--since-time");
                    Name        = "include logs since the given timestamp (RFC3339)";
                    Description = "include logs since the given timestamp (RFC3339)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tail", "-t");
                    Name        = "tail logs and continue printing new logs until the end of the request, up to 30s";
                    Description = "tail logs and continue printing new logs until the end of the request, up to 30s";
                },
                [ValueParameter]@{
                    Keys        = @("--time-format");
                    Name        = "string format for the timestamp, any value go time format string is allowed, empty will not print the timestamp";
                    Description = "string format for the timestamp, any value go time format string is allowed, empty will not print the timestamp";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--token", "-k");
                    Name        = "Pass a JWT token to use instead of basic auth";
                    Description = "Pass a JWT token to use instead of basic auth";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("namespaces");
            Name        = "namespaces";
            Description = "List OpenFaaS namespaces";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--token", "-k");
                    Name        = "Pass a JWT token to use instead of basic auth";
                    Description = "Pass a JWT token to use instead of basic auth";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("new");
            Name        = "new";
            Description = "Create a new template in the current folder with the name given as name";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--append", "-a");
                    Name        = "Append to existing YAML file";
                    Description = "Append to existing YAML file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-limit");
                    Name        = "Set a limit for the CPU";
                    Description = "Set a limit for the CPU";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-request");
                    Name        = "Set a request value for the CPU";
                    Description = "Set a request value for the CPU";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL to store in YAML stack file";
                    Description = "Gateway URL to store in YAML stack file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--handler");
                    Name        = "directory the handler will be written to";
                    Description = "directory the handler will be written to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lang");
                    Name        = "Language or template to use";
                    Description = "Language or template to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--list");
                    Name        = "List available languages";
                    Description = "List available languages";
                },
                [ValueParameter]@{
                    Keys        = @("--memory-limit");
                    Name        = "Set a limit for the memory";
                    Description = "Set a limit for the memory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-request");
                    Name        = "Set a request or the memory";
                    Description = "Set a request or the memory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "Set prefix for the function image";
                    Description = "Set prefix for the function image";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Skip template notes";
                    Description = "Skip template notes";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("publish");
            Name        = "publish";
            Description = "Builds and pushes multi-arch OpenFaaS container images";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--build-arg", "-b");
                    Name        = "Add a build-arg for Docker (KEY=VALUE)";
                    Description = "Add a build-arg for Docker (KEY=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-label");
                    Name        = "Add a label for Docker image (LABEL=VALUE)";
                    Description = "Add a label for Docker image (LABEL=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-option", "-o");
                    Name        = "Set a build option, e.g. dev";
                    Description = "Set a build option, e.g. dev";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--copy-extra");
                    Name        = "Extra paths that will be copied into the function build context";
                    Description = "Extra paths that will be copied into the function build context";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-stack-pull");
                    Name        = "Disables the template configuration in the stack.yml";
                    Description = "Disables the template configuration in the stack.yml";
                },
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--extra-tag");
                    Name        = "Additional extra image tag";
                    Description = "Additional extra image tag";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--handler");
                    Name        = "Directory with handler for function, e.g. handler.js";
                    Description = "Directory with handler for function, e.g. handler.js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image");
                    Name        = "Docker image name to build";
                    Description = "Docker image name to build";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lang");
                    Name        = "Programming language template";
                    Description = "Programming language template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Name of the deployed function";
                    Description = "Name of the deployed function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-cache");
                    Name        = "Do not use Docker's build cache";
                    Description = "Do not use Docker's build cache";
                },
                [ValueParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Build in parallel to depth specified.";
                    Description = "Build in parallel to depth specified.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--platforms");
                    Name        = "A set of platforms to publish";
                    Description = "A set of platforms to publish";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet");
                    Name        = "Perform a quiet build, without showing output from Docker";
                    Description = "Perform a quiet build, without showing output from Docker";
                },
                [FlagParameter]@{
                    Keys        = @("--shrinkwrap");
                    Name        = "Just write files to ./build/ folder for shrink-wrapping";
                    Description = "Just write files to ./build/ folder for shrink-wrapping";
                },
                [FlagParameter]@{
                    Keys        = @("--squash");
                    Name        = "Use Docker's squash flag for smaller images [experimental] ";
                    Description = "Use Docker's squash flag for smaller images [experimental] ";
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', or 'describe'";
                    Description = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', or 'describe'";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("push");
            Name        = "push";
            Description = "Push OpenFaaS functions to remote registry (Docker Hub)";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Push images in parallel to depth specified.";
                    Description = "Push images in parallel to depth specified.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', 'describe'";
                    Description = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', 'describe'";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("registry-login");
            Name        = "registry-login";
            Description = "Generate and save the registry authentication file";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--account-id");
                    Name        = "Your AWS Account id";
                    Description = "Your AWS Account id";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ecr");
                    Name        = "If we are using ECR we need a different set of flags, so if this is set, we need to set --username and --password";
                    Description = "If we are using ECR we need a different set of flags, so if this is set, we need to set --username and --password";
                },
                [ValueParameter]@{
                    Keys        = @("--password");
                    Name        = "The registry password";
                    Description = "The registry password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--password-stdin", "-s");
                    Name        = "Reads the docker password from stdin, either pipe to the command or remember to press ctrl+d when reading interactively";
                    Description = "Reads the docker password from stdin, either pipe to the command or remember to press ctrl+d when reading interactively";
                },
                [ValueParameter]@{
                    Keys        = @("--region");
                    Name        = "Your AWS region";
                    Description = "Your AWS region";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--server");
                    Name        = "The server URL, it is defaulted to the docker registry";
                    Description = "The server URL, it is defaulted to the docker registry";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--username", "-u");
                    Name        = "The Registry Username";
                    Description = "The Registry Username";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("remove");
            Name        = "remove";
            Description = "Remove deployed OpenFaaS functions";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "Namespace of the function";
                    Description = "Namespace of the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--token", "-k");
                    Name        = "Pass a JWT token to use instead of basic auth";
                    Description = "Pass a JWT token to use instead of basic auth";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("secret");
            Name        = "secret";
            Description = "OpenFaaS secret commands";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new secret";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--from-file");
                            Name        = "Path and filename containing value for the secret";
                            Description = "Path and filename containing value for the secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from-literal");
                            Name        = "Literal value for the secret";
                            Description = "Literal value for the secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--gateway", "-g");
                            Name        = "Gateway URL starting with http(s)://";
                            Description = "Gateway URL starting with http(s)://";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace", "-n");
                            Name        = "Namespace of the function";
                            Description = "Namespace of the function";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tls-no-verify");
                            Name        = "Disable TLS validation";
                            Description = "Disable TLS validation";
                        },
                        [ValueParameter]@{
                            Keys        = @("--token", "-k");
                            Name        = "Pass a JWT token to use instead of basic auth";
                            Description = "Pass a JWT token to use instead of basic auth";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--trim");
                            Name        = "Trim whitespace from the start and end of the secret value";
                            Description = "Trim whitespace from the start and end of the secret value";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all secrets";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--gateway", "-g");
                            Name        = "Gateway URL starting with http(s)://";
                            Description = "Gateway URL starting with http(s)://";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace", "-n");
                            Name        = "Namespace of the function";
                            Description = "Namespace of the function";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tls-no-verify");
                            Name        = "Disable TLS validation";
                            Description = "Disable TLS validation";
                        },
                        [ValueParameter]@{
                            Keys        = @("--token", "-k");
                            Name        = "Pass a JWT token to use instead of basic auth";
                            Description = "Pass a JWT token to use instead of basic auth";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "remove a secret";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--gateway", "-g");
                            Name        = "Gateway URL starting with http(s)://";
                            Description = "Gateway URL starting with http(s)://";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace", "-n");
                            Name        = "Namespace of the function";
                            Description = "Namespace of the function";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tls-no-verify");
                            Name        = "Disable TLS validation";
                            Description = "Disable TLS validation";
                        },
                        [ValueParameter]@{
                            Keys        = @("--token", "-k");
                            Name        = "Pass a JWT token to use instead of basic auth";
                            Description = "Pass a JWT token to use instead of basic auth";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update a secret";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--from-file");
                            Name        = "Path to the secret file";
                            Description = "Path to the secret file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from-literal");
                            Name        = "Value of the secret";
                            Description = "Value of the secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--gateway", "-g");
                            Name        = "Gateway URL starting with http(s)://";
                            Description = "Gateway URL starting with http(s)://";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace", "-n");
                            Name        = "Namespace of the function";
                            Description = "Namespace of the function";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tls-no-verify");
                            Name        = "Disable TLS validation";
                            Description = "Disable TLS validation";
                        },
                        [ValueParameter]@{
                            Keys        = @("--token", "-k");
                            Name        = "Pass a JWT token to use instead of basic auth";
                            Description = "Pass a JWT token to use instead of basic auth";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--trim");
                            Name        = "trim whitespace from the start and end of the secret value";
                            Description = "trim whitespace from the start and end of the secret value";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("store");
            Name        = "store";
            Description = "OpenFaaS store commands";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--platform", "-p");
                    Name        = "Target platform for store";
                    Description = "Target platform for store";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--url", "-u");
                    Name        = "Alternative Store URL starting with http(s)://";
                    Description = "Alternative Store URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                ,
                [CommandParameter]@{
                    Keys        = @("deploy");
                    Name        = "deploy";
                    Description = "Deploy OpenFaaS functions from a store";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--annotation");
                            Name        = "Set one or more annotation (ANNOTATION=VALUE)";
                            Description = "Set one or more annotation (ANNOTATION=VALUE)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--constraint");
                            Name        = "Apply a constraint to the function";
                            Description = "Apply a constraint to the function";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Adds one or more environment variables to the defined ones by store (ENVVAR=VALUE)";
                            Description = "Adds one or more environment variables to the defined ones by store (ENVVAR=VALUE)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--gateway", "-g");
                            Name        = "Gateway URL starting with http(s)://";
                            Description = "Gateway URL starting with http(s)://";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Set one or more label (LABEL=VALUE)";
                            Description = "Set one or more label (LABEL=VALUE)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "Name of the deployed function (overriding name from the store)";
                            Description = "Name of the deployed function (overriding name from the store)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace", "-n");
                            Name        = "Namespace of the function";
                            Description = "Namespace of the function";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network");
                            Name        = "Name of the network";
                            Description = "Name of the network";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--replace");
                            Name        = "Replace any existing function";
                            Description = "Replace any existing function";
                        },
                        [ValueParameter]@{
                            Keys        = @("--secret");
                            Name        = "Give the function access to a secure secret";
                            Description = "Give the function access to a secure secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tls-no-verify");
                            Name        = "Disable TLS validation";
                            Description = "Disable TLS validation";
                        },
                        [ValueParameter]@{
                            Keys        = @("--token", "-k");
                            Name        = "Pass a JWT token to use instead of basic auth";
                            Description = "Pass a JWT token to use instead of basic auth";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--update");
                            Name        = "Update existing functions";
                            Description = "Update existing functions";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("describe");
                    Name        = "describe";
                    Description = "Show details of OpenFaaS function from a store";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Verbose output for the field values";
                            Description = "Verbose output for the field values";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List available OpenFaaS functions in a store";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Enable verbose output to see the full description of each function in the store";
                            Description = "Enable verbose output to see the full description of each function in the store";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("template");
            Name        = "template";
            Description = "OpenFaaS template store and pull commands";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("pull");
                    Name        = "pull";
                    Description = "Downloads templates from the specified git repo";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Enable debug output";
                            Description = "Enable debug output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--overwrite");
                            Name        = "Overwrite existing templates?";
                            Description = "Overwrite existing templates?";
                        },
                        [CommandParameter]@{
                            Keys        = @("stack");
                            Name        = "stack";
                            Description = "Downloads templates specified in the function definition yaml file";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--debug");
                                    Name        = "Enable debug output";
                                    Description = "Enable debug output";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--overwrite");
                                    Name        = "Overwrite existing templates?";
                                    Description = "Overwrite existing templates?";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("store");
                    Name        = "store";
                    Description = "Command for pulling and listing templates from store";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Enable debug output";
                            Description = "Enable debug output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--overwrite");
                            Name        = "Overwrite existing templates?";
                            Description = "Overwrite existing templates?";
                        },
                        ,
                        ,
                        [CommandParameter]@{
                            Keys        = @("describe");
                            Name        = "describe";
                            Description = "Describe the template";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--url", "-u");
                                    Name        = "Use as alternative store for templates";
                                    Description = "Use as alternative store for templates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List templates from OpenFaaS organizations";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--platform", "-p");
                                    Name        = "Shows the platform if the output is verbose";
                                    Description = "Shows the platform if the output is verbose";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--url", "-u");
                                    Name        = "Use as alternative store for templates";
                                    Description = "Use as alternative store for templates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--verbose", "-v");
                                    Name        = "Shows additional language and platform";
                                    Description = "Shows additional language and platform";
                                },
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("pull");
                            Name        = "pull";
                            Description = "Pull templates from store";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--url", "-u");
                                    Name        = "Use as alternative store for templates";
                                    Description = "Use as alternative store for templates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("up");
            Name        = "up";
            Description = "Builds, pushes and deploys OpenFaaS function containers";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--annotation");
                    Name        = "Set one or more annotation (ANNOTATION=VALUE)";
                    Description = "Set one or more annotation (ANNOTATION=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-arg", "-b");
                    Name        = "Add a build-arg for Docker (KEY=VALUE)";
                    Description = "Add a build-arg for Docker (KEY=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-label");
                    Name        = "Add a label for Docker image (LABEL=VALUE)";
                    Description = "Add a label for Docker image (LABEL=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-option", "-o");
                    Name        = "Set a build option, e.g. dev";
                    Description = "Set a build option, e.g. dev";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--constraint");
                    Name        = "Apply a constraint to the function";
                    Description = "Apply a constraint to the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--copy-extra");
                    Name        = "Extra paths that will be copied into the function build context";
                    Description = "Extra paths that will be copied into the function build context";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-stack-pull");
                    Name        = "Disables the template configuration in the stack.yml";
                    Description = "Disables the template configuration in the stack.yml";
                },
                [ValueParameter]@{
                    Keys        = @("--env", "-e");
                    Name        = "Set one or more environment variables (ENVVAR=VALUE)";
                    Description = "Set one or more environment variables (ENVVAR=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--fprocess");
                    Name        = "fprocess value to be run as a serverless function by the watchdog";
                    Description = "fprocess value to be run as a serverless function by the watchdog";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--handler");
                    Name        = "Directory with handler for function, e.g. handler.js";
                    Description = "Directory with handler for function, e.g. handler.js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image");
                    Name        = "Docker image name to build";
                    Description = "Docker image name to build";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label", "-l");
                    Name        = "Set one or more label (LABEL=VALUE)";
                    Description = "Set one or more label (LABEL=VALUE)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lang");
                    Name        = "Programming language template";
                    Description = "Programming language template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Name of the deployed function";
                    Description = "Name of the deployed function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "Namespace of the function";
                    Description = "Namespace of the function";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--network");
                    Name        = "Name of the network";
                    Description = "Name of the network";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-cache");
                    Name        = "Do not use Docker's build cache";
                    Description = "Do not use Docker's build cache";
                },
                [ValueParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Build in parallel to depth specified.";
                    Description = "Build in parallel to depth specified.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet");
                    Name        = "Perform a quiet build, without showing output from Docker";
                    Description = "Perform a quiet build, without showing output from Docker";
                },
                [FlagParameter]@{
                    Keys        = @("--read-template");
                    Name        = "Read the function's template";
                    Description = "Read the function's template";
                },
                [FlagParameter]@{
                    Keys        = @("--readonly");
                    Name        = "Force the root container filesystem to be read only";
                    Description = "Force the root container filesystem to be read only";
                },
                [FlagParameter]@{
                    Keys        = @("--replace");
                    Name        = "Remove and re-create existing function(s)";
                    Description = "Remove and re-create existing function(s)";
                },
                [ValueParameter]@{
                    Keys        = @("--secret");
                    Name        = "Give the function access to a secure secret";
                    Description = "Give the function access to a secure secret";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--shrinkwrap");
                    Name        = "Just write files to ./build/ folder for shrink-wrapping";
                    Description = "Just write files to ./build/ folder for shrink-wrapping";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-deploy");
                    Name        = "Skip function deployment";
                    Description = "Skip function deployment";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-push");
                    Name        = "Skip pushing function to remote registry";
                    Description = "Skip pushing function to remote registry";
                },
                [FlagParameter]@{
                    Keys        = @("--squash");
                    Name        = "Use Docker's squash flag for smaller images [experimental] ";
                    Description = "Use Docker's squash flag for smaller images [experimental] ";
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', or 'describe'";
                    Description = "Override latest tag on function Docker image, accepts 'latest', 'sha', 'branch', or 'describe'";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--token", "-k");
                    Name        = "Pass a JWT token to use instead of basic auth";
                    Description = "Pass a JWT token to use instead of basic auth";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--update");
                    Name        = "Perform rolling update on existing function(s)";
                    Description = "Perform rolling update on existing function(s)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Display the clients version information";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--envsubst");
                    Name        = "Substitute environment variables in stack.yml file";
                    Description = "Substitute environment variables in stack.yml file";
                },
                [ValueParameter]@{
                    Keys        = @("--gateway", "-g");
                    Name        = "Gateway URL starting with http(s)://";
                    Description = "Gateway URL starting with http(s)://";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--short-version");
                    Name        = "Just print Git SHA";
                    Description = "Just print Git SHA";
                },
                [FlagParameter]@{
                    Keys        = @("--tls-no-verify");
                    Name        = "Disable TLS validation";
                    Description = "Disable TLS validation";
                },
                [ValueParameter]@{
                    Keys        = @("--token", "-k");
                    Name        = "Pass a JWT token to use instead of basic auth";
                    Description = "Pass a JWT token to use instead of basic auth";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--warn-update");
                    Name        = "Check for new version and warn about updating";
                    Description = "Check for new version and warn about updating";
                }
            )
        }
    )
}
