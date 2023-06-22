# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/CircleCI-Public/circleci-cli";
    Keys        = @("circleci");
    Name        = "circleci";
    Description = "Use CircleCI from the command line";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Enable debug logging.";
            Description = "Enable debug logging.";
        },
        [ValueParameter]@{
            Keys        = @("--endpoint");
            Name        = "URI to your CircleCI GraphQL API endpoint";
            Description = "URI to your CircleCI GraphQL API endpoint";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--github-api");
            Name        = "Change the default endpoint to GitHub API for retrieving updates";
            Description = "Change the default endpoint to GitHub API for retrieving updates";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for circleci";
            Description = "help for circleci";
        },
        [ValueParameter]@{
            Keys        = @("--host");
            Name        = "URL to your CircleCI host, also CIRCLECI_CLI_HOST";
            Description = "URL to your CircleCI host, also CIRCLECI_CLI_HOST";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--skip-update-check");
            Name        = "Skip the check for updates check run before every command.";
            Description = "Skip the check for updates check run before every command.";
        },
        [ValueParameter]@{
            Keys        = @("--token");
            Name        = "your token for using CircleCI, also CIRCLECI_CLI_TOKEN";
            Description = "your token for using CircleCI, also CIRCLECI_CLI_TOKEN";
            # Source = $?? # todo: Fix or remove this!
        },
        ,
        ,
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Generate shell completion scripts";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("bash");
                    Name        = "bash";
                    Description = "Generate bash completion scripts";
                },
                [CommandParameter]@{
                    Keys        = @("zsh");
                    Name        = "zsh";
                    Description = "Generate zsh completion scripts";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Operate on build config files";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("pack");
                    Name        = "pack";
                    Description = "Pack up your CircleCI configuration into a single file.";
                },
                [CommandParameter]@{
                    Keys        = @("process");
                    Name        = "process";
                    Description = "Validate config and display expanded configuration.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--org-slug", "-o");
                            Name        = "organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org";
                            Description = "organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pipeline-parameters");
                            Name        = "YAML/JSON map of pipeline parameters, accepts either YAML/JSON directly or file path (for example: my-params.yml)";
                            Description = "YAML/JSON map of pipeline parameters, accepts either YAML/JSON directly or file path (for example: my-params.yml)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("validate");
                    Name        = "validate";
                    Description = "Check that the config file is well formed.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--config", "-c");
                            Name        = "path to config file";
                            Description = "path to config file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--org-slug", "-o");
                            Name        = "organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org";
                            Description = "organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org";
                            # Source = $?? # todo: Fix or remove this!
                        },
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("context");
            Name        = "context";
            Description = "Contexts provide a mechanism for securing and sharing environment variables across projects. The environment variables are defined as name/value pairs and are injected at runtime.";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new context";
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete the named context";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Delete the context without asking for confirmation.";
                            Description = "Delete the context without asking for confirmation.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all contexts";
                },
                [CommandParameter]@{
                    Keys        = @("remove-secret");
                    Name        = "remove-secret";
                    Description = "Remove an environment variable from the named context";
                },
                [CommandParameter]@{
                    Keys        = @("show");
                    Name        = "show";
                    Description = "Show a context";
                },
                [CommandParameter]@{
                    Keys        = @("store-secret");
                    Name        = "store-secret";
                    Description = "Store a new environment variable in the named context. The value is read from stdin.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("diagnostic");
            Name        = "diagnostic";
            Description = "Check the status of your CircleCI CLI.";
        },
        [CommandParameter]@{
            Keys        = @("follow");
            Name        = "follow";
            Description = "Attempt to follow the project for the current git repository.";
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("local");
            Name        = "local";
            Description = "Debug jobs on the local machine";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("execute");
                    Name        = "execute";
                    Description = "Run a job in a container on the local machine";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch");
                            Name        = "Git branch";
                            Description = "Git branch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--checkout-key");
                            Name        = "Git Checkout key";
                            Description = "Git Checkout key";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config", "-c");
                            Name        = "config file";
                            Description = "config file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Set environment variables, e.g. ``-e VAR=VAL``";
                            Description = "Set environment variables, e.g. ``-e VAR=VAL``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--index");
                            Name        = "node index of parallelism";
                            Description = "node index of parallelism";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--job");
                            Name        = "job to be executed";
                            Description = "job to be executed";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--node-total");
                            Name        = "total number of parallel nodes";
                            Description = "total number of parallel nodes";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--org-slug", "-o");
                            Name        = "organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org";
                            Description = "organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo-url");
                            Name        = "Git Url";
                            Description = "Git Url";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--revision");
                            Name        = "Git Revision";
                            Description = "Git Revision";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-checkout");
                            Name        = "use local path as-is";
                            Description = "use local path as-is";
                        },
                        [ValueParameter]@{
                            Keys        = @("--volume", "-v");
                            Name        = "Volume bind-mounting";
                            Description = "Volume bind-mounting";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("namespace");
            Name        = "namespace";
            Description = "Operate on namespaces";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a namespace";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--integration-testing");
                            Name        = "Enable test mode to bypass interactive UI.";
                            Description = "Enable test mode to bypass interactive UI.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-prompt");
                            Name        = "Disable prompt to bypass interactive UI.";
                            Description = "Disable prompt to bypass interactive UI.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("open");
            Name        = "open";
            Description = "Open the current project in the browser.";
        },
        [CommandParameter]@{
            Keys        = @("orb");
            Name        = "orb";
            Description = "Operate on orbs";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add-to-category");
                    Name        = "add-to-category";
                    Description = "Add an orb to a category";
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create an orb in the specified namespace";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--integration-testing");
                            Name        = "Enable test mode to bypass interactive UI.";
                            Description = "Enable test mode to bypass interactive UI.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-prompt");
                            Name        = "Disable prompt to bypass interactive UI.";
                            Description = "Disable prompt to bypass interactive UI.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--private");
                            Name        = "Specify that this orb is for private use within your org, unlisted from the public registry.";
                            Description = "Specify that this orb is for private use within your org, unlisted from the public registry.";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("info");
                    Name        = "info";
                    Description = "Show the meta-data of an orb";
                },
                [CommandParameter]@{
                    Keys        = @("init");
                    Name        = "init";
                    Description = "Initialize a new orb.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--private");
                            Name        = "initialize a private orb";
                            Description = "initialize a private orb";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List orbs";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--details", "-d");
                            Name        = "output all the commands, executors, and jobs, along with a tree of their parameters";
                            Description = "output all the commands, executors, and jobs, along with a tree of their parameters";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "print output as json instead of human-readable";
                            Description = "print output as json instead of human-readable";
                        },
                        [FlagParameter]@{
                            Keys        = @("--private");
                            Name        = "exclusively list private orbs within a namespace";
                            Description = "exclusively list private orbs within a namespace";
                        },
                        [ValueParameter]@{
                            Keys        = @("--sort");
                            Name        = "one of `"builds`"|`"projects`"|`"orgs`"";
                            Description = "one of `"builds`"|`"projects`"|`"orgs`"";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--uncertified", "-u");
                            Name        = "include uncertified orbs";
                            Description = "include uncertified orbs";
                        },
                        ,
                        ,
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list-categories");
                    Name        = "list-categories";
                    Description = "List orb categories";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "print output as json instead of human-readable";
                            Description = "print output as json instead of human-readable";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pack");
                    Name        = "pack";
                    Description = "Pack an Orb with local scripts.";
                },
                [CommandParameter]@{
                    Keys        = @("process");
                    Name        = "process";
                    Description = "Validate an orb and print its form after all pre-registration processing";
                },
                [CommandParameter]@{
                    Keys        = @("publish");
                    Name        = "publish";
                    Description = "Publish an orb to the registry";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("increment");
                            Name        = "increment";
                            Description = "Increment a released version of an orb";
                        },
                        [CommandParameter]@{
                            Keys        = @("promote");
                            Name        = "promote";
                            Description = "Promote a development version of an orb to a semantic release";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove-from-category");
                    Name        = "remove-from-category";
                    Description = "Remove an orb from a category";
                },
                [CommandParameter]@{
                    Keys        = @("source");
                    Name        = "source";
                    Description = "Show the source of an orb";
                },
                [CommandParameter]@{
                    Keys        = @("unlist");
                    Name        = "unlist";
                    Description = "Disable or enable an orb's listing in the registry";
                },
                [CommandParameter]@{
                    Keys        = @("validate");
                    Name        = "validate";
                    Description = "Validate an orb.yml";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("runner");
            Name        = "runner";
            Description = "Operate on runners";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("instance");
                    Name        = "instance";
                    Description = "Operate on runner instances";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List runner instances";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("resource-class");
                    Name        = "resource-class";
                    Description = "Operate on runner resource-classes";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a resource-class";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--generate-token");
                                    Name        = "Generate a default token";
                                    Description = "Generate a default token";
                                },
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a resource-class";
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List resource-classes for a namespace";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("token");
                    Name        = "token";
                    Description = "Operate on runner tokens";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a token for a resource-class";
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a token";
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List tokens for a resource-class";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("setup");
            Name        = "setup";
            Description = "Setup the CLI with your credentials";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--integration-testing");
                    Name        = "Enable test mode to bypass interactive UI.";
                    Description = "Enable test mode to bypass interactive UI.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-prompt");
                    Name        = "Disable prompt to bypass interactive UI. (MUST supply --host and --token)";
                    Description = "Disable prompt to bypass interactive UI. (MUST supply --host and --token)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "Update the tool to the latest version";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--check");
                    Name        = "Check if there are any updates available without installing";
                    Description = "Check if there are any updates available without installing";
                },
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Display version information";
        }
    )
}
