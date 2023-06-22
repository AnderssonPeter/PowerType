# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.passwordstore.org/";
    Keys        = @("pass");
    Name        = "pass";
    Description = "stores, retrieves, generates, and synchronizes passwords securely";
    Parameters  = @(
        [CommandParameter]@{
            Keys        = @("cp");
            Name        = "cp";
            Description = "copies old-path to new-path";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "cp forcefully";
                    Description = "cp forcefully";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("edit");
            Name        = "edit";
            Description = "insert a new password or edit an existing";
        },
        [CommandParameter]@{
            Keys        = @("find");
            Name        = "find";
            Description = "list passwords that match pass-name";
        },
        [CommandParameter]@{
            Keys        = @("generate");
            Name        = "generate";
            Description = "generate a new password";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--clip", "-c");
                    Name        = "additionally put on clipboard";
                    Description = "additionally put on clipboard";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "prompt before overwriting";
                    Description = "prompt before overwriting";
                },
                [FlagParameter]@{
                    Keys        = @("--in-place", "-i");
                    Name        = "only replace first line of existing";
                    Description = "only replace first line of existing";
                },
                [FlagParameter]@{
                    Keys        = @("--no-symbols", "-n");
                    Name        = "without symbols";
                    Description = "without symbols";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("git");
            Name        = "git";
            Description = "execute a git command";
        },
        [CommandParameter]@{
            Keys        = @("grep");
            Name        = "grep";
            Description = "search for passwords files containing search-string when decryted";
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "show help";
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "initialize new password storage";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--path", "-p");
                    Name        = "subfolder";
                    Description = "subfolder";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("insert");
            Name        = "insert";
            Description = "insert new password";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--echo", "-e");
                    Name        = "echo the password back to the console";
                    Description = "echo the password back to the console";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "overwrite existing entry without prompt";
                    Description = "overwrite existing entry without prompt";
                },
                [FlagParameter]@{
                    Keys        = @("--multiline", "-m");
                    Name        = "multiline entry";
                    Description = "multiline entry";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ls");
            Name        = "ls";
            Description = "list passwords";
        },
        [CommandParameter]@{
            Keys        = @("mv");
            Name        = "mv";
            Description = "rename or move old-path to new-path";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "mv forcefully";
                    Description = "mv forcefully";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rm");
            Name        = "rm";
            Description = "remove existing password or directory";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "remove forcefully";
                    Description = "remove forcefully";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-r");
                    Name        = "remove recursively";
                    Description = "remove recursively";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("show");
            Name        = "show";
            Description = "show existing password";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--clip", "-c");
                    Name        = "put on clipboard";
                    Description = "put on clipboard";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "show version";
        }
    )
}
