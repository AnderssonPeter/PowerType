# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://developer-old.gnome.org/NetworkManager/stable/nmcli.html";
    Keys        = @("nmcli");
    Name        = "nmcli";
    Description = "command-line tool for controlling NetworkManager";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--ask", "-a");
            Name        = "ask for missing parameters";
            Description = "ask for missing parameters";
        },
        [ValueParameter]@{
            Keys        = @("--colors", "-c");
            Name        = "whether to use colors in output";
            Description = "whether to use colors in output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--escape", "-e");
            Name        = "escape columns separators in values";
            Description = "escape columns separators in values";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fields", "-f");
            Name        = "specify fields to output";
            Description = "specify fields to output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--get-values", "-g");
            Name        = "shortcut for -m tabular -t -f";
            Description = "shortcut for -m tabular -t -f";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "print this help";
            Description = "print this help";
        },
        [ValueParameter]@{
            Keys        = @("--mode", "-m");
            Name        = "output mode";
            Description = "output mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--overview", "-o");
            Name        = "overview mode";
            Description = "overview mode";
        },
        [FlagParameter]@{
            Keys        = @("--pretty", "-p");
            Name        = "pretty output";
            Description = "pretty output";
        },
        [FlagParameter]@{
            Keys        = @("--show-secrets", "-s");
            Name        = "allow displaying passwords";
            Description = "allow displaying passwords";
        },
        [FlagParameter]@{
            Keys        = @("--terse", "-t");
            Name        = "terse output";
            Description = "terse output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "show program version";
            Description = "show program version";
        },
        [ValueParameter]@{
            Keys        = @("--wait", "-w");
            Name        = "set timeout waiting for finishing operations";
            Description = "set timeout waiting for finishing operations";
            # Source = $?? # todo: Fix or remove this!
        },
        [CommandParameter]@{
            Keys        = @("agent");
            Name        = "agent";
            Description = "NetworkManager secret agent or polkit agent";
        },
        [CommandParameter]@{
            Keys        = @("connection");
            Name        = "connection";
            Description = "NetworkManager's connections";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "add a connection";
                },
                [CommandParameter]@{
                    Keys        = @("clone");
                    Name        = "clone";
                    Description = "Clone an existing connection profile";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--temporary");
                            Name        = "only temporary";
                            Description = "only temporary";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete an existing connection profile";
                },
                [CommandParameter]@{
                    Keys        = @("down");
                    Name        = "down";
                    Description = "Deactivate a connection";
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "Edit an existing connection profile in an interactive editor";
                },
                [CommandParameter]@{
                    Keys        = @("export");
                    Name        = "export";
                    Description = "Export a connection";
                },
                [CommandParameter]@{
                    Keys        = @("import");
                    Name        = "import";
                    Description = "Import an external configuration";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--temporary");
                            Name        = "only temporary";
                            Description = "only temporary";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("load");
                    Name        = "load";
                    Description = "Load or reload one or more connection files from disk";
                },
                [CommandParameter]@{
                    Keys        = @("modify");
                    Name        = "modify";
                    Description = "Modify one or more properties of the connection profile";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--temporary");
                            Name        = "only temporary";
                            Description = "only temporary";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("monitor");
                    Name        = "monitor";
                    Description = "Monitor an existing connection profile";
                },
                [CommandParameter]@{
                    Keys        = @("reload");
                    Name        = "reload";
                    Description = "Reload all connection files from disk";
                },
                [CommandParameter]@{
                    Keys        = @("show");
                    Name        = "show";
                    Description = "show details for specified connection";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--active");
                            Name        = "show active connections";
                            Description = "show active connections";
                        },
                        [ValueParameter]@{
                            Keys        = @("--order");
                            Name        = "specify order";
                            Description = "specify order";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("up");
                    Name        = "up";
                    Description = "Activate a connection";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("device");
            Name        = "device";
            Description = "devices managed by NetworkManager";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("connect");
                    Name        = "connect";
                    Description = "Connect the device";
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete the software devices";
                },
                [CommandParameter]@{
                    Keys        = @("disconnect");
                    Name        = "disconnect";
                    Description = "Disconnect devices";
                },
                [CommandParameter]@{
                    Keys        = @("modify");
                    Name        = "modify";
                    Description = "Modify one or more proties currently active on the device";
                },
                [CommandParameter]@{
                    Keys        = @("monitor");
                    Name        = "monitor";
                    Description = "Monitor device activity";
                },
                [CommandParameter]@{
                    Keys        = @("reapply");
                    Name        = "reapply";
                    Description = "Attempt to update device with changes";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Modify device properties";
                },
                [CommandParameter]@{
                    Keys        = @("show");
                    Name        = "show";
                    Description = "Show details of device";
                },
                [CommandParameter]@{
                    Keys        = @("status");
                    Name        = "status";
                    Description = "Show status for all devices";
                },
                [CommandParameter]@{
                    Keys        = @("wifi");
                    Name        = "wifi";
                    Description = "Perform operation on Wi-Fi devices";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("connect");
                            Name        = "connect";
                            Description = "Connect to a Wi-Fi network";
                        },
                        [CommandParameter]@{
                            Keys        = @("hotspot");
                            Name        = "hotspot";
                            Description = "Create a Wi-Fi hotspot";
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List available Wi-Fi access points";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--rescan");
                                    Name        = "trigger new Wi-Fi scan";
                                    Description = "trigger new Wi-Fi scan";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("rescan");
                            Name        = "rescan";
                            Description = "Request that NetworkManager immediately re-scan for available access points";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("general");
            Name        = "general";
            Description = "NetworkManager's general status and operations";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("hostname");
                    Name        = "hostname";
                    Description = "Get or change persistent system hostname";
                },
                [CommandParameter]@{
                    Keys        = @("logging");
                    Name        = "logging";
                    Description = "Get or change NetworkManager logging level and domains";
                },
                [CommandParameter]@{
                    Keys        = @("permissions");
                    Name        = "permissions";
                    Description = "Show caller permissions for authenticated operations";
                },
                [CommandParameter]@{
                    Keys        = @("status");
                    Name        = "status";
                    Description = "Show overall status of NetworkManager";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("monitor");
            Name        = "monitor";
            Description = "Monitor NetworkManager changes";
        },
        [CommandParameter]@{
            Keys        = @("networking");
            Name        = "networking";
            Description = "overall networking control";
        },
        [CommandParameter]@{
            Keys        = @("radio");
            Name        = "radio";
            Description = "NetworkManager radio switches";
        }
    )
}
