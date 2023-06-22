# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.waypointproject.io/";
    Keys        = @("waypoint");
    Name        = "waypoint";
    Description = "Easy application deployment for Kubernetes and Amazon ECS";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--autocomplete-install");
            Name        = "show version";
            Description = "show version";
        },
        [FlagParameter]@{
            Keys        = @("--autocomplete-uninstall");
            Name        = "show version";
            Description = "show version";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "skip";
            Description = "skip";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show version";
            Description = "show version";
        },
        ,
        [CommandParameter]@{
            Keys        = @("artifact");
            Name        = "artifact";
            Description = "Artifact and build management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("build");
                    Name        = "build";
                    Description = "Build a new versioned artifact from source";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Labels to set for this operation.";
                            Description = "Labels to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--push");
                            Name        = "Push the artifact to the configured registry.";
                            Description = "Push the artifact to the configured registry.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--remote");
                            Name        = "True to use a remote runner to execute.";
                            Description = "True to use a remote runner to execute.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--remote-source");
                            Name        = "Override configurations for how remote runners source data.";
                            Description = "Override configurations for how remote runners source data.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--var");
                            Name        = "Variable value to set for this operation.";
                            Description = "Variable value to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--var-file");
                            Name        = "HCL or JSON file containing variable values to set for this operation.";
                            Description = "HCL or JSON file containing variable values to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List pushed artifacts";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--desc");
                            Name        = "Sort the values in descending order.";
                            Description = "Sort the values in descending order.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output the deployment information as JSON.";
                            Description = "Output the deployment information as JSON.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit");
                            Name        = "How many values to show.";
                            Description = "How many values to show.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--long-ids");
                            Name        = "Show long identifiers rather than sequence numbers.";
                            Description = "Show long identifiers rather than sequence numbers.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--order-by");
                            Name        = "Order the values by which field.";
                            Description = "Order the values by which field.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--physical-state");
                            Name        = "Show values in the given physical states.";
                            Description = "Show values in the given physical states.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--state");
                            Name        = "Filter values to have the given status.";
                            Description = "Filter values to have the given status.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose");
                            Name        = "Display more details about each deployment.";
                            Description = "Display more details about each deployment.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--workspace-all");
                            Name        = "List builds in all workspaces for this project and application.";
                            Description = "List builds in all workspaces for this project and application.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list-builds");
                    Name        = "list-builds";
                    Description = "List builds";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--long-ids");
                            Name        = "Show long identifiers rather than sequence numbers.";
                            Description = "Show long identifiers rather than sequence numbers.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--workspace-all");
                            Name        = "List builds in all workspaces for this project and application.";
                            Description = "List builds in all workspaces for this project and application.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("push");
                    Name        = "push";
                    Description = "Push a build's artifact to a registry";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Labels to set for this operation.";
                            Description = "Labels to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--remote");
                            Name        = "True to use a remote runner to execute.";
                            Description = "True to use a remote runner to execute.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--remote-source");
                            Name        = "Override configurations for how remote runners source data.";
                            Description = "Override configurations for how remote runners source data.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--var");
                            Name        = "Variable value to set for this operation.";
                            Description = "Variable value to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--var-file");
                            Name        = "HCL or JSON file containing variable values to set for this operation.";
                            Description = "HCL or JSON file containing variable values to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("auth-method");
            Name        = "auth-method";
            Description = "Auth method management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a previously configured auth method";
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Show detailed information about a configured auth method";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all configured auth methods";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Create or update an auth method";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("oidc");
                            Name        = "oidc";
                            Description = "Configure an OIDC auth method";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--access-selector");
                                    Name        = "Selector expression to control access based on claims.";
                                    Description = "Selector expression to control access based on claims.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--allowed-redirect-uri");
                                    Name        = "Allowed URI for auth redirection.";
                                    Description = "Allowed URI for auth redirection.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--app", "-a");
                                    Name        = "App to target.";
                                    Description = "App to target.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--claim-mapping");
                                    Name        = "Mapping of a claim to a variable value for the access selector.";
                                    Description = "Mapping of a claim to a variable value for the access selector.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--claim-scope");
                                    Name        = "The optional claims scope requested.";
                                    Description = "The optional claims scope requested.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-id");
                                    Name        = "The OAuth 2.0 Client Identifier.";
                                    Description = "The OAuth 2.0 Client Identifier.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-secret");
                                    Name        = "The client secret corresponding with the client ID.";
                                    Description = "The client secret corresponding with the client ID.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "Short description of this auth method";
                                    Description = "Short description of this auth method";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--display-name");
                                    Name        = "Display name for the UI";
                                    Description = "Display name for the UI";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--issuer");
                                    Name        = "Discovery URL of the OIDC provider.";
                                    Description = "Discovery URL of the OIDC provider.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--issuer-ca-pem");
                                    Name        = "PEM-encoded certificates for connecting to the issuer.";
                                    Description = "PEM-encoded certificates for connecting to the issuer.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--list-claim-mapping");
                                    Name        = "Same as claim-mapping but for list values.";
                                    Description = "Same as claim-mapping but for list values.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--plain");
                                    Name        = "Plain output";
                                    Description = "Plain output";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--project", "-p");
                                    Name        = "Project to target.";
                                    Description = "Project to target.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--signing-algorithm");
                                    Name        = "The allowed signing algorithm.";
                                    Description = "The allowed signing algorithm.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--workspace", "-w");
                                    Name        = "Workspace to operate in.";
                                    Description = "Workspace to operate in.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Build a new versioned artifact from source";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label");
                    Name        = "Labels to set for this operation.";
                    Description = "Labels to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--push");
                    Name        = "Push the artifact to the configured registry.";
                    Description = "Push the artifact to the configured registry.";
                },
                [FlagParameter]@{
                    Keys        = @("--remote");
                    Name        = "True to use a remote runner to execute.";
                    Description = "True to use a remote runner to execute.";
                },
                [ValueParameter]@{
                    Keys        = @("--remote-source");
                    Name        = "Override configurations for how remote runners source data.";
                    Description = "Override configurations for how remote runners source data.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable value to set for this operation.";
                    Description = "Variable value to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "HCL or JSON file containing variable values to set for this operation.";
                    Description = "HCL or JSON file containing variable values to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Application configuration management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Get config variables";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output in JSON The default is false.";
                            Description = "Output in JSON The default is false.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Labels to set for this operation.";
                            Description = "Labels to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--raw");
                            Name        = "Output in key=val The default is false.";
                            Description = "Output in key=val The default is false.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--runner");
                            Name        = "Show configuration that is set on runners.";
                            Description = "Show configuration that is set on runners.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Set a config variable";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label-scope");
                            Name        = "Only set if the deployment or operation has a matching label set.";
                            Description = "Only set if the deployment or operation has a matching label set.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--runner");
                            Name        = "Expose this configuration on runners.";
                            Description = "Expose this configuration on runners.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--scope");
                            Name        = "The scope for this configuration.";
                            Description = "The scope for this configuration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace-scope");
                            Name        = "Specify that the configuration is only available within a specific workspace.";
                            Description = "Specify that the configuration is only available within a specific workspace.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("source-get");
                    Name        = "source-get";
                    Description = "Get the configuration for a dynamic source plugin";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--type");
                            Name        = "Dynamic source type to look up, such as 'vault'.";
                            Description = "Dynamic source type to look up, such as 'vault'.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("source-set");
                    Name        = "source-set";
                    Description = "Set the configuration for a dynamic source plugin";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Configuration for the dynamic source type.";
                            Description = "Configuration for the dynamic source type.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--delete");
                            Name        = "Delete the configuration for this source type.";
                            Description = "Delete the configuration for this source type.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--type");
                            Name        = "Dynamic source type to configure, such as 'vault'.";
                            Description = "Dynamic source type to configure, such as 'vault'.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("sync");
                    Name        = "sync";
                    Description = "Synchronize declared variables in waypoint.hcl";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("context");
            Name        = "context";
            Description = "Server access configurations";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("clear");
                    Name        = "clear";
                    Description = "Unset the default context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--server-addr");
                            Name        = "Address for the server.";
                            Description = "Address for the server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--server-auth-token");
                            Name        = "Authentication token to use to connect to the server.";
                            Description = "Authentication token to use to connect to the server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--server-require-auth");
                            Name        = "If true, will send authentication details.";
                            Description = "If true, will send authentication details.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--server-tls");
                            Name        = "If true, will connect to the server over TLS.";
                            Description = "If true, will connect to the server over TLS.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--server-tls-skip-verify");
                            Name        = "If true, will not validate TLS cert presented by the server.";
                            Description = "If true, will not validate TLS cert presented by the server.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--set-default");
                            Name        = "Set this context as the new default for the CLI. The default is false.";
                            Description = "Set this context as the new default for the CLI. The default is false.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a context";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Delete all contexts.";
                            Description = "Delete all contexts.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Output context info";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output information in JSON format The default is false.";
                            Description = "Output information in JSON format The default is false.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List contexts";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rename");
                    Name        = "rename";
                    Description = "Rename a context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Set a property of the current context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("use");
                    Name        = "use";
                    Description = "Set the default context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("verify");
                    Name        = "verify";
                    Description = "Verify server access with a context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("deploy");
            Name        = "deploy";
            Description = "Deploy an application";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label");
                    Name        = "Labels to set for this operation.";
                    Description = "Labels to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Release this deployment immediately.";
                    Description = "Release this deployment immediately.";
                },
                [FlagParameter]@{
                    Keys        = @("--remote");
                    Name        = "True to use a remote runner to execute.";
                    Description = "True to use a remote runner to execute.";
                },
                [ValueParameter]@{
                    Keys        = @("--remote-source");
                    Name        = "Override configurations for how remote runners source data.";
                    Description = "Override configurations for how remote runners source data.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable value to set for this operation.";
                    Description = "Variable value to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "HCL or JSON file containing variable values to set for this operation.";
                    Description = "HCL or JSON file containing variable values to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("deployment");
            Name        = "deployment";
            Description = "Deployment creation and management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("deploy");
                    Name        = "deploy";
                    Description = "Deploy a pushed artifact";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Labels to set for this operation.";
                            Description = "Labels to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Release this deployment immediately.";
                            Description = "Release this deployment immediately.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--remote");
                            Name        = "True to use a remote runner to execute.";
                            Description = "True to use a remote runner to execute.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--remote-source");
                            Name        = "Override configurations for how remote runners source data.";
                            Description = "Override configurations for how remote runners source data.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--var");
                            Name        = "Variable value to set for this operation.";
                            Description = "Variable value to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--var-file");
                            Name        = "HCL or JSON file containing variable values to set for this operation.";
                            Description = "HCL or JSON file containing variable values to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("destroy");
                    Name        = "destroy";
                    Description = "estroy one or more deployments";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Delete ALL deployments, including released.";
                            Description = "Delete ALL deployments, including released.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Yes to all confirmations.";
                            Description = "Yes to all confirmations.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Labels to set for this operation.";
                            Description = "Labels to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--remote");
                            Name        = "True to use a remote runner to execute.";
                            Description = "True to use a remote runner to execute.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--remote-source");
                            Name        = "Override configurations for how remote runners source data.";
                            Description = "Override configurations for how remote runners source data.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--var");
                            Name        = "Variable value to set for this operation.";
                            Description = "Variable value to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--var-file");
                            Name        = "HCL or JSON file containing variable values to set for this operation.";
                            Description = "HCL or JSON file containing variable values to set for this operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List deployments";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--desc");
                            Name        = "Sort the values in descending order.";
                            Description = "Sort the values in descending order.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output the deployment information as JSON.";
                            Description = "Output the deployment information as JSON.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit");
                            Name        = "How many values to show.";
                            Description = "How many values to show.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--long-ids");
                            Name        = "Show long identifiers rather than sequence numbers.";
                            Description = "Show long identifiers rather than sequence numbers.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--order-by");
                            Name        = "Order the values by which field.";
                            Description = "Order the values by which field.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--physical-state");
                            Name        = "Show values in the given physical states.";
                            Description = "Show values in the given physical states.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--state");
                            Name        = "Filter values to have the given status.";
                            Description = "Filter values to have the given status.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--url");
                            Name        = "Display deployment URL.";
                            Description = "Display deployment URL.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose");
                            Name        = "Display more details about each deployment.";
                            Description = "Display more details about each deployment.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--workspace-all");
                            Name        = "List builds in all workspaces for this project and application.";
                            Description = "List builds in all workspaces for this project and application.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("destroy");
            Name        = "destroy";
            Description = "Delete all the resources created";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--auto-approve");
                    Name        = "Confirm destroying all resources.";
                    Description = "Confirm destroying all resources.";
                },
                [ValueParameter]@{
                    Keys        = @("--label");
                    Name        = "Labels to set for this operation.";
                    Description = "Labels to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--remote");
                    Name        = "True to use a remote runner to execute.";
                    Description = "True to use a remote runner to execute.";
                },
                [ValueParameter]@{
                    Keys        = @("--remote-source");
                    Name        = "Override configurations for how remote runners source data.";
                    Description = "Override configurations for how remote runners source data.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable value to set for this operation.";
                    Description = "Variable value to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "HCL or JSON file containing variable values to set for this operation.";
                    Description = "HCL or JSON file containing variable values to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("docs");
            Name        = "docs";
            Description = "Show documentation for components";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--builtin");
                    Name        = "Show documentation on all builtin plugins The default is false.";
                    Description = "Show documentation on all builtin plugins The default is false.";
                },
                [ValueParameter]@{
                    Keys        = @("--label");
                    Name        = "Labels to set for this operation.";
                    Description = "Labels to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--markdown");
                    Name        = "Show documentation in markdown format The default is false.";
                    Description = "Show documentation in markdown format The default is false.";
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--plugin");
                    Name        = "Only show documentation for plugins with this name";
                    Description = "Only show documentation for plugins with this name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--remote");
                    Name        = "True to use a remote runner to execute.";
                    Description = "True to use a remote runner to execute.";
                },
                [ValueParameter]@{
                    Keys        = @("--remote-source");
                    Name        = "Override configurations for how remote runners source data.";
                    Description = "Override configurations for how remote runners source data.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "Only show documentation for this type of plugin";
                    Description = "Only show documentation for this type of plugin";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable value to set for this operation.";
                    Description = "Variable value to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "HCL or JSON file containing variable values to set for this operation.";
                    Description = "HCL or JSON file containing variable values to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("exec");
            Name        = "exec";
            Description = "Execute a command in the context of a running application instance";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--instance");
                    Name        = "Start an exec session on this specific instance";
                    Description = "Start an exec session on this specific instance";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fmt");
            Name        = "fmt";
            Description = "Rewrite waypoint.hcl configuration to a canonical format";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--write");
                    Name        = "Overwrite the input file.";
                    Description = "Overwrite the input file.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("hostname");
            Name        = "hostname";
            Description = "Application URLs";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a previously registered hostname";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all registered hostnames";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("register");
                    Name        = "register";
                    Description = "Register a hostname to route to your apps";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Initialize and validate a project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--from-project");
                    Name        = "Create a new application by fetching the given application from a remote source.";
                    Description = "Create a new application by fetching the given application from a remote source.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--into");
                    Name        = "Where to write the application fetched via -from-project";
                    Description = "Where to write the application fetched via -from-project";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--update");
                    Name        = "Update the project configuration if it already exists.";
                    Description = "Update the project configuration if it already exists.";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Install the Waypoint server to Kubernetes, Nomad, ECS, or Docker";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--accept-tos");
                    Name        = "Pass to accept the Terms of Service and Privacy Policy.";
                    Description = "Pass to accept the Terms of Service and Privacy Policy.";
                },
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--context-create");
                    Name        = "Create a context with connection information for this installation.";
                    Description = "Create a context with connection information for this installation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--context-set-default");
                    Name        = "Set the newly installed server as the default CLI context.";
                    Description = "Set the newly installed server as the default CLI context.";
                },
                [ValueParameter]@{
                    Keys        = @("--docker-odr-image");
                    Name        = "Docker image for the Waypoint On-Demand Runners";
                    Description = "Docker image for the Waypoint On-Demand Runners";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--docker-server-image");
                    Name        = "Docker image for the Waypoint server.";
                    Description = "Docker image for the Waypoint server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-cluster");
                    Name        = "Configures the Cluster to install into.";
                    Description = "Configures the Cluster to install into.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-cpu");
                    Name        = "Configures the requested CPU amount for the Waypoint server task in ECS.";
                    Description = "Configures the requested CPU amount for the Waypoint server task in ECS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-execution-role-name");
                    Name        = "Configures the IAM Execution role name to use.";
                    Description = "Configures the IAM Execution role name to use.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-mem");
                    Name        = "Configures the requested memory amount for the Waypoint server task in ECS.";
                    Description = "Configures the requested memory amount for the Waypoint server task in ECS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-odr-cpu");
                    Name        = "Configures the requested CPU amount for the Waypoint On-Demand runner in ECS.";
                    Description = "Configures the requested CPU amount for the Waypoint On-Demand runner in ECS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-odr-image");
                    Name        = "Docker image for the Waypoint On-Demand Runners.";
                    Description = "Docker image for the Waypoint On-Demand Runners.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-odr-mem");
                    Name        = "Configures the requested memory amount for the Waypoint On-Demand runner in ECS.";
                    Description = "Configures the requested memory amount for the Waypoint On-Demand runner in ECS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-region");
                    Name        = "Configures which AWS region to install into.";
                    Description = "Configures which AWS region to install into.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-server-image");
                    Name        = "Docker image for the Waypoint server.";
                    Description = "Docker image for the Waypoint server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-subnets");
                    Name        = "Subnets to install server into.";
                    Description = "Subnets to install server into.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ecs-task-role-name");
                    Name        = "IAM Execution Role to assign to the on-demand runner.";
                    Description = "IAM Execution Role to assign to the on-demand runner.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--k8s-advertise-internal");
                    Name        = "Advertise the internal service address rather than the external.";
                    Description = "Advertise the internal service address rather than the external.";
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-annotate-service");
                    Name        = "Annotations for the Service generated.";
                    Description = "Annotations for the Service generated.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-context");
                    Name        = "The Kubernetes context to install the Waypoint server to.";
                    Description = "The Kubernetes context to install the Waypoint server to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-cpu-request");
                    Name        = "Configures the requested CPU amount for the Waypoint server in Kubernetes.";
                    Description = "Configures the requested CPU amount for the Waypoint server in Kubernetes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-mem-request");
                    Name        = "Configures the requested memory amount for the Waypoint server in Kubernetes.";
                    Description = "Configures the requested memory amount for the Waypoint server in Kubernetes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-namespace");
                    Name        = "Namespace to install the Waypoint server into for Kubernetes.";
                    Description = "Namespace to install the Waypoint server into for Kubernetes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-odr-image");
                    Name        = "Docker image for the Waypoint On-Demand Runners";
                    Description = "Docker image for the Waypoint On-Demand Runners";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--k8s-openshift");
                    Name        = "Enables installing the Waypoint server on Kubernetes on Red Hat OpenShift.";
                    Description = "Enables installing the Waypoint server on Kubernetes on Red Hat OpenShift.";
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-pull-policy");
                    Name        = "Set the pull policy for the Waypoint server image.";
                    Description = "Set the pull policy for the Waypoint server image.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-pull-secret");
                    Name        = "Secret to use to access the Waypoint server image on Kubernetes.";
                    Description = "Secret to use to access the Waypoint server image on Kubernetes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-runner-service-account");
                    Name        = "Service account to assign to the on-demand runner.";
                    Description = "Service account to assign to the on-demand runner.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--k8s-runner-service-account-init");
                    Name        = "Create the service account if it does not exist.";
                    Description = "Create the service account if it does not exist.";
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-secret-file");
                    Name        = "Use the Kubernetes Secret in the given path to access the Waypoint server image.";
                    Description = "Use the Kubernetes Secret in the given path to access the Waypoint server image.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-server-image");
                    Name        = "Docker image for the Waypoint server.";
                    Description = "Docker image for the Waypoint server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-storage-request");
                    Name        = "Configures the requested persistent volume size for the Waypoint server in Kubernetes.";
                    Description = "Configures the requested persistent volume size for the Waypoint server in Kubernetes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--k8s-storageclassname");
                    Name        = "Name of the StorageClass required by the volume claim to install the Waypoint server image to.";
                    Description = "Name of the StorageClass required by the volume claim to install the Waypoint server image to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-annotate-service");
                    Name        = "Annotations for the Service generated.";
                    Description = "Annotations for the Service generated.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--nomad-auth-soft-fail");
                    Name        = "Don't fail the Nomad task on an auth failure obtaining server image container.";
                    Description = "Don't fail the Nomad task on an auth failure obtaining server image container.";
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-consul-datacenter");
                    Name        = "The datacenter where Consul is located.";
                    Description = "The datacenter where Consul is located.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-consul-domain");
                    Name        = "The domain where Consul is located.";
                    Description = "The domain where Consul is located.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--nomad-consul-service");
                    Name        = "Create service for Waypoint UI and Server in Consul.";
                    Description = "Create service for Waypoint UI and Server in Consul.";
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-consul-service-backend-tags");
                    Name        = "Tags for the Waypoint backend service generated in Consul.";
                    Description = "Tags for the Waypoint backend service generated in Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-consul-service-hostname");
                    Name        = "If set, will use this hostname for Consul DNS rather than the default.";
                    Description = "If set, will use this hostname for Consul DNS rather than the default.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-consul-service-ui-tags");
                    Name        = "Tags for the Waypoint UI service generated in Consul.";
                    Description = "Tags for the Waypoint UI service generated in Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-csi-fs");
                    Name        = "Nomad CSI volume mount option file system. The default is xfs.";
                    Description = "Nomad CSI volume mount option file system. The default is xfs.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-csi-volume-capacity-max");
                    Name        = "Nomad CSI volume capacity maximum, in bytes.";
                    Description = "Nomad CSI volume capacity maximum, in bytes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-csi-volume-capacity-min");
                    Name        = "Nomad CSI volume capacity minimum, in bytes.";
                    Description = "Nomad CSI volume capacity minimum, in bytes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-csi-volume-provider");
                    Name        = "Nomad CSI volume provider, required for volume type 'csi'.";
                    Description = "Nomad CSI volume provider, required for volume type 'csi'.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-dc");
                    Name        = "Datacenters to install to for Nomad. The default is dc1.";
                    Description = "Datacenters to install to for Nomad. The default is dc1.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-host");
                    Name        = "Hostname of the Nomad server to use, like for launching on-demand tasks.";
                    Description = "Hostname of the Nomad server to use, like for launching on-demand tasks.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-host-volume");
                    Name        = "Nomad host volume name, required for volume type 'host'.";
                    Description = "Nomad host volume name, required for volume type 'host'.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-namespace");
                    Name        = "Namespace to install the Waypoint server into for Nomad.";
                    Description = "Namespace to install the Waypoint server into for Nomad.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-odr-image");
                    Name        = "Docker image for the on-demand runners.";
                    Description = "Docker image for the on-demand runners.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--nomad-policy-override");
                    Name        = "Override the Nomad sentinel policy for enterprise Nomad.";
                    Description = "Override the Nomad sentinel policy for enterprise Nomad.";
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-region");
                    Name        = "Region to install to for Nomad.";
                    Description = "Region to install to for Nomad.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-runner-cpu");
                    Name        = "CPU required to run this task in MHz.";
                    Description = "CPU required to run this task in MHz.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-runner-memory");
                    Name        = "MB of Memory to allocate to the runner job task.";
                    Description = "MB of Memory to allocate to the runner job task.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-server-cpu");
                    Name        = "CPU required to run this task in MHz.";
                    Description = "CPU required to run this task in MHz.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-server-image");
                    Name        = "Docker image for the Waypoint server.";
                    Description = "Docker image for the Waypoint server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nomad-server-memory");
                    Name        = "MB of Memory to allocate to the Server job task.";
                    Description = "MB of Memory to allocate to the Server job task.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Platform to install the Waypoint server into.";
                    Description = "Platform to install the Waypoint server into.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("login");
            Name        = "login";
            Description = "Log in to a Waypoint server";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--auth-method");
                    Name        = "Auth method to use for login.";
                    Description = "Auth method to use for login.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--from-kubernetes");
                    Name        = "Perform the initial authentication after Waypoint is installed to Kubernetes.";
                    Description = "Perform the initial authentication after Waypoint is installed to Kubernetes.";
                },
                [ValueParameter]@{
                    Keys        = @("--from-kubernetes-namespace");
                    Name        = "The name of the Kubernetes namespace that has the Waypoint token.";
                    Description = "The name of the Kubernetes namespace that has the Waypoint token.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--from-kubernetes-secret");
                    Name        = "The name of the Kubernetes secret that has the Waypoint token.";
                    Description = "The name of the Kubernetes secret that has the Waypoint token.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--from-kubernetes-service");
                    Name        = "The name of the Kubernetes service to get the server address from.";
                    Description = "The name of the Kubernetes service to get the server address from.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--server-addr");
                    Name        = "Address for the server.";
                    Description = "Address for the server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--server-tls");
                    Name        = "Connected to via TLS.";
                    Description = "Connected to via TLS.";
                },
                [FlagParameter]@{
                    Keys        = @("--server-tls-skip-verify");
                    Name        = "Skip verification of the TLS certificate advertised by the server.";
                    Description = "Skip verification of the TLS certificate advertised by the server.";
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "Auth with a token.";
                    Description = "Auth with a token.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logs");
            Name        = "logs";
            Description = "Show log output from an application's current deployment";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("project");
            Name        = "project";
            Description = "Project management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("apply");
                    Name        = "apply";
                    Description = "Create or update a project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--app-status-poll");
                            Name        = "Enable polling to continuously generate status reports for apps.";
                            Description = "Enable polling to continuously generate status reports for apps.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--app-status-poll-interval");
                            Name        = "Interval between polling to generate status reports if polling is enabled.";
                            Description = "Interval between polling to generate status reports if polling is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--data-source");
                            Name        = "The data source type to use.";
                            Description = "The data source type to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from-waypoint-hcl");
                            Name        = "waypoint.hcl formatted file to load settings from.";
                            Description = "waypoint.hcl formatted file to load settings from.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-auth-type");
                            Name        = "Authentication type for Git.";
                            Description = "Authentication type for Git.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-password");
                            Name        = "Password for authentication when git-auth-type is 'basic'.";
                            Description = "Password for authentication when git-auth-type is 'basic'.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-path");
                            Name        = "Path is a subdirectory within the checked out repository to go into for the project's configuration.";
                            Description = "Path is a subdirectory within the checked out repository to go into for the project's configuration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-private-key-password");
                            Name        = "Password for the private key specified by git-private-key-path.";
                            Description = "Password for the private key specified by git-private-key-path.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-private-key-path");
                            Name        = "Path to a PEM-encoded private key for 'ssh'-based auth.";
                            Description = "Path to a PEM-encoded private key for 'ssh'-based auth.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-ref");
                            Name        = "Git ref to clone on new operations.";
                            Description = "Git ref to clone on new operations.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-url");
                            Name        = "URL of the Git repository to clone.";
                            Description = "URL of the Git repository to clone.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-username");
                            Name        = "Username for authentication when git-auth-type is 'basic'.";
                            Description = "Username for authentication when git-auth-type is 'basic'.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--poll");
                            Name        = "Enable polling.";
                            Description = "Enable polling.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--poll-interval");
                            Name        = "Interval between polling if polling is enabled.";
                            Description = "Interval between polling if polling is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--runner-profile");
                            Name        = "Name of a runner profile to be used for this project";
                            Description = "Name of a runner profile to be used for this project";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--waypoint-hcl");
                            Name        = "Path to a waypoint.hcl file to associate with this project.";
                            Description = "Path to a waypoint.hcl file to associate with this project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Inspect the details of a project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output project information as JSON.";
                            Description = "Output project information as JSON.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all registered projects";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("release");
            Name        = "release";
            Description = "Open a deployment to traffic";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--deployment");
                    Name        = "Release the specified deployment.";
                    Description = "Release the specified deployment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label");
                    Name        = "Labels to set for this operation.";
                    Description = "Labels to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--prune");
                    Name        = "Prune old unreleased deployments.";
                    Description = "Prune old unreleased deployments.";
                },
                [ValueParameter]@{
                    Keys        = @("--prune-retain");
                    Name        = "The number of unreleased deployments to keep.";
                    Description = "The number of unreleased deployments to keep.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--remote");
                    Name        = "True to use a remote runner to execute.";
                    Description = "True to use a remote runner to execute.";
                },
                [ValueParameter]@{
                    Keys        = @("--remote-source");
                    Name        = "Override configurations for how remote runners source data.";
                    Description = "Override configurations for how remote runners source data.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--repeat");
                    Name        = "Re-release if deploy is already released.";
                    Description = "Re-release if deploy is already released.";
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable value to set for this operation.";
                    Description = "Variable value to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "HCL or JSON file containing variable values to set for this operation.";
                    Description = "HCL or JSON file containing variable values to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List releases";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--desc");
                            Name        = "Sort the values in descending order.";
                            Description = "Sort the values in descending order.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output the release information as JSON.";
                            Description = "Output the release information as JSON.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit");
                            Name        = "How many values to show.";
                            Description = "How many values to show.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--long-ids");
                            Name        = "Show long identifiers rather than sequence numbers.";
                            Description = "Show long identifiers rather than sequence numbers.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--order-by");
                            Name        = "Order the values by which field.";
                            Description = "Order the values by which field.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--physical-state");
                            Name        = "Show values in the given physical states.";
                            Description = "Show values in the given physical states.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--state");
                            Name        = "Filter values to have the given status.";
                            Description = "Filter values to have the given status.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--url");
                            Name        = "Display release URL.";
                            Description = "Display release URL.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose");
                            Name        = "Display more details about each release.";
                            Description = "Display more details about each release.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--workspace-all");
                            Name        = "List builds in all workspaces for this project and application.";
                            Description = "List builds in all workspaces for this project and application.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("runner");
            Name        = "runner";
            Description = "Runner management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("agent");
                    Name        = "agent";
                    Description = "Run a runner for executing remote operations";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-dynamic-config");
                            Name        = "Allow dynamic config to be created when an exec plugin is used.";
                            Description = "Allow dynamic config to be created when an exec plugin is used.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--id");
                            Name        = "If this is set, the runner will use the specified id.";
                            Description = "If this is set, the runner will use the specified id.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--liveness-tcp-addr");
                            Name        = "Open a TCP listener on this address when it is running.";
                            Description = "Open a TCP listener on this address when it is running.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--odr");
                            Name        = "Indicates to the runner it's operating as an on-demand runner.";
                            Description = "Indicates to the runner it's operating as an on-demand runner.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("profile");
                    Name        = "profile";
                    Description = "Manage runner profiles";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("inspect");
                            Name        = "inspect";
                            Description = "Show detailed information about a runner profile";
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List all registered runner profiles";
                        },
                        [CommandParameter]@{
                            Keys        = @("set");
                            Name        = "set";
                            Description = "Create or update a runner profile";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--app", "-a");
                                    Name        = "App to target.";
                                    Description = "App to target.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--default");
                                    Name        = "Indicates that this on-demand runner should be used as default.";
                                    Description = "Indicates that this on-demand runner should be used as default.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--env-vars");
                                    Name        = "Environment variable to expose to the on-demand runner.";
                                    Description = "Environment variable to expose to the on-demand runner.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The name of an existing runner profile to update.";
                                    Description = "The name of an existing runner profile to update.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--oci-url");
                                    Name        = "The url for the OCI image to launch for the on-demand runner.";
                                    Description = "The url for the OCI image to launch for the on-demand runner.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--plain");
                                    Name        = "Plain output";
                                    Description = "Plain output";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--plugin-config");
                                    Name        = "Path to an hcl file that contains the configuration for the plugin.";
                                    Description = "Path to an hcl file that contains the configuration for the plugin.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--plugin-type");
                                    Name        = "The type of the plugin to launch for the on-demand runner.";
                                    Description = "The type of the plugin to launch for the on-demand runner.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--project", "-p");
                                    Name        = "Project to target.";
                                    Description = "Project to target.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--workspace", "-w");
                                    Name        = "Workspace to operate in.";
                                    Description = "Workspace to operate in.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("server");
            Name        = "server";
            Description = "Server management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("bootstrap");
                    Name        = "bootstrap";
                    Description = "Bootstrap the server and retrieve the initial auth token";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--context-create");
                            Name        = "Create a CLI context for this bootstrapped server.";
                            Description = "Create a CLI context for this bootstrapped server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--context-set-default");
                            Name        = "Set the newly bootstrapped server as the default CLI context.";
                            Description = "Set the newly bootstrapped server as the default CLI context.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--server-addr");
                            Name        = "Address for the server.";
                            Description = "Address for the server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--server-tls");
                            Name        = "Connected to via TLS.";
                            Description = "Connected to via TLS.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--server-tls-skip-verify");
                            Name        = "Skip verification of the TLS certificate advertised by the server.";
                            Description = "Skip verification of the TLS certificate advertised by the server.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("config-set");
                    Name        = "config-set";
                    Description = "Set the server online configuration";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--advertise-addr");
                            Name        = "Address to advertise for the server.";
                            Description = "Address to advertise for the server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--advertise-tls");
                            Name        = "If true, the advertised address should be connected to with TLS.";
                            Description = "If true, the advertised address should be connected to with TLS.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--advertise-tls-skip-verify");
                            Name        = "Do not verify the TLS certificate presented by the server. ";
                            Description = "Do not verify the TLS certificate presented by the server. ";
                        },
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "Install the Waypoint server to Kubernetes, Nomad, ECS, or Docker";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--accept-tos");
                            Name        = "Pass to accept the Terms of Service and Privacy Policy.";
                            Description = "Pass to accept the Terms of Service and Privacy Policy.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--context-create");
                            Name        = "Create a context with connection information for this installation.";
                            Description = "Create a context with connection information for this installation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--context-set-default");
                            Name        = "Set the newly installed server as the default CLI context.";
                            Description = "Set the newly installed server as the default CLI context.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--docker-odr-image");
                            Name        = "Docker image for the Waypoint On-Demand Runners";
                            Description = "Docker image for the Waypoint On-Demand Runners";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--docker-server-image");
                            Name        = "Docker image for the Waypoint server.";
                            Description = "Docker image for the Waypoint server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-cluster");
                            Name        = "Configures the Cluster to install into.";
                            Description = "Configures the Cluster to install into.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-cpu");
                            Name        = "Configures the requested CPU amount for the Waypoint server task in ECS.";
                            Description = "Configures the requested CPU amount for the Waypoint server task in ECS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-execution-role-name");
                            Name        = "Configures the IAM Execution role name to use.";
                            Description = "Configures the IAM Execution role name to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-mem");
                            Name        = "Configures the requested memory amount for the Waypoint server task in ECS.";
                            Description = "Configures the requested memory amount for the Waypoint server task in ECS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-odr-cpu");
                            Name        = "Configures the requested CPU amount for the Waypoint On-Demand runner in ECS.";
                            Description = "Configures the requested CPU amount for the Waypoint On-Demand runner in ECS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-odr-image");
                            Name        = "Docker image for the Waypoint On-Demand Runners.";
                            Description = "Docker image for the Waypoint On-Demand Runners.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-odr-mem");
                            Name        = "Configures the requested memory amount for the Waypoint On-Demand runner in ECS.";
                            Description = "Configures the requested memory amount for the Waypoint On-Demand runner in ECS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-region");
                            Name        = "Configures which AWS region to install into.";
                            Description = "Configures which AWS region to install into.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-server-image");
                            Name        = "Docker image for the Waypoint server.";
                            Description = "Docker image for the Waypoint server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-subnets");
                            Name        = "Subnets to install server into.";
                            Description = "Subnets to install server into.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-task-role-name");
                            Name        = "IAM Execution Role to assign to the on-demand runner.";
                            Description = "IAM Execution Role to assign to the on-demand runner.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--k8s-advertise-internal");
                            Name        = "Advertise the internal service address rather than the external.";
                            Description = "Advertise the internal service address rather than the external.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-annotate-service");
                            Name        = "Annotations for the Service generated.";
                            Description = "Annotations for the Service generated.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-context");
                            Name        = "The Kubernetes context to install the Waypoint server to.";
                            Description = "The Kubernetes context to install the Waypoint server to.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-cpu-request");
                            Name        = "Configures the requested CPU amount for the Waypoint server in Kubernetes.";
                            Description = "Configures the requested CPU amount for the Waypoint server in Kubernetes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-mem-request");
                            Name        = "Configures the requested memory amount for the Waypoint server in Kubernetes.";
                            Description = "Configures the requested memory amount for the Waypoint server in Kubernetes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-namespace");
                            Name        = "Namespace to install the Waypoint server into for Kubernetes.";
                            Description = "Namespace to install the Waypoint server into for Kubernetes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-odr-image");
                            Name        = "Docker image for the Waypoint On-Demand Runners";
                            Description = "Docker image for the Waypoint On-Demand Runners";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--k8s-openshift");
                            Name        = "Enables installing the Waypoint server on Kubernetes on Red Hat OpenShift.";
                            Description = "Enables installing the Waypoint server on Kubernetes on Red Hat OpenShift.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-pull-policy");
                            Name        = "Set the pull policy for the Waypoint server image.";
                            Description = "Set the pull policy for the Waypoint server image.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-pull-secret");
                            Name        = "Secret to use to access the Waypoint server image on Kubernetes.";
                            Description = "Secret to use to access the Waypoint server image on Kubernetes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-runner-service-account");
                            Name        = "Service account to assign to the on-demand runner.";
                            Description = "Service account to assign to the on-demand runner.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--k8s-runner-service-account-init");
                            Name        = "Create the service account if it does not exist.";
                            Description = "Create the service account if it does not exist.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-secret-file");
                            Name        = "Use the Kubernetes Secret in the given path to access the Waypoint server image.";
                            Description = "Use the Kubernetes Secret in the given path to access the Waypoint server image.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-server-image");
                            Name        = "Docker image for the Waypoint server.";
                            Description = "Docker image for the Waypoint server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-storage-request");
                            Name        = "Configures the requested persistent volume size for the Waypoint server in Kubernetes.";
                            Description = "Configures the requested persistent volume size for the Waypoint server in Kubernetes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-storageclassname");
                            Name        = "Name of the StorageClass required by the volume claim to install the Waypoint server image to.";
                            Description = "Name of the StorageClass required by the volume claim to install the Waypoint server image to.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-annotate-service");
                            Name        = "Annotations for the Service generated.";
                            Description = "Annotations for the Service generated.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--nomad-auth-soft-fail");
                            Name        = "Don't fail the Nomad task on an auth failure obtaining server image container.";
                            Description = "Don't fail the Nomad task on an auth failure obtaining server image container.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-datacenter");
                            Name        = "The datacenter where Consul is located.";
                            Description = "The datacenter where Consul is located.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-domain");
                            Name        = "The domain where Consul is located.";
                            Description = "The domain where Consul is located.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--nomad-consul-service");
                            Name        = "Create service for Waypoint UI and Server in Consul.";
                            Description = "Create service for Waypoint UI and Server in Consul.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-service-backend-tags");
                            Name        = "Tags for the Waypoint backend service generated in Consul.";
                            Description = "Tags for the Waypoint backend service generated in Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-service-hostname");
                            Name        = "If set, will use this hostname for Consul DNS rather than the default.";
                            Description = "If set, will use this hostname for Consul DNS rather than the default.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-service-ui-tags");
                            Name        = "Tags for the Waypoint UI service generated in Consul.";
                            Description = "Tags for the Waypoint UI service generated in Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-csi-fs");
                            Name        = "Nomad CSI volume mount option file system. The default is xfs.";
                            Description = "Nomad CSI volume mount option file system. The default is xfs.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-csi-volume-capacity-max");
                            Name        = "Nomad CSI volume capacity maximum, in bytes.";
                            Description = "Nomad CSI volume capacity maximum, in bytes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-csi-volume-capacity-min");
                            Name        = "Nomad CSI volume capacity minimum, in bytes.";
                            Description = "Nomad CSI volume capacity minimum, in bytes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-csi-volume-provider");
                            Name        = "Nomad CSI volume provider, required for volume type 'csi'.";
                            Description = "Nomad CSI volume provider, required for volume type 'csi'.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-dc");
                            Name        = "Datacenters to install to for Nomad. The default is dc1.";
                            Description = "Datacenters to install to for Nomad. The default is dc1.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-host");
                            Name        = "Hostname of the Nomad server to use, like for launching on-demand tasks.";
                            Description = "Hostname of the Nomad server to use, like for launching on-demand tasks.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-host-volume");
                            Name        = "Nomad host volume name, required for volume type 'host'.";
                            Description = "Nomad host volume name, required for volume type 'host'.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-namespace");
                            Name        = "Namespace to install the Waypoint server into for Nomad.";
                            Description = "Namespace to install the Waypoint server into for Nomad.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-odr-image");
                            Name        = "Docker image for the on-demand runners.";
                            Description = "Docker image for the on-demand runners.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--nomad-policy-override");
                            Name        = "Override the Nomad sentinel policy for enterprise Nomad.";
                            Description = "Override the Nomad sentinel policy for enterprise Nomad.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-region");
                            Name        = "Region to install to for Nomad.";
                            Description = "Region to install to for Nomad.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-runner-cpu");
                            Name        = "CPU required to run this task in MHz.";
                            Description = "CPU required to run this task in MHz.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-runner-memory");
                            Name        = "MB of Memory to allocate to the runner job task.";
                            Description = "MB of Memory to allocate to the runner job task.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-server-cpu");
                            Name        = "CPU required to run this task in MHz.";
                            Description = "CPU required to run this task in MHz.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-server-image");
                            Name        = "Docker image for the Waypoint server.";
                            Description = "Docker image for the Waypoint server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-server-memory");
                            Name        = "MB of Memory to allocate to the Server job task.";
                            Description = "MB of Memory to allocate to the Server job task.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Platform to install the Waypoint server into.";
                            Description = "Platform to install the Waypoint server into.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("restore");
                    Name        = "restore";
                    Description = "Stage a snapshot on the current server for data restoration";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--exit");
                            Name        = "After restoring, the server should exit so it can be restarted.";
                            Description = "After restoring, the server should exit so it can be restarted.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("run");
                    Name        = "run";
                    Description = "Manually run the builtin server";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--accept-tos");
                            Name        = "Pass to accept the Terms of Service and Privacy Policy to use the Waypoint URL Service.";
                            Description = "Pass to accept the Terms of Service and Privacy Policy to use the Waypoint URL Service.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--advertise-addr");
                            Name        = "Address to advertise for the server.";
                            Description = "Address to advertise for the server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--advertise-tls");
                            Name        = "If true, the advertised address should be connected to with TLS";
                            Description = "If true, the advertised address should be connected to with TLS";
                        },
                        [FlagParameter]@{
                            Keys        = @("--advertise-tls-skip-verify");
                            Name        = "Do not verify the TLS certificate presented by the server.";
                            Description = "Do not verify the TLS certificate presented by the server.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--db");
                            Name        = "Path to the database file.";
                            Description = "Path to the database file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-ui");
                            Name        = "Disable the embedded web interface The default is false.";
                            Description = "Disable the embedded web interface The default is false.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--listen-grpc");
                            Name        = "Address to bind to for gRPC connections.";
                            Description = "Address to bind to for gRPC connections.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--listen-http");
                            Name        = "Address to bind to for HTTP connections.";
                            Description = "Address to bind to for HTTP connections.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--listen-http-insecure");
                            Name        = "Address to bind to for insecure HTTP connections.";
                            Description = "Address to bind to for insecure HTTP connections.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--telemetry-dd-trace-addr");
                            Name        = "Address of a DataDog agent available to accept traces.";
                            Description = "Address of a DataDog agent available to accept traces.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--telemetry-oc-agent-addr");
                            Name        = "Address of an OpenCensus agent or collector.";
                            Description = "Address of an OpenCensus agent or collector.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--telemetry-oc-agent-insecure");
                            Name        = "Disables client transport security for the OpenCensus agent exporter's gRPC connection.";
                            Description = "Disables client transport security for the OpenCensus agent exporter's gRPC connection.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--telemetry-oc-zpages-addr");
                            Name        = "If set, Waypoint will run an OpenCensus zPages server at this address.";
                            Description = "If set, Waypoint will run an OpenCensus zPages server at this address.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-cert-file");
                            Name        = "Path to a PEM-encoded certificate file for TLS.";
                            Description = "Path to a PEM-encoded certificate file for TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-key-file");
                            Name        = "Path to a PEM-encoded private key file for the TLS certificate specified with -tls-cert-file.";
                            Description = "Path to a PEM-encoded private key file for the TLS certificate specified with -tls-cert-file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--url-api-addr");
                            Name        = "Address to Waypoint URL service API.";
                            Description = "Address to Waypoint URL service API.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--url-api-insecure");
                            Name        = "True if TLS is not enabled for the Waypoint URL service API.";
                            Description = "True if TLS is not enabled for the Waypoint URL service API.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--url-auto-app-hostname");
                            Name        = "Whether apps automatically get a hostname on deploy.";
                            Description = "Whether apps automatically get a hostname on deploy.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--url-control-addr");
                            Name        = "Address to Waypoint URL service control API.";
                            Description = "Address to Waypoint URL service control API.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--url-control-token");
                            Name        = "Token for the Waypoint URL server control API.";
                            Description = "Token for the Waypoint URL server control API.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--url-enabled");
                            Name        = "Enable the URL service.";
                            Description = "Enable the URL service.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("snapshot");
                    Name        = "snapshot";
                    Description = "Write a backup of the server data";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("uninstall");
                    Name        = "uninstall";
                    Description = "Uninstall the Waypoint server";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--auto-approve");
                            Name        = "Auto-approve server uninstallation.";
                            Description = "Auto-approve server uninstallation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--delete-context");
                            Name        = "Delete the context for the server once it's uninstalled.";
                            Description = "Delete the context for the server once it's uninstalled.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-cluster");
                            Name        = "Configures the Cluster to uninstall.";
                            Description = "Configures the Cluster to uninstall.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-region");
                            Name        = "Configures which AWS region to uninstall from.";
                            Description = "Configures which AWS region to uninstall from.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--ignore-runner-error");
                            Name        = "Ignore any errors encountered while uninstalling runners.";
                            Description = "Ignore any errors encountered while uninstalling runners.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-context");
                            Name        = "The Kubernetes context to unisntall the Waypoint server from.";
                            Description = "The Kubernetes context to unisntall the Waypoint server from.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-namespace");
                            Name        = "Namespace in Kubernetes to uninstall the Waypoint server from.";
                            Description = "Namespace in Kubernetes to uninstall the Waypoint server from.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Platform to uninstall the Waypoint server from.";
                            Description = "Platform to uninstall the Waypoint server from.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--snapshot");
                            Name        = "Enable or disable taking a snapshot of Waypoint server prior to uninstall.";
                            Description = "Enable or disable taking a snapshot of Waypoint server prior to uninstall.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--snapshot-name");
                            Name        = "Filename to write the snapshot to.";
                            Description = "Filename to write the snapshot to.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("upgrade");
                    Name        = "upgrade";
                    Description = "Upgrades Waypoint server in the current context to the latest version";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--auto-approve");
                            Name        = "Confirm server upgrade.";
                            Description = "Confirm server upgrade.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--context-name");
                            Name        = "Waypoint server context to upgrade.";
                            Description = "Waypoint server context to upgrade.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--docker-odr-image");
                            Name        = "Docker image for the Waypoint On-Demand Runners.";
                            Description = "Docker image for the Waypoint On-Demand Runners.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--docker-server-image");
                            Name        = "Docker image for the Waypoint server.";
                            Description = "Docker image for the Waypoint server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-cluster");
                            Name        = "Configures the Cluster to upgrade.";
                            Description = "Configures the Cluster to upgrade.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-cpu");
                            Name        = "Configures the requested CPU amount for the Waypoint server task in ECS.";
                            Description = "Configures the requested CPU amount for the Waypoint server task in ECS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-mem");
                            Name        = "Configures the requested memory amount for the Waypoint server task in ECS.";
                            Description = "Configures the requested memory amount for the Waypoint server task in ECS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-odr-cpu");
                            Name        = "Configures the requested CPU amount for the Waypoint On-Demand runner in ECS.";
                            Description = "Configures the requested CPU amount for the Waypoint On-Demand runner in ECS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-odr-image");
                            Name        = "Docker image for the Waypoint On-Demand Runners.";
                            Description = "Docker image for the Waypoint On-Demand Runners.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-odr-mem");
                            Name        = "Configures the requested memory amount for the Waypoint On-Demand runner in ECS.";
                            Description = "Configures the requested memory amount for the Waypoint On-Demand runner in ECS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-region");
                            Name        = "Configures which AWS region to install into.";
                            Description = "Configures which AWS region to install into.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-server-image");
                            Name        = "Docker image for the Waypoint server.";
                            Description = "Docker image for the Waypoint server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ecs-task-role-name");
                            Name        = "IAM Execution Role to assign to the on-demand runner.";
                            Description = "IAM Execution Role to assign to the on-demand runner.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--k8s-advertise-internal");
                            Name        = "Advertise the internal service address rather than the external.";
                            Description = "Advertise the internal service address rather than the external.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-context");
                            Name        = "The Kubernetes context to upgrade the Waypoint server to.";
                            Description = "The Kubernetes context to upgrade the Waypoint server to.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-namespace");
                            Name        = "Namespace to install the Waypoint server into for Kubernetes.";
                            Description = "Namespace to install the Waypoint server into for Kubernetes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-odr-image");
                            Name        = "Docker image for the Waypoint On-Demand Runners";
                            Description = "Docker image for the Waypoint On-Demand Runners";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--k8s-openshift");
                            Name        = "Enables installing the Waypoint server on Kubernetes on Red Hat OpenShift.";
                            Description = "Enables installing the Waypoint server on Kubernetes on Red Hat OpenShift.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-runner-service-account");
                            Name        = "Service account to assign to the on-demand runner.";
                            Description = "Service account to assign to the on-demand runner.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--k8s-runner-service-account-init");
                            Name        = "Create the service account if it does not exist.";
                            Description = "Create the service account if it does not exist.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--k8s-server-image");
                            Name        = "Docker image for the Waypoint server.";
                            Description = "Docker image for the Waypoint server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-annotate-service");
                            Name        = "Annotations for the Service generated.";
                            Description = "Annotations for the Service generated.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--nomad-auth-soft-fail");
                            Name        = "Don't fail the Nomad task on an auth failure obtaining server image container.";
                            Description = "Don't fail the Nomad task on an auth failure obtaining server image container.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-datacenter");
                            Name        = "The datacenter where Consul is located.";
                            Description = "The datacenter where Consul is located.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-domain");
                            Name        = "The domain where Consul is located. The default is consul.";
                            Description = "The domain where Consul is located. The default is consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--nomad-consul-service");
                            Name        = "Create service for Waypoint UI and Server in Consul.";
                            Description = "Create service for Waypoint UI and Server in Consul.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-service-backend-tags");
                            Name        = "Tags for the Waypoint backend service generated in Consul.";
                            Description = "Tags for the Waypoint backend service generated in Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-service-hostname");
                            Name        = "If set, will use this hostname for Consul DNS rather than the default.";
                            Description = "If set, will use this hostname for Consul DNS rather than the default.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-consul-service-ui-tags");
                            Name        = "Tags for the Waypoint UI service generated in Consul.";
                            Description = "Tags for the Waypoint UI service generated in Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-dc");
                            Name        = "Datacenters to install to for Nomad. The default is dc1.";
                            Description = "Datacenters to install to for Nomad. The default is dc1.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-host");
                            Name        = "Hostname of the Nomad server to use.";
                            Description = "Hostname of the Nomad server to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-host-volume");
                            Name        = "Nomad host volume name.";
                            Description = "Nomad host volume name.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-namespace");
                            Name        = "Namespace to install the Waypoint server into for Nomad.";
                            Description = "Namespace to install the Waypoint server into for Nomad.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-odr-image");
                            Name        = "Docker image for the on-demand runners.";
                            Description = "Docker image for the on-demand runners.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--nomad-policy-override");
                            Name        = "Override the Nomad sentinel policy for enterprise Nomad.";
                            Description = "Override the Nomad sentinel policy for enterprise Nomad.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-region");
                            Name        = "Region to install to for Nomad.";
                            Description = "Region to install to for Nomad.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-runner-cpu");
                            Name        = "CPU required to run this task in MHz.";
                            Description = "CPU required to run this task in MHz.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-runner-memory");
                            Name        = "MB of Memory to allocate to the runner job task.";
                            Description = "MB of Memory to allocate to the runner job task.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-server-cpu");
                            Name        = "CPU required to run this task in MHz.";
                            Description = "CPU required to run this task in MHz.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-server-image");
                            Name        = "Docker image for the Waypoint server.";
                            Description = "Docker image for the Waypoint server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--nomad-server-memory");
                            Name        = "MB of Memory to allocate to the server job task.";
                            Description = "MB of Memory to allocate to the server job task.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Platform to upgrade the Waypoint server from.";
                            Description = "Platform to upgrade the Waypoint server from.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--snapshot");
                            Name        = "Enable or disable taking a snapshot of Waypoint server prior to upgrades.";
                            Description = "Enable or disable taking a snapshot of Waypoint server prior to upgrades.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--snapshot-name");
                            Name        = "Filename to write the snapshot to.";
                            Description = "Filename to write the snapshot to.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("status");
            Name        = "status";
            Description = "List and refresh application statuses";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-projects");
                    Name        = "Output status about every project in a workspace.";
                    Description = "Output status about every project in a workspace.";
                },
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Output the status information as JSON.";
                    Description = "Output the status information as JSON.";
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--refresh");
                    Name        = "Refresh application status for the requested app or apps in a project.";
                    Description = "Refresh application status for the requested app or apps in a project.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose");
                    Name        = "Display more details.";
                    Description = "Display more details.";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ui");
            Name        = "ui";
            Description = "Open the web UI";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--authenticate");
                    Name        = "Creates a new invite token and passes it to the UI for authorization.";
                    Description = "Creates a new invite token and passes it to the UI for authorization.";
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("up");
            Name        = "up";
            Description = "Perform the build, deploy, and release steps";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app", "-a");
                    Name        = "App to target.";
                    Description = "App to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label");
                    Name        = "Labels to set for this operation.";
                    Description = "Labels to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain");
                    Name        = "Plain output";
                    Description = "Plain output";
                },
                [ValueParameter]@{
                    Keys        = @("--project", "-p");
                    Name        = "Project to target.";
                    Description = "Project to target.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--prune");
                    Name        = "Prune old unreleased deployments.";
                    Description = "Prune old unreleased deployments.";
                },
                [ValueParameter]@{
                    Keys        = @("--prune-retain");
                    Name        = "The number of unreleased deployments to keep.";
                    Description = "The number of unreleased deployments to keep.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--remote");
                    Name        = "True to use a remote runner to execute.";
                    Description = "True to use a remote runner to execute.";
                },
                [ValueParameter]@{
                    Keys        = @("--remote-source");
                    Name        = "Override configurations for how remote runners source data.";
                    Description = "Override configurations for how remote runners source data.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable value to set for this operation.";
                    Description = "Variable value to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "HCL or JSON file containing variable values to set for this operation.";
                    Description = "HCL or JSON file containing variable values to set for this operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Workspace to operate in.";
                    Description = "Workspace to operate in.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("user");
            Name        = "user";
            Description = "User information and management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Show details about a single user";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "The user to lookup.";
                            Description = "The user to lookup.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("invite");
                    Name        = "invite";
                    Description = "Invite a user to join the Waypoint server";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--expires-in");
                            Name        = "The duration until the token expires.";
                            Description = "The duration until the token expires.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "Invite a new user and provide a username hint.";
                            Description = "Invite a new user and provide a username hint.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("modify");
                    Name        = "modify";
                    Description = "Modify details about a user";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--display-name");
                            Name        = "The display name for a user.";
                            Description = "The display name for a user.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--new-username");
                            Name        = "Set a new username for this user.";
                            Description = "Set a new username for this user.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "The user to modify.";
                            Description = "The user to modify.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("token");
                    Name        = "token";
                    Description = "Request a new token to access the server";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--expires-in");
                            Name        = "The duration until the token expires.";
                            Description = "The duration until the token expires.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "Username to generate the login token for.";
                            Description = "Username to generate the login token for.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Prints the version of this Waypoint CLI";
        },
        [CommandParameter]@{
            Keys        = @("workspace");
            Name        = "workspace";
            Description = "Manage workspaces";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Output information for a given Workspace";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List workspaces for the current context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app", "-a");
                            Name        = "App to target.";
                            Description = "App to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--plain");
                            Name        = "Plain output";
                            Description = "Plain output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Project to target.";
                            Description = "Project to target.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workspace", "-w");
                            Name        = "Workspace to operate in.";
                            Description = "Workspace to operate in.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        }
    )
}
