# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://rustup.rs/";
    Keys        = @("rustup");
    Name        = "rustup";
    Description = "installer for the systems programming language Rust";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Disable progress output";
            Description = "Disable progress output";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Enable verbose output";
            Description = "Enable verbose output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Prints version information";
            Description = "Prints version information";
        },
        [CommandParameter]@{
            Keys        = @("check");
            Name        = "check";
            Description = "Check for updates to Rust toolchains";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completions");
            Name        = "completions";
            Description = "Generate tab-completion scripts for your shell";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("component");
            Name        = "component";
            Description = "Modify a toolchain's installed components";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add a component to a Rust toolchain";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target");
                            Name        = "";
                            Description = "";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--toolchain");
                            Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List installed and available components";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--installed");
                            Name        = "List only installed components";
                            Description = "List only installed components";
                        },
                        [ValueParameter]@{
                            Keys        = @("--toolchain");
                            Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "Remove a component from a Rust toolchain";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target");
                            Name        = "";
                            Description = "";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--toolchain");
                            Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("default");
            Name        = "default";
            Description = "Set the default toolchain";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("doc");
            Name        = "doc";
            Description = "Open the documentation for the current toolchain";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--alloc");
                    Name        = "The Rust core allocation and collections library";
                    Description = "The Rust core allocation and collections library";
                },
                [FlagParameter]@{
                    Keys        = @("--book");
                    Name        = "The Rust Programming Language book";
                    Description = "The Rust Programming Language book";
                },
                [FlagParameter]@{
                    Keys        = @("--cargo");
                    Name        = "The Cargo Book";
                    Description = "The Cargo Book";
                },
                [FlagParameter]@{
                    Keys        = @("--core");
                    Name        = "The Rust Core Library";
                    Description = "The Rust Core Library";
                },
                [FlagParameter]@{
                    Keys        = @("--edition-guide");
                    Name        = "The Rust Edition Guide";
                    Description = "The Rust Edition Guide";
                },
                [FlagParameter]@{
                    Keys        = @("--embedded-book");
                    Name        = "The Embedded Rust Book";
                    Description = "The Embedded Rust Book";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--nomicon");
                    Name        = "The Dark Arts of Advanced and Unsafe Rust Programming";
                    Description = "The Dark Arts of Advanced and Unsafe Rust Programming";
                },
                [FlagParameter]@{
                    Keys        = @("--path");
                    Name        = "Only print the path to the documentation";
                    Description = "Only print the path to the documentation";
                },
                [FlagParameter]@{
                    Keys        = @("--proc_macro");
                    Name        = "A support library for macro authors when defining new macros";
                    Description = "A support library for macro authors when defining new macros";
                },
                [FlagParameter]@{
                    Keys        = @("--reference");
                    Name        = "The Rust Reference";
                    Description = "The Rust Reference";
                },
                [FlagParameter]@{
                    Keys        = @("--rust-by-example");
                    Name        = "A collection of runnable examples that illustrate various Rust concepts and standard";
                    Description = "A collection of runnable examples that illustrate various Rust concepts and standard";
                },
                [FlagParameter]@{
                    Keys        = @("--rustc");
                    Name        = "The compiler for the Rust programming language";
                    Description = "The compiler for the Rust programming language";
                },
                [FlagParameter]@{
                    Keys        = @("--rustdoc");
                    Name        = "Generate documentation for Rust projects";
                    Description = "Generate documentation for Rust projects";
                },
                [FlagParameter]@{
                    Keys        = @("--std");
                    Name        = "Standard library API documentation";
                    Description = "Standard library API documentation";
                },
                [FlagParameter]@{
                    Keys        = @("--test");
                    Name        = "Support code for rustc's built in unit-test and micro-benchmarking framework";
                    Description = "Support code for rustc's built in unit-test and micro-benchmarking framework";
                },
                [ValueParameter]@{
                    Keys        = @("--toolchain");
                    Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                    Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--unstable-book");
                    Name        = "The Unstable Book";
                    Description = "The Unstable Book";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Prints this message or the help of the given subcommand(s)";
        },
        [CommandParameter]@{
            Keys        = @("man");
            Name        = "man";
            Description = "View the man page for a given command";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--toolchain");
                    Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                    Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("override");
            Name        = "override";
            Description = "Modify directory toolchain overrides";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List directory toolchain overrides";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Set the override toolchain for a directory";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [ValueParameter]@{
                            Keys        = @("--path");
                            Name        = "Path to the directory";
                            Description = "Path to the directory";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("unset");
                    Name        = "unset";
                    Description = "Remove the override toolchain for a directory";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--nonexistent");
                            Name        = "Remove override toolchain for all nonexistent directories";
                            Description = "Remove override toolchain for all nonexistent directories";
                        },
                        [ValueParameter]@{
                            Keys        = @("--path");
                            Name        = "Path to the directory";
                            Description = "Path to the directory";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run a command with an environment configured for a given toolchain";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--install");
                    Name        = "Install the requested toolchain if needed";
                    Description = "Install the requested toolchain if needed";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("self");
            Name        = "self";
            Description = "Modify the rustup installation";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [CommandParameter]@{
                    Keys        = @("uninstall");
                    Name        = "uninstall";
                    Description = "Uninstall rustup.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("-y");
                            Name        = "";
                            Description = "";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Download and install updates to rustup";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("upgrade-data");
                    Name        = "upgrade-data";
                    Description = "Upgrade the internal data format.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("set");
            Name        = "set";
            Description = "Alter rustup settings";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [CommandParameter]@{
                    Keys        = @("default-host");
                    Name        = "default-host";
                    Description = "The triple used to identify toolchains when not specified";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--version", "-V");
                            Name        = "Prints version information";
                            Description = "Prints version information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("profile");
                    Name        = "profile";
                    Description = "The default components installed";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--version", "-V");
                            Name        = "Prints version information";
                            Description = "Prints version information";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("show");
            Name        = "show";
            Description = "Show the active and installed toolchains or profiles";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [CommandParameter]@{
                    Keys        = @("active-toolchain");
                    Name        = "active-toolchain";
                    Description = "Show the active toolchain";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Disable progress output";
                            Description = "Disable progress output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Enable verbose output";
                            Description = "Enable verbose output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--version", "-V");
                            Name        = "Prints version information";
                            Description = "Prints version information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("help");
                    Name        = "help";
                    Description = "Prints this message or the help of the given subcommand(s)";
                },
                [CommandParameter]@{
                    Keys        = @("home");
                    Name        = "home";
                    Description = "Display the computed value of RUSTUP_HOME";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Disable progress output";
                            Description = "Disable progress output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Enable verbose output";
                            Description = "Enable verbose output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--version", "-V");
                            Name        = "Prints version information";
                            Description = "Prints version information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("keys");
                    Name        = "keys";
                    Description = "Display the known PGP keys";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Disable progress output";
                            Description = "Disable progress output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Enable verbose output";
                            Description = "Enable verbose output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--version", "-V");
                            Name        = "Prints version information";
                            Description = "Prints version information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("profile");
                    Name        = "profile";
                    Description = "Show the current profile";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Disable progress output";
                            Description = "Disable progress output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Enable verbose output";
                            Description = "Enable verbose output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--version", "-V");
                            Name        = "Prints version information";
                            Description = "Prints version information";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("target");
            Name        = "target";
            Description = "Modify a toolchain's supported targets";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add a target to a Rust toolchain";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [ValueParameter]@{
                            Keys        = @("--toolchain");
                            Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List installed and available targets";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--installed");
                            Name        = "List only installed targets";
                            Description = "List only installed targets";
                        },
                        [ValueParameter]@{
                            Keys        = @("--toolchain");
                            Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "Remove a target from a Rust toolchain";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [ValueParameter]@{
                            Keys        = @("--toolchain");
                            Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("toolchain");
            Name        = "toolchain";
            Description = "Modify or query the installed toolchains";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "Install or update a given toolchain";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-downgrade");
                            Name        = "Allow rustup to downgrade the toolchain to satisfy your component choice";
                            Description = "Allow rustup to downgrade the toolchain to satisfy your component choice";
                        },
                        [ValueParameter]@{
                            Keys        = @("--component", "-c");
                            Name        = "Add specific components on installation";
                            Description = "Add specific components on installation";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Force an update, even if some components are missing";
                            Description = "Force an update, even if some components are missing";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-self-update");
                            Name        = "Don't perform self update when running the``rustup toolchain install`` command";
                            Description = "Don't perform self update when running the``rustup toolchain install`` command";
                        },
                        [ValueParameter]@{
                            Keys        = @("--profile");
                            Name        = "[possible values: minimal, default, complete]";
                            Description = "[possible values: minimal, default, complete]";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "Add specific targets on installation";
                            Description = "Add specific targets on installation";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("link");
                    Name        = "link";
                    Description = "Create a custom toolchain by symlinking to a directory";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List installed toolchains";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Enable verbose output with toolchain information";
                            Description = "Enable verbose output with toolchain information";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("uninstall");
                    Name        = "uninstall";
                    Description = "Uninstall a toolchain";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Prints help information";
                            Description = "Prints help information";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "Update Rust toolchains and rustup";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Force an update, even if some components are missing";
                    Description = "Force an update, even if some components are missing";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--no-self-update");
                    Name        = "Don't perform self update when running the ``rustup update`` command";
                    Description = "Don't perform self update when running the ``rustup update`` command";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("which");
            Name        = "which";
            Description = "Display which binary will be run for a given command";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--toolchain");
                    Name        = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                    Description = "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
