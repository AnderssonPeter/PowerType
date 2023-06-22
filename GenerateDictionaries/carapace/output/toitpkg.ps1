# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/toitlang/tpkg";
    Keys        = @("toitpkg");
    Name        = "toitpkg";
    Description = "Run pkg commands";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cache");
            Name        = "cache dir";
            Description = "cache dir";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config");
            Name        = "config file";
            Description = "config file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for toitpkg";
            Description = "help for toitpkg";
        },
        [FlagParameter]@{
            Keys        = @("--no-autosync");
            Name        = "Don't automatically sync";
            Description = "Don't automatically sync";
        },
        [FlagParameter]@{
            Keys        = @("--no-default-registry");
            Name        = "Don't use default registry if none exists";
            Description = "Don't use default registry if none exists";
        },
        [ValueParameter]@{
            Keys        = @("--sdk-version");
            Name        = "The SDK version";
            Description = "The SDK version";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--track");
            Name        = "Print tracking information";
            Description = "Print tracking information";
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
            Description = "generate the autocompletion script for the specified shell";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("bash");
                    Name        = "bash";
                    Description = "generate the autocompletion script for bash";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("fish");
                    Name        = "fish";
                    Description = "generate the autocompletion script for fish";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("powershell");
                    Name        = "powershell";
                    Description = "generate the autocompletion script for powershell";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("zsh");
                    Name        = "zsh";
                    Description = "generate the autocompletion script for zsh";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
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
            Keys        = @("pkg");
            Name        = "pkg";
            Description = "Manage packages";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--project-root");
                    Name        = "Specify the project root";
                    Description = "Specify the project root";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("clean");
                    Name        = "clean";
                    Description = "Removes unnecessary packages";
                },
                [CommandParameter]@{
                    Keys        = @("describe");
                    Name        = "describe";
                    Description = "Generates a description of the given package";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-local-deps");
                            Name        = "Allow local dependencies and don't report them";
                            Description = "Allow local dependencies and don't report them";
                        },
                        [FlagParameter]@{
                            Keys        = @("--disallow-local-deps");
                            Name        = "Always disallow local dependencies and report them as error";
                            Description = "Always disallow local dependencies and report them as error";
                        },
                        [ValueParameter]@{
                            Keys        = @("--out-dir");
                            Name        = "Output directory of description files";
                            Description = "Output directory of description files";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Show more information";
                            Description = "Show more information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("init");
                    Name        = "init";
                    Description = "Creates a new package and lock file in the current directory";
                },
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "Installs a package in the current project, or downloads all dependencies";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "Treat package argument as local path";
                            Description = "Treat package argument as local path";
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "The name used for the 'import' clause";
                            Description = "The name used for the 'import' clause";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recompute");
                            Name        = "Recompute dependencies";
                            Description = "Recompute dependencies";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Lists all available packages";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Defines the output format (valid: 'list', 'json')";
                            Description = "Defines the output format (valid: 'list', 'json')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Show more information";
                            Description = "Show more information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("registry");
                    Name        = "registry";
                    Description = "Manages registries";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("add");
                            Name        = "add";
                            Description = "Adds a registry";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--local");
                                    Name        = "Registry is local";
                                    Description = "Registry is local";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List registries";
                        },
                        [CommandParameter]@{
                            Keys        = @("remove");
                            Name        = "remove";
                            Description = "Removes a registry";
                        },
                        [CommandParameter]@{
                            Keys        = @("sync");
                            Name        = "sync";
                            Description = "Synchronizes all registries";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("search");
                    Name        = "search";
                    Description = "Searches for the given name in all packages";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Show more information";
                            Description = "Show more information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("sync");
                    Name        = "sync";
                    Description = "Synchronizes all registries";
                },
                [CommandParameter]@{
                    Keys        = @("uninstall");
                    Name        = "uninstall";
                    Description = "Uninstalls the package with the given name";
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Updates all packages to their newest versions";
                }
            )
        }
    )
}
