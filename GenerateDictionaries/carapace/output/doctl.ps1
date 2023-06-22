# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://docs.digitalocean.com/reference/doctl/";
    Keys        = @("doctl");
    Name        = "doctl";
    Description = "doctl is a command line interface (CLI) for the DigitalOcean API";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--access-token", "-t");
            Name        = "API V2 access token";
            Description = "API V2 access token";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--api-url", "-u");
            Name        = "Override default API endpoint";
            Description = "Override default API endpoint";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config", "-c");
            Name        = "Specify a custom config file";
            Description = "Specify a custom config file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--context");
            Name        = "Specify a custom authentication context name";
            Description = "Specify a custom authentication context name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for doctl";
            Description = "help for doctl";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "Desired output format [text|json]";
            Description = "Desired output format [text|json]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--trace");
            Name        = "Show a log of network activity while performing a command";
            Description = "Show a log of network activity while performing a command";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Enable verbose output";
            Description = "Enable verbose output";
        },
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("1-click");
            Name        = "1-click";
            Description = "Display commands that pertain to 1-click applications";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Retrieve a list of 1-Click applications";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``SLUG``, ``TYPE``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``SLUG``, ``TYPE``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--type");
                            Name        = "The 1-Click type. Valid types are one of the following: kubernetes, droplet";
                            Description = "The 1-Click type. Valid types are one of the following: kubernetes, droplet";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("account");
            Name        = "account";
            Description = "Display commands that retrieve account details";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Retrieve account profile details";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``Email``, ``DropletLimit``, ``EmailVerified``, ``UUID``, ``Status``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``Email``, ``DropletLimit``, ``EmailVerified``, ``UUID``, ``Status``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ratelimit");
                    Name        = "ratelimit";
                    Description = "Retrieve your API usage and the remaining quota";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``Limit``, ``Remaining``, ``Reset``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``Limit``, ``Remaining``, ``Reset``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("apps");
            Name        = "apps";
            Description = "Display commands for working with apps";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create an app";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--spec");
                            Name        = "Path to an app spec in JSON or YAML format. Set to `"-`" to read from stdin. (required)";
                            Description = "Path to an app spec in JSON or YAML format. Set to `"-`" to read from stdin. (required)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--upsert");
                            Name        = "Boolean that specifies whether the app should be updated if it already exists";
                            Description = "Boolean that specifies whether the app should be updated if it already exists";
                        },
                        [FlagParameter]@{
                            Keys        = @("--wait");
                            Name        = "Boolean that specifies whether to wait for an app to complete before returning control to the terminal";
                            Description = "Boolean that specifies whether to wait for an app to complete before returning control to the terminal";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create-deployment");
                    Name        = "create-deployment";
                    Description = "Create a deployment";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force-rebuild");
                            Name        = "Force a re-build even if a previous build is eligible for reuse";
                            Description = "Force a re-build even if a previous build is eligible for reuse";
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Cause``, ``Progress``, ``Created``, ``Updated``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Cause``, ``Progress``, ``Created``, ``Updated``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        },
                        [FlagParameter]@{
                            Keys        = @("--wait");
                            Name        = "Boolean that specifies whether to wait for apps deployment to complete before returning control to the terminal";
                            Description = "Boolean that specifies whether to wait for apps deployment to complete before returning control to the terminal";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Deletes an app";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Delete the App without a confirmation prompt";
                            Description = "Delete the App without a confirmation prompt";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Get an app";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get-deployment");
                    Name        = "get-deployment";
                    Description = "Get a deployment";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Cause``, ``Progress``, ``Created``, ``Updated``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Cause``, ``Progress``, ``Created``, ``Updated``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all apps";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list-alerts");
                    Name        = "list-alerts";
                    Description = "List alerts on an app";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Rule``, ``Trigger``, ``ComponentName``, ``Emails``, ``SlackWebhooks``, ``Spec.Disabled``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Rule``, ``Trigger``, ``ComponentName``, ``Emails``, ``SlackWebhooks``, ``Spec.Disabled``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list-deployments");
                    Name        = "list-deployments";
                    Description = "List all deployments";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Cause``, ``Progress``, ``Created``, ``Updated``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Cause``, ``Progress``, ``Created``, ``Updated``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list-regions");
                    Name        = "list-regions";
                    Description = "List App Platform regions";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``Slug``, ``Label``, ``Continent``, ``DataCenters``, ``Disabled``, ``Reason``, ``Default``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``Slug``, ``Label``, ``Continent``, ``DataCenters``, ``Disabled``, ``Reason``, ``Default``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("logs");
                    Name        = "logs";
                    Description = "Get logs";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--deployment");
                            Name        = "The deployment ID. Defaults to current deployment.";
                            Description = "The deployment ID. Defaults to current deployment.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--follow", "-f");
                            Name        = "Follow logs as they are emitted.";
                            Description = "Follow logs as they are emitted.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tail");
                            Name        = "Number of lines to show from the end of the log.";
                            Description = "Number of lines to show from the end of the log.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--type");
                            Name        = "The type of logs.";
                            Description = "The type of logs.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("propose");
                    Name        = "propose";
                    Description = "Propose an app spec";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app");
                            Name        = "An optional existing app ID. If specified, the app spec will be treated as a proposed update to the existing app.";
                            Description = "An optional existing app ID. If specified, the app spec will be treated as a proposed update to the existing app.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--spec");
                            Name        = "Path to an app spec in JSON or YAML format.";
                            Description = "Path to an app spec in JSON or YAML format.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("spec");
                    Name        = "spec";
                    Description = "Display commands for working with app specs";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve an application's spec";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--deployment");
                                    Name        = "optional: a deployment ID";
                                    Description = "optional: a deployment ID";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "the format to output the spec in; either `"yaml`" or `"json`"";
                                    Description = "the format to output the spec in; either `"yaml`" or `"json`"";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("validate");
                            Name        = "validate";
                            Description = "Validate an application spec";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--schema-only");
                                    Name        = "Only validate the spec schema and not the correctness of the spec.";
                                    Description = "Only validate the spec schema and not the correctness of the spec.";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("tier");
                    Name        = "tier";
                    Description = "Display commands for working with app tiers";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve an app tier";
                        },
                        [CommandParameter]@{
                            Keys        = @("instance-size");
                            Name        = "instance-size";
                            Description = "Display commands for working with app instance sizes";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("get");
                                    Name        = "get";
                                    Description = "Retrieve an app instance size";
                                },
                                [CommandParameter]@{
                                    Keys        = @("list");
                                    Name        = "list";
                                    Description = "List all app instance sizes";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List all app tiers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update an app";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Name``, ``DefaultIngress``, ``ActiveDeployment.ID``, ``InProgressDeployment.ID``, ``Created``, ``Updated``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--spec");
                            Name        = "Path to an app spec in JSON or YAML format. Set to `"-`" to read from stdin. (required)";
                            Description = "Path to an app spec in JSON or YAML format. Set to `"-`" to read from stdin. (required)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--wait");
                            Name        = "Boolean that specifies whether to wait for an app to complete before returning control to the terminal";
                            Description = "Boolean that specifies whether to wait for an app to complete before returning control to the terminal";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update-alert-destinations");
                    Name        = "update-alert-destinations";
                    Description = "Update alert destinations";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app-alert-destinations");
                            Name        = "Path to an alert destinations file in JSON or YAML format.";
                            Description = "Path to an alert destinations file in JSON or YAML format.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Rule``, ``Trigger``, ``ComponentName``, ``Emails``, ``SlackWebhooks``, ``Spec.Disabled``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Spec.Rule``, ``Trigger``, ``ComponentName``, ``Emails``, ``SlackWebhooks``, ``Spec.Disabled``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("auth");
            Name        = "auth";
            Description = "Display commands for authenticating doctl with an account";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("init");
                    Name        = "init";
                    Description = "Initialize doctl to use a specific account";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List available authentication contexts";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``text``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``text``";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "Remove authentication contexts ";
                },
                [CommandParameter]@{
                    Keys        = @("switch");
                    Name        = "switch";
                    Description = "Switches between authentication contexts";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("balance");
            Name        = "balance";
            Description = "Display commands for retrieving your account balance";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Retrieve your account balance";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``MonthToDateBalance``, ``AccountBalance``, ``MonthToDateUsage``, ``GeneratedAt``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``MonthToDateBalance``, ``AccountBalance``, ``MonthToDateUsage``, ``GeneratedAt``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("billing-history");
            Name        = "billing-history";
            Description = "Display commands for retrieving your billing history";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Retrieve a paginated billing history for a user";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``Date``, ``Type``, ``Description``, ``Amount``, ``InvoiceID``, ``InvoiceUUID``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``Date``, ``Type``, ``Description``, ``Amount``, ``InvoiceID``, ``InvoiceUUID``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Modify your shell so doctl commands autocomplete with TAB";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("bash");
                    Name        = "bash";
                    Description = "Generate completion code for bash";
                },
                [CommandParameter]@{
                    Keys        = @("fish");
                    Name        = "fish";
                    Description = "Generate completion code for fish";
                },
                [CommandParameter]@{
                    Keys        = @("zsh");
                    Name        = "zsh";
                    Description = "Generate completion code for zsh";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("compute");
            Name        = "compute";
            Description = "Display commands that manage infrastructure";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("action");
                    Name        = "action";
                    Description = "Display commands for retrieving resource action history";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve details about a specific action";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve a  list of all recent actions taken on your resources";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--action-type");
                                    Name        = "Action type";
                                    Description = "Action type";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--after");
                                    Name        = "Action completed after in RFC3339 format";
                                    Description = "Action completed after in RFC3339 format";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--before");
                                    Name        = "Action completed before in RFC3339 format";
                                    Description = "Action completed before in RFC3339 format";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Action region";
                                    Description = "Action region";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--resource-type");
                                    Name        = "Action resource type";
                                    Description = "Action resource type";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--status");
                                    Name        = "Action status";
                                    Description = "Action status";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("wait");
                            Name        = "wait";
                            Description = "Block thread until an action completes";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--poll-timeout");
                                    Name        = "Re-poll time in seconds";
                                    Description = "Re-poll time in seconds";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("cdn");
                    Name        = "cdn";
                    Description = "Display commands that manage CDNs";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a CDN";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--certificate-id");
                                    Name        = "Specify a Certificate ID for the custom domain";
                                    Description = "Specify a Certificate ID for the custom domain";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--domain");
                                    Name        = "Specify a custom domain to use with the CDN";
                                    Description = "Specify a custom domain to use with the CDN";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Origin``, ``Endpoint``, ``TTL``, ``CustomDomain``, ``CertificateID``, ``CreatedAt``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Origin``, ``Endpoint``, ``TTL``, ``CustomDomain``, ``CertificateID``, ``CreatedAt``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ttl");
                                    Name        = "The `"Time To Live`" (TTL) value for cached content, in seconds";
                                    Description = "The `"Time To Live`" (TTL) value for cached content, in seconds";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a CDN";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete the specified CDN without prompting for confirmation";
                                    Description = "Delete the specified CDN without prompting for confirmation";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("flush");
                            Name        = "flush";
                            Description = "Flush the cache of a CDN";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--files");
                                    Name        = "cdn files";
                                    Description = "cdn files";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve details about a specific CDN";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Origin``, ``Endpoint``, ``TTL``, ``CustomDomain``, ``CertificateID``, ``CreatedAt``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Origin``, ``Endpoint``, ``TTL``, ``CustomDomain``, ``CertificateID``, ``CreatedAt``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List CDNs that have already been created";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Origin``, ``Endpoint``, ``TTL``, ``CustomDomain``, ``CertificateID``, ``CreatedAt``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Origin``, ``Endpoint``, ``TTL``, ``CustomDomain``, ``CertificateID``, ``CreatedAt``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update the configuration for a CDN";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--certificate-id");
                                    Name        = "Specify a Certificate ID for the custom domain";
                                    Description = "Specify a Certificate ID for the custom domain";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--domain");
                                    Name        = "Specify a custom domain to use with the CDN";
                                    Description = "Specify a custom domain to use with the CDN";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Origin``, ``Endpoint``, ``TTL``, ``CustomDomain``, ``CertificateID``, ``CreatedAt``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Origin``, ``Endpoint``, ``TTL``, ``CustomDomain``, ``CertificateID``, ``CreatedAt``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ttl");
                                    Name        = "The `"Time To Live`" (TTL) value for cached content, in seconds";
                                    Description = "The `"Time To Live`" (TTL) value for cached content, in seconds";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("certificate");
                    Name        = "certificate";
                    Description = "Display commands that manage SSL certificates and private keys";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a new certificate";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--certificate-chain-path");
                                    Name        = "The path to a full PEM-formatted trust chain between the certificate authority's certificate and your domain's SSL certificate.";
                                    Description = "The path to a full PEM-formatted trust chain between the certificate authority's certificate and your domain's SSL certificate.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dns-names");
                                    Name        = "Comma-separated list of domains for which the certificate will be issued. The domains must be managed using DigitalOcean's DNS.";
                                    Description = "Comma-separated list of domains for which the certificate will be issued. The domains must be managed using DigitalOcean's DNS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--leaf-certificate-path");
                                    Name        = "The path to a PEM-formatted public SSL certificate.";
                                    Description = "The path to a PEM-formatted public SSL certificate.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "Certificate name (required)";
                                    Description = "Certificate name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--private-key-path");
                                    Name        = "The path to a PEM-formatted private-key corresponding to the SSL certificate.";
                                    Description = "The path to a PEM-formatted private-key corresponding to the SSL certificate.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--type");
                                    Name        = "Certificate type [custom|lets_encrypt]";
                                    Description = "Certificate type [custom|lets_encrypt]";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete the specified certificate";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete the certificate without a confirmation prompt";
                                    Description = "Delete the certificate without a confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve details about a certificate";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``DNSNames``, ``SHA1Fingerprint``, ``NotAfter``, ``Created``, ``Type``, ``State``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``DNSNames``, ``SHA1Fingerprint``, ``NotAfter``, ``Created``, ``Type``, ``State``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve list of the account's stored certificates";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``DNSNames``, ``SHA1Fingerprint``, ``NotAfter``, ``Created``, ``Type``, ``State``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``DNSNames``, ``SHA1Fingerprint``, ``NotAfter``, ``Created``, ``Type``, ``State``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("domain");
                    Name        = "domain";
                    Description = "Display commands that manage domains";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Add a domain to your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Domain``, ``TTL``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Domain``, ``TTL``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ip-address");
                                    Name        = "Creates an A record when an IPv4 address is provided";
                                    Description = "Creates an A record when an IPv4 address is provided";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Permanently delete a domain from your account";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete domain without confirmation prompt";
                                    Description = "Delete domain without confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about a domain";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Domain``, ``TTL``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Domain``, ``TTL``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List all domains on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Domain``, ``TTL``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Domain``, ``TTL``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("records");
                            Name        = "records";
                            Description = "Manage DNS records";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("create");
                                    Name        = "create";
                                    Description = "Create a DNS record";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--format");
                                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Type``, ``Name``, ``Data``, ``Priority``, ``Port``, ``TTL``, ``Weight``";
                                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Type``, ``Name``, ``Data``, ``Priority``, ``Port``, ``TTL``, ``Weight``";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--no-header");
                                            Name        = "Return raw data with no headers";
                                            Description = "Return raw data with no headers";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-data");
                                            Name        = "Record data; varies depending on record type";
                                            Description = "Record data; varies depending on record type";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-flags");
                                            Name        = "An unsigned integer between 0-255 used for CAA records";
                                            Description = "An unsigned integer between 0-255 used for CAA records";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-name");
                                            Name        = "The host name, alias, or service being defined by the record";
                                            Description = "The host name, alias, or service being defined by the record";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-port");
                                            Name        = "The port value for an SRV record";
                                            Description = "The port value for an SRV record";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-priority");
                                            Name        = "Record priority";
                                            Description = "Record priority";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-tag");
                                            Name        = "The parameter tag for CAA records. Valid values are ``issue``, ``issuewild``, or ``iodef``";
                                            Description = "The parameter tag for CAA records. Valid values are ``issue``, ``issuewild``, or ``iodef``";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-ttl");
                                            Name        = "The record's Time To Live value, in seconds";
                                            Description = "The record's Time To Live value, in seconds";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-type");
                                            Name        = "The type of DNS record";
                                            Description = "The type of DNS record";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-weight");
                                            Name        = "The weight value for an SRV record";
                                            Description = "The weight value for an SRV record";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("delete");
                                    Name        = "delete";
                                    Description = "Delete a DNS record";
                                    Parameters  = @(
                                        [FlagParameter]@{
                                            Keys        = @("--force", "-f");
                                            Name        = "Delete record without confirmation prompt";
                                            Description = "Delete record without confirmation prompt";
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("list");
                                    Name        = "list";
                                    Description = "List the DNS records for a domain";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--format");
                                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Type``, ``Name``, ``Data``, ``Priority``, ``Port``, ``TTL``, ``Weight``";
                                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Type``, ``Name``, ``Data``, ``Priority``, ``Port``, ``TTL``, ``Weight``";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--no-header");
                                            Name        = "Return raw data with no headers";
                                            Description = "Return raw data with no headers";
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("update");
                                    Name        = "update";
                                    Description = "Update a DNS record";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--format");
                                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Type``, ``Name``, ``Data``, ``Priority``, ``Port``, ``TTL``, ``Weight``";
                                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Type``, ``Name``, ``Data``, ``Priority``, ``Port``, ``TTL``, ``Weight``";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--no-header");
                                            Name        = "Return raw data with no headers";
                                            Description = "Return raw data with no headers";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-data");
                                            Name        = "Record data; varies depending on record type";
                                            Description = "Record data; varies depending on record type";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-flags");
                                            Name        = "An unsigned integer between 0-255 used for CAA records";
                                            Description = "An unsigned integer between 0-255 used for CAA records";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-id");
                                            Name        = "Record ID";
                                            Description = "Record ID";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-name");
                                            Name        = "The host name, alias, or service being defined by the record";
                                            Description = "The host name, alias, or service being defined by the record";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-port");
                                            Name        = "The port value for an SRV record";
                                            Description = "The port value for an SRV record";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-priority");
                                            Name        = "Record priority";
                                            Description = "Record priority";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-tag");
                                            Name        = "The parameter tag for CAA records. Valid values are ``issue``, ``issuewild``, or ``iodef``";
                                            Description = "The parameter tag for CAA records. Valid values are ``issue``, ``issuewild``, or ``iodef``";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-ttl");
                                            Name        = "The record's Time To Live value, in seconds";
                                            Description = "The record's Time To Live value, in seconds";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-type");
                                            Name        = "The type of DNS record";
                                            Description = "The type of DNS record";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--record-weight");
                                            Name        = "The weight value for an SRV record";
                                            Description = "The weight value for an SRV record";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("droplet");
                    Name        = "droplet";
                    Description = "Manage virtual machines (Droplets)";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("1-click");
                            Name        = "1-click";
                            Description = "Display commands that pertain to Droplet 1-click applications";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("list");
                                    Name        = "list";
                                    Description = "Retrieve a list of Droplet 1-Click applications";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--format");
                                            Name        = "Columns for output in a comma-separated list. Possible values: ``SLUG``, ``TYPE``";
                                            Description = "Columns for output in a comma-separated list. Possible values: ``SLUG``, ``TYPE``";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--no-header");
                                            Name        = "Return raw data with no headers";
                                            Description = "Return raw data with no headers";
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("actions");
                            Name        = "actions";
                            Description = "List Droplet actions";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("backups");
                            Name        = "backups";
                            Description = "List Droplet backups";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a new Droplet";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--droplet-agent");
                                    Name        = "By default, the agent is installed on new Droplets but installation errors are ignored. Set --droplet-agent=false to prevent installation. Set ``true`` to make installation errors fatal.";
                                    Description = "By default, the agent is installed on new Droplets but installation errors are ignored. Set --droplet-agent=false to prevent installation. Set ``true`` to make installation errors fatal.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enable-backups");
                                    Name        = "Enables backups for the Droplet";
                                    Description = "Enables backups for the Droplet";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enable-ipv6");
                                    Name        = "Enables IPv6 support and assigns an IPv6 address";
                                    Description = "Enables IPv6 support and assigns an IPv6 address";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enable-monitoring");
                                    Name        = "Install the DigitalOcean agent for additional monitoring";
                                    Description = "Install the DigitalOcean agent for additional monitoring";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enable-private-networking");
                                    Name        = "Enables private networking for the Droplet by provisioning it inside of your account's default VPC for the region";
                                    Description = "Enables private networking for the Droplet by provisioning it inside of your account's default VPC for the region";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``PublicIPv4``, ``PrivateIPv4``, ``PublicIPv6``, ``Memory``, ``VCPUs``, ``Disk``, ``Region``, ``Image``, ``VPCUUID``, ``Status``, ``Tags``, ``Features``, ``Volumes``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``PublicIPv4``, ``PrivateIPv4``, ``PublicIPv6``, ``Memory``, ``VCPUs``, ``Disk``, ``Region``, ``Image``, ``VPCUUID``, ``Status``, ``Tags``, ``Features``, ``Volumes``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--image");
                                    Name        = "An ID or slug indicating the image the Droplet will be based-on (e.g. ``ubuntu-20-04-x64``). Use the commands under ``doctl compute image`` to find additional images. (required)";
                                    Description = "An ID or slug indicating the image the Droplet will be based-on (e.g. ``ubuntu-20-04-x64``). Use the commands under ``doctl compute image`` to find additional images. (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "A slug indicating the region where the Droplet will be created (e.g. ``nyc1``). Run ``doctl compute region list`` for a list of valid regions. (required)";
                                    Description = "A slug indicating the region where the Droplet will be created (e.g. ``nyc1``). Run ``doctl compute region list`` for a list of valid regions. (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "A slug indicating the size of the Droplet (e.g. ``s-1vcpu-1gb``). Run ``doctl compute size list`` for a list of valid sizes. (required)";
                                    Description = "A slug indicating the size of the Droplet (e.g. ``s-1vcpu-1gb``). Run ``doctl compute size list`` for a list of valid sizes. (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ssh-keys");
                                    Name        = "A list of SSH key fingerprints or IDs of the SSH keys to embed in the Droplet's root account upon creation";
                                    Description = "A list of SSH key fingerprints or IDs of the SSH keys to embed in the Droplet's root account upon creation";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-name");
                                    Name        = "A tag name to be applied to the Droplet";
                                    Description = "A tag name to be applied to the Droplet";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-names");
                                    Name        = "A list of tag names to be applied to the Droplet";
                                    Description = "A list of tag names to be applied to the Droplet";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--user-data");
                                    Name        = "User-data to configure the Droplet on first boot";
                                    Description = "User-data to configure the Droplet on first boot";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--user-data-file");
                                    Name        = "The path to a file containing user-data to configure the Droplet on first boot";
                                    Description = "The path to a file containing user-data to configure the Droplet on first boot";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--volumes");
                                    Name        = "A list of block storage volume IDs to attach to the Droplet";
                                    Description = "A list of block storage volume IDs to attach to the Droplet";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--vpc-uuid");
                                    Name        = "The UUID of a non-default VPC to create the Droplet in";
                                    Description = "The UUID of a non-default VPC to create the Droplet in";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for Droplet creation to complete before returning";
                                    Description = "Wait for Droplet creation to complete before returning";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Permanently delete a Droplet";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete the Droplet without a confirmation prompt";
                                    Description = "Delete the Droplet without a confirmation prompt";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-name");
                                    Name        = "Tag name";
                                    Description = "Tag name";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``PublicIPv4``, ``PrivateIPv4``, ``PublicIPv6``, ``Memory``, ``VCPUs``, ``Disk``, ``Region``, ``Image``, ``VPCUUID``, ``Status``, ``Tags``, ``Features``, ``Volumes``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``PublicIPv4``, ``PrivateIPv4``, ``PublicIPv6``, ``Memory``, ``VCPUs``, ``Disk``, ``Region``, ``Image``, ``VPCUUID``, ``Status``, ``Tags``, ``Features``, ``Volumes``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--template");
                                    Name        = "Go template format. Sample values: ``{{.ID}}``, ``{{.Name}}``, ``{{.Memory}}``, ``{{.Region.Name}}``, ``{{.Image}}``, ``{{.Tags}}``";
                                    Description = "Go template format. Sample values: ``{{.ID}}``, ``{{.Name}}``, ``{{.Memory}}``, ``{{.Region.Name}}``, ``{{.Image}}``, ``{{.Tags}}``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("kernels");
                            Name        = "kernels";
                            Description = "List available Droplet kernels";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Version``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Version``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List Droplets on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``PublicIPv4``, ``PrivateIPv4``, ``PublicIPv6``, ``Memory``, ``VCPUs``, ``Disk``, ``Region``, ``Image``, ``VPCUUID``, ``Status``, ``Tags``, ``Features``, ``Volumes``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``PublicIPv4``, ``PrivateIPv4``, ``PublicIPv6``, ``Memory``, ``VCPUs``, ``Disk``, ``Region``, ``Image``, ``VPCUUID``, ``Status``, ``Tags``, ``Features``, ``Volumes``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Droplet region";
                                    Description = "Droplet region";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-name");
                                    Name        = "Tag name";
                                    Description = "Tag name";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("neighbors");
                            Name        = "neighbors";
                            Description = "List a Droplet's neighbors on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``PublicIPv4``, ``PrivateIPv4``, ``PublicIPv6``, ``Memory``, ``VCPUs``, ``Disk``, ``Region``, ``Image``, ``VPCUUID``, ``Status``, ``Tags``, ``Features``, ``Volumes``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``PublicIPv4``, ``PrivateIPv4``, ``PublicIPv6``, ``Memory``, ``VCPUs``, ``Disk``, ``Region``, ``Image``, ``VPCUUID``, ``Status``, ``Tags``, ``Features``, ``Volumes``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("snapshots");
                            Name        = "snapshots";
                            Description = "List all snapshots for a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("tag");
                            Name        = "tag";
                            Description = "Add a tag to a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--tag-name");
                                    Name        = "Tag name to use; can be a new or existing tag (required)";
                                    Description = "Tag name to use; can be a new or existing tag (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("untag");
                            Name        = "untag";
                            Description = "Remove a tag from a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--tag-name");
                                    Name        = "Tag name to remove from Droplet";
                                    Description = "Tag name to remove from Droplet";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("droplet-action");
                    Name        = "droplet-action";
                    Description = "Display Droplet action commands";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("change-kernel");
                            Name        = "change-kernel";
                            Description = "Change a Droplet's kernel";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kernel-id");
                                    Name        = "Kernel ID (required)";
                                    Description = "Kernel ID (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("disable-backups");
                            Name        = "disable-backups";
                            Description = "Disable backups on a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("enable-backups");
                            Name        = "enable-backups";
                            Description = "Enable backups on a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("enable-ipv6");
                            Name        = "enable-ipv6";
                            Description = "Enable IPv6 on a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("enable-private-networking");
                            Name        = "enable-private-networking";
                            Description = "Enable private networking on a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve a specific Droplet action";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--action-id");
                                    Name        = "Action ID (required)";
                                    Description = "Action ID (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("password-reset");
                            Name        = "password-reset";
                            Description = "Reset the root password for a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("power-cycle");
                            Name        = "power-cycle";
                            Description = "Powercycle a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("power-off");
                            Name        = "power-off";
                            Description = "Power off a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("power-on");
                            Name        = "power-on";
                            Description = "Power on a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("reboot");
                            Name        = "reboot";
                            Description = "Reboot a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("rebuild");
                            Name        = "rebuild";
                            Description = "Rebuild a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--image");
                                    Name        = "Image ID or Slug (required)";
                                    Description = "Image ID or Slug (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("rename");
                            Name        = "rename";
                            Description = "Rename a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--droplet-name");
                                    Name        = "Droplet name (required)";
                                    Description = "Droplet name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("resize");
                            Name        = "resize";
                            Description = "Resize a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--resize-disk");
                                    Name        = "Resize the Droplet's disk size in addition to its RAM and CPU.";
                                    Description = "Resize the Droplet's disk size in addition to its RAM and CPU.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "A slug indicating the new size for the Droplet (e.g. ``s-2vcpu-2gb``). Run ``doctl compute size list`` for a list of valid sizes. (required)";
                                    Description = "A slug indicating the new size for the Droplet (e.g. ``s-2vcpu-2gb``). Run ``doctl compute size list`` for a list of valid sizes. (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("restore");
                            Name        = "restore";
                            Description = "Restore a Droplet from a backup";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--image-id");
                                    Name        = "Image ID (required)";
                                    Description = "Image ID (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("shutdown");
                            Name        = "shutdown";
                            Description = "Shut down a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("snapshot");
                            Name        = "snapshot";
                            Description = "Take a Droplet snapshot";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--snapshot-name");
                                    Name        = "Snapshot name (required)";
                                    Description = "Snapshot name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("firewall");
                    Name        = "firewall";
                    Description = "Display commands to manage cloud firewalls";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("add-droplets");
                            Name        = "add-droplets";
                            Description = "Add Droplets to a cloud firewall";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--droplet-ids");
                                    Name        = "A comma-separated list of Droplet IDs to place behind the cloud firewall, e.g.: ``123,456``";
                                    Description = "A comma-separated list of Droplet IDs to place behind the cloud firewall, e.g.: ``123,456``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("add-rules");
                            Name        = "add-rules";
                            Description = "Add inbound or outbound rules to a cloud firewall";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--inbound-rules");
                                    Name        = "A comma-separated key-value list that defines an inbound rule, e.g.: ``protocol:tcp,ports:22,droplet_id:123``. Use a quoted string of space-separated values for multiple rules.";
                                    Description = "A comma-separated key-value list that defines an inbound rule, e.g.: ``protocol:tcp,ports:22,droplet_id:123``. Use a quoted string of space-separated values for multiple rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--outbound-rules");
                                    Name        = "A comma-separate key-value list the defines an outbound rule, e.g.: ``protocol:tcp,ports:22,address:0.0.0.0/0``. Use a quoted string of space-separated values for multiple rules.";
                                    Description = "A comma-separate key-value list the defines an outbound rule, e.g.: ``protocol:tcp,ports:22,address:0.0.0.0/0``. Use a quoted string of space-separated values for multiple rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("add-tags");
                            Name        = "add-tags";
                            Description = "Add tags to a cloud firewall";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--tag-names");
                                    Name        = "A comma-separated list of tag names to apply to the cloud firewall, e.g.: ``frontend,backend``";
                                    Description = "A comma-separated list of tag names to apply to the cloud firewall, e.g.: ``frontend,backend``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a new cloud firewall";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--droplet-ids");
                                    Name        = "A comma-separated list of Droplet IDs to place behind the cloud firewall, e.g.: ``123,456``";
                                    Description = "A comma-separated list of Droplet IDs to place behind the cloud firewall, e.g.: ``123,456``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--inbound-rules");
                                    Name        = "A comma-separated key-value list that defines an inbound rule, e.g.: ``protocol:tcp,ports:22,droplet_id:123``. Use a quoted string of space-separated values for multiple rules.";
                                    Description = "A comma-separated key-value list that defines an inbound rule, e.g.: ``protocol:tcp,ports:22,droplet_id:123``. Use a quoted string of space-separated values for multiple rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "Firewall name (required)";
                                    Description = "Firewall name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--outbound-rules");
                                    Name        = "A comma-separate key-value list the defines an outbound rule, e.g.: ``protocol:tcp,ports:22,address:0.0.0.0/0``. Use a quoted string of space-separated values for multiple rules.";
                                    Description = "A comma-separate key-value list the defines an outbound rule, e.g.: ``protocol:tcp,ports:22,address:0.0.0.0/0``. Use a quoted string of space-separated values for multiple rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-names");
                                    Name        = "A comma-separated list of tag names to apply to the cloud firewall, e.g.: ``frontend,backend``";
                                    Description = "A comma-separated list of tag names to apply to the cloud firewall, e.g.: ``frontend,backend``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Permanently delete a cloud firewall";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete firewall without confirmation prompt";
                                    Description = "Delete firewall without confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about a cloud firewall";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List the cloud firewalls on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list-by-droplet");
                            Name        = "list-by-droplet";
                            Description = "List firewalls by Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("remove-droplets");
                            Name        = "remove-droplets";
                            Description = "Remove Droplets from a cloud firewall";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--droplet-ids");
                                    Name        = "A comma-separated list of Droplet IDs to place behind the cloud firewall, e.g.: ``123,456``";
                                    Description = "A comma-separated list of Droplet IDs to place behind the cloud firewall, e.g.: ``123,456``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("remove-rules");
                            Name        = "remove-rules";
                            Description = "Remove inbound or outbound rules from a cloud firewall";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--inbound-rules");
                                    Name        = "A comma-separated key-value list that defines an inbound rule, e.g.: ``protocol:tcp,ports:22,droplet_id:123``. Use a quoted string of space-separated values for multiple rules.";
                                    Description = "A comma-separated key-value list that defines an inbound rule, e.g.: ``protocol:tcp,ports:22,droplet_id:123``. Use a quoted string of space-separated values for multiple rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--outbound-rules");
                                    Name        = "A comma-separate key-value list the defines an outbound rule, e.g.: ``protocol:tcp,ports:22,address:0.0.0.0/0``. Use a quoted string of space-separated values for multiple rules.";
                                    Description = "A comma-separate key-value list the defines an outbound rule, e.g.: ``protocol:tcp,ports:22,address:0.0.0.0/0``. Use a quoted string of space-separated values for multiple rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("remove-tags");
                            Name        = "remove-tags";
                            Description = "Remove tags from a cloud firewall";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--tag-names");
                                    Name        = "A comma-separated list of tag names to apply to the cloud firewall, e.g.: ``frontend,backend``";
                                    Description = "A comma-separated list of tag names to apply to the cloud firewall, e.g.: ``frontend,backend``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update a cloud firewall's configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--droplet-ids");
                                    Name        = "A comma-separated list of Droplet IDs to place behind the cloud firewall, e.g.: ``123,456``";
                                    Description = "A comma-separated list of Droplet IDs to place behind the cloud firewall, e.g.: ``123,456``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Status``, ``Created``, ``InboundRules``, ``OutboundRules``, ``DropletIDs``, ``Tags``, ``PendingChanges``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--inbound-rules");
                                    Name        = "A comma-separated key-value list that defines an inbound rule, e.g.: ``protocol:tcp,ports:22,droplet_id:123``. Use a quoted string of space-separated values for multiple rules.";
                                    Description = "A comma-separated key-value list that defines an inbound rule, e.g.: ``protocol:tcp,ports:22,droplet_id:123``. Use a quoted string of space-separated values for multiple rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "Firewall name (required)";
                                    Description = "Firewall name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--outbound-rules");
                                    Name        = "A comma-separate key-value list the defines an outbound rule, e.g.: ``protocol:tcp,ports:22,address:0.0.0.0/0``. Use a quoted string of space-separated values for multiple rules.";
                                    Description = "A comma-separate key-value list the defines an outbound rule, e.g.: ``protocol:tcp,ports:22,address:0.0.0.0/0``. Use a quoted string of space-separated values for multiple rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-names");
                                    Name        = "A comma-separated list of tag names to apply to the cloud firewall, e.g.: ``frontend,backend``";
                                    Description = "A comma-separated list of tag names to apply to the cloud firewall, e.g.: ``frontend,backend``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("floating-ip");
                    Name        = "floating-ip";
                    Description = "Display commands to manage floating IP addresses";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a new floating IP address";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--droplet-id");
                                    Name        = "The ID of the Droplet to assign the floating IP to (mutually exclusive with ``--region``).";
                                    Description = "The ID of the Droplet to assign the floating IP to (mutually exclusive with ``--region``).";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``IP``, ``Region``, ``DropletID``, ``DropletName``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``IP``, ``Region``, ``DropletID``, ``DropletName``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Region where to create the floating IP address. (mutually exclusive with ``--droplet-id``)";
                                    Description = "Region where to create the floating IP address. (mutually exclusive with ``--droplet-id``)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Permanently delete a floating IP address";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Force floating IP delete";
                                    Description = "Force floating IP delete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about a floating IP address";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``IP``, ``Region``, ``DropletID``, ``DropletName``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``IP``, ``Region``, ``DropletID``, ``DropletName``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List all floating IP addresses on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``IP``, ``Region``, ``DropletID``, ``DropletName``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``IP``, ``Region``, ``DropletID``, ``DropletName``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "The region the floating IP address resides in";
                                    Description = "The region the floating IP address resides in";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("floating-ip-action");
                    Name        = "floating-ip-action";
                    Description = "Display commands to associate floating IP addresses with Droplets";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("assign");
                            Name        = "assign";
                            Description = "Assign a floating IP address to a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve the status of a floating IP action";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("unassign");
                            Name        = "unassign";
                            Description = "Unassign a floating IP address from a Droplet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("image");
                    Name        = "image";
                    Description = "Display commands to manage images";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create custom image";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--image-description");
                                    Name        = "Description of image";
                                    Description = "Description of image";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--image-distribution");
                                    Name        = "Custom image distribution";
                                    Description = "Custom image distribution";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--image-url");
                                    Name        = "Custom image retrieval URL (required)";
                                    Description = "Custom image retrieval URL (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Region slug identifier (required)";
                                    Description = "Region slug identifier (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-names");
                                    Name        = "List of tags applied to image";
                                    Description = "List of tags applied to image";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Permanently delete an image from your account";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Force image delete";
                                    Description = "Force image delete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about an image";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List images on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--public");
                                    Name        = "List public images";
                                    Description = "List public images";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list-application");
                            Name        = "list-application";
                            Description = "List available One-Click Apps";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--public");
                                    Name        = "List public images";
                                    Description = "List public images";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list-distribution");
                            Name        = "list-distribution";
                            Description = "List available distribution images";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--public");
                                    Name        = "List public images";
                                    Description = "List public images";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list-user");
                            Name        = "list-user";
                            Description = "List user-created images";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--public");
                                    Name        = "List public images";
                                    Description = "List public images";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update an image's metadata";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Type``, ``Distribution``, ``Slug``, ``Public``, ``MinDisk``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--image-name");
                                    Name        = "Image name (required)";
                                    Description = "Image name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("image-action");
                    Name        = "image-action";
                    Description = "Display commands to perform actions on images";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve the status of an image action";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--action-id");
                                    Name        = "action id (required)";
                                    Description = "action id (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("transfer");
                            Name        = "transfer";
                            Description = "Transfer an image to another datacenter region";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "region (required)";
                                    Description = "region (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for action to complete";
                                    Description = "Wait for action to complete";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("load-balancer");
                    Name        = "load-balancer";
                    Description = "Display commands to manage load balancers";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("add-droplets");
                            Name        = "add-droplets";
                            Description = "Add Droplets to a load balancer";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--droplet-ids");
                                    Name        = "A comma-separated list of IDs of Droplet to add to the load balancer, example value: ``12,33``";
                                    Description = "A comma-separated list of IDs of Droplet to add to the load balancer, example value: ``12,33``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("add-forwarding-rules");
                            Name        = "add-forwarding-rules";
                            Description = "Add forwarding rules to a load balancer";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--forwarding-rules");
                                    Name        = "A comma-separated list of key-value pairs representing forwarding rules, which define how traffic is routed, e.g.: ``entry_protocol:tcp,entry_port:3306,target_protocol:tcp,target_port:3306``.";
                                    Description = "A comma-separated list of key-value pairs representing forwarding rules, which define how traffic is routed, e.g.: ``entry_protocol:tcp,entry_port:3306,target_protocol:tcp,target_port:3306``.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a new load balancer";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--algorithm");
                                    Name        = "The algorithm to use when traffic is distributed across your Droplets; possible values: ``round_robin`` or ``least_connections``";
                                    Description = "The algorithm to use when traffic is distributed across your Droplets; possible values: ``round_robin`` or ``least_connections``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--disable-lets-encrypt-dns-records");
                                    Name        = "disable automatic DNS record creation for Let's Encrypt certificates that are added to the load balancer";
                                    Description = "disable automatic DNS record creation for Let's Encrypt certificates that are added to the load balancer";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--droplet-ids");
                                    Name        = "A comma-separated list of Droplet IDs to add to the load balancer, e.g.: ``12,33``";
                                    Description = "A comma-separated list of Droplet IDs to add to the load balancer, e.g.: ``12,33``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enable-backend-keepalive");
                                    Name        = "enable keepalive connections to backend target droplets";
                                    Description = "enable keepalive connections to backend target droplets";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enable-proxy-protocol");
                                    Name        = "enable proxy protocol";
                                    Description = "enable proxy protocol";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--forwarding-rules");
                                    Name        = "A comma-separated list of key-value pairs representing forwarding rules, which define how traffic is routed, e.g.: ``entry_protocol:tcp,entry_port:3306,target_protocol:tcp,target_port:3306``.";
                                    Description = "A comma-separated list of key-value pairs representing forwarding rules, which define how traffic is routed, e.g.: ``entry_protocol:tcp,entry_port:3306,target_protocol:tcp,target_port:3306``.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--health-check");
                                    Name        = "A comma-separated list of key-value pairs representing recent health check results, e.g.: ``protocol:http,port:80,path:/index.html,check_interval_seconds:10,response_timeout_seconds:5,healthy_threshold:5,unhealthy_threshold:3``";
                                    Description = "A comma-separated list of key-value pairs representing recent health check results, e.g.: ``protocol:http,port:80,path:/index.html,check_interval_seconds:10,response_timeout_seconds:5,healthy_threshold:5,unhealthy_threshold:3``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The load balancer's name (required)";
                                    Description = "The load balancer's name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--redirect-http-to-https");
                                    Name        = "Redirects HTTP requests to the load balancer on port 80 to HTTPS on port 443";
                                    Description = "Redirects HTTP requests to the load balancer on port 80 to HTTPS on port 443";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "The load balancer's region, e.g.: ``nyc1`` (required)";
                                    Description = "The load balancer's region, e.g.: ``nyc1`` (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "The load balancer's size, e.g.: ``lb-small``. Only one of size and size-unit should be used";
                                    Description = "The load balancer's size, e.g.: ``lb-small``. Only one of size and size-unit should be used";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size-unit");
                                    Name        = "The load balancer's size, e.g.: 1. Only one of size-unit and size should be used";
                                    Description = "The load balancer's size, e.g.: 1. Only one of size-unit and size should be used";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--sticky-sessions");
                                    Name        = "A comma-separated list of key-value pairs representing a list of active sessions, e.g.: ``type:cookies, cookie_name:DO-LB, cookie_ttl_seconds:5``";
                                    Description = "A comma-separated list of key-value pairs representing a list of active sessions, e.g.: ``type:cookies, cookie_name:DO-LB, cookie_ttl_seconds:5``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-name");
                                    Name        = "droplet tag name";
                                    Description = "droplet tag name";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--vpc-uuid");
                                    Name        = "The UUID of the VPC to create the load balancer in";
                                    Description = "The UUID of the VPC to create the load balancer in";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Permanently delete a load balancer";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete the load balancer without a confirmation prompt";
                                    Description = "Delete the load balancer without a confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve a load balancer";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``IP``, ``Name``, ``Status``, ``Created``, ``Algorithm``, ``Region``, ``Size``, ``SizeUnit``, ``VPCUUID``, ``Tag``, ``DropletIDs``, ``RedirectHttpToHttps``, ``StickySessions``, ``HealthCheck``, ``ForwardingRules``, ``DisableLetsEncryptDNSRecords``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``IP``, ``Name``, ``Status``, ``Created``, ``Algorithm``, ``Region``, ``Size``, ``SizeUnit``, ``VPCUUID``, ``Tag``, ``DropletIDs``, ``RedirectHttpToHttps``, ``StickySessions``, ``HealthCheck``, ``ForwardingRules``, ``DisableLetsEncryptDNSRecords``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List load balancers";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``IP``, ``Name``, ``Status``, ``Created``, ``Algorithm``, ``Region``, ``Size``, ``SizeUnit``, ``VPCUUID``, ``Tag``, ``DropletIDs``, ``RedirectHttpToHttps``, ``StickySessions``, ``HealthCheck``, ``ForwardingRules``, ``DisableLetsEncryptDNSRecords``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``IP``, ``Name``, ``Status``, ``Created``, ``Algorithm``, ``Region``, ``Size``, ``SizeUnit``, ``VPCUUID``, ``Tag``, ``DropletIDs``, ``RedirectHttpToHttps``, ``StickySessions``, ``HealthCheck``, ``ForwardingRules``, ``DisableLetsEncryptDNSRecords``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("remove-droplets");
                            Name        = "remove-droplets";
                            Description = "Remove Droplets from a load balancer";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--droplet-ids");
                                    Name        = "A comma-separated list of IDs of Droplets to remove from the load balancer, example value: ``12,33``";
                                    Description = "A comma-separated list of IDs of Droplets to remove from the load balancer, example value: ``12,33``";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("remove-forwarding-rules");
                            Name        = "remove-forwarding-rules";
                            Description = "Remove forwarding rules from a load balancer";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--forwarding-rules");
                                    Name        = "A comma-separated list of key-value pairs representing forwarding rules, which define how traffic is routed, e.g.: ``entry_protocol:tcp,entry_port:3306,target_protocol:tcp,target_port:3306``.";
                                    Description = "A comma-separated list of key-value pairs representing forwarding rules, which define how traffic is routed, e.g.: ``entry_protocol:tcp,entry_port:3306,target_protocol:tcp,target_port:3306``.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update a load balancer's configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--algorithm");
                                    Name        = "The algorithm to use when traffic is distributed across your Droplets; possible values: ``round_robin`` or ``least_connections``";
                                    Description = "The algorithm to use when traffic is distributed across your Droplets; possible values: ``round_robin`` or ``least_connections``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--disable-lets-encrypt-dns-records");
                                    Name        = "disable automatic DNS record creation for Let's Encrypt certificates that are added to the load balancer";
                                    Description = "disable automatic DNS record creation for Let's Encrypt certificates that are added to the load balancer";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--droplet-ids");
                                    Name        = "A comma-separated list of Droplet IDs, e.g.: ``215,378``";
                                    Description = "A comma-separated list of Droplet IDs, e.g.: ``215,378``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enable-backend-keepalive");
                                    Name        = "enable keepalive connections to backend target droplets";
                                    Description = "enable keepalive connections to backend target droplets";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enable-proxy-protocol");
                                    Name        = "enable proxy protocol";
                                    Description = "enable proxy protocol";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--forwarding-rules");
                                    Name        = "A comma-separated list of key-value pairs representing forwarding rules, which define how traffic is routed, e.g.: ``entry_protocol:tcp,entry_port:3306,target_protocol:tcp,target_port:3306``.";
                                    Description = "A comma-separated list of key-value pairs representing forwarding rules, which define how traffic is routed, e.g.: ``entry_protocol:tcp,entry_port:3306,target_protocol:tcp,target_port:3306``.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--health-check");
                                    Name        = "A comma-separated list of key-value pairs representing recent health check results, e.g.: ``protocol:http, port:80, path:/index.html, check_interval_seconds:10, response_timeout_seconds:5, healthy_threshold:5, unhealthy_threshold:3``";
                                    Description = "A comma-separated list of key-value pairs representing recent health check results, e.g.: ``protocol:http, port:80, path:/index.html, check_interval_seconds:10, response_timeout_seconds:5, healthy_threshold:5, unhealthy_threshold:3``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The load balancer's name (required)";
                                    Description = "The load balancer's name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--redirect-http-to-https");
                                    Name        = "Flag to redirect HTTP requests to the load balancer on port 80 to HTTPS on port 443";
                                    Description = "Flag to redirect HTTP requests to the load balancer on port 80 to HTTPS on port 443";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "The load balancer's region, e.g.: ``nyc1`` (required)";
                                    Description = "The load balancer's region, e.g.: ``nyc1`` (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "The load balancer's size, e.g.: ``lb-small``. Only one of size and size-unit should be used";
                                    Description = "The load balancer's size, e.g.: ``lb-small``. Only one of size and size-unit should be used";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size-unit");
                                    Name        = "The load balancer's size, e.g.: 1. Only one of size-unit and size should be used";
                                    Description = "The load balancer's size, e.g.: 1. Only one of size-unit and size should be used";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--sticky-sessions");
                                    Name        = "A comma-separated list of key-value pairs representing a list of active sessions, e.g.: ``type:cookies, cookie_name:DO-LB, cookie_ttl_seconds:5``";
                                    Description = "A comma-separated list of key-value pairs representing a list of active sessions, e.g.: ``type:cookies, cookie_name:DO-LB, cookie_ttl_seconds:5``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag-name");
                                    Name        = "Assigns Droplets with the specified tag to the load balancer";
                                    Description = "Assigns Droplets with the specified tag to the load balancer";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--vpc-uuid");
                                    Name        = "The UUID of the VPC to create the load balancer in";
                                    Description = "The UUID of the VPC to create the load balancer in";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("region");
                    Name        = "region";
                    Description = "Display commands to list datacenter regions";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List datacenter regions";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Slug``, ``Name``, ``Available``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Slug``, ``Name``, ``Available``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("size");
                    Name        = "size";
                    Description = "List available Droplet sizes";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List available Droplet sizes";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Slug``, ``Memory``, ``VCPUs``, ``Disk``, ``PriceMonthly``, ``PriceHourly``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Slug``, ``Memory``, ``VCPUs``, ``Disk``, ``PriceMonthly``, ``PriceHourly``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("snapshot");
                    Name        = "snapshot";
                    Description = "Access and manage snapshots";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a snapshot of a Droplet or volume";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete the snapshot without confirmation";
                                    Description = "Delete the snapshot without confirmation";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``CreatedAt``, ``Regions``, ``ResourceId``, ``ResourceType``, ``MinDiskSize``, ``Size``, ``Tags``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``CreatedAt``, ``Regions``, ``ResourceId``, ``ResourceType``, ``MinDiskSize``, ``Size``, ``Tags``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve a Droplet or volume snapshot";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``CreatedAt``, ``Regions``, ``ResourceId``, ``ResourceType``, ``MinDiskSize``, ``Size``, ``Tags``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``CreatedAt``, ``Regions``, ``ResourceId``, ``ResourceType``, ``MinDiskSize``, ``Size``, ``Tags``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List Droplet and volume snapshots";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``CreatedAt``, ``Regions``, ``ResourceId``, ``ResourceType``, ``MinDiskSize``, ``Size``, ``Tags``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``CreatedAt``, ``Regions``, ``ResourceId``, ``ResourceType``, ``MinDiskSize``, ``Size``, ``Tags``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Filter by regional availability";
                                    Description = "Filter by regional availability";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--resource");
                                    Name        = "Filter by resource type (``droplet`` or ``volume``)";
                                    Description = "Filter by resource type (``droplet`` or ``volume``)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ssh");
                    Name        = "ssh";
                    Description = "Access a Droplet using SSH";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--ssh-agent-forwarding");
                            Name        = "Enable SSH agent forwarding";
                            Description = "Enable SSH agent forwarding";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ssh-command");
                            Name        = "Command to execute on Droplet";
                            Description = "Command to execute on Droplet";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ssh-key-path");
                            Name        = "Path to SSH private key";
                            Description = "Path to SSH private key";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ssh-port");
                            Name        = "The remote port sshd is running on";
                            Description = "The remote port sshd is running on";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--ssh-private-ip");
                            Name        = "SSH to Droplet's private IP address";
                            Description = "SSH to Droplet's private IP address";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ssh-user");
                            Name        = "SSH user for connection";
                            Description = "SSH user for connection";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ssh-key");
                    Name        = "ssh-key";
                    Description = "Display commands to manage SSH keys on your account";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a new SSH key on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--public-key");
                                    Name        = "Key contents (required)";
                                    Description = "Key contents (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Permanently delete an SSH key from your account";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete the key without a confirmation prompt";
                                    Description = "Delete the key without a confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about an SSH key on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("import");
                            Name        = "import";
                            Description = "Import an SSH key from your computer to your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--public-key-file");
                                    Name        = "Public key file (required)";
                                    Description = "Public key file (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List all SSH keys on your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update an SSH key's name";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``FingerPrint``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--key-name");
                                    Name        = "Key name (required)";
                                    Description = "Key name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("tag");
                    Name        = "tag";
                    Description = "Display commands to manage tags";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a tag";
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a tag";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete tag without confirmation prompt";
                                    Description = "Delete tag without confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about a tag";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``, ``DropletCount``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``, ``DropletCount``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List all tags";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``, ``DropletCount``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``, ``DropletCount``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("volume");
                    Name        = "volume";
                    Description = "Display commands to manage block storage volumes";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a block storage volume";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--desc");
                                    Name        = "Volume description";
                                    Description = "Volume description";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Region``, ``Filesystem Type``, ``Filesystem Label``, ``DropletIDs``, ``Tags``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Region``, ``Filesystem Type``, ``Filesystem Label``, ``DropletIDs``, ``Tags``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--fs-label");
                                    Name        = "Volume filesystem label";
                                    Description = "Volume filesystem label";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--fs-type");
                                    Name        = "Volume filesystem type (ext4 or xfs)";
                                    Description = "Volume filesystem type (ext4 or xfs)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Volume region; should not be specified with a snapshot";
                                    Description = "Volume region; should not be specified with a snapshot";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "Volume size (required)";
                                    Description = "Volume size (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--snapshot");
                                    Name        = "Volume snapshot; should not be specified with a region";
                                    Description = "Volume snapshot; should not be specified with a region";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag");
                                    Name        = "Tags to apply to the volume; comma separate or repeat ``--tag`` to add multiple tags at once";
                                    Description = "Tags to apply to the volume; comma separate or repeat ``--tag`` to add multiple tags at once";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a block storage volume";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Force volume delete";
                                    Description = "Force volume delete";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve an existing block storage volume";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Region``, ``Filesystem Type``, ``Filesystem Label``, ``DropletIDs``, ``Tags``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Region``, ``Filesystem Type``, ``Filesystem Label``, ``DropletIDs``, ``Tags``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List block storage volumes by ID";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Region``, ``Filesystem Type``, ``Filesystem Label``, ``DropletIDs``, ``Tags``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Region``, ``Filesystem Type``, ``Filesystem Label``, ``DropletIDs``, ``Tags``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Volume region";
                                    Description = "Volume region";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("snapshot");
                            Name        = "snapshot";
                            Description = "Create a block storage volume snapshot";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Region``, ``Filesystem Type``, ``Filesystem Label``, ``DropletIDs``, ``Tags``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Region``, ``Filesystem Type``, ``Filesystem Label``, ``DropletIDs``, ``Tags``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--snapshot-desc");
                                    Name        = "Snapshot description";
                                    Description = "Snapshot description";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--snapshot-name");
                                    Name        = "Snapshot name (required)";
                                    Description = "Snapshot name (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag");
                                    Name        = "Tags to apply to the snapshot; comma separate or repeat ``--tag`` to add multiple tags at once";
                                    Description = "Tags to apply to the snapshot; comma separate or repeat ``--tag`` to add multiple tags at once";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("volume-action");
                    Name        = "volume-action";
                    Description = "Display commands to perform actions on a volume";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("attach");
                            Name        = "attach";
                            Description = "Attach a volume to a Droplet";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for volume to attach";
                                    Description = "Wait for volume to attach";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("detach");
                            Name        = "detach";
                            Description = "Detach a volume from a Droplet";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for volume to detach";
                                    Description = "Wait for volume to detach";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("detach-by-droplet-id");
                            Name        = "detach-by-droplet-id";
                            Description = "(Deprecated) Detach a volume. Use ``detach`` instead.";
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve the status of a volume action";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--action-id");
                                    Name        = "action id (required)";
                                    Description = "action id (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve a list of actions taken on a volume";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Status``, ``Type``, ``StartedAt``, ``CompletedAt``, ``ResourceID``, ``ResourceType``, ``Region``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("resize");
                            Name        = "resize";
                            Description = "Resize the disk of a volume";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Volume region (required)";
                                    Description = "Volume region (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "New size in GiB (required)";
                                    Description = "New size in GiB (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Wait for volume to resize";
                                    Description = "Wait for volume to resize";
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("databases");
            Name        = "databases";
            Description = "Display commands that manage databases";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("backups");
                    Name        = "backups";
                    Description = "List database cluster backups";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``Size``, ``Created``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``Size``, ``Created``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("connection");
                    Name        = "connection";
                    Description = "Retrieve connection details for a database cluster";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``URI``, ``Database``, ``Host``, ``Port``, ``User``, ``Password``, ``SSL``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``URI``, ``Database``, ``Host``, ``Port``, ``User``, ``Password``, ``SSL``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a database cluster";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--engine");
                            Name        = "The database engine to be used for the cluster. Possible values are: ``pg`` for PostgreSQL, ``mysql``, and ``redis``.";
                            Description = "The database engine to be used for the cluster. Possible values are: ``pg`` for PostgreSQL, ``mysql``, and ``redis``.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--num-nodes");
                            Name        = "The number of nodes in the database cluster. Valid values are are 1-3. In addition to the primary node, up to two standby nodes may be added for high availability.";
                            Description = "The number of nodes in the database cluster. Valid values are are 1-3. In addition to the primary node, up to two standby nodes may be added for high availability.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--private-network-uuid");
                            Name        = "The UUID of a VPC to create the database cluster in; the default VPC for the region will be used if excluded";
                            Description = "The UUID of a VPC to create the database cluster in; the default VPC for the region will be used if excluded";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--region");
                            Name        = "The region where the database cluster will be created, e.g. ``nyc1`` or ``sfo2``";
                            Description = "The region where the database cluster will be created, e.g. ``nyc1`` or ``sfo2``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--size");
                            Name        = "The size of the nodes in the database cluster, e.g. ``db-s-1vcpu-1gb```` for a 1 CPU, 1GB node";
                            Description = "The size of the nodes in the database cluster, e.g. ``db-s-1vcpu-1gb```` for a 1 CPU, 1GB node";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "The database engine version, e.g. 11 for PostgreSQL version 11";
                            Description = "The database engine version, e.g. 11 for PostgreSQL version 11";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("db");
                    Name        = "db";
                    Description = "Display commands for managing individual databases within a cluster";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a database within a cluster";
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete the specified database from the cluster";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete the database without a confirmation prompt";
                                    Description = "Delete the database without a confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve the name of a database within a cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve a list of databases within a cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a database cluster";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Delete the database cluster without a confirmation prompt";
                            Description = "Delete the database cluster without a confirmation prompt";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("firewalls");
                    Name        = "firewalls";
                    Description = "Display commands to manage firewall rules (called``trusted sources`` in the control panel) for database clusters";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("append");
                            Name        = "append";
                            Description = "Add a database firewall rule to a given database";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--rule");
                                    Name        = " (required)";
                                    Description = " (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve a list of firewall rules for a given database";
                        },
                        [CommandParameter]@{
                            Keys        = @("remove");
                            Name        = "remove";
                            Description = "Remove a firewall rule for a given database";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--uuid");
                                    Name        = " (required)";
                                    Description = " (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("replace");
                            Name        = "replace";
                            Description = "Replaces the firewall rules for a given database. The rules passed in to the --rules flag will replace the firewall rules previously assigned to the database,";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--rule");
                                    Name        = "A comma-separated list of firewall rules of format type:value, e.g.: ``type:value`` (required)";
                                    Description = "A comma-separated list of firewall rules of format type:value, e.g.: ``type:value`` (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Get details for a database cluster";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Engine``, ``Version``, ``NumNodes``, ``Region``, ``Status``, ``Size``, ``URI``, ``Created``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Engine``, ``Version``, ``NumNodes``, ``Region``, ``Status``, ``Size``, ``URI``, ``Created``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List your database clusters";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Engine``, ``Version``, ``NumNodes``, ``Region``, ``Status``, ``Size``, ``URI``, ``Created``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Engine``, ``Version``, ``NumNodes``, ``Region``, ``Status``, ``Size``, ``URI``, ``Created``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("maintenance-window");
                    Name        = "maintenance-window";
                    Description = "Display commands for scheduling automatic maintenance on your database cluster";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve details about a database cluster's maintenance windows";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Day``, ``Hour``, ``Pending``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Day``, ``Hour``, ``Pending``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update the maintenance window for a database cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--day");
                                    Name        = "The day of the week the maintenance window occurs (e.g. 'tuesday') (required)";
                                    Description = "The day of the week the maintenance window occurs (e.g. 'tuesday') (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--hour");
                                    Name        = "The hour in UTC when maintenance updates will be applied, in 24 hour format (e.g. '16:00') (required)";
                                    Description = "The hour in UTC when maintenance updates will be applied, in 24 hour format (e.g. '16:00') (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("migrate");
                    Name        = "migrate";
                    Description = "Migrate a database cluster to a new region";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--private-network-uuid");
                            Name        = "The UUID of a VPC to create the database cluster in; the default VPC for the region will be used if excluded";
                            Description = "The UUID of a VPC to create the database cluster in; the default VPC for the region will be used if excluded";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--region");
                            Name        = "The region to which the database cluster should be migrated, e.g. ``sfo2`` or ``nyc3``. (required)";
                            Description = "The region to which the database cluster should be migrated, e.g. ``sfo2`` or ``nyc3``. (required)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pool");
                    Name        = "pool";
                    Description = "Display commands for managing connection pools";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a connection pool for a database";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--db");
                                    Name        = "The name of the specific database within the database cluster (required)";
                                    Description = "The name of the specific database within the database cluster (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--mode");
                                    Name        = "The pool mode for the connection pool, e.g. ``session``, ``transaction``, and ``statement``";
                                    Description = "The pool mode for the connection pool, e.g. ``session``, ``transaction``, and ``statement``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "pool size (required)";
                                    Description = "pool size (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--user");
                                    Name        = "The username for the database user (required)";
                                    Description = "The username for the database user (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a connection pool for a database";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete connection pool without confirmation prompt";
                                    Description = "Delete connection pool without confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about a database connection pool";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``User``, ``Name``, ``Size``, ``Database``, ``Mode``, ``URI``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``User``, ``Name``, ``Size``, ``Database``, ``Mode``, ``URI``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List connection pools for a database cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``User``, ``Name``, ``Size``, ``Database``, ``Mode``, ``URI``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``User``, ``Name``, ``Size``, ``Database``, ``Mode``, ``URI``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("replica");
                    Name        = "replica";
                    Description = "Display commands to manage read-only database replicas";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("connection");
                            Name        = "connection";
                            Description = "Retrieve information for connecting to a read-only database replica";
                        },
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a read-only database replica";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--private-network-uuid");
                                    Name        = "The UUID of a VPC to create the replica in; the default VPC for the region will be used if excluded";
                                    Description = "The UUID of a VPC to create the replica in; the default VPC for the region will be used if excluded";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Specifies the region (e.g. nyc3, sfo2) in which to create the replica";
                                    Description = "Specifies the region (e.g. nyc3, sfo2) in which to create the replica";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "Specifies the machine size for the replica (e.g. db-s-1vcpu-1gb). Must be the same or equal to the original.";
                                    Description = "Specifies the machine size for the replica (e.g. db-s-1vcpu-1gb). Must be the same or equal to the original.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a read-only database replica";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Deletes the replica without a confirmation prompt";
                                    Description = "Deletes the replica without a confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about a read-only database replica";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Region``, ``Status``, ``URI``, ``Created``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Region``, ``Status``, ``URI``, ``Created``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve list of read-only database replicas";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Region``, ``Status``, ``URI``, ``Created``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Region``, ``Status``, ``URI``, ``Created``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("resize");
                    Name        = "resize";
                    Description = "Resize a database cluster";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--num-nodes");
                            Name        = "The number of nodes in the database cluster. Valid values are are 1-3. In addition to the primary node, up to two standby nodes may be added for high availability. (required)";
                            Description = "The number of nodes in the database cluster. Valid values are are 1-3. In addition to the primary node, up to two standby nodes may be added for high availability. (required)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--size");
                            Name        = "The size of the nodes in the database cluster, e.g. ``db-s-1vcpu-1gb```` for a 1 CPU, 1GB node (required)";
                            Description = "The size of the nodes in the database cluster, e.g. ``db-s-1vcpu-1gb```` for a 1 CPU, 1GB node (required)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("sql-mode");
                    Name        = "sql-mode";
                    Description = "Display commands to configure a MySQL database cluster's SQL modes";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Get a MySQL database cluster's SQL modes";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("set");
                            Name        = "set";
                            Description = "Set a MySQL database cluster's SQL modes";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("user");
                    Name        = "user";
                    Description = "Display commands for managing database users";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a database user";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--mysql-auth-plugin");
                                    Name        = "set auth mode for MySQL users";
                                    Description = "set auth mode for MySQL users";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete a database user";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete the user without a confirmation prompt";
                                    Description = "Delete the user without a confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve details about a database user";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Role``, ``Password``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Role``, ``Password``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve list of database users";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Role``, ``Password``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Role``, ``Password``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("reset");
                            Name        = "reset";
                            Description = "Resets a user's auth";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("invoice");
            Name        = "invoice";
            Description = "Display commands for retrieving invoices for your account";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("csv");
                    Name        = "csv";
                    Description = "Download a CSV file of an invoice";
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Retrieve a list of all the items on an invoice";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ResourceID``, ``ResourceUUID``, ``Product``, ``Description``, ``GroupDescription``, ``Amount``, ``Duration``, ``DurationUnit``, ``StartTime``, ``EndTime``, ``ProjectName``, ``Category``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ResourceID``, ``ResourceUUID``, ``Product``, ``Description``, ``GroupDescription``, ``Amount``, ``Duration``, ``DurationUnit``, ``StartTime``, ``EndTime``, ``ProjectName``, ``Category``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all of the invoices for your account";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ResourceID``, ``ResourceUUID``, ``Product``, ``Description``, ``GroupDescription``, ``Amount``, ``Duration``, ``DurationUnit``, ``StartTime``, ``EndTime``, ``ProjectName``, ``Category``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ResourceID``, ``ResourceUUID``, ``Product``, ``Description``, ``GroupDescription``, ``Amount``, ``Duration``, ``DurationUnit``, ``StartTime``, ``EndTime``, ``ProjectName``, ``Category``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pdf");
                    Name        = "pdf";
                    Description = "Download a PDF file of an invoice";
                },
                [CommandParameter]@{
                    Keys        = @("summary");
                    Name        = "summary";
                    Description = "Get a summary of an invoice";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ResourceID``, ``ResourceUUID``, ``Product``, ``Description``, ``GroupDescription``, ``Amount``, ``Duration``, ``DurationUnit``, ``StartTime``, ``EndTime``, ``ProjectName``, ``Category``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ResourceID``, ``ResourceUUID``, ``Product``, ``Description``, ``GroupDescription``, ``Amount``, ``Duration``, ``DurationUnit``, ``StartTime``, ``EndTime``, ``ProjectName``, ``Category``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("kubernetes");
            Name        = "kubernetes";
            Description = "Displays commands to manage Kubernetes clusters and configurations";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("1-click");
                    Name        = "1-click";
                    Description = "Display commands that pertain to kubernetes 1-click applications";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("install");
                            Name        = "install";
                            Description = "Install 1-click apps on a Kubernetes cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--1-clicks");
                                    Name        = "1-clicks to be installed on a Kubernetes cluster. Multiple 1-clicks can be added at once. Example: --1-clicks moon,loki,netdata";
                                    Description = "1-clicks to be installed on a Kubernetes cluster. Multiple 1-clicks can be added at once. Example: --1-clicks moon,loki,netdata";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``SLUG``, ``TYPE``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``SLUG``, ``TYPE``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve a list of Kubernetes 1-Click applications";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``SLUG``, ``TYPE``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``SLUG``, ``TYPE``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("cluster");
                    Name        = "cluster";
                    Description = "Display commands for managing Kubernetes clusters";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a Kubernetes cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--1-clicks");
                                    Name        = "Comma-separated list of 1-Click Applications to install on the kubernetes cluster. To see a list of 1-Click Applications available run doctl kubernetes 1-click list";
                                    Description = "Comma-separated list of 1-Click Applications to install on the kubernetes cluster. To see a list of 1-Click Applications available run doctl kubernetes 1-click list";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--auto-upgrade");
                                    Name        = "A boolean flag indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window (default false). To enable automatic upgrade, supply --auto-upgrade(=true).";
                                    Description = "A boolean flag indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window (default false). To enable automatic upgrade, supply --auto-upgrade(=true).";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--count");
                                    Name        = "Number of nodes in the default node pool (incompatible with --node-pool)";
                                    Description = "Number of nodes in the default node pool (incompatible with --node-pool)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--ha");
                                    Name        = "A boolean flag indicating whether the cluster will be configured with a highly-available control plane (default false). To enable the HA control plane, supply --ha(=true).";
                                    Description = "A boolean flag indicating whether the cluster will be configured with a highly-available control plane (default false). To enable the HA control plane, supply --ha(=true).";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--maintenance-window");
                                    Name        = "Sets the beginning of the four hour maintenance window for the cluster. Syntax is in the format: ``day=HH:MM``, where time is in UTC. Day can be: ``any``, ``monday``, ``tuesday``, ``wednesday``, ``thursday``, ``friday``, ``saturday``, ``sunday``.";
                                    Description = "Sets the beginning of the four hour maintenance window for the cluster. Syntax is in the format: ``day=HH:MM``, where time is in UTC. Day can be: ``any``, ``monday``, ``tuesday``, ``wednesday``, ``thursday``, ``friday``, ``saturday``, ``sunday``.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-pool");
                                    Name        = "Comma-separated list of node pools, defined using semicolon-separated configuration values and surrounded by quotes (incompatible with --size and --count)";
                                    Description = "Comma-separated list of node pools, defined using semicolon-separated configuration values and surrounded by quotes (incompatible with --size and --count)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--region");
                                    Name        = "Cluster region. Possible values: see ``doctl kubernetes options regions`` (required)";
                                    Description = "Cluster region. Possible values: see ``doctl kubernetes options regions`` (required)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--set-current-context");
                                    Name        = "Boolean that specifies whether to set the current kubectl context to that of the new cluster";
                                    Description = "Boolean that specifies whether to set the current kubectl context to that of the new cluster";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--size");
                                    Name        = "Machine size to use when creating nodes in the default node pool (incompatible with --node-pool). Possible values: see ``doctl kubernetes options sizes``";
                                    Description = "Machine size to use when creating nodes in the default node pool (incompatible with --node-pool). Possible values: see ``doctl kubernetes options sizes``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--surge-upgrade");
                                    Name        = "Boolean specifying whether to enable surge-upgrade for the cluster";
                                    Description = "Boolean specifying whether to enable surge-upgrade for the cluster";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag");
                                    Name        = "Comma-separated list of tags to apply to the cluster, in addition to the default tags of ``k8s`` and ``k8s:`$K8S_CLUSTER_ID``.";
                                    Description = "Comma-separated list of tags to apply to the cluster, in addition to the default tags of ``k8s`` and ``k8s:`$K8S_CLUSTER_ID``.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--update-kubeconfig");
                                    Name        = "Boolean that specifies whether to add a configuration context for the new cluster to your kubectl";
                                    Description = "Boolean that specifies whether to add a configuration context for the new cluster to your kubectl";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--version");
                                    Name        = "Kubernetes version. Possible values: see ``doctl kubernetes options versions``";
                                    Description = "Kubernetes version. Possible values: see ``doctl kubernetes options versions``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--vpc-uuid");
                                    Name        = "Kubernetes UUID. Must be the UUID of a valid VPC in the same region specified for the cluster.";
                                    Description = "Kubernetes UUID. Must be the UUID of a valid VPC in the same region specified for the cluster.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--wait");
                                    Name        = "Boolean that specifies whether to wait for cluster creation to complete before returning control to the terminal";
                                    Description = "Boolean that specifies whether to wait for cluster creation to complete before returning control to the terminal";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete Kubernetes clusters ";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--dangerous");
                                    Name        = "Boolean indicating whether to delete the cluster's associated resources like load balancers, volumes and volume snapshots";
                                    Description = "Boolean indicating whether to delete the cluster's associated resources like load balancers, volumes and volume snapshots";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Boolean indicating whether to delete the cluster without a confirmation prompt";
                                    Description = "Boolean indicating whether to delete the cluster without a confirmation prompt";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--update-kubeconfig");
                                    Name        = "Boolean indicating whether to remove the deleted cluster from your kubeconfig";
                                    Description = "Boolean indicating whether to remove the deleted cluster from your kubeconfig";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete-selective");
                            Name        = "delete-selective";
                            Description = "Delete a Kubernetes cluster and selectively delete resources associated with it";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Boolean indicating whether to delete the cluster without a confirmation prompt";
                                    Description = "Boolean indicating whether to delete the cluster without a confirmation prompt";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--load-balancers");
                                    Name        = "Comma-separated list of load balancer IDs or names for deletion";
                                    Description = "Comma-separated list of load balancer IDs or names for deletion";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--snapshots");
                                    Name        = "Comma-separated list of volume snapshot IDs or names for deletion";
                                    Description = "Comma-separated list of volume snapshot IDs or names for deletion";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--update-kubeconfig");
                                    Name        = "Boolean indicating whether to remove the deleted cluster from your kubeconfig";
                                    Description = "Boolean indicating whether to remove the deleted cluster from your kubeconfig";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--volumes");
                                    Name        = "Comma-separated list of volume IDs or names for deletion";
                                    Description = "Comma-separated list of volume IDs or names for deletion";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve details about a Kubernetes cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Region``, ``Version``, ``AutoUpgrade``, ``HAControlPlane``, ``Status``, ``Endpoint``, ``IPv4``, ``ClusterSubnet``, ``ServiceSubnet``, ``Tags``, ``Created``, ``Updated``, ``NodePools``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Region``, ``Version``, ``AutoUpgrade``, ``HAControlPlane``, ``Status``, ``Endpoint``, ``IPv4``, ``ClusterSubnet``, ``ServiceSubnet``, ``Tags``, ``Created``, ``Updated``, ``NodePools``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get-upgrades");
                            Name        = "get-upgrades";
                            Description = "Retrieve a list of available Kubernetes version upgrades";
                        },
                        [CommandParameter]@{
                            Keys        = @("kubeconfig");
                            Name        = "kubeconfig";
                            Description = "Display commands for managing your local kubeconfig";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("remove");
                                    Name        = "remove";
                                    Description = "Remove a cluster's credentials from your local kubeconfig";
                                },
                                [CommandParameter]@{
                                    Keys        = @("save");
                                    Name        = "save";
                                    Description = "Save a cluster's credentials to your local kubeconfig";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--expiry-seconds");
                                            Name        = "The length of time the cluster credentials will be valid for in seconds. By default, the credentials are automatically renewed as needed.";
                                            Description = "The length of time the cluster credentials will be valid for in seconds. By default, the credentials are automatically renewed as needed.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--set-current-context");
                                            Name        = "Boolean indicating whether to set the current kubectl context to that of the new cluster";
                                            Description = "Boolean indicating whether to set the current kubectl context to that of the new cluster";
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("show");
                                    Name        = "show";
                                    Description = "Show a Kubernetes cluster's kubeconfig YAML";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--expiry-seconds");
                                            Name        = "The length of time the cluster credentials will be valid for in seconds. By default, the credentials expire after seven days.";
                                            Description = "The length of time the cluster credentials will be valid for in seconds. By default, the credentials expire after seven days.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve the list of Kubernetes clusters for your account";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Region``, ``Version``, ``AutoUpgrade``, ``HAControlPlane``, ``Status``, ``Endpoint``, ``IPv4``, ``ClusterSubnet``, ``ServiceSubnet``, ``Tags``, ``Created``, ``Updated``, ``NodePools``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Region``, ``Version``, ``AutoUpgrade``, ``HAControlPlane``, ``Status``, ``Endpoint``, ``IPv4``, ``ClusterSubnet``, ``ServiceSubnet``, ``Tags``, ``Created``, ``Updated``, ``NodePools``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list-associated-resources");
                            Name        = "list-associated-resources";
                            Description = "Retrieve DigitalOcean resources associated with a Kubernetes cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Volumes``, ``VolumeSnapshots``, ``LoadBalancers``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Volumes``, ``VolumeSnapshots``, ``LoadBalancers``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("node-pool");
                            Name        = "node-pool";
                            Description = "Display commands for managing node pools";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("create");
                                    Name        = "create";
                                    Description = "Create a new node pool for a cluster";
                                    Parameters  = @(
                                        [FlagParameter]@{
                                            Keys        = @("--auto-scale");
                                            Name        = "Boolean indicating whether to enable auto-scaling on the node pool";
                                            Description = "Boolean indicating whether to enable auto-scaling on the node pool";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--count");
                                            Name        = "The size of (number of nodes in) the node pool (required)";
                                            Description = "The size of (number of nodes in) the node pool (required)";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--label");
                                            Name        = "Label in key=value notation to apply to the node pool; repeat to specify additional labels. An existing label is removed from the node pool if it is not specified by any flag.";
                                            Description = "Label in key=value notation to apply to the node pool; repeat to specify additional labels. An existing label is removed from the node pool if it is not specified by any flag.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--max-nodes");
                                            Name        = "Maximum number of nodes in the node pool when autoscaling is enabled";
                                            Description = "Maximum number of nodes in the node pool when autoscaling is enabled";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--min-nodes");
                                            Name        = "Minimum number of nodes in the node pool when autoscaling is enabled";
                                            Description = "Minimum number of nodes in the node pool when autoscaling is enabled";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--name");
                                            Name        = "Name of the node pool (required)";
                                            Description = "Name of the node pool (required)";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--size");
                                            Name        = "Size of the nodes in the node pool (To see possible values: call ``doctl kubernetes options sizes``) (required)";
                                            Description = "Size of the nodes in the node pool (To see possible values: call ``doctl kubernetes options sizes``) (required)";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--tag");
                                            Name        = "Tag to apply to the node pool; repeat to specify additional tags. An existing tag is removed from the node pool if it is not specified by any flag.";
                                            Description = "Tag to apply to the node pool; repeat to specify additional tags. An existing tag is removed from the node pool if it is not specified by any flag.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--taint");
                                            Name        = "Taint in key[=value:]effect notation to apply to the node pool; repeat to specify additional taints. Set to the empty string `"`" to clear all taints. An existing taint is removed from the node pool if it is not specified by any flag.";
                                            Description = "Taint in key[=value:]effect notation to apply to the node pool; repeat to specify additional taints. Set to the empty string `"`" to clear all taints. An existing taint is removed from the node pool if it is not specified by any flag.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("delete");
                                    Name        = "delete";
                                    Description = "Delete a node pool";
                                    Parameters  = @(
                                        [FlagParameter]@{
                                            Keys        = @("--force", "-f");
                                            Name        = "Delete node pool without confirmation prompt";
                                            Description = "Delete node pool without confirmation prompt";
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("delete-node");
                                    Name        = "delete-node";
                                    Description = "Delete a node";
                                    Parameters  = @(
                                        [FlagParameter]@{
                                            Keys        = @("--force", "-f");
                                            Name        = "Delete the node without a confirmation prompt";
                                            Description = "Delete the node without a confirmation prompt";
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--skip-drain");
                                            Name        = "Skip draining the node before deletion";
                                            Description = "Skip draining the node before deletion";
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("get");
                                    Name        = "get";
                                    Description = "Retrieve information about a cluster's node pool";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--format");
                                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Count``, ``Tags``, ``Labels``, ``Taints``, ``Nodes``";
                                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Count``, ``Tags``, ``Labels``, ``Taints``, ``Nodes``";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--no-header");
                                            Name        = "Return raw data with no headers";
                                            Description = "Return raw data with no headers";
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("list");
                                    Name        = "list";
                                    Description = "List a cluster's node pools";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--format");
                                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Count``, ``Tags``, ``Labels``, ``Taints``, ``Nodes``";
                                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``Name``, ``Size``, ``Count``, ``Tags``, ``Labels``, ``Taints``, ``Nodes``";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--no-header");
                                            Name        = "Return raw data with no headers";
                                            Description = "Return raw data with no headers";
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("replace-node");
                                    Name        = "replace-node";
                                    Description = "Replace node with a new one";
                                    Parameters  = @(
                                        [FlagParameter]@{
                                            Keys        = @("--force", "-f");
                                            Name        = "Replace node without confirmation prompt";
                                            Description = "Replace node without confirmation prompt";
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--skip-drain");
                                            Name        = "Skip draining the node before replacement";
                                            Description = "Skip draining the node before replacement";
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("update");
                                    Name        = "update";
                                    Description = "Update an existing node pool in a cluster";
                                    Parameters  = @(
                                        [FlagParameter]@{
                                            Keys        = @("--auto-scale");
                                            Name        = "Boolean indicating whether to enable auto-scaling on the node pool";
                                            Description = "Boolean indicating whether to enable auto-scaling on the node pool";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--count");
                                            Name        = "The size of (number of nodes in) the node pool";
                                            Description = "The size of (number of nodes in) the node pool";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--label");
                                            Name        = "Label in key=value notation to apply to the node pool, repeat to add multiple labels at once. Omitted labels will be removed from the node pool if the flag is specified.";
                                            Description = "Label in key=value notation to apply to the node pool, repeat to add multiple labels at once. Omitted labels will be removed from the node pool if the flag is specified.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--max-nodes");
                                            Name        = "Maximum number of nodes in the node pool when autoscaling is enabled";
                                            Description = "Maximum number of nodes in the node pool when autoscaling is enabled";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--min-nodes");
                                            Name        = "Minimum number of nodes in the node pool when autoscaling is enabled";
                                            Description = "Minimum number of nodes in the node pool when autoscaling is enabled";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--name");
                                            Name        = "Name of the node pool";
                                            Description = "Name of the node pool";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--tag");
                                            Name        = "Tag to apply to the node pool; you can supply multiple ``--tag`` arguments to specify additional tags. Omitted tags will be removed from the node pool if the flag is specified.";
                                            Description = "Tag to apply to the node pool; you can supply multiple ``--tag`` arguments to specify additional tags. Omitted tags will be removed from the node pool if the flag is specified.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--taint");
                                            Name        = "Taint in key[=value:]effect notation to apply to the node pool, repeat to add multiple taints at once. Omitted taints will be removed from the node pool if the flag is specified.";
                                            Description = "Taint in key[=value:]effect notation to apply to the node pool, repeat to add multiple taints at once. Omitted taints will be removed from the node pool if the flag is specified.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("registry");
                            Name        = "registry";
                            Description = "Display commands for integrating clusters with docr";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("add");
                                    Name        = "add";
                                    Description = "Add container registry support to Kubernetes clusters";
                                },
                                [CommandParameter]@{
                                    Keys        = @("remove");
                                    Name        = "remove";
                                    Description = "Remove container registry support from Kubernetes clusters";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update a Kubernetes cluster's configuration";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--auto-upgrade");
                                    Name        = "A boolean flag indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window (default false). To enable automatic upgrade, supply --auto-upgrade(=true).";
                                    Description = "A boolean flag indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window (default false). To enable automatic upgrade, supply --auto-upgrade(=true).";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cluster-name");
                                    Name        = "Specifies a new cluster name";
                                    Description = "Specifies a new cluster name";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--maintenance-window");
                                    Name        = "Sets the beginning of the four hour maintenance window for the cluster. Syntax is in the format: 'day=HH:MM', where time is in UTC. Day can be: ``any``, ``monday``, ``tuesday``, ``wednesday``, ``thursday``, ``friday``, ``saturday``, ``sunday``.";
                                    Description = "Sets the beginning of the four hour maintenance window for the cluster. Syntax is in the format: 'day=HH:MM', where time is in UTC. Day can be: ``any``, ``monday``, ``tuesday``, ``wednesday``, ``thursday``, ``friday``, ``saturday``, ``sunday``.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--set-current-context");
                                    Name        = "Boolean specifying whether to set the current kubectl context to that of the new cluster";
                                    Description = "Boolean specifying whether to set the current kubectl context to that of the new cluster";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--surge-upgrade");
                                    Name        = "Boolean specifying whether to enable surge-upgrade for the cluster";
                                    Description = "Boolean specifying whether to enable surge-upgrade for the cluster";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tag");
                                    Name        = "A comma-separated list of tags to apply to the cluster. Existing user-provided tags will be removed from the cluster if they are not specified.";
                                    Description = "A comma-separated list of tags to apply to the cluster. Existing user-provided tags will be removed from the cluster if they are not specified.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--update-kubeconfig");
                                    Name        = "Boolean specifying whether to update the cluster in your kubeconfig";
                                    Description = "Boolean specifying whether to update the cluster in your kubeconfig";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("upgrade");
                            Name        = "upgrade";
                            Description = "Upgrades a cluster to a new Kubernetes version";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--version");
                                    Name        = "The desired Kubernetes version. Possible values: see ``doctl k8s get-upgrades <cluster>``.";
                                    Description = "The desired Kubernetes version. Possible values: see ``doctl k8s get-upgrades <cluster>``.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("options");
                    Name        = "options";
                    Description = "List possible option values for use inside Kubernetes commands";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("regions");
                            Name        = "regions";
                            Description = "List regions that support DigitalOcean Kubernetes clusters";
                        },
                        [CommandParameter]@{
                            Keys        = @("sizes");
                            Name        = "sizes";
                            Description = "List machine sizes that can be used in a DigitalOcean Kubernetes cluster";
                        },
                        [CommandParameter]@{
                            Keys        = @("versions");
                            Name        = "versions";
                            Description = "List Kubernetes versions that can be used with DigitalOcean clusters";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("monitoring");
            Name        = "monitoring";
            Description = "[Beta] Display commands to manage monitoring";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("alert");
                    Name        = "alert";
                    Description = "Display commands for managing alert policies";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create an alert policy";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--compare");
                                    Name        = "The comparator of the alert policy. Either ``GreaterThan`` or ``LessThan``";
                                    Description = "The comparator of the alert policy. Either ``GreaterThan`` or ``LessThan``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the alert policy.";
                                    Description = "A description of the alert policy.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--emails");
                                    Name        = "Emails to send alerts to.";
                                    Description = "Emails to send alerts to.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enabled");
                                    Name        = "Whether the alert policy is enabled.";
                                    Description = "Whether the alert policy is enabled.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--entities");
                                    Name        = "Entities to apply the alert against. (e.g. a droplet ID for a droplet alert policy)";
                                    Description = "Entities to apply the alert against. (e.g. a droplet ID for a droplet alert policy)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--slack-channels");
                                    Name        = "Slack channels to send alerts to.";
                                    Description = "Slack channels to send alerts to.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--slack-urls");
                                    Name        = "Slack URLs to send alerts to.";
                                    Description = "Slack URLs to send alerts to.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tags");
                                    Name        = "Tags to apply the alert against.";
                                    Description = "Tags to apply the alert against.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--type");
                                    Name        = "The type of alert policy.";
                                    Description = "The type of alert policy.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--value");
                                    Name        = "The value of the alert policy to compare against.";
                                    Description = "The value of the alert policy to compare against.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--window");
                                    Name        = "The window to apply the alert policy conditions against.";
                                    Description = "The window to apply the alert policy conditions against.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete an alert policy";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Delete an alert policy without confirmation prompt";
                                    Description = "Delete an alert policy without confirmation prompt";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve information about an alert policy";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``Type``, ``Description``, ``Compare``, ``Value``, ``Window``, ``Entities``, ``Tags``, ``Emails``, ``Slack Channels``, ``Enabled``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``Type``, ``Description``, ``Compare``, ``Value``, ``Window``, ``Entities``, ``Tags``, ``Emails``, ``Slack Channels``, ``Enabled``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List all alert policies";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``Type``, ``Description``, ``Compare``, ``Value``, ``Window``, ``Entities``, ``Tags``, ``Emails``, ``Slack Channels``, ``Enabled``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``Type``, ``Description``, ``Compare``, ``Value``, ``Window``, ``Entities``, ``Tags``, ``Emails``, ``Slack Channels``, ``Enabled``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update an alert policy";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--compare");
                                    Name        = "The comparator of the alert policy. Either ``GreaterThan`` or ``LessThan``";
                                    Description = "The comparator of the alert policy. Either ``GreaterThan`` or ``LessThan``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the alert policy.";
                                    Description = "A description of the alert policy.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--emails");
                                    Name        = "Emails to send alerts to.";
                                    Description = "Emails to send alerts to.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--enabled");
                                    Name        = "Whether the alert policy is enabled.";
                                    Description = "Whether the alert policy is enabled.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--entities");
                                    Name        = "Entities to apply the alert against. (e.g. a droplet ID for a droplet alert policy)";
                                    Description = "Entities to apply the alert against. (e.g. a droplet ID for a droplet alert policy)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--slack-channels");
                                    Name        = "Slack channels to send alerts to.";
                                    Description = "Slack channels to send alerts to.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--slack-urls");
                                    Name        = "Slack URLs to send alerts to.";
                                    Description = "Slack URLs to send alerts to.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tags");
                                    Name        = "Tags to apply the alert against.";
                                    Description = "Tags to apply the alert against.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--type");
                                    Name        = "The type of alert policy.";
                                    Description = "The type of alert policy.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--value");
                                    Name        = "The value of the alert policy to compare against.";
                                    Description = "The value of the alert policy to compare against.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--window");
                                    Name        = "The window to apply the alert policy conditions against.";
                                    Description = "The window to apply the alert policy conditions against.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("projects");
            Name        = "projects";
            Description = "Manage projects and assign resources to them";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--description");
                            Name        = "A description of the project";
                            Description = "A description of the project";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--environment");
                            Name        = "The environment in which your project resides. Possible values: ``Development``, ``Staging``, or ``Production``";
                            Description = "The environment in which your project resides. Possible values: ``Development``, ``Staging``, or ``Production``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``OwnerUUID``, ``OwnerID``, ``Name``, ``Description``, ``Purpose``, ``Environment``, ``IsDefault``, ``CreatedAt``, ``UpdatedAt``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``OwnerUUID``, ``OwnerID``, ``Name``, ``Description``, ``Purpose``, ``Environment``, ``IsDefault``, ``CreatedAt``, ``UpdatedAt``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "A name for the project (required)";
                            Description = "A name for the project (required)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--purpose");
                            Name        = "The project's purpose (required)";
                            Description = "The project's purpose (required)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete the specified project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Delete the project without confirmation";
                            Description = "Delete the project without confirmation";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Retrieve details for a specific project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``OwnerUUID``, ``OwnerID``, ``Name``, ``Description``, ``Purpose``, ``Environment``, ``IsDefault``, ``CreatedAt``, ``UpdatedAt``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``OwnerUUID``, ``OwnerID``, ``Name``, ``Description``, ``Purpose``, ``Environment``, ``IsDefault``, ``CreatedAt``, ``UpdatedAt``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List existing projects";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``OwnerUUID``, ``OwnerID``, ``Name``, ``Description``, ``Purpose``, ``Environment``, ``IsDefault``, ``CreatedAt``, ``UpdatedAt``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``OwnerUUID``, ``OwnerID``, ``Name``, ``Description``, ``Purpose``, ``Environment``, ``IsDefault``, ``CreatedAt``, ``UpdatedAt``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("resources");
                    Name        = "resources";
                    Description = "Manage resources assigned to a project";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("assign");
                            Name        = "assign";
                            Description = "Assign one or more resources to a project";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--resource");
                                    Name        = "URNs specifying resources to assign to the project";
                                    Description = "URNs specifying resources to assign to the project";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Retrieve a resource by its URN";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``URN``, ``AssignedAt``, ``Status``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``URN``, ``AssignedAt``, ``Status``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List resources assigned to a project";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``URN``, ``AssignedAt``, ``Status``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``URN``, ``AssignedAt``, ``Status``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update an existing project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--description");
                            Name        = "A description of the project";
                            Description = "A description of the project";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--environment");
                            Name        = "The environment in which your project resides. Possible values: ``Development``, ``Staging``, or ``Production``";
                            Description = "The environment in which your project resides. Possible values: ``Development``, ``Staging``, or ``Production``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``OwnerUUID``, ``OwnerID``, ``Name``, ``Description``, ``Purpose``, ``Environment``, ``IsDefault``, ``CreatedAt``, ``UpdatedAt``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``OwnerUUID``, ``OwnerID``, ``Name``, ``Description``, ``Purpose``, ``Environment``, ``IsDefault``, ``CreatedAt``, ``UpdatedAt``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--is_default");
                            Name        = "Set the specified project as your default project";
                            Description = "Set the specified project as your default project";
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "A name for the project";
                            Description = "A name for the project";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--purpose");
                            Name        = "The project's purpose";
                            Description = "The project's purpose";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("registry");
            Name        = "registry";
            Description = "Display commands for working with container registries";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a private container registry";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--subscription-tier");
                            Name        = "Subscription tier for the new registry. Possible values: see ``doctl registry options subscription-tiers`` (required)";
                            Description = "Subscription tier for the new registry. Possible values: see ``doctl registry options subscription-tiers`` (required)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a container registry";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force registry delete";
                            Description = "Force registry delete";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("docker-config");
                    Name        = "docker-config";
                    Description = "Generate a docker auth configuration for a registry";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--expiry-seconds");
                            Name        = "The length of time the registry credentials will be valid for in seconds. By default, the credentials do not expire.";
                            Description = "The length of time the registry credentials will be valid for in seconds. By default, the credentials do not expire.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--read-write");
                            Name        = "Generate credentials that can push to your registry";
                            Description = "Generate credentials that can push to your registry";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("garbage-collection");
                    Name        = "garbage-collection";
                    Description = "Display commands for garbage collection for a container registry";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("cancel");
                            Name        = "cancel";
                            Description = "Cancel the currently-active garbage collection for a container registry";
                        },
                        [CommandParameter]@{
                            Keys        = @("get-active");
                            Name        = "get-active";
                            Description = "Retrieve information about the currently-active garbage collection for a container registry";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``RegistryName``, ``Status``, ``CreatedAt``, ``UpdatedAt``, ``BlobsDeleted``, ``FreedBytes``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``RegistryName``, ``Status``, ``CreatedAt``, ``UpdatedAt``, ``BlobsDeleted``, ``FreedBytes``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Retrieve information about past garbage collections for a container registry";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``RegistryName``, ``Status``, ``CreatedAt``, ``UpdatedAt``, ``BlobsDeleted``, ``FreedBytes``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``RegistryName``, ``Status``, ``CreatedAt``, ``UpdatedAt``, ``BlobsDeleted``, ``FreedBytes``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("start");
                            Name        = "start";
                            Description = "Start garbage collection for a container registry";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--exclude-unreferenced-blobs");
                                    Name        = "Exclude unreferenced blobs from garbage collection.";
                                    Description = "Exclude unreferenced blobs from garbage collection.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Run garbage collection without confirmation prompt";
                                    Description = "Run garbage collection without confirmation prompt";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``RegistryName``, ``Status``, ``CreatedAt``, ``UpdatedAt``, ``BlobsDeleted``, ``FreedBytes``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``UUID``, ``RegistryName``, ``Status``, ``CreatedAt``, ``UpdatedAt``, ``BlobsDeleted``, ``FreedBytes``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--include-untagged-manifests");
                                    Name        = "Include untagged manifests in garbage collection.";
                                    Description = "Include untagged manifests in garbage collection.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Retrieve details about a container registry";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Endpoint``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``Name``, ``Endpoint``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("kubernetes-manifest");
                    Name        = "kubernetes-manifest";
                    Description = "Generate a Kubernetes secret manifest for a registry.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "The secret name to create. Defaults to the registry name prefixed with `"registry-`"";
                            Description = "The secret name to create. Defaults to the registry name prefixed with `"registry-`"";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "The Kubernetes namespace to hold the secret";
                            Description = "The Kubernetes namespace to hold the secret";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("login");
                    Name        = "login";
                    Description = "Log in Docker to a container registry";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--expiry-seconds");
                            Name        = "The length of time the registry credentials will be valid for in seconds. By default, the credentials do not expire.";
                            Description = "The length of time the registry credentials will be valid for in seconds. By default, the credentials do not expire.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("logout");
                    Name        = "logout";
                    Description = "Log out Docker from a container registry";
                },
                [CommandParameter]@{
                    Keys        = @("options");
                    Name        = "options";
                    Description = "List available container registry options";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("subscription-tiers");
                            Name        = "subscription-tiers";
                            Description = "List available container registry subscription tiers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("repository");
                    Name        = "repository";
                    Description = "Display commands for working with repositories in a container registry";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("delete-manifest");
                            Name        = "delete-manifest";
                            Description = "Delete one or more container repository manifests by digest";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Force manifest deletion";
                                    Description = "Force manifest deletion";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete-tag");
                            Name        = "delete-tag";
                            Description = "Delete one or more container repository tags";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Force tag deletion";
                                    Description = "Force tag deletion";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List repositories for a container registry";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Name``, ``LatestTag``, ``TagCount``, ``UpdatedAt``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Name``, ``LatestTag``, ``TagCount``, ``UpdatedAt``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list-tags");
                            Name        = "list-tags";
                            Description = "List tags for a repository in a container registry";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Columns for output in a comma-separated list. Possible values: ``Tag``, ``CompressedSizeBytes``, ``UpdatedAt``, ``ManifestDigest``";
                                    Description = "Columns for output in a comma-separated list. Possible values: ``Tag``, ``CompressedSizeBytes``, ``UpdatedAt``, ``ManifestDigest``";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-header");
                                    Name        = "Return raw data with no headers";
                                    Description = "Return raw data with no headers";
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Show the current version";
        },
        [CommandParameter]@{
            Keys        = @("vpcs");
            Name        = "vpcs";
            Description = "Display commands that manage VPCs";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new VPC";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--description");
                            Name        = "The VPC's name";
                            Description = "The VPC's name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ip-range");
                            Name        = "The range of IP addresses in the VPC in CIDR notation, e.g.: ``10.116.0.0/20``";
                            Description = "The range of IP addresses in the VPC in CIDR notation, e.g.: ``10.116.0.0/20``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "The VPC's name (required)";
                            Description = "The VPC's name (required)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--region");
                            Name        = "The VPC's region slug, e.g.: ``nyc1`` (required)";
                            Description = "The VPC's region slug, e.g.: ``nyc1`` (required)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Permanently delete a VPC";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Delete the VPC without a confirmation prompt";
                            Description = "Delete the VPC without a confirmation prompt";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Retrieve a VPC";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``URN``, ``Name``, ``Description``, ``IPRange``, ``Region``, ``Created``, ``Default``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``URN``, ``Name``, ``Description``, ``IPRange``, ``Region``, ``Created``, ``Default``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List VPCs";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Columns for output in a comma-separated list. Possible values: ``ID``, ``URN``, ``Name``, ``Description``, ``IPRange``, ``Region``, ``Created``, ``Default``";
                            Description = "Columns for output in a comma-separated list. Possible values: ``ID``, ``URN``, ``Name``, ``Description``, ``IPRange``, ``Region``, ``Created``, ``Default``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-header");
                            Name        = "Return raw data with no headers";
                            Description = "Return raw data with no headers";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update a VPC's configuration";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--default");
                            Name        = "The VPC's default state";
                            Description = "The VPC's default state";
                        },
                        [ValueParameter]@{
                            Keys        = @("--description");
                            Name        = "The VPC's description";
                            Description = "The VPC's description";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "The VPC's name";
                            Description = "The VPC's name";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        }
    )
}
