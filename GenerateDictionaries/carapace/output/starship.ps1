# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://starship.rs/";
    Keys        = @("starship");
    Name        = "starship";
    Description = "The cross-shell prompt for astronauts";
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
        },
        [CommandParameter]@{
            Keys        = @("bug-report");
            Name        = "bug-report";
            Description = "Create a pre-populated GitHub issue with information about your configuration";
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
            Keys        = @("completions");
            Name        = "completions";
            Description = "Generate starship shell completions for your shell to stdout";
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
            Keys        = @("config");
            Name        = "config";
            Description = "Edit the starship configuration";
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
            Keys        = @("explain");
            Name        = "explain";
            Description = "Explains the currently showing modules";
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
            Keys        = @("help");
            Name        = "help";
            Description = "Prints this message or the help of the given subcommand(s)";
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Prints the shell function used to execute starship";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--print-full-init");
                    Name        = "Print the main initialization script (as opposed to the init stub)";
                    Description = "Print the main initialization script (as opposed to the init stub)";
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("module");
            Name        = "module";
            Description = "Prints a specific prompt module";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cmd-duration", "-d");
                    Name        = "The execution duration of the last command, in milliseconds";
                    Description = "The execution duration of the last command, in milliseconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "The number of currently running jobs";
                    Description = "The number of currently running jobs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keymap", "-k");
                    Name        = "The keymap of fish/zsh";
                    Description = "The keymap of fish/zsh";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--list", "-l");
                    Name        = "List out all supported modules";
                    Description = "List out all supported modules";
                },
                [ValueParameter]@{
                    Keys        = @("--path", "-p");
                    Name        = "The path that the prompt should render for";
                    Description = "The path that the prompt should render for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--status", "-s");
                    Name        = "The status code of the previously run command";
                    Description = "The status code of the previously run command";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("prompt");
            Name        = "prompt";
            Description = "Prints the full starship prompt";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cmd-duration", "-d");
                    Name        = "The execution duration of the last command, in milliseconds";
                    Description = "The execution duration of the last command, in milliseconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "The number of currently running jobs";
                    Description = "The number of currently running jobs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keymap", "-k");
                    Name        = "The keymap of fish/zsh";
                    Description = "The keymap of fish/zsh";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path", "-p");
                    Name        = "The path that the prompt should render for";
                    Description = "The path that the prompt should render for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--status", "-s");
                    Name        = "The status code of the previously run command";
                    Description = "The status code of the previously run command";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("session");
            Name        = "session";
            Description = "Generate random session key";
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
            Keys        = @("timings");
            Name        = "timings";
            Description = "Prints timings of all active modules";
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
}
