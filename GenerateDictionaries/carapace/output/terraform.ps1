# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.terraform.io/";
    Keys        = @("terraform");
    Name        = "terraform";
    Description = "infrastructure as code software tool";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--chdir");
            Name        = "Switch to a different working directory before executing the given subcommand.";
            Description = "Switch to a different working directory before executing the given subcommand.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Show this help output, or the help for a specified subcommand.";
            Description = "Show this help output, or the help for a specified subcommand.";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "An alias for the `"version`" subcommand.";
            Description = "An alias for the `"version`" subcommand.";
        },
        [CommandParameter]@{
            Keys        = @("apply");
            Name        = "apply";
            Description = "Create or update infrastructure";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--auto-approve");
                    Name        = "Skip interactive approval of plan before applying.";
                    Description = "Skip interactive approval of plan before applying.";
                },
                [ValueParameter]@{
                    Keys        = @("--backup");
                    Name        = "Path to backup the existing state file before modifying.";
                    Description = "Path to backup the existing state file before modifying.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--compact-warnings");
                    Name        = "Show warnings in a more compact form that includes only the summary messages.";
                    Description = "Show warnings in a more compact form that includes only the summary messages.";
                },
                [ValueParameter]@{
                    Keys        = @("--input");
                    Name        = "Ask for input for variables if not directly set.";
                    Description = "Ask for input for variables if not directly set.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Don't hold a state lock during the operation.";
                    Description = "Don't hold a state lock during the operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock-timeout");
                    Name        = "Duration to retry a state lock.";
                    Description = "Duration to retry a state lock.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "If specified, output won't contain any color.";
                    Description = "If specified, output won't contain any color.";
                },
                [ValueParameter]@{
                    Keys        = @("--parallelism");
                    Name        = "Limit the number of parallel resource operations.";
                    Description = "Limit the number of parallel resource operations.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--state");
                    Name        = "Path to read and save state.";
                    Description = "Path to read and save state.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--state-out");
                    Name        = "Path to write state to that is different than `"-state`".";
                    Description = "Path to write state to that is different than `"-state`".";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("console");
            Name        = "console";
            Description = "Try Terraform expressions at an interactive command prompt";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--state");
                    Name        = "Legacy option for the local backend only.";
                    Description = "Legacy option for the local backend only.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Set a variable in the Terraform configuration.";
                    Description = "Set a variable in the Terraform configuration.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "Set variables in the Terraform configuration from a file.";
                    Description = "Set variables in the Terraform configuration from a file.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("destroy");
            Name        = "destroy";
            Description = "Destroy previously-created infrastructure";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--compact-warnings");
                    Name        = "Show warnings in a more compact form that includes only the summary messages.";
                    Description = "Show warnings in a more compact form that includes only the summary messages.";
                },
                [FlagParameter]@{
                    Keys        = @("--destroy");
                    Name        = "Select the `"destroy`" planning mode.";
                    Description = "Select the `"destroy`" planning mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--detailed-exitcode");
                    Name        = "Return detailed exit codes when the command exits.";
                    Description = "Return detailed exit codes when the command exits.";
                },
                [ValueParameter]@{
                    Keys        = @("--input");
                    Name        = "Ask for input for variables if not directly set.";
                    Description = "Ask for input for variables if not directly set.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Don't hold a state lock during the operation.";
                    Description = "Don't hold a state lock during the operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock-timeout");
                    Name        = "Duration to retry a state lock.";
                    Description = "Duration to retry a state lock.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "If specified, output won't contain any color.";
                    Description = "If specified, output won't contain any color.";
                },
                [ValueParameter]@{
                    Keys        = @("--out");
                    Name        = "Write a plan file to the given path.";
                    Description = "Write a plan file to the given path.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallelism");
                    Name        = "Limit the number of concurrent operations.";
                    Description = "Limit the number of concurrent operations.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--refresh");
                    Name        = "Skip checking for external changes to remote objects while creating the plan.";
                    Description = "Skip checking for external changes to remote objects while creating the plan.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--refresh-only");
                    Name        = "Select the `"refresh only`" planning mode.";
                    Description = "Select the `"refresh only`" planning mode.";
                },
                [ValueParameter]@{
                    Keys        = @("--replace");
                    Name        = "Force replacement of a particular resource instance using its resource address.";
                    Description = "Force replacement of a particular resource instance using its resource address.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--state");
                    Name        = "A legacy option used for the local backend only.";
                    Description = "A legacy option used for the local backend only.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Limit the planning operation to only the given module, resource.";
                    Description = "Limit the planning operation to only the given module, resource.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Set a value for one of the input variables in the root module of the configuration.";
                    Description = "Set a value for one of the input variables in the root module of the configuration.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "Load variable values from the given file.";
                    Description = "Load variable values from the given file.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fmt");
            Name        = "fmt";
            Description = "Reformat your configuration in the standard style";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--check");
                    Name        = "Check if the input is formatted";
                    Description = "Check if the input is formatted";
                },
                [FlagParameter]@{
                    Keys        = @("--diff");
                    Name        = "Display diffs of formatting changes";
                    Description = "Display diffs of formatting changes";
                },
                [ValueParameter]@{
                    Keys        = @("--list");
                    Name        = "Don't list files whose formatting differs";
                    Description = "Don't list files whose formatting differs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "If specified, output won't contain any color";
                    Description = "If specified, output won't contain any color";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive");
                    Name        = "Also process files in subdirectories";
                    Description = "Also process files in subdirectories";
                },
                [ValueParameter]@{
                    Keys        = @("--write");
                    Name        = "Don't write to source files";
                    Description = "Don't write to source files";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("force-unlock");
            Name        = "force-unlock";
            Description = "Release a stuck lock on the current workspace";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Don't ask for input for unlock confirmation.";
                    Description = "Don't ask for input for unlock confirmation.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("get");
            Name        = "get";
            Description = "Install or upgrade remote Terraform modules";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "Disable text coloring in the output.";
                    Description = "Disable text coloring in the output.";
                },
                [FlagParameter]@{
                    Keys        = @("--update");
                    Name        = "Check already-downloaded modules for available updates";
                    Description = "Check already-downloaded modules for available updates";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("graph");
            Name        = "graph";
            Description = "Generate a Graphviz graph of the steps in an operation";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--draw-cycles");
                    Name        = "Highlight any cycles in the graph with colored edges";
                    Description = "Highlight any cycles in the graph with colored edges";
                },
                [ValueParameter]@{
                    Keys        = @("--plan");
                    Name        = "Render graph using the specified plan file";
                    Description = "Render graph using the specified plan file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "Type of graph to output";
                    Description = "Type of graph to output";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("import");
            Name        = "import";
            Description = "Associate existing infrastructure with a Terraform resource";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-config");
                    Name        = "Allow import when no resource configuration block exists";
                    Description = "Allow import when no resource configuration block exists";
                },
                [ValueParameter]@{
                    Keys        = @("--config");
                    Name        = "Path to a directory of Terraform configuration files";
                    Description = "Path to a directory of Terraform configuration files";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-remote-version");
                    Name        = "A rare option used for the remote backend only";
                    Description = "A rare option used for the remote backend only";
                },
                [ValueParameter]@{
                    Keys        = @("--input");
                    Name        = "Disable interactive input prompts";
                    Description = "Disable interactive input prompts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Don't hold a state lock during the operation";
                    Description = "Don't hold a state lock during the operation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock-timeout");
                    Name        = "Duration to retry a state lock";
                    Description = "Duration to retry a state lock";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "If specified, output won't contain any color";
                    Description = "If specified, output won't contain any color";
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Set a variable in the Terraform configuration";
                    Description = "Set a variable in the Terraform configuration";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "Set variables in the Terraform configuration from a file";
                    Description = "Set variables in the Terraform configuration from a file";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Prepare your working directory for other commands";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--backend");
                    Name        = "Configure the backend for this configuration.";
                    Description = "Configure the backend for this configuration.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--backend-config");
                    Name        = "Backend configuration";
                    Description = "Backend configuration";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force-copy");
                    Name        = "Suppress prompts about copying state data.";
                    Description = "Suppress prompts about copying state data.";
                },
                [ValueParameter]@{
                    Keys        = @("--from-module");
                    Name        = "Copy the contents of the given module into the target directory before initialization.";
                    Description = "Copy the contents of the given module into the target directory before initialization.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--get");
                    Name        = "Download any modules for this configuration.";
                    Description = "Download any modules for this configuration.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-remote-version");
                    Name        = "A rare option used for the remote backend only.";
                    Description = "A rare option used for the remote backend only.";
                },
                [ValueParameter]@{
                    Keys        = @("--input");
                    Name        = "Ask for input if necessary.";
                    Description = "Ask for input if necessary.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lockfile");
                    Name        = "Set a dependency lockfile mode.";
                    Description = "Set a dependency lockfile mode.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--migrate-state");
                    Name        = "Reconfigure the backend, and attempt to migrate any existing state.";
                    Description = "Reconfigure the backend, and attempt to migrate any existing state.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "If specified, output won't contain any color.";
                    Description = "If specified, output won't contain any color.";
                },
                [FlagParameter]@{
                    Keys        = @("--plugin-dir");
                    Name        = "Directory containing plugin binaries.";
                    Description = "Directory containing plugin binaries.";
                },
                [FlagParameter]@{
                    Keys        = @("--reconfigure");
                    Name        = "Reconfigure the backend, ignoring any saved configuration.";
                    Description = "Reconfigure the backend, ignoring any saved configuration.";
                },
                [ValueParameter]@{
                    Keys        = @("--upgrade");
                    Name        = "ignore previously-downloaded objects and install the latest version allowed";
                    Description = "ignore previously-downloaded objects and install the latest version allowed";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("login");
            Name        = "login";
            Description = "Obtain and save credentials for a remote host";
        },
        [CommandParameter]@{
            Keys        = @("logout");
            Name        = "logout";
            Description = "Remove locally-stored credentials for a remote host";
        },
        [CommandParameter]@{
            Keys        = @("output");
            Name        = "output";
            Description = "Show output values from your root module";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Machine readable output will be printed in JSON format.";
                    Description = "Machine readable output will be printed in JSON format.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "Output won't contain any color";
                    Description = "Output won't contain any color";
                },
                [FlagParameter]@{
                    Keys        = @("--raw");
                    Name        = "print the raw string directly";
                    Description = "print the raw string directly";
                },
                [ValueParameter]@{
                    Keys        = @("--state");
                    Name        = "Path to the state file to read";
                    Description = "Path to the state file to read";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("plan");
            Name        = "plan";
            Description = "Show changes required by the current configuration";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--compact-warnings");
                    Name        = "Show warnings in a more compact form that includes only the summary messages.";
                    Description = "Show warnings in a more compact form that includes only the summary messages.";
                },
                [FlagParameter]@{
                    Keys        = @("--destroy");
                    Name        = "Select the `"destroy`" planning mode.";
                    Description = "Select the `"destroy`" planning mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--detailed-exitcode");
                    Name        = "Return detailed exit codes when the command exits.";
                    Description = "Return detailed exit codes when the command exits.";
                },
                [ValueParameter]@{
                    Keys        = @("--input");
                    Name        = "Ask for input for variables if not directly set.";
                    Description = "Ask for input for variables if not directly set.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Don't hold a state lock during the operation.";
                    Description = "Don't hold a state lock during the operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock-timeout");
                    Name        = "Duration to retry a state lock.";
                    Description = "Duration to retry a state lock.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "If specified, output won't contain any color.";
                    Description = "If specified, output won't contain any color.";
                },
                [ValueParameter]@{
                    Keys        = @("--out");
                    Name        = "Write a plan file to the given path.";
                    Description = "Write a plan file to the given path.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallelism");
                    Name        = "Limit the number of concurrent operations.";
                    Description = "Limit the number of concurrent operations.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--refresh");
                    Name        = "Skip checking for external changes to remote objects while creating the plan.";
                    Description = "Skip checking for external changes to remote objects while creating the plan.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--refresh-only");
                    Name        = "Select the `"refresh only`" planning mode.";
                    Description = "Select the `"refresh only`" planning mode.";
                },
                [ValueParameter]@{
                    Keys        = @("--replace");
                    Name        = "Force replacement of a particular resource instance using its resource address.";
                    Description = "Force replacement of a particular resource instance using its resource address.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--state");
                    Name        = "A legacy option used for the local backend only.";
                    Description = "A legacy option used for the local backend only.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Limit the planning operation to only the given module, resource.";
                    Description = "Limit the planning operation to only the given module, resource.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Set a value for one of the input variables in the root module of the configuration.";
                    Description = "Set a value for one of the input variables in the root module of the configuration.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "Load variable values from the given file.";
                    Description = "Load variable values from the given file.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("providers");
            Name        = "providers";
            Description = "Show the providers required for this configuration";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("lock");
                    Name        = "lock";
                    Description = "Write out dependency locks for the configured provide";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--fs-mirror");
                            Name        = "Consult the given filesystem mirror directory";
                            Description = "Consult the given filesystem mirror directory";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--net-mirror");
                            Name        = "Consult the given network mirror";
                            Description = "Consult the given network mirror";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Choose a target platform to request package checksums for";
                            Description = "Choose a target platform to request package checksums for";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("mirror");
                    Name        = "mirror";
                    Description = "Save local copies of all required provider plugin";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Choose which target platform to build a mirror for";
                            Description = "Choose which target platform to build a mirror for";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("schema");
                    Name        = "schema";
                    Description = "Show schemas for the providers used in the configuration";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Prints out a json representation";
                            Description = "Prints out a json representation";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("refresh");
            Name        = "refresh";
            Description = "Update the state to match remote systems";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--compact-warnings");
                    Name        = "show warnings in a more compact form";
                    Description = "show warnings in a more compact form";
                },
                [ValueParameter]@{
                    Keys        = @("--input");
                    Name        = "Ask for input for variables if not directly set";
                    Description = "Ask for input for variables if not directly set";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Don't hold a state lock during the operation";
                    Description = "Don't hold a state lock during the operation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock-timeout");
                    Name        = "Duration to retry a state lock";
                    Description = "Duration to retry a state lock";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "If specified, output won't contain any color";
                    Description = "If specified, output won't contain any color";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Resource to target";
                    Description = "Resource to target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Set a variable in the Terraform configuration";
                    Description = "Set a variable in the Terraform configuration";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "Set variables in the Terraform configuration from a file";
                    Description = "Set variables in the Terraform configuration from a file";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("show");
            Name        = "show";
            Description = "Show the current state or a saved plan";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output in a machine-readable form";
                    Description = "output in a machine-readable form";
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "output without color";
                    Description = "output without color";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("state");
            Name        = "state";
            Description = "Advanced state management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List resources in the state";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--id");
                            Name        = "Filters the results by id";
                            Description = "Filters the results by id";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--state");
                            Name        = "Path to a Terraform state file";
                            Description = "Path to a Terraform state file";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("mv");
                    Name        = "mv";
                    Description = "Move an item in the state";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "only print out what would've been moved";
                            Description = "only print out what would've been moved";
                        },
                        [FlagParameter]@{
                            Keys        = @("--ignore-remote-version");
                            Name        = "A rare option used for the remote backend only";
                            Description = "A rare option used for the remote backend only";
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock");
                            Name        = "Don't hold a state lock during the operation";
                            Description = "Don't hold a state lock during the operation";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock-timeout");
                            Name        = "Duration to retry a state lock";
                            Description = "Duration to retry a state lock";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pull");
                    Name        = "pull";
                    Description = "Pull current state and output to stdout";
                },
                [CommandParameter]@{
                    Keys        = @("push");
                    Name        = "push";
                    Description = "Update remote state from a local state file";
                },
                [CommandParameter]@{
                    Keys        = @("replace-provider");
                    Name        = "replace-provider";
                    Description = "Replace provider in the state";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--auto-approve");
                            Name        = "Skip interactive approval.";
                            Description = "Skip interactive approval.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--ignore-remote-version");
                            Name        = "A rare option used for the remote backend only.";
                            Description = "A rare option used for the remote backend only.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock");
                            Name        = "Don't hold a state lock during the operation.";
                            Description = "Don't hold a state lock during the operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock-timeout");
                            Name        = "Duration to retry a state lock.";
                            Description = "Duration to retry a state lock.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove instances from the state";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--backup");
                            Name        = "Path where Terraform should write the backup state.";
                            Description = "Path where Terraform should write the backup state.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Only print out what would've been removed";
                            Description = "Only print out what would've been removed";
                        },
                        [FlagParameter]@{
                            Keys        = @("--ignore-remote-version");
                            Name        = "Continue even if remote and local Terraform versions are incompatible.";
                            Description = "Continue even if remote and local Terraform versions are incompatible.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock");
                            Name        = "Don't hold a state lock during the operation.";
                            Description = "Don't hold a state lock during the operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock-timeout");
                            Name        = "Duration to retry a state lock.";
                            Description = "Duration to retry a state lock.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--state");
                            Name        = "Path to the state file to update.";
                            Description = "Path to the state file to update.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("show");
                    Name        = "show";
                    Description = "Show a resource in the state";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--state");
                            Name        = "Path to a Terraform state file";
                            Description = "Path to a Terraform state file";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("taint");
            Name        = "taint";
            Description = "Mark a resource instance as not fully functional";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing");
                    Name        = "succeed even if the resource is missing.";
                    Description = "succeed even if the resource is missing.";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-remote-version");
                    Name        = "A rare option used for the remote backend only.";
                    Description = "A rare option used for the remote backend only.";
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Don't hold a state lock during the operation.";
                    Description = "Don't hold a state lock during the operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock-timeout");
                    Name        = "Duration to retry a state lock.";
                    Description = "Duration to retry a state lock.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "Experimental support for module integration testing";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--compact-warnings");
                    Name        = "Use a more compact representation for warnings";
                    Description = "Use a more compact representation for warnings";
                },
                [ValueParameter]@{
                    Keys        = @("--junit-xml");
                    Name        = "also write test results to the given file path";
                    Description = "also write test results to the given file path";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "Don't include virtual terminal formatting sequences in the output.";
                    Description = "Don't include virtual terminal formatting sequences in the output.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("untaint");
            Name        = "untaint";
            Description = "Remove the 'tainted' state from a resource instance";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing");
                    Name        = "succeed even if the resource is missing.";
                    Description = "succeed even if the resource is missing.";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-remote-version");
                    Name        = "A rare option used for the remote backend only.";
                    Description = "A rare option used for the remote backend only.";
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Don't hold a state lock during the operation.";
                    Description = "Don't hold a state lock during the operation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock-timeout");
                    Name        = "Duration to retry a state lock.";
                    Description = "Duration to retry a state lock.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("validate");
            Name        = "validate";
            Description = "Check whether the configuration is valid";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Produce output in a machine-readable JSON format.";
                    Description = "Produce output in a machine-readable JSON format.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "If specified, output won't contain any color.";
                    Description = "If specified, output won't contain any color.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Show the current Terraform version";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Output the version information as a JSON object.";
                    Description = "Output the version information as a JSON object.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("workspace");
            Name        = "workspace";
            Description = "Workspace management";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a workspace";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Remove even a non-empty workspace.";
                            Description = "Remove even a non-empty workspace.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock");
                            Name        = "Don't hold a state lock during the operation.";
                            Description = "Don't hold a state lock during the operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock-timeout");
                            Name        = "Duration to retry a state lock.";
                            Description = "Duration to retry a state lock.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List Workspaces";
                },
                [CommandParameter]@{
                    Keys        = @("new");
                    Name        = "new";
                    Description = "Create a new workspace";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--lock");
                            Name        = "Don't hold a state lock during the operation.";
                            Description = "Don't hold a state lock during the operation.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--lock-timeout");
                            Name        = "Duration to retry a state lock.";
                            Description = "Duration to retry a state lock.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--state");
                            Name        = "Copy an existing state file into the new workspace.";
                            Description = "Copy an existing state file into the new workspace.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("select");
                    Name        = "select";
                    Description = "Select a workspace";
                },
                [CommandParameter]@{
                    Keys        = @("show");
                    Name        = "show";
                    Description = "Show the name of the current workspac";
                }
            )
        }
    )
}
