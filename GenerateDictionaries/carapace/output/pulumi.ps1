# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.pulumi.com/";
    Keys        = @("pulumi");
    Name        = "pulumi";
    Description = "Pulumi command line";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "Colorize output. Choices are: always, never, raw, auto";
            Description = "Colorize output. Choices are: always, never, raw, auto";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cwd", "-C");
            Name        = "Run pulumi as if it had been started in another directory";
            Description = "Run pulumi as if it had been started in another directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disable-integrity-checking");
            Name        = "Disable integrity checking of checkpoint files";
            Description = "Disable integrity checking of checkpoint files";
        },
        [FlagParameter]@{
            Keys        = @("--emoji", "-e");
            Name        = "Enable emojis in the output";
            Description = "Enable emojis in the output";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for pulumi";
            Description = "help for pulumi";
        },
        [FlagParameter]@{
            Keys        = @("--logflow");
            Name        = "Flow log settings to child processes (like plugins)";
            Description = "Flow log settings to child processes (like plugins)";
        },
        [FlagParameter]@{
            Keys        = @("--logtostderr");
            Name        = "Log to stderr instead of to files";
            Description = "Log to stderr instead of to files";
        },
        [FlagParameter]@{
            Keys        = @("--non-interactive");
            Name        = "Disable interactive mode for all commands";
            Description = "Disable interactive mode for all commands";
        },
        [ValueParameter]@{
            Keys        = @("--profiling");
            Name        = "Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively";
            Description = "Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tracing");
            Name        = "Emit tracing to the specified endpoint. Use the ``file:`` scheme to write tracing data to a local file";
            Description = "Emit tracing to the specified endpoint. Use the ``file:`` scheme to write tracing data to a local file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tracing-header");
            Name        = "Include the tracing header with the given contents.";
            Description = "Include the tracing header with the given contents.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Enable verbose logging (e.g., v=3); anything >3 is very verbose";
            Description = "Enable verbose logging (e.g., v=3); anything >3 is very verbose";
            # Source = $?? # todo: Fix or remove this!
        },
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("about");
            Name        = "about";
            Description = "Print information about the Pulumi environment.";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json", "-j");
                    Name        = "Emit output as JSON";
                    Description = "Emit output as JSON";
                },
                [FlagParameter]@{
                    Keys        = @("--transitive", "-t");
                    Name        = "Include transitive dependencies";
                    Description = "Include transitive dependencies";
                },
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("cancel");
            Name        = "cancel";
            Description = "Cancel a stack's currently running update, if any";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Skip confirmation prompts, and proceed with cancellation anyway";
                    Description = "Skip confirmation prompts, and proceed with cancellation anyway";
                },
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Manage configuration";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Use the configuration values in the specified file rather than detecting the file name";
                    Description = "Use the configuration values in the specified file rather than detecting the file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--json", "-j");
                    Name        = "Emit output as JSON";
                    Description = "Emit output as JSON";
                },
                [FlagParameter]@{
                    Keys        = @("--show-secrets");
                    Name        = "Show secret values when listing config instead of displaying blinded values";
                    Description = "Show secret values when listing config instead of displaying blinded values";
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                ,
                [CommandParameter]@{
                    Keys        = @("cp");
                    Name        = "cp";
                    Description = "Copy config to another stack";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--dest", "-d");
                            Name        = "The name of the new stack to copy the config to";
                            Description = "The name of the new stack to copy the config to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--path");
                            Name        = "The key contains a path to a property in a map or list to set";
                            Description = "The key contains a path to a property in a map or list to set";
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Get a single configuration value";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--json", "-j");
                            Name        = "Emit output as JSON";
                            Description = "Emit output as JSON";
                        },
                        [FlagParameter]@{
                            Keys        = @("--path");
                            Name        = "The key contains a path to a property in a map or list to get";
                            Description = "The key contains a path to a property in a map or list to get";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("refresh");
                    Name        = "refresh";
                    Description = "Update the local configuration based on the most recent deployment of the stack";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Overwrite configuration file, if it exists, without creating a backup";
                            Description = "Overwrite configuration file, if it exists, without creating a backup";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove configuration value";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--path");
                            Name        = "The key contains a path to a property in a map or list to remove";
                            Description = "The key contains a path to a property in a map or list to remove";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm-all");
                    Name        = "rm-all";
                    Description = "Remove multiple configuration values";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--path");
                            Name        = "Parse the keys as paths in a map or list rather than raw strings";
                            Description = "Parse the keys as paths in a map or list rather than raw strings";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Set configuration value";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--path");
                            Name        = "The key contains a path to a property in a map or list to set";
                            Description = "The key contains a path to a property in a map or list to set";
                        },
                        [FlagParameter]@{
                            Keys        = @("--plaintext");
                            Name        = "Save the value as plaintext (unencrypted)";
                            Description = "Save the value as plaintext (unencrypted)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--secret");
                            Name        = "Encrypt the value instead of storing it in plaintext";
                            Description = "Encrypt the value instead of storing it in plaintext";
                        },
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set-all");
                    Name        = "set-all";
                    Description = "Set multiple configuration values";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--path");
                            Name        = "Parse the keys as paths in a map or list rather than raw strings";
                            Description = "Parse the keys as paths in a map or list rather than raw strings";
                        },
                        [ValueParameter]@{
                            Keys        = @("--plaintext");
                            Name        = "Marks a value as plaintext (unencrypted)";
                            Description = "Marks a value as plaintext (unencrypted)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--secret");
                            Name        = "Marks a value as secret to be encrypted";
                            Description = "Marks a value as secret to be encrypted";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                        ,
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("console");
            Name        = "console";
            Description = "Opens the current stack in the Pulumi Console";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to view";
                    Description = "The name of the stack to view";
                    # Source = $?? # todo: Fix or remove this!
                },
            )
        },
        [CommandParameter]@{
            Keys        = @("destroy");
            Name        = "destroy";
            Description = "Destroy an existing stack and its resources";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Use the configuration values in the specified file rather than detecting the file name";
                    Description = "Use the configuration values in the specified file rather than detecting the file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug", "-d");
                    Name        = "Print detailed debugging output during resource operations";
                    Description = "Print detailed debugging output during resource operations";
                },
                [FlagParameter]@{
                    Keys        = @("--diff");
                    Name        = "Display operation as a rich diff showing the overall change";
                    Description = "Display operation as a rich diff showing the overall change";
                },
                [FlagParameter]@{
                    Keys        = @("--exclude-protected");
                    Name        = "Do not destroy protected resources. Destroy all other resources.";
                    Description = "Do not destroy protected resources. Destroy all other resources.";
                },
                [ValueParameter]@{
                    Keys        = @("--exec-agent");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--exec-kind");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--json", "-j");
                    Name        = "Serialize the destroy diffs, operations, and overall output as JSON";
                    Description = "Serialize the destroy diffs, operations, and overall output as JSON";
                },
                [ValueParameter]@{
                    Keys        = @("--message", "-m");
                    Name        = "Optional message to associate with the destroy operation";
                    Description = "Optional message to associate with the destroy operation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel", "-p");
                    Name        = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    Description = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--refresh", "-r");
                    Name        = "Refresh the state of the stack's resources before this update";
                    Description = "Refresh the state of the stack's resources before this update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-config");
                    Name        = "Show configuration keys and variables";
                    Description = "Show configuration keys and variables";
                },
                [FlagParameter]@{
                    Keys        = @("--show-replacement-steps");
                    Name        = "Show detailed resource replacement creates and deletes instead of a single step";
                    Description = "Show detailed resource replacement creates and deletes instead of a single step";
                },
                [FlagParameter]@{
                    Keys        = @("--show-sames");
                    Name        = "Show resources that don't need to be updated because they haven't changed, alongside those that do";
                    Description = "Show resources that don't need to be updated because they haven't changed, alongside those that do";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-preview", "-f");
                    Name        = "Do not perform a preview before performing the destroy";
                    Description = "Do not perform a preview before performing the destroy";
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--suppress-outputs");
                    Name        = "Suppress display of stack outputs (in case they contain sensitive values)";
                    Description = "Suppress display of stack outputs (in case they contain sensitive values)";
                },
                [ValueParameter]@{
                    Keys        = @("--suppress-permalink");
                    Name        = "Suppress display of the state permalink";
                    Description = "Suppress display of the state permalink";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "Specify a single resource URN to destroy. All resources necessary to destroy this target will also be destroyed. Multiple resources can be specified using: --target urn1 --target urn2";
                    Description = "Specify a single resource URN to destroy. All resources necessary to destroy this target will also be destroyed. Multiple resources can be specified using: --target urn1 --target urn2";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--target-dependents");
                    Name        = "Allows destroying of dependent targets discovered but not specified in --target list";
                    Description = "Allows destroying of dependent targets discovered but not specified in --target list";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Automatically approve and perform the destroy after previewing it";
                    Description = "Automatically approve and perform the destroy after previewing it";
                },
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("import");
            Name        = "import";
            Description = "Import resources into an existing stack";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Use the configuration values in the specified file rather than detecting the file name";
                    Description = "Use the configuration values in the specified file rather than detecting the file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug", "-d");
                    Name        = "Print detailed debugging output during resource operations";
                    Description = "Print detailed debugging output during resource operations";
                },
                [FlagParameter]@{
                    Keys        = @("--diff");
                    Name        = "Display operation as a rich diff showing the overall change";
                    Description = "Display operation as a rich diff showing the overall change";
                },
                [ValueParameter]@{
                    Keys        = @("--exec-agent");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--exec-kind");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--file", "-f");
                    Name        = "The path to a JSON-encoded file containing a list of resources to import";
                    Description = "The path to a JSON-encoded file containing a list of resources to import";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message", "-m");
                    Name        = "Optional message to associate with the update operation";
                    Description = "Optional message to associate with the update operation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--out", "-o");
                    Name        = "The path to the file that will contain the generated resource declarations";
                    Description = "The path to the file that will contain the generated resource declarations";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel", "-p");
                    Name        = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    Description = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parent");
                    Name        = "The name and URN of the parent resource in the format name=urn, where name is the variable name of the parent resource";
                    Description = "The name and URN of the parent resource in the format name=urn, where name is the variable name of the parent resource";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--protect");
                    Name        = "Allow resources to be imported with protection from deletion enabled";
                    Description = "Allow resources to be imported with protection from deletion enabled";
                },
                [ValueParameter]@{
                    Keys        = @("--provider");
                    Name        = "The name and URN of the provider to use for the import in the format name=urn, where name is the variable name for the provider resource";
                    Description = "The name and URN of the provider to use for the import in the format name=urn, where name is the variable name for the provider resource";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-preview");
                    Name        = "Do not perform a preview before performing the refresh";
                    Description = "Do not perform a preview before performing the refresh";
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--suppress-outputs");
                    Name        = "Suppress display of stack outputs (in case they contain sensitive values)";
                    Description = "Suppress display of stack outputs (in case they contain sensitive values)";
                },
                [ValueParameter]@{
                    Keys        = @("--suppress-permalink");
                    Name        = "Suppress display of the state permalink";
                    Description = "Suppress display of the state permalink";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Automatically approve and perform the refresh after previewing it";
                    Description = "Automatically approve and perform the refresh after previewing it";
                },
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("login");
            Name        = "login";
            Description = "Log in to the Pulumi service";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cloud-url", "-c");
                    Name        = "A cloud URL to log in to";
                    Description = "A cloud URL to log in to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--default-org");
                    Name        = "A default org to associate with the login. Please note, currently, only the managed and self-hosted backends support organizations";
                    Description = "A default org to associate with the login. Please note, currently, only the managed and self-hosted backends support organizations";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--local", "-l");
                    Name        = "Use Pulumi in local-only mode";
                    Description = "Use Pulumi in local-only mode";
                },
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("logout");
            Name        = "logout";
            Description = "Log out of the Pulumi service";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Logout of all backends";
                    Description = "Logout of all backends";
                },
                [ValueParameter]@{
                    Keys        = @("--cloud-url", "-c");
                    Name        = "A cloud URL to log out of (defaults to current cloud)";
                    Description = "A cloud URL to log out of (defaults to current cloud)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--local", "-l");
                    Name        = "Log out of using local mode";
                    Description = "Log out of using local mode";
                },
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("logs");
            Name        = "logs";
            Description = "[PREVIEW] Show aggregated resource logs for a stack";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Use the configuration values in the specified file rather than detecting the file name";
                    Description = "Use the configuration values in the specified file rather than detecting the file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--follow", "-f");
                    Name        = "Follow the log stream in real time (like tail -f)";
                    Description = "Follow the log stream in real time (like tail -f)";
                },
                [FlagParameter]@{
                    Keys        = @("--json", "-j");
                    Name        = "Emit output as JSON";
                    Description = "Emit output as JSON";
                },
                [ValueParameter]@{
                    Keys        = @("--resource", "-r");
                    Name        = "Only return logs for the requested resource ('name', 'type::name' or full URN).  Defaults to returning all logs.";
                    Description = "Only return logs for the requested resource ('name', 'type::name' or full URN).  Defaults to returning all logs.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--since");
                    Name        = "Only return logs newer than a relative duration ('5s', '2m', '3h') or absolute timestamp.  Defaults to returning the last 1 hour of logs.";
                    Description = "Only return logs newer than a relative duration ('5s', '2m', '3h') or absolute timestamp.  Defaults to returning the last 1 hour of logs.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                ,
                ,
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("new");
            Name        = "new";
            Description = "Create a new Pulumi project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Config to save";
                    Description = "Config to save";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--config-path");
                    Name        = "Config keys contain a path to a property in a map or list to set";
                    Description = "Config keys contain a path to a property in a map or list to set";
                },
                [ValueParameter]@{
                    Keys        = @("--description", "-d");
                    Name        = "The project description; if not specified, a prompt will request it";
                    Description = "The project description; if not specified, a prompt will request it";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dir");
                    Name        = "The location to place the generated project; if not specified, the current directory is used";
                    Description = "The location to place the generated project; if not specified, the current directory is used";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Forces content to be generated even if it would change existing files";
                    Description = "Forces content to be generated even if it would change existing files";
                },
                [FlagParameter]@{
                    Keys        = @("--generate-only", "-g");
                    Name        = "Generate the project only; do not create a stack, save config, or install dependencies";
                    Description = "Generate the project only; do not create a stack, save config, or install dependencies";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "The project name; if not specified, a prompt will request it";
                    Description = "The project name; if not specified, a prompt will request it";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--offline", "-o");
                    Name        = "Use locally cached templates without making any network requests";
                    Description = "Use locally cached templates without making any network requests";
                },
                [ValueParameter]@{
                    Keys        = @("--secrets-provider");
                    Name        = "The type of the provider that should be used to encrypt and decrypt secrets (possible choices: default, passphrase, awskms, azurekeyvault, gcpkms, hashivault)";
                    Description = "The type of the provider that should be used to encrypt and decrypt secrets (possible choices: default, passphrase, awskms, azurekeyvault, gcpkms, hashivault)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The stack name; either an existing stack or stack to create; if not specified, a prompt will request it";
                    Description = "The stack name; either an existing stack or stack to create; if not specified, a prompt will request it";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Skip prompts and proceed with default values";
                    Description = "Skip prompts and proceed with default values";
                },
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("org");
            Name        = "org";
            Description = "Manage Organization configuration";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("get-default");
                    Name        = "get-default";
                    Description = "Get the default org for the current backend";
                },
                [CommandParameter]@{
                    Keys        = @("set-default");
                    Name        = "set-default";
                    Description = "Set the default organization for the current backend";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("plugin");
            Name        = "plugin";
            Description = "Manage language and resource provider plugins";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "Install one or more plugins";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--exact");
                            Name        = "Force installation of an exact version match (usually >= is accepted)";
                            Description = "Force installation of an exact version match (usually >= is accepted)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--file", "-f");
                            Name        = "Install a plugin from a tarball file, instead of downloading it";
                            Description = "Install a plugin from a tarball file, instead of downloading it";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--reinstall");
                            Name        = "Reinstall a plugin even if it already exists";
                            Description = "Reinstall a plugin even if it already exists";
                        },
                        [ValueParameter]@{
                            Keys        = @("--server");
                            Name        = "A URL to download plugins from";
                            Description = "A URL to download plugins from";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List plugins";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--json", "-j");
                            Name        = "Emit output as JSON";
                            Description = "Emit output as JSON";
                        },
                        [FlagParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "List only the plugins used by the current project";
                            Description = "List only the plugins used by the current project";
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more plugins from the download cache";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Remove all plugins";
                            Description = "Remove all plugins";
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip confirmation prompts, and proceed with removal anyway";
                            Description = "Skip confirmation prompts, and proceed with removal anyway";
                        },
                        ,
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("policy");
            Name        = "policy";
            Description = "Manage resource policies";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("disable");
                    Name        = "disable";
                    Description = "Disable a Policy Pack for a Pulumi organization";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--policy-group");
                            Name        = "The Policy Group for which the Policy Pack will be disabled; if not specified, the default Policy Group is used";
                            Description = "The Policy Group for which the Policy Pack will be disabled; if not specified, the default Policy Group is used";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "The version of the Policy Pack that will be disabled; if not specified, any enabled version of the Policy Pack will be disabled";
                            Description = "The version of the Policy Pack that will be disabled; if not specified, any enabled version of the Policy Pack will be disabled";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("enable");
                    Name        = "enable";
                    Description = "Enable a Policy Pack for a Pulumi organization";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "The file path for the Policy Pack configuration file";
                            Description = "The file path for the Policy Pack configuration file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--policy-group");
                            Name        = "The Policy Group for which the Policy Pack will be enabled; if not specified, the default Policy Group is used";
                            Description = "The Policy Group for which the Policy Pack will be enabled; if not specified, the default Policy Group is used";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("group");
                    Name        = "group";
                    Description = "Manage policy groups";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("ls");
                            Name        = "ls";
                            Description = "List all Policy Groups for a Pulumi organization";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--json", "-j");
                                    Name        = "Emit output as JSON";
                                    Description = "Emit output as JSON";
                                },
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List all Policy Packs for a Pulumi organization";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--json", "-j");
                            Name        = "Emit output as JSON";
                            Description = "Emit output as JSON";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("new");
                    Name        = "new";
                    Description = "Create a new Pulumi Policy Pack";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--dir");
                            Name        = "The location to place the generated Policy Pack; if not specified, the current directory is used";
                            Description = "The location to place the generated Policy Pack; if not specified, the current directory is used";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Forces content to be generated even if it would change existing files";
                            Description = "Forces content to be generated even if it would change existing files";
                        },
                        [FlagParameter]@{
                            Keys        = @("--generate-only", "-g");
                            Name        = "Generate the Policy Pack only; do not install dependencies";
                            Description = "Generate the Policy Pack only; do not install dependencies";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline", "-o");
                            Name        = "Use locally cached templates without making any network requests";
                            Description = "Use locally cached templates without making any network requests";
                        },
                        ,
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("publish");
                    Name        = "publish";
                    Description = "Publish a Policy Pack to the Pulumi service";
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Removes a Policy Pack from a Pulumi organization";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip confirmation prompts, and proceed with removal anyway";
                            Description = "Skip confirmation prompts, and proceed with removal anyway";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("validate-config");
                    Name        = "validate-config";
                    Description = "Validate a Policy Pack configuration";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "The file path for the Policy Pack configuration file";
                            Description = "The file path for the Policy Pack configuration file";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("preview");
            Name        = "preview";
            Description = "Show a preview of updates to a stack's resources";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--client");
                    Name        = "The address of an existing language runtime host to connect to";
                    Description = "The address of an existing language runtime host to connect to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Config to use during the preview";
                    Description = "Config to use during the preview";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Use the configuration values in the specified file rather than detecting the file name";
                    Description = "Use the configuration values in the specified file rather than detecting the file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--config-path");
                    Name        = "Config keys contain a path to a property in a map or list to set";
                    Description = "Config keys contain a path to a property in a map or list to set";
                },
                [FlagParameter]@{
                    Keys        = @("--debug", "-d");
                    Name        = "Print detailed debugging output during resource operations";
                    Description = "Print detailed debugging output during resource operations";
                },
                [FlagParameter]@{
                    Keys        = @("--diff");
                    Name        = "Display operation as a rich diff showing the overall change";
                    Description = "Display operation as a rich diff showing the overall change";
                },
                [ValueParameter]@{
                    Keys        = @("--exec-agent");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--exec-kind");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--expect-no-changes");
                    Name        = "Return an error if any changes are proposed by this preview";
                    Description = "Return an error if any changes are proposed by this preview";
                },
                [FlagParameter]@{
                    Keys        = @("--json", "-j");
                    Name        = "Serialize the preview diffs, operations, and overall output as JSON";
                    Description = "Serialize the preview diffs, operations, and overall output as JSON";
                },
                [ValueParameter]@{
                    Keys        = @("--message", "-m");
                    Name        = "Optional message to associate with the preview operation";
                    Description = "Optional message to associate with the preview operation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel", "-p");
                    Name        = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    Description = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--policy-pack");
                    Name        = "Run one or more policy packs as part of this update";
                    Description = "Run one or more policy packs as part of this update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--policy-pack-config");
                    Name        = "Path to JSON file containing the config for the policy pack of the corresponding `"--policy-pack`" flag";
                    Description = "Path to JSON file containing the config for the policy pack of the corresponding `"--policy-pack`" flag";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--refresh", "-r");
                    Name        = "Refresh the state of the stack's resources before this update";
                    Description = "Refresh the state of the stack's resources before this update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--replace");
                    Name        = "Specify resources to replace. Multiple resources can be specified using --replace urn1 --replace urn2";
                    Description = "Specify resources to replace. Multiple resources can be specified using --replace urn1 --replace urn2";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-config");
                    Name        = "Show configuration keys and variables";
                    Description = "Show configuration keys and variables";
                },
                [FlagParameter]@{
                    Keys        = @("--show-reads");
                    Name        = "Show resources that are being read in, alongside those being managed directly in the stack";
                    Description = "Show resources that are being read in, alongside those being managed directly in the stack";
                },
                [FlagParameter]@{
                    Keys        = @("--show-replacement-steps");
                    Name        = "Show detailed resource replacement creates and deletes instead of a single step";
                    Description = "Show detailed resource replacement creates and deletes instead of a single step";
                },
                [FlagParameter]@{
                    Keys        = @("--show-sames");
                    Name        = "Show resources that needn't be updated because they haven't changed, alongside those that do";
                    Description = "Show resources that needn't be updated because they haven't changed, alongside those that do";
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--suppress-outputs");
                    Name        = "Suppress display of stack outputs (in case they contain sensitive values)";
                    Description = "Suppress display of stack outputs (in case they contain sensitive values)";
                },
                [ValueParameter]@{
                    Keys        = @("--suppress-permalink");
                    Name        = "Suppress display of the state permalink";
                    Description = "Suppress display of the state permalink";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "Specify a single resource URN to update. Other resources will not be updated. Multiple resources can be specified using --target urn1 --target urn2";
                    Description = "Specify a single resource URN to update. Other resources will not be updated. Multiple resources can be specified using --target urn1 --target urn2";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--target-dependents");
                    Name        = "Allows updating of dependent targets discovered but not specified in --target list";
                    Description = "Allows updating of dependent targets discovered but not specified in --target list";
                },
                [ValueParameter]@{
                    Keys        = @("--target-replace");
                    Name        = "Specify a single resource URN to replace. Other resources will not be updated. Shorthand for --target urn --replace urn.";
                    Description = "Specify a single resource URN to replace. Other resources will not be updated. Shorthand for --target urn --replace urn.";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("refresh");
            Name        = "refresh";
            Description = "Refresh the resources in a stack";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Use the configuration values in the specified file rather than detecting the file name";
                    Description = "Use the configuration values in the specified file rather than detecting the file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug", "-d");
                    Name        = "Print detailed debugging output during resource operations";
                    Description = "Print detailed debugging output during resource operations";
                },
                [FlagParameter]@{
                    Keys        = @("--diff");
                    Name        = "Display operation as a rich diff showing the overall change";
                    Description = "Display operation as a rich diff showing the overall change";
                },
                [ValueParameter]@{
                    Keys        = @("--exec-agent");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--exec-kind");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--expect-no-changes");
                    Name        = "Return an error if any changes occur during this update";
                    Description = "Return an error if any changes occur during this update";
                },
                [FlagParameter]@{
                    Keys        = @("--json", "-j");
                    Name        = "Serialize the refresh diffs, operations, and overall output as JSON";
                    Description = "Serialize the refresh diffs, operations, and overall output as JSON";
                },
                [ValueParameter]@{
                    Keys        = @("--message", "-m");
                    Name        = "Optional message to associate with the update operation";
                    Description = "Optional message to associate with the update operation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel", "-p");
                    Name        = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    Description = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-replacement-steps");
                    Name        = "Show detailed resource replacement creates and deletes instead of a single step";
                    Description = "Show detailed resource replacement creates and deletes instead of a single step";
                },
                [FlagParameter]@{
                    Keys        = @("--show-sames");
                    Name        = "Show resources that needn't be updated because they haven't changed, alongside those that do";
                    Description = "Show resources that needn't be updated because they haven't changed, alongside those that do";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-preview", "-f");
                    Name        = "Do not perform a preview before performing the refresh";
                    Description = "Do not perform a preview before performing the refresh";
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--suppress-outputs");
                    Name        = "Suppress display of stack outputs (in case they contain sensitive values)";
                    Description = "Suppress display of stack outputs (in case they contain sensitive values)";
                },
                [ValueParameter]@{
                    Keys        = @("--suppress-permalink");
                    Name        = "Suppress display of the state permalink";
                    Description = "Suppress display of the state permalink";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "Specify a single resource URN to refresh. Multiple resource can be specified using: --target urn1 --target urn2";
                    Description = "Specify a single resource URN to refresh. Multiple resource can be specified using: --target urn1 --target urn2";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Automatically approve and perform the refresh after previewing it";
                    Description = "Automatically approve and perform the refresh after previewing it";
                },
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("schema");
            Name        = "schema";
            Description = "Analyze package schemas";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("check");
                    Name        = "check";
                    Description = "Check a Pulumi package schema for errors";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("stack");
            Name        = "stack";
            Description = "Manage stacks";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--show-ids", "-i");
                    Name        = "Display each resource's provider-assigned unique ID";
                    Description = "Display each resource's provider-assigned unique ID";
                },
                [FlagParameter]@{
                    Keys        = @("--show-name");
                    Name        = "Display only the stack name";
                    Description = "Display only the stack name";
                },
                [FlagParameter]@{
                    Keys        = @("--show-secrets");
                    Name        = "Display stack outputs which are marked as secret in plaintext";
                    Description = "Display stack outputs which are marked as secret in plaintext";
                },
                [FlagParameter]@{
                    Keys        = @("--show-urns", "-u");
                    Name        = "Display each resource's Pulumi-assigned globally unique URN";
                    Description = "Display each resource's Pulumi-assigned globally unique URN";
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("change-secrets-provider");
                    Name        = "change-secrets-provider";
                    Description = "Change the secrets provider for the current stack";
                },
                [CommandParameter]@{
                    Keys        = @("export");
                    Name        = "export";
                    Description = "Export a stack's deployment to standard out";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--file");
                            Name        = "A filename to write stack output to";
                            Description = "A filename to write stack output to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--show-secrets");
                            Name        = "Emit secrets in plaintext in exported stack. Defaults to ``false``";
                            Description = "Emit secrets in plaintext in exported stack. Defaults to ``false``";
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "Previous stack version to export. (If unset, will export the latest.)";
                            Description = "Previous stack version to export. (If unset, will export the latest.)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("graph");
                    Name        = "graph";
                    Description = "Export a stack's dependency graph to a file";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--dependency-edge-color");
                            Name        = "Sets the color of dependency edges in the graph";
                            Description = "Sets the color of dependency edges in the graph";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--ignore-dependency-edges");
                            Name        = "Ignores edges introduced by dependency resource relationships";
                            Description = "Ignores edges introduced by dependency resource relationships";
                        },
                        [FlagParameter]@{
                            Keys        = @("--ignore-parent-edges");
                            Name        = "Ignores edges introduced by parent/child resource relationships";
                            Description = "Ignores edges introduced by parent/child resource relationships";
                        },
                        [ValueParameter]@{
                            Keys        = @("--parent-edge-color");
                            Name        = "Sets the color of parent edges in the graph";
                            Description = "Sets the color of parent edges in the graph";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("history");
                    Name        = "history";
                    Description = "[PREVIEW] Display history for a stack";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--full-dates");
                            Name        = "Show full dates, instead of relative dates";
                            Description = "Show full dates, instead of relative dates";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json", "-j");
                            Name        = "Emit output as JSON";
                            Description = "Emit output as JSON";
                        },
                        [ValueParameter]@{
                            Keys        = @("--page");
                            Name        = "Used with 'page-size' to paginate results";
                            Description = "Used with 'page-size' to paginate results";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--page-size");
                            Name        = "Used with 'page' to control number of results returned";
                            Description = "Used with 'page' to control number of results returned";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--show-secrets");
                            Name        = "Show secret values when listing config instead of displaying blinded values";
                            Description = "Show secret values when listing config instead of displaying blinded values";
                        },
                        ,
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("import");
                    Name        = "import";
                    Description = "Import a deployment from standard in into an existing stack";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--file");
                            Name        = "A filename to read stack input from";
                            Description = "A filename to read stack input from";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force the import to occur, even if apparent errors are discovered beforehand (not recommended)";
                            Description = "Force the import to occur, even if apparent errors are discovered beforehand (not recommended)";
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("init");
                    Name        = "init";
                    Description = "Create an empty stack with the given name, ready for updates";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--copy-config-from");
                            Name        = "The name of the stack to copy existing config from";
                            Description = "The name of the stack to copy existing config from";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--secrets-provider");
                            Name        = "The type of the provider that should be used to encrypt and decrypt secrets";
                            Description = "The type of the provider that should be used to encrypt and decrypt secrets";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List stacks";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "List all stacks instead of just stacks for the current project";
                            Description = "List all stacks instead of just stacks for the current project";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json", "-j");
                            Name        = "Emit output as JSON";
                            Description = "Emit output as JSON";
                        },
                        [ValueParameter]@{
                            Keys        = @("--organization", "-o");
                            Name        = "Filter returned stacks to those in a specific organization";
                            Description = "Filter returned stacks to those in a specific organization";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Filter returned stacks to those with a specific project name";
                            Description = "Filter returned stacks to those with a specific project name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tag", "-t");
                            Name        = "Filter returned stacks to those in a specific tag (tag-name or tag-name=tag-value)";
                            Description = "Filter returned stacks to those in a specific tag (tag-name or tag-name=tag-value)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                        ,
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("output");
                    Name        = "output";
                    Description = "Show a stack's output properties";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--json", "-j");
                            Name        = "Emit output as JSON";
                            Description = "Emit output as JSON";
                        },
                        [FlagParameter]@{
                            Keys        = @("--show-secrets");
                            Name        = "Display outputs which are marked as secret in plaintext";
                            Description = "Display outputs which are marked as secret in plaintext";
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rename");
                    Name        = "rename";
                    Description = "Rename an existing stack";
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove a stack and its configuration";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Forces deletion of the stack, leaving behind any resources managed by the stack";
                            Description = "Forces deletion of the stack, leaving behind any resources managed by the stack";
                        },
                        [FlagParameter]@{
                            Keys        = @("--preserve-config");
                            Name        = "Do not delete the corresponding Pulumi.<stack-name>.yaml configuration file for the stack";
                            Description = "Do not delete the corresponding Pulumi.<stack-name>.yaml configuration file for the stack";
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip confirmation prompts, and proceed with removal anyway";
                            Description = "Skip confirmation prompts, and proceed with removal anyway";
                        },
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("select");
                    Name        = "select";
                    Description = "Switch the current workspace to the given stack";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--create", "-c");
                            Name        = "If selected stack does not exist, create it";
                            Description = "If selected stack does not exist, create it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--secrets-provider");
                            Name        = "Use with --create flag, The type of the provider that should be used to encrypt and decrypt secrets";
                            Description = "Use with --create flag, The type of the provider that should be used to encrypt and decrypt secrets";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("tag");
                    Name        = "tag";
                    Description = "Manage stack tags";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get");
                            Name        = "get";
                            Description = "Get a single stack tag value";
                        },
                        [CommandParameter]@{
                            Keys        = @("ls");
                            Name        = "ls";
                            Description = "List all stack tags";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--json", "-j");
                                    Name        = "Emit output as JSON";
                                    Description = "Emit output as JSON";
                                },
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("rm");
                            Name        = "rm";
                            Description = "Remove a stack tag";
                        },
                        [CommandParameter]@{
                            Keys        = @("set");
                            Name        = "set";
                            Description = "Set a stack tag";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("state");
            Name        = "state";
            Description = "Edit the current stack's state";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Deletes a resource from a stack's state";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Force deletion of protected resources";
                            Description = "Force deletion of protected resources";
                        },
                        [ValueParameter]@{
                            Keys        = @("--stack", "-s");
                            Name        = "The name of the stack to operate on. Defaults to the current stack";
                            Description = "The name of the stack to operate on. Defaults to the current stack";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip confirmation prompts";
                            Description = "Skip confirmation prompts";
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("unprotect");
                    Name        = "unprotect";
                    Description = "Unprotect resources in a stack's state";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Unprotect all resources in the checkpoint";
                            Description = "Unprotect all resources in the checkpoint";
                        },
                        [ValueParameter]@{
                            Keys        = @("--stack", "-s");
                            Name        = "The name of the stack to operate on. Defaults to the current stack";
                            Description = "The name of the stack to operate on. Defaults to the current stack";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip confirmation prompts";
                            Description = "Skip confirmation prompts";
                        },
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("up");
            Name        = "up";
            Description = "Create or update the resources in a stack";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--client");
                    Name        = "The address of an existing language runtime host to connect to";
                    Description = "The address of an existing language runtime host to connect to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Config to use during the update";
                    Description = "Config to use during the update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Use the configuration values in the specified file rather than detecting the file name";
                    Description = "Use the configuration values in the specified file rather than detecting the file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--config-path");
                    Name        = "Config keys contain a path to a property in a map or list to set";
                    Description = "Config keys contain a path to a property in a map or list to set";
                },
                [FlagParameter]@{
                    Keys        = @("--debug", "-d");
                    Name        = "Print detailed debugging output during resource operations";
                    Description = "Print detailed debugging output during resource operations";
                },
                [FlagParameter]@{
                    Keys        = @("--diff");
                    Name        = "Display operation as a rich diff showing the overall change";
                    Description = "Display operation as a rich diff showing the overall change";
                },
                [ValueParameter]@{
                    Keys        = @("--exec-agent");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--exec-kind");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--expect-no-changes");
                    Name        = "Return an error if any changes occur during this update";
                    Description = "Return an error if any changes occur during this update";
                },
                [FlagParameter]@{
                    Keys        = @("--json", "-j");
                    Name        = "Serialize the update diffs, operations, and overall output as JSON";
                    Description = "Serialize the update diffs, operations, and overall output as JSON";
                },
                [ValueParameter]@{
                    Keys        = @("--message", "-m");
                    Name        = "Optional message to associate with the update operation";
                    Description = "Optional message to associate with the update operation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel", "-p");
                    Name        = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    Description = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--policy-pack");
                    Name        = "Run one or more policy packs as part of this update";
                    Description = "Run one or more policy packs as part of this update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--policy-pack-config");
                    Name        = "Path to JSON file containing the config for the policy pack of the corresponding `"--policy-pack`" flag";
                    Description = "Path to JSON file containing the config for the policy pack of the corresponding `"--policy-pack`" flag";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--refresh", "-r");
                    Name        = "Refresh the state of the stack's resources before this update";
                    Description = "Refresh the state of the stack's resources before this update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--replace");
                    Name        = "Specify resources to replace. Multiple resources can be specified using --replace urn1 --replace urn2";
                    Description = "Specify resources to replace. Multiple resources can be specified using --replace urn1 --replace urn2";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--secrets-provider");
                    Name        = "The type of the provider that should be used to encrypt and decrypt secrets (possible choices: default, passphrase, awskms, azurekeyvault, gcpkms, hashivault). Onlyused when creating a new stack from an existing template";
                    Description = "The type of the provider that should be used to encrypt and decrypt secrets (possible choices: default, passphrase, awskms, azurekeyvault, gcpkms, hashivault). Onlyused when creating a new stack from an existing template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-config");
                    Name        = "Show configuration keys and variables";
                    Description = "Show configuration keys and variables";
                },
                [FlagParameter]@{
                    Keys        = @("--show-reads");
                    Name        = "Show resources that are being read in, alongside those being managed directly in the stack";
                    Description = "Show resources that are being read in, alongside those being managed directly in the stack";
                },
                [FlagParameter]@{
                    Keys        = @("--show-replacement-steps");
                    Name        = "Show detailed resource replacement creates and deletes instead of a single step";
                    Description = "Show detailed resource replacement creates and deletes instead of a single step";
                },
                [FlagParameter]@{
                    Keys        = @("--show-sames");
                    Name        = "Show resources that don't need be updated because they haven't changed, alongside those that do";
                    Description = "Show resources that don't need be updated because they haven't changed, alongside those that do";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-preview", "-f");
                    Name        = "Do not perform a preview before performing the update";
                    Description = "Do not perform a preview before performing the update";
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--suppress-outputs");
                    Name        = "Suppress display of stack outputs (in case they contain sensitive values)";
                    Description = "Suppress display of stack outputs (in case they contain sensitive values)";
                },
                [ValueParameter]@{
                    Keys        = @("--suppress-permalink");
                    Name        = "Suppress display of the state permalink";
                    Description = "Suppress display of the state permalink";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "Specify a single resource URN to update. Other resources will not be updated. Multiple resources can be specified using --target urn1 --target urn2";
                    Description = "Specify a single resource URN to update. Other resources will not be updated. Multiple resources can be specified using --target urn1 --target urn2";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--target-dependents");
                    Name        = "Allows updating of dependent targets discovered but not specified in --target list";
                    Description = "Allows updating of dependent targets discovered but not specified in --target list";
                },
                [ValueParameter]@{
                    Keys        = @("--target-replace");
                    Name        = "Specify a single resource URN to replace. Other resources will not be updated. Shorthand for --target urn --replace urn.";
                    Description = "Specify a single resource URN to replace. Other resources will not be updated. Shorthand for --target urn --replace urn.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Automatically approve and perform the update after previewing it";
                    Description = "Automatically approve and perform the update after previewing it";
                },
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Print Pulumi's version number";
        },
        [CommandParameter]@{
            Keys        = @("watch");
            Name        = "watch";
            Description = "[PREVIEW] Continuously update the resources in a stack";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Config to use during the update";
                    Description = "Config to use during the update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Use the configuration values in the specified file rather than detecting the file name";
                    Description = "Use the configuration values in the specified file rather than detecting the file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--config-path");
                    Name        = "Config keys contain a path to a property in a map or list to set";
                    Description = "Config keys contain a path to a property in a map or list to set";
                },
                [FlagParameter]@{
                    Keys        = @("--debug", "-d");
                    Name        = "Print detailed debugging output during resource operations";
                    Description = "Print detailed debugging output during resource operations";
                },
                [ValueParameter]@{
                    Keys        = @("--exec-kind");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message", "-m");
                    Name        = "Optional message to associate with each update operation";
                    Description = "Optional message to associate with each update operation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel", "-p");
                    Name        = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    Description = "Allow P resource operations to run in parallel at once (1 for no parallelism). Defaults to unbounded.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "Specify one or more relative or absolute paths that need to be watched. A path can point to a folder or a file. Defaults to working directory";
                    Description = "Specify one or more relative or absolute paths that need to be watched. A path can point to a folder or a file. Defaults to working directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--policy-pack");
                    Name        = "Run one or more policy packs as part of each update";
                    Description = "Run one or more policy packs as part of each update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--policy-pack-config");
                    Name        = "Path to JSON file containing the config for the policy pack of the corresponding `"--policy-pack`" flag";
                    Description = "Path to JSON file containing the config for the policy pack of the corresponding `"--policy-pack`" flag";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--refresh", "-r");
                    Name        = "Refresh the state of the stack's resources before each update";
                    Description = "Refresh the state of the stack's resources before each update";
                },
                [ValueParameter]@{
                    Keys        = @("--secrets-provider");
                    Name        = "The type of the provider that should be used to encrypt and decrypt secrets (possible choices: default, passphrase, awskms, azurekeyvault, gcpkms, hashivault). Onlyused when creating a new stack from an existing template";
                    Description = "The type of the provider that should be used to encrypt and decrypt secrets (possible choices: default, passphrase, awskms, azurekeyvault, gcpkms, hashivault). Onlyused when creating a new stack from an existing template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-config");
                    Name        = "Show configuration keys and variables";
                    Description = "Show configuration keys and variables";
                },
                [FlagParameter]@{
                    Keys        = @("--show-replacement-steps");
                    Name        = "Show detailed resource replacement creates and deletes instead of a single step";
                    Description = "Show detailed resource replacement creates and deletes instead of a single step";
                },
                [FlagParameter]@{
                    Keys        = @("--show-sames");
                    Name        = "Show resources that don't need be updated because they haven't changed, alongside those that do";
                    Description = "Show resources that don't need be updated because they haven't changed, alongside those that do";
                },
                [ValueParameter]@{
                    Keys        = @("--stack", "-s");
                    Name        = "The name of the stack to operate on. Defaults to the current stack";
                    Description = "The name of the stack to operate on. Defaults to the current stack";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
                ,
            )
        },
        [CommandParameter]@{
            Keys        = @("whoami");
            Name        = "whoami";
            Description = "Display the current logged-in user";
        }
    )
}
