# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.gatsbyjs.com/";
    Keys        = @("gatsby");
    Name        = "gatsby";
    Description = "Build blazing fast, modern apps and websites with React";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help";
            Description = "Show help";
        },
        [FlagParameter]@{
            Keys        = @("--json");
            Name        = "Turn on the JSON logger";
            Description = "Turn on the JSON logger";
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "Turn off the color in output";
            Description = "Turn off the color in output";
        },
        [FlagParameter]@{
            Keys        = @("--no-colors");
            Name        = "Turn off the color in output";
            Description = "Turn off the color in output";
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Turn on verbose output";
            Description = "Turn on verbose output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Show the version of the Gatsby CLI";
            Description = "Show the version of the Gatsby CLI";
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Build a Gatsby project";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--graphql-tracing");
                    Name        = "Trace every graphql resolver, may have performance implications.";
                    Description = "Trace every graphql resolver, may have performance implications.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-uglify");
                    Name        = "Build site without uglifying JS bundles.";
                    Description = "Build site without uglifying JS bundles.";
                },
                [ValueParameter]@{
                    Keys        = @("--open-tracing-config-file");
                    Name        = "Tracer configuration file.";
                    Description = "Tracer configuration file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--prefix-paths");
                    Name        = "Build site with link paths prefixed with the pathPrefix.";
                    Description = "Build site with link paths prefixed with the pathPrefix.";
                },
                [FlagParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build site with react profiling.";
                    Description = "Build site with react profiling.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "Wipe the local gatsby environment including built assets and cache";
        },
        [CommandParameter]@{
            Keys        = @("develop");
            Name        = "develop";
            Description = "Start development server";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Custom HTTPS CA certificate file.";
                    Description = "Custom HTTPS CA certificate file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cert-file", "-c");
                    Name        = "Custom HTTPS cert file.";
                    Description = "Custom HTTPS cert file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--graphql-tracing");
                    Name        = "Trace every graphql resolver.";
                    Description = "Trace every graphql resolver.";
                },
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "Set host.";
                    Description = "Set host.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--https", "-S");
                    Name        = "Use HTTPS.";
                    Description = "Use HTTPS.";
                },
                [ValueParameter]@{
                    Keys        = @("--inspect");
                    Name        = "Opens a port for debugging.";
                    Description = "Opens a port for debugging.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect-brk");
                    Name        = "Opens a port for debugging.";
                    Description = "Opens a port for debugging.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--key-file", "-k");
                    Name        = "Custom HTTPS key file.";
                    Description = "Custom HTTPS key file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--open", "-o");
                    Name        = "Open the site in your (default) browser for you.";
                    Description = "Open the site in your (default) browser for you.";
                },
                [ValueParameter]@{
                    Keys        = @("--open-tracing-config-file");
                    Name        = "Tracer configuration file.";
                    Description = "Tracer configuration file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--port", "-p");
                    Name        = "Set port.";
                    Description = "Set port.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("info");
            Name        = "info";
            Description = "Get environment information for debugging and issue reporting";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--clipboard", "-C");
                    Name        = "Automagically copy environment information to clipboard";
                    Description = "Automagically copy environment information to clipboard";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("new");
            Name        = "new";
            Description = "Create new Gatsby project";
        },
        [CommandParameter]@{
            Keys        = @("options");
            Name        = "options";
            Description = "View or set your gatsby-cli configuration settings.";
        },
        [CommandParameter]@{
            Keys        = @("plugin");
            Name        = "plugin";
            Description = "Useful commands relating to Gatsby plugins";
        },
        [CommandParameter]@{
            Keys        = @("repl");
            Name        = "repl";
            Description = "Get a node repl with context of Gatsby environment";
        },
        [CommandParameter]@{
            Keys        = @("serve");
            Name        = "serve";
            Description = "Serve previously built Gatsby site";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "Set host.";
                    Description = "Set host.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--open", "-o");
                    Name        = "Open the site in your (default) browser for you.";
                    Description = "Open the site in your (default) browser for you.";
                },
                [ValueParameter]@{
                    Keys        = @("--open-tracing-config-file");
                    Name        = "Tracer configuration file.";
                    Description = "Tracer configuration file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--port", "-p");
                    Name        = "Set port.";
                    Description = "Set port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--prefix-paths");
                    Name        = "Serve site with link paths prefixed with the pathPrefix.";
                    Description = "Serve site with link paths prefixed with the pathPrefix.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("telemetry");
            Name        = "telemetry";
            Description = "Enable or disable Gatsby anonymous analytics collection.";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--disable");
                    Name        = "Disable telemetry";
                    Description = "Disable telemetry";
                },
                [FlagParameter]@{
                    Keys        = @("--enable");
                    Name        = "Enable telemetry";
                    Description = "Enable telemetry";
                }
            )
        }
    )
}
