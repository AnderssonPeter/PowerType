# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/mkdir";
    Keys        = @("mkdir");
    Name        = "mkdir";
    Description = "make directories";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-Z");
            Name        = "set SELinux security context of each created directory to the default type";
            Description = "set SELinux security context of each created directory to the default type";
        },
        [ValueParameter]@{
            Keys        = @("--context");
            Name        = "like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX";
            Description = "like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--mode", "-m");
            Name        = "set file mode (as in chmod), not a=rwx - umask";
            Description = "set file mode (as in chmod), not a=rwx - umask";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--parents", "-p");
            Name        = "no error if existing, make parent directories as needed";
            Description = "no error if existing, make parent directories as needed";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "print a message for each created directory";
            Description = "print a message for each created directory";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Generate the autocompletion script for the specified shell";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("bash");
                    Name        = "bash";
                    Description = "Generate the autocompletion script for bash";
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
                    Description = "Generate the autocompletion script for fish";
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
                    Description = "Generate the autocompletion script for powershell";
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
                    Description = "Generate the autocompletion script for zsh";
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
        }
    )
}
