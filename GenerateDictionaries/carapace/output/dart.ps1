# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://dart.dev/";
    Keys        = @("dart");
    Name        = "dart";
    Description = "A command-line utility for Dart development";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--disable-analytics");
            Name        = "Disable analytics.";
            Description = "Disable analytics.";
        },
        [FlagParameter]@{
            Keys        = @("--enable-analytics");
            Name        = "Enable analytics.";
            Description = "Enable analytics.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this usage information.";
            Description = "Print this usage information.";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Show additional command output.";
            Description = "Show additional command output.";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Print the Dart SDK version.";
            Description = "Print the Dart SDK version.";
        },
        [CommandParameter]@{
            Keys        = @("analyze");
            Name        = "analyze";
            Description = "Analyze Dart code in a directory";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--fatal-infos");
                    Name        = "Treat info level issues as fatal.";
                    Description = "Treat info level issues as fatal.";
                },
                [FlagParameter]@{
                    Keys        = @("--fatal-warnings");
                    Name        = "Treat warning level issues as fatal.";
                    Description = "Treat warning level issues as fatal.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-fatal-warnings");
                    Name        = "Do not treat warning level issues as fatal.";
                    Description = "Do not treat warning level issues as fatal.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("compile");
            Name        = "compile";
            Description = "Compile Dart to various formats";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [CommandParameter]@{
                    Keys        = @("aot-snapshot");
                    Name        = "aot-snapshot";
                    Description = "Compile Dart to an AOT snapshot";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--define", "-D");
                            Name        = "Define an environment declaration.";
                            Description = "Define an environment declaration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-asserts");
                            Name        = "Enable assert statements.";
                            Description = "Enable assert statements.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-sound-null-safety");
                            Name        = "Do not respect the nullability of types at runtime.";
                            Description = "Do not respect the nullability of types at runtime.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Write the output to <file name>.";
                            Description = "Write the output to <file name>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--packages", "-p");
                            Name        = "Get package locations from the specified file instead of .packages.";
                            Description = "Get package locations from the specified file instead of .packages.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--save-debugging-info", "-S");
                            Name        = "Remove debugging information from the output and save it separately to the specified file.";
                            Description = "Remove debugging information from the output and save it separately to the specified file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--sound-null-safety");
                            Name        = "Respect the nullability of types at runtime.";
                            Description = "Respect the nullability of types at runtime.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--verbosity");
                            Name        = "Sets the verbosity level of the compilation.";
                            Description = "Sets the verbosity level of the compilation.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("exe");
                    Name        = "exe";
                    Description = "Compile Dart to a self-contained executable";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--define", "-D");
                            Name        = "Define an environment declaration.";
                            Description = "Define an environment declaration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-asserts");
                            Name        = "Enable assert statements.";
                            Description = "Enable assert statements.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-sound-null-safety");
                            Name        = "Do not respect the nullability of types at runtime.";
                            Description = "Do not respect the nullability of types at runtime.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Write the output to <file name>.";
                            Description = "Write the output to <file name>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--packages", "-p");
                            Name        = "Get package locations from the specified file instead of .packages.";
                            Description = "Get package locations from the specified file instead of .packages.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--save-debugging-info", "-S");
                            Name        = "Remove debugging information from the output and save it separately to the specified file.";
                            Description = "Remove debugging information from the output and save it separately to the specified file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--sound-null-safety");
                            Name        = "Respect the nullability of types at runtime.";
                            Description = "Respect the nullability of types at runtime.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--verbosity");
                            Name        = "Sets the verbosity level of the compilation.";
                            Description = "Sets the verbosity level of the compilation.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("jit-snapshot");
                    Name        = "jit-snapshot";
                    Description = "Compile Dart to a JIT snapshot";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Write the output to <file name>.";
                            Description = "Write the output to <file name>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--verbosity");
                            Name        = "Sets the verbosity level of the compilation.";
                            Description = "Sets the verbosity level of the compilation.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("js");
                    Name        = "js";
                    Description = "Compile Dart to JavaScript";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--define", "-D");
                            Name        = "Define an environment declaration.";
                            Description = "Define an environment declaration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--minified", "-m");
                            Name        = "Generate minified output.";
                            Description = "Generate minified output.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Write the output to <file name>.";
                            Description = "Write the output to <file name>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--verbosity");
                            Name        = "Sets the verbosity level of the compilation.";
                            Description = "Sets the verbosity level of the compilation.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("kernel");
                    Name        = "kernel";
                    Description = "Compile Dart to a kernel snapshot";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Write the output to <file name>.";
                            Description = "Write the output to <file name>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--verbosity");
                            Name        = "Sets the verbosity level of the compilation.";
                            Description = "Sets the verbosity level of the compilation.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("create");
            Name        = "create";
            Description = "Create a new Dart project";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Force project generation, even if the target directory already exists.";
                    Description = "Force project generation, even if the target directory already exists.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pub");
                    Name        = "Do not run 'pub get' after the project has been created.";
                    Description = "Do not run 'pub get' after the project has been created.";
                },
                [FlagParameter]@{
                    Keys        = @("--pub");
                    Name        = "Run 'pub get' after the project has been created.";
                    Description = "Run 'pub get' after the project has been created.";
                },
                [ValueParameter]@{
                    Keys        = @("--template", "-t");
                    Name        = "The project template to use.";
                    Description = "The project template to use.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fix");
            Name        = "fix";
            Description = "Apply automated fixes to Dart source code";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--apply");
                    Name        = "Apply the proposed changes.";
                    Description = "Apply the proposed changes.";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-n");
                    Name        = "Preview the proposed changes but make no changes.";
                    Description = "Preview the proposed changes but make no changes.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("format");
            Name        = "format";
            Description = "Idiomatically format Dart source code";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--fix");
                    Name        = "Apply all style fixes.";
                    Description = "Apply all style fixes.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--line-length", "-l");
                    Name        = "Wrap lines longer than this.";
                    Description = "Wrap lines longer than this.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Set where to write formatted output.";
                    Description = "Set where to write formatted output.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--set-exit-if-changed");
                    Name        = "Return exit code 1 if there are any formatting changes.";
                    Description = "Return exit code 1 if there are any formatting changes.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Show all options and flags with --help.";
                    Description = "Show all options and flags with --help.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("migrate");
            Name        = "migrate";
            Description = "Perform null safety migration on a project";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--apply-changes");
                    Name        = "Apply the proposed null safety changes to the files on disk.";
                    Description = "Apply the proposed null safety changes to the files on disk.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-errors");
                    Name        = "Attempt to perform null safety analysis even if the project has analysis errors.";
                    Description = "Attempt to perform null safety analysis even if the project has analysis errors.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-web-preview");
                    Name        = "Print proposed changes to the console.";
                    Description = "Print proposed changes to the console.";
                },
                [ValueParameter]@{
                    Keys        = @("--preview-hostname");
                    Name        = "Run the preview server on the specified hostname.";
                    Description = "Run the preview server on the specified hostname.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--preview-port");
                    Name        = "Run the preview server on the specified port.";
                    Description = "Run the preview server on the specified port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-import-check");
                    Name        = "Go ahead with migration even if some imported files have not yet been migrated.";
                    Description = "Go ahead with migration even if some imported files have not yet been migrated.";
                },
                [ValueParameter]@{
                    Keys        = @("--summary");
                    Name        = "Output a machine-readable summary of migration changes.";
                    Description = "Output a machine-readable summary of migration changes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Show additional command output.";
                    Description = "Show additional command output.";
                },
                [FlagParameter]@{
                    Keys        = @("--web-preview");
                    Name        = "Show an interactive preview of the proposed null safety changes in a browser window.";
                    Description = "Show an interactive preview of the proposed null safety changes in a browser window.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pub");
            Name        = "pub";
            Description = "Work with packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-trace");
                    Name        = "Do not print debugging information when an error occurs.";
                    Description = "Do not print debugging information when an error occurs.";
                },
                [FlagParameter]@{
                    Keys        = @("--trace");
                    Name        = "Print debugging information when an error occurs.";
                    Description = "Print debugging information when an error occurs.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Shortcut for `"--verbosity=all`".";
                    Description = "Shortcut for `"--verbosity=all`".";
                },
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add a dependency to pubspec.yaml";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dev", "-d");
                            Name        = "Adds package to the development dependencies instead.";
                            Description = "Adds package to the development dependencies instead.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory <dir>.";
                            Description = "Run this in the directory <dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change";
                            Description = "Report what dependencies would change but don't change";
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-path");
                            Name        = "Path of git package in repository";
                            Description = "Path of git package in repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-ref");
                            Name        = "Git branch or commit to be retrieved";
                            Description = "Git branch or commit to be retrieved";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-url");
                            Name        = "Git URL of the package";
                            Description = "Git URL of the package";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--hosted-url");
                            Name        = "URL of package host server";
                            Description = "URL of package host server";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-precompile");
                            Name        = "Do not build executables in immediate dependencies.";
                            Description = "Do not build executables in immediate dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--path");
                            Name        = "Local path";
                            Description = "Local path";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--precompile");
                            Name        = "Build executables in immediate dependencies.";
                            Description = "Build executables in immediate dependencies.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--sdk");
                            Name        = "SDK source for package";
                            Description = "SDK source for package";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("cache");
                    Name        = "cache";
                    Description = "Work with the system cache";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [CommandParameter]@{
                            Keys        = @("add");
                            Name        = "add";
                            Description = "Install a package";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--all");
                                    Name        = "Install all matching versions.";
                                    Description = "Install all matching versions.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--version", "-v");
                                    Name        = "Version constraint.";
                                    Description = "Version constraint.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("clean");
                            Name        = "clean";
                            Description = "Clears the global PUB_CACHE";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Don't ask for confirmation.";
                                    Description = "Don't ask for confirmation.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("repair");
                            Name        = "repair";
                            Description = "Reinstall cached packages";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("deps");
                    Name        = "deps";
                    Description = "Print package dependencies";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dev");
                            Name        = "Include dev dependencies.";
                            Description = "Include dev dependencies.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>";
                            Description = "Run this in the directory<dir>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--executables");
                            Name        = "List all available executables.";
                            Description = "List all available executables.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output dependency information in a json format.";
                            Description = "Output dependency information in a json format.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-dev");
                            Name        = "Do not include dev dependencies.";
                            Description = "Do not include dev dependencies.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--style", "-s");
                            Name        = "How output should be displayed.";
                            Description = "How output should be displayed.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("downgrade");
                    Name        = "downgrade";
                    Description = "Downgrade the current package's dependencies to oldest versions";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>.";
                            Description = "Run this in the directory<dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change any.";
                            Description = "Report what dependencies would change but don't change any.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Get the current package's dependencies";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change any.";
                            Description = "Report what dependencies would change but don't change any.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-precompile");
                            Name        = "Do not precompile executables in immediate dependencies.";
                            Description = "Do not precompile executables in immediate dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--precompile");
                            Name        = "Precompile executables in immediate dependencies.";
                            Description = "Precompile executables in immediate dependencies.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("global");
                    Name        = "global";
                    Description = "Work with global packages";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [CommandParameter]@{
                            Keys        = @("activate");
                            Name        = "activate";
                            Description = "Make a package's executables globally available";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--executable", "-x");
                                    Name        = "Executable(s) to place on PATH.";
                                    Description = "Executable(s) to place on PATH.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--hosted-url", "-u");
                                    Name        = "A custom pub server URL for the package.";
                                    Description = "A custom pub server URL for the package.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-executables");
                                    Name        = "Do not put executables on PATH.";
                                    Description = "Do not put executables on PATH.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--overwrite");
                                    Name        = "Overwrite executables from other packages with the same";
                                    Description = "Overwrite executables from other packages with the same";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--source", "-s");
                                    Name        = "The source used to find the package.";
                                    Description = "The source used to find the package.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("deactivate");
                            Name        = "deactivate";
                            Description = "Remove a previously activated package";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List globally activated packages";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("run");
                            Name        = "run";
                            Description = "Run an executable from a package";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--enable-asserts");
                                    Name        = "Enable assert statements.";
                                    Description = "Enable assert statements.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--enable-experiment");
                                    Name        = "Runs the executable in a VM with the given experiments enabled.";
                                    Description = "Runs the executable in a VM with the given experiments enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-enable-asserts");
                                    Name        = "Disable assert statements.";
                                    Description = "Disable assert statements.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-sound-null-safety");
                                    Name        = "Do not override the default null safety execution mode.";
                                    Description = "Do not override the default null safety execution mode.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--sound-null-safety");
                                    Name        = "Override the default null safety execution mode.";
                                    Description = "Override the default null safety execution mode.";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("login");
                    Name        = "login";
                    Description = "Log into pub.dev";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("logout");
                    Name        = "logout";
                    Description = "Log out of pub.dev";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("outdated");
                    Name        = "outdated";
                    Description = "Analyze your dependencies to find which ones can be upgraded";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--color");
                            Name        = "Color the output.";
                            Description = "Color the output.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--dependency-overrides");
                            Name        = "Show resolutions with ``dependency_overrides``.";
                            Description = "Show resolutions with ``dependency_overrides``.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--dev-dependencies");
                            Name        = "Take dev dependencies into account.";
                            Description = "Take dev dependencies into account.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory <dir>.";
                            Description = "Run this in the directory <dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output the results using a json format.";
                            Description = "Output the results using a json format.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--mode");
                            Name        = "Highlight versions with PROPERTY.";
                            Description = "Highlight versions with PROPERTY.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-color");
                            Name        = "Do not color the output.";
                            Description = "Do not color the output.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-dependency-overrides");
                            Name        = "Do not show resolutions with ``dependency_overrides``.";
                            Description = "Do not show resolutions with ``dependency_overrides``.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-dev-dependencies");
                            Name        = "Do not take dev dependencies into account.";
                            Description = "Do not take dev dependencies into account.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-prereleases");
                            Name        = "Do not include prereleases in latest version.";
                            Description = "Do not include prereleases in latest version.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-show-all");
                            Name        = "Do not include dependencies that are already fullfilling --mode.";
                            Description = "Do not include dependencies that are already fullfilling --mode.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-transitive");
                            Name        = "Do not show transitive dependencies.";
                            Description = "Do not show transitive dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--prereleases");
                            Name        = "Include prereleases in latest version.";
                            Description = "Include prereleases in latest version.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--show-all");
                            Name        = "Include dependencies that are already fullfilling --mode.";
                            Description = "Include dependencies that are already fullfilling --mode.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--transitive");
                            Name        = "Show transitive dependencies.";
                            Description = "Show transitive dependencies.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("publish");
                    Name        = "publish";
                    Description = "Publish the current package to pub.dartlang.org";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>.";
                            Description = "Run this in the directory<dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Validate but do not publish the package.";
                            Description = "Validate but do not publish the package.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Publish without confirmation if there are no errors.";
                            Description = "Publish without confirmation if there are no errors.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "Removes a dependency from the current package";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change";
                            Description = "Report what dependencies would change but don't change";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-precompile");
                            Name        = "Do not precompile executables in immediate dependencies.";
                            Description = "Do not precompile executables in immediate dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--precompile");
                            Name        = "Precompile executables in immediate dependencies.";
                            Description = "Precompile executables in immediate dependencies.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("upgrade");
                    Name        = "upgrade";
                    Description = "Upgrade the current package's dependencies to latest versions";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change any.";
                            Description = "Report what dependencies would change but don't change any.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--major-versions");
                            Name        = "Upgrades packages to their latest resolvable versions";
                            Description = "Upgrades packages to their latest resolvable versions";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-precompile");
                            Name        = "Do not precompile executables in immediate dependencies.";
                            Description = "Do not precompile executables in immediate dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-safety");
                            Name        = "Upgrade constraints in pubspec.yaml to null-safety versions";
                            Description = "Upgrade constraints in pubspec.yaml to null-safety versions";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--precompile");
                            Name        = "Precompile executables in immediate dependencies.";
                            Description = "Precompile executables in immediate dependencies.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("uploader");
                    Name        = "uploader";
                    Description = "Manage uploaders for a package on pub.dartlang.org";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--package");
                            Name        = "The package whose uploaders will be modified.";
                            Description = "The package whose uploaders will be modified.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run a Dart program";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--define", "-D");
                    Name        = "Define an environment declaration.";
                    Description = "Define an environment declaration.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--enable-asserts");
                    Name        = "Enable assert statements.";
                    Description = "Enable assert statements.";
                },
                [ValueParameter]@{
                    Keys        = @("--enable-vm-service");
                    Name        = "Enables the VM service and listens on the specified port for connections";
                    Description = "Enables the VM service and listens on the specified port for connections";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-asserts");
                    Name        = "Enable assert statements.";
                    Description = "Enable assert statements.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pause-isolates-on-exit");
                    Name        = "Do not pause isolates on exit when running with --enable-vm-service.";
                    Description = "Do not pause isolates on exit when running with --enable-vm-service.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pause-isolates-on-start");
                    Name        = "Pause isolates on start when running with --enable-vm-service.";
                    Description = "Pause isolates on start when running with --enable-vm-service.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pause-isolates-on-unhandled-exceptions");
                    Name        = "Do not pause isolates when an unhandled exception is encountered when running with --enable-vm-service.";
                    Description = "Do not pause isolates when an unhandled exception is encountered when running with --enable-vm-service.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-warn-on-pause-with-no-debugger");
                    Name        = "Do not print a warning when an isolate pauses with no attached debugger when running with --enable-vm-service.";
                    Description = "Do not print a warning when an isolate pauses with no attached debugger when running with --enable-vm-service.";
                },
                [ValueParameter]@{
                    Keys        = @("--observe");
                    Name        = "The observe flag is a convenience flag used to run a program with a set of common options useful for debugging.";
                    Description = "The observe flag is a convenience flag used to run a program with a set of common options useful for debugging.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pause-isolates-on-exit");
                    Name        = "Pause isolates on exit when running with --enable-vm-service.";
                    Description = "Pause isolates on exit when running with --enable-vm-service.";
                },
                [FlagParameter]@{
                    Keys        = @("--pause-isolates-on-start");
                    Name        = "Pause isolates on start when running with --enable-vm-service.";
                    Description = "Pause isolates on start when running with --enable-vm-service.";
                },
                [FlagParameter]@{
                    Keys        = @("--pause-isolates-on-unhandled-exceptions");
                    Name        = "Pause isolates when an unhandled exception is encountered when running with --enable-vm-service.";
                    Description = "Pause isolates when an unhandled exception is encountered when running with --enable-vm-service.";
                },
                [ValueParameter]@{
                    Keys        = @("--verbosity");
                    Name        = "Sets the verbosity level of the compilation.";
                    Description = "Sets the verbosity level of the compilation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--warn-on-pause-with-no-debugger");
                    Name        = "Print a warning when an isolate pauses with no attached debugger when running with --enable-vm-service.";
                    Description = "Print a warning when an isolate pauses with no attached debugger when running with --enable-vm-service.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "Run tests for a project";
        }
    )
}
