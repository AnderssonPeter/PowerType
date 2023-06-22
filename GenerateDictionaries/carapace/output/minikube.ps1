# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://minikube.sigs.k8s.io/docs/";
    Keys        = @("minikube");
    Name        = "minikube";
    Description = "minikube quickly sets up a local Kubernetes cluster";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--add_dir_header");
            Name        = "If true, adds the file directory to the header of the log messages";
            Description = "If true, adds the file directory to the header of the log messages";
        },
        [FlagParameter]@{
            Keys        = @("--alsologtostderr");
            Name        = "log to standard error as well as files";
            Description = "log to standard error as well as files";
        },
        [ValueParameter]@{
            Keys        = @("--bootstrapper", "-b");
            Name        = "The name of the cluster bootstrapper that will set up the Kubernetes cluster.";
            Description = "The name of the cluster bootstrapper that will set up the Kubernetes cluster.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--log_backtrace_at");
            Name        = "when logging hits line file:N, emit a stack trace";
            Description = "when logging hits line file:N, emit a stack trace";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log_dir");
            Name        = "If non-empty, write log files in this directory";
            Description = "If non-empty, write log files in this directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log_file");
            Name        = "If non-empty, use this log file";
            Description = "If non-empty, use this log file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log_file_max_size");
            Name        = "Defines the maximum size a log file can grow to. Unit is megabytes. If the value is 0, the maximum file size is unlimited.";
            Description = "Defines the maximum size a log file can grow to. Unit is megabytes. If the value is 0, the maximum file size is unlimited.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--logtostderr");
            Name        = "log to standard error instead of files";
            Description = "log to standard error instead of files";
        },
        [FlagParameter]@{
            Keys        = @("--one_output");
            Name        = "If true, only write logs to their native severity level (vs also writing to each lower severity level)";
            Description = "If true, only write logs to their native severity level (vs also writing to each lower severity level)";
        },
        [ValueParameter]@{
            Keys        = @("--profile", "-p");
            Name        = "The name of the minikube VM being used. This can be set to allow having multiple instances of minikube independently.";
            Description = "The name of the minikube VM being used. This can be set to allow having multiple instances of minikube independently.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--skip_headers");
            Name        = "If true, avoid header prefixes in the log messages";
            Description = "If true, avoid header prefixes in the log messages";
        },
        [FlagParameter]@{
            Keys        = @("--skip_log_headers");
            Name        = "If true, avoid headers when opening log files";
            Description = "If true, avoid headers when opening log files";
        },
        [ValueParameter]@{
            Keys        = @("--stderrthreshold");
            Name        = "logs at or above this threshold go to stderr";
            Description = "logs at or above this threshold go to stderr";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user");
            Name        = "Specifies the user executing the operation. Useful for auditing operations executed by 3rd party tools. Defaults to the operating system username.";
            Description = "Specifies the user executing the operation. Useful for auditing operations executed by 3rd party tools. Defaults to the operating system username.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--v", "-v");
            Name        = "number for the log level verbosity";
            Description = "number for the log level verbosity";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--vmodule");
            Name        = "comma-separated list of pattern=N settings for file-filtered logging";
            Description = "comma-separated list of pattern=N settings for file-filtered logging";
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
        [CommandParameter]@{
            Keys        = @("addons");
            Name        = "addons";
            Description = "Enable or disable a minikube addon";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("configure");
                    Name        = "configure";
                    Description = "Configures the addon w/ADDON_NAME within minikube (example: minikube addons configure registry-creds). For a list of available addons use: minikube addons list";
                },
                [CommandParameter]@{
                    Keys        = @("disable");
                    Name        = "disable";
                    Description = "Disables the addon w/ADDON_NAME within minikube (example: minikube addons disable dashboard). For a list of available addons use: minikube addons list ";
                },
                [CommandParameter]@{
                    Keys        = @("enable");
                    Name        = "enable";
                    Description = "Enables the addon w/ADDON_NAME within minikube. For a list of available addons use: minikube addons list ";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "If true, will perform potentially dangerous operations. Use with discretion.";
                            Description = "If true, will perform potentially dangerous operations. Use with discretion.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--images");
                            Name        = "Images used by this addon. Separated by commas.";
                            Description = "Images used by this addon. Separated by commas.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--refresh");
                            Name        = "If true, pods might get deleted and restarted on addon enable";
                            Description = "If true, pods might get deleted and restarted on addon enable";
                        },
                        [ValueParameter]@{
                            Keys        = @("--registries");
                            Name        = "Registries used by this addon. Separated by commas.";
                            Description = "Registries used by this addon. Separated by commas.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("images");
                    Name        = "images";
                    Description = "List image names the addon w/ADDON_NAME used. For a list of available addons use: minikube addons list";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Lists all available minikube addons as well as their current statuses (enabled/disabled)";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "minikube addons list --output OUTPUT. json, list";
                            Description = "minikube addons list --output OUTPUT. json, list";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("open");
                    Name        = "open";
                    Description = "Opens the addon w/ADDON_NAME within minikube (example: minikube addons open dashboard). For a list of available addons use: minikube addons list ";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Format to output addons URL in.  This format will be applied to each url individually and they will be printed one at a time.";
                            Description = "Format to output addons URL in.  This format will be applied to each url individually and they will be printed one at a time.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--https");
                            Name        = "Open the addons URL with https instead of http";
                            Description = "Open the addons URL with https instead of http";
                        },
                        [ValueParameter]@{
                            Keys        = @("--interval");
                            Name        = "The time interval for each check that wait performs in seconds";
                            Description = "The time interval for each check that wait performs in seconds";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--url");
                            Name        = "Display the Kubernetes addons URL in the CLI instead of opening it in the default browser";
                            Description = "Display the Kubernetes addons URL in the CLI instead of opening it in the default browser";
                        },
                        [ValueParameter]@{
                            Keys        = @("--wait");
                            Name        = "Amount of time to wait for service in seconds";
                            Description = "Amount of time to wait for service in seconds";
                            # Source = $?? # todo: Fix or remove this!
                        },
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cache");
            Name        = "cache";
            Description = "Add, delete, or push a local image into minikube";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add an image to local cache.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("");
                            Name        = "Add image to cache for all running minikube clusters";
                            Description = "Add image to cache for all running minikube clusters";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete an image from the local cache.";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all available images from the local cache.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Go template format string for the cache list output.";
                            Description = "Go template format string for the cache list output.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("reload");
                    Name        = "reload";
                    Description = "reload cached images.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Generate command completion for a shell";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("bash");
                    Name        = "bash";
                    Description = "bash completion.";
                },
                [CommandParameter]@{
                    Keys        = @("fish");
                    Name        = "fish";
                    Description = "fish completion.";
                },
                [CommandParameter]@{
                    Keys        = @("zsh");
                    Name        = "zsh";
                    Description = "zsh completion.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Modify persistent configuration values";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("defaults");
                    Name        = "defaults";
                    Description = "Lists all valid default values for PROPERTY_NAME";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--output");
                            Name        = "Output format. Accepted values: [json]";
                            Description = "Output format. Accepted values: [json]";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Gets the value of PROPERTY_NAME from the minikube config file";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Sets an individual value in a minikube config file";
                },
                [CommandParameter]@{
                    Keys        = @("unset");
                    Name        = "unset";
                    Description = "unsets an individual value in a minikube config file";
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "Display values currently set in the minikube config file";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Go template format string for the config view output.";
                            Description = "Go template format string for the config view output.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cp");
            Name        = "cp";
            Description = "Copy the specified file into minikube";
        },
        [CommandParameter]@{
            Keys        = @("dashboard");
            Name        = "dashboard";
            Description = "Access the Kubernetes dashboard running within the minikube cluster";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--url");
                    Name        = "Display dashboard URL instead of opening a browser";
                    Description = "Display dashboard URL instead of opening a browser";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("delete");
            Name        = "delete";
            Description = "Deletes a local Kubernetes cluster";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Set flag to delete all profiles";
                    Description = "Set flag to delete all profiles";
                },
                [FlagParameter]@{
                    Keys        = @("--purge");
                    Name        = "Set this flag to delete the '.minikube' folder from your user directory.";
                    Description = "Set this flag to delete the '.minikube' folder from your user directory.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("docker-env");
            Name        = "docker-env";
            Description = "Configure environment to use minikube's Docker daemon";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--no-proxy");
                    Name        = "Add machine IP to NO_PROXY environment variable";
                    Description = "Add machine IP to NO_PROXY environment variable";
                },
                [ValueParameter]@{
                    Keys        = @("--shell");
                    Name        = "Force environment to be configured for a specified shell: [fish, cmd, powershell, tcsh, bash, zsh], default is auto-detect";
                    Description = "Force environment to be configured for a specified shell: [fish, cmd, powershell, tcsh, bash, zsh], default is auto-detect";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ssh-add");
                    Name        = "Add SSH identity key to SSH authentication agent";
                    Description = "Add SSH identity key to SSH authentication agent";
                },
                [FlagParameter]@{
                    Keys        = @("--ssh-host");
                    Name        = "Use SSH connection instead of HTTPS (port 2376)";
                    Description = "Use SSH connection instead of HTTPS (port 2376)";
                },
                [FlagParameter]@{
                    Keys        = @("--unset", "-u");
                    Name        = "Unset variables instead of setting them";
                    Description = "Unset variables instead of setting them";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("image");
            Name        = "image";
            Description = "Manage images";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("build");
                    Name        = "build";
                    Description = "Build a container image in minikube";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--build-env");
                            Name        = "Environment variables to pass to the build. (format: key=value)";
                            Description = "Environment variables to pass to the build. (format: key=value)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-opt");
                            Name        = "Specify arbitrary flags to pass to the build. (format: key=value)";
                            Description = "Specify arbitrary flags to pass to the build. (format: key=value)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--file", "-f");
                            Name        = "Path to the Dockerfile to use (optional)";
                            Description = "Path to the Dockerfile to use (optional)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--push");
                            Name        = "Push the new image (requires tag)";
                            Description = "Push the new image (requires tag)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tag", "-t");
                            Name        = "Tag to apply to the new image (optional)";
                            Description = "Tag to apply to the new image (optional)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("load");
                    Name        = "load";
                    Description = "Load a image into minikube";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--daemon");
                            Name        = "Cache image from docker daemon";
                            Description = "Cache image from docker daemon";
                        },
                        [FlagParameter]@{
                            Keys        = @("--overwrite");
                            Name        = "Overwrite image even if same image:tag name exists";
                            Description = "Overwrite image even if same image:tag name exists";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pull");
                            Name        = "Pull the remote image (no caching)";
                            Description = "Pull the remote image (no caching)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--remote");
                            Name        = "Cache image from remote registry";
                            Description = "Cache image from remote registry";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List images";
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more images";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ip");
            Name        = "ip";
            Description = "Retrieves the IP address of the specified node";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--node", "-n");
                    Name        = "The node to get IP. Defaults to the primary control plane.";
                    Description = "The node to get IP. Defaults to the primary control plane.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("kubectl");
            Name        = "kubectl";
            Description = "Run a kubectl binary matching the cluster version";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ssh");
                    Name        = "Use SSH for running kubernetes client on the node";
                    Description = "Use SSH for running kubernetes client on the node";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logs");
            Name        = "logs";
            Description = "Returns logs to debug a local Kubernetes cluster";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--file");
                    Name        = "If present, writes to the provided file instead of stdout.";
                    Description = "If present, writes to the provided file instead of stdout.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--follow", "-f");
                    Name        = "Show only the most recent journal entries, and continuously print new entries as they are appended to the journal.";
                    Description = "Show only the most recent journal entries, and continuously print new entries as they are appended to the journal.";
                },
                [ValueParameter]@{
                    Keys        = @("--length", "-n");
                    Name        = "Number of lines back to go within the log";
                    Description = "Number of lines back to go within the log";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--node");
                    Name        = "The node to get logs from. Defaults to the primary control plane.";
                    Description = "The node to get logs from. Defaults to the primary control plane.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--problems");
                    Name        = "Show only log entries which point to known problems";
                    Description = "Show only log entries which point to known problems";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("mount");
            Name        = "mount";
            Description = "Mounts the specified directory into minikube";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--9p-version");
                    Name        = "Specify the 9p version that the mount should use";
                    Description = "Specify the 9p version that the mount should use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gid");
                    Name        = "Default group id used for the mount";
                    Description = "Default group id used for the mount";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ip");
                    Name        = "Specify the ip that the mount should be setup on";
                    Description = "Specify the ip that the mount should be setup on";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--kill");
                    Name        = "Kill the mount process spawned by minikube start";
                    Description = "Kill the mount process spawned by minikube start";
                },
                [ValueParameter]@{
                    Keys        = @("--mode");
                    Name        = "File permissions used for the mount";
                    Description = "File permissions used for the mount";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--msize");
                    Name        = "The number of bytes to use for 9p packet payload";
                    Description = "The number of bytes to use for 9p packet payload";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--options");
                    Name        = "Additional mount options, such as cache=fscache";
                    Description = "Additional mount options, such as cache=fscache";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "Specify the mount filesystem type (supported types: 9p)";
                    Description = "Specify the mount filesystem type (supported types: 9p)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--uid");
                    Name        = "Default user id used for the mount";
                    Description = "Default user id used for the mount";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("node");
            Name        = "node";
            Description = "Add, remove, or list additional nodes";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Adds a node to the given cluster.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--control-plane");
                            Name        = "If true, the node added will also be a control plane in addition to a worker.";
                            Description = "If true, the node added will also be a control plane in addition to a worker.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--delete-on-failure");
                            Name        = "If set, delete the current cluster if start fails and try again. Defaults to false.";
                            Description = "If set, delete the current cluster if start fails and try again. Defaults to false.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--worker");
                            Name        = "If true, the added node will be marked for work. Defaults to true.";
                            Description = "If true, the added node will be marked for work. Defaults to true.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Deletes a node from a cluster.";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List nodes.";
                },
                [CommandParameter]@{
                    Keys        = @("start");
                    Name        = "start";
                    Description = "Starts a node.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--delete-on-failure");
                            Name        = "If set, delete the current cluster if start fails and try again. Defaults to false.";
                            Description = "If set, delete the current cluster if start fails and try again. Defaults to false.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("stop");
                    Name        = "stop";
                    Description = "Stops a node in a cluster.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pause");
            Name        = "pause";
            Description = "pause Kubernetes";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-namespaces", "-A");
                    Name        = "If set, pause all namespaces";
                    Description = "If set, pause all namespaces";
                },
                [ValueParameter]@{
                    Keys        = @("--namespaces", "-n");
                    Name        = "namespaces to pause";
                    Description = "namespaces to pause";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Format to print stdout in. Options include: [text,json]";
                    Description = "Format to print stdout in. Options include: [text,json]";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("podman-env");
            Name        = "podman-env";
            Description = "Configure environment to use minikube's Podman service";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--shell");
                    Name        = "Force environment to be configured for a specified shell: [fish, cmd, powershell, tcsh, bash, zsh], default is auto-detect";
                    Description = "Force environment to be configured for a specified shell: [fish, cmd, powershell, tcsh, bash, zsh], default is auto-detect";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--unset", "-u");
                    Name        = "Unset variables instead of setting them";
                    Description = "Unset variables instead of setting them";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("profile");
            Name        = "profile";
            Description = "Get or list the current profiles (clusters)";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Lists all minikube profiles.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--light", "-l");
                            Name        = "If true, returns list of profiles faster by skipping validating the status of the cluster.";
                            Description = "If true, returns list of profiles faster by skipping validating the status of the cluster.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "The output format. One of 'json', 'table'";
                            Description = "The output format. One of 'json', 'table'";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("service");
            Name        = "service";
            Description = "Returns a URL to connect to a service";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Format to output service URL in. This format will be applied to each url individually and they will be printed one at a time.";
                    Description = "Format to output service URL in. This format will be applied to each url individually and they will be printed one at a time.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--https");
                    Name        = "Open the service URL with https instead of http (defaults to `"false`")";
                    Description = "Open the service URL with https instead of http (defaults to `"false`")";
                },
                [ValueParameter]@{
                    Keys        = @("--interval");
                    Name        = "The initial time interval for each check that wait performs in seconds";
                    Description = "The initial time interval for each check that wait performs in seconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace", "-n");
                    Name        = "The service namespace";
                    Description = "The service namespace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--url");
                    Name        = "Display the Kubernetes service URL in the CLI instead of opening it in the default browser";
                    Description = "Display the Kubernetes service URL in the CLI instead of opening it in the default browser";
                },
                [ValueParameter]@{
                    Keys        = @("--wait");
                    Name        = "Amount of time to wait for a service in seconds";
                    Description = "Amount of time to wait for a service in seconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Lists the URLs for the services in your local cluster";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--namespace", "-n");
                            Name        = "The services namespace";
                            Description = "The services namespace";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ssh");
            Name        = "ssh";
            Description = "Log into the minikube environment (for debugging)";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--native-ssh");
                    Name        = "Use native Golang SSH client (default true). Set to 'false' to use the command line 'ssh' command when accessing the docker machine. Useful for the machine drivers when they will not start with 'Waiting for SSH'.";
                    Description = "Use native Golang SSH client (default true). Set to 'false' to use the command line 'ssh' command when accessing the docker machine. Useful for the machine drivers when they will not start with 'Waiting for SSH'.";
                },
                [ValueParameter]@{
                    Keys        = @("--node", "-n");
                    Name        = "The node to ssh into. Defaults to the primary control plane.";
                    Description = "The node to ssh into. Defaults to the primary control plane.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ssh-host");
            Name        = "ssh-host";
            Description = "Retrieve the ssh host key of the specified node";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--append-known");
                    Name        = "Add host key to SSH known_hosts file";
                    Description = "Add host key to SSH known_hosts file";
                },
                [ValueParameter]@{
                    Keys        = @("--node", "-n");
                    Name        = "The node to ssh into. Defaults to the primary control plane.";
                    Description = "The node to ssh into. Defaults to the primary control plane.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ssh-key");
            Name        = "ssh-key";
            Description = "Retrieve the ssh identity key path of the specified node";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--node", "-n");
                    Name        = "The node to get ssh-key path. Defaults to the primary control plane.";
                    Description = "The node to get ssh-key path. Defaults to the primary control plane.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("start");
            Name        = "start";
            Description = "Starts a local Kubernetes cluster";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--addons");
                    Name        = "Enable addons. see ``minikube addons list`` for a list of valid addon names.";
                    Description = "Enable addons. see ``minikube addons list`` for a list of valid addon names.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--apiserver-ips");
                    Name        = "A set of apiserver IP Addresses which are used in the generated certificate for kubernetes.  This can be used if you want to make the apiserver available from outside the machine";
                    Description = "A set of apiserver IP Addresses which are used in the generated certificate for kubernetes.  This can be used if you want to make the apiserver available from outside the machine";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--apiserver-name");
                    Name        = "The authoritative apiserver hostname for apiserver certificates and connectivity. This can be used if you want to make the apiserver available from outside the machine";
                    Description = "The authoritative apiserver hostname for apiserver certificates and connectivity. This can be used if you want to make the apiserver available from outside the machine";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--apiserver-names");
                    Name        = "A set of apiserver names which are used in the generated certificate for kubernetes.  This can be used if you want to make the apiserver available from outside the machine";
                    Description = "A set of apiserver names which are used in the generated certificate for kubernetes.  This can be used if you want to make the apiserver available from outside the machine";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--apiserver-port");
                    Name        = "The apiserver listening port";
                    Description = "The apiserver listening port";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--auto-update-drivers");
                    Name        = "If set, automatically updates drivers to the latest version. Defaults to true.";
                    Description = "If set, automatically updates drivers to the latest version. Defaults to true.";
                },
                [ValueParameter]@{
                    Keys        = @("--base-image");
                    Name        = "The base image to use for docker/podman drivers. Intended for local development.";
                    Description = "The base image to use for docker/podman drivers. Intended for local development.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cache-images");
                    Name        = "If true, cache docker images for the current bootstrapper and load them into the machine. Always false with --driver=none.";
                    Description = "If true, cache docker images for the current bootstrapper and load them into the machine. Always false with --driver=none.";
                },
                [ValueParameter]@{
                    Keys        = @("--cni");
                    Name        = "CNI plug-in to use. Valid options: auto, bridge, calico, cilium, flannel, kindnet, or path to a CNI manifest (default: auto)";
                    Description = "CNI plug-in to use. Valid options: auto, bridge, calico, cilium, flannel, kindnet, or path to a CNI manifest (default: auto)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--container-runtime");
                    Name        = "The container runtime to be used (docker, cri-o, containerd).";
                    Description = "The container runtime to be used (docker, cri-o, containerd).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpus");
                    Name        = "Number of CPUs allocated to Kubernetes. Use `"max`" to use the maximum number of CPUs.";
                    Description = "Number of CPUs allocated to Kubernetes. Use `"max`" to use the maximum number of CPUs.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cri-socket");
                    Name        = "The cri socket path to be used.";
                    Description = "The cri socket path to be used.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--delete-on-failure");
                    Name        = "If set, delete the current cluster if start fails and try again. Defaults to false.";
                    Description = "If set, delete the current cluster if start fails and try again. Defaults to false.";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-driver-mounts");
                    Name        = "Disables the filesystem mounts provided by the hypervisors";
                    Description = "Disables the filesystem mounts provided by the hypervisors";
                },
                [ValueParameter]@{
                    Keys        = @("--disk-size");
                    Name        = "Disk size allocated to the minikube VM (format: <number>[<unit>], where unit = b, k, m or g).";
                    Description = "Disk size allocated to the minikube VM (format: <number>[<unit>], where unit = b, k, m or g).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dns-domain");
                    Name        = "The cluster dns domain name used in the Kubernetes cluster";
                    Description = "The cluster dns domain name used in the Kubernetes cluster";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dns-proxy");
                    Name        = "Enable proxy for NAT DNS requests (virtualbox driver only)";
                    Description = "Enable proxy for NAT DNS requests (virtualbox driver only)";
                },
                [ValueParameter]@{
                    Keys        = @("--docker-env");
                    Name        = "Environment variables to pass to the Docker daemon. (format: key=value)";
                    Description = "Environment variables to pass to the Docker daemon. (format: key=value)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--docker-opt");
                    Name        = "Specify arbitrary flags to pass to the Docker daemon. (format: key=value)";
                    Description = "Specify arbitrary flags to pass to the Docker daemon. (format: key=value)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--download-only");
                    Name        = "If true, only download and cache files for later use - don't install or start anything.";
                    Description = "If true, only download and cache files for later use - don't install or start anything.";
                },
                [ValueParameter]@{
                    Keys        = @("--driver");
                    Name        = "Driver is one of: virtualbox, vmwarefusion, kvm2, vmware, none, docker, podman, ssh (defaults to auto-detect)";
                    Description = "Driver is one of: virtualbox, vmwarefusion, kvm2, vmware, none, docker, podman, ssh (defaults to auto-detect)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "dry-run mode. Validates configuration, but does not mutate system state";
                    Description = "dry-run mode. Validates configuration, but does not mutate system state";
                },
                [FlagParameter]@{
                    Keys        = @("--embed-certs");
                    Name        = "if true, will embed the certs in kubeconfig.";
                    Description = "if true, will embed the certs in kubeconfig.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-default-cni");
                    Name        = "DEPRECATED: Replaced by --cni=bridge";
                    Description = "DEPRECATED: Replaced by --cni=bridge";
                },
                [ValueParameter]@{
                    Keys        = @("--extra-config");
                    Name        = "A set of key=value pairs that describe configuration that may be passed to different components.";
                    Description = "A set of key=value pairs that describe configuration that may be passed to different components.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--feature-gates");
                    Name        = "A set of key=value pairs that describe feature gates for alpha/experimental features.";
                    Description = "A set of key=value pairs that describe feature gates for alpha/experimental features.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Force minikube to perform possibly dangerous operations";
                    Description = "Force minikube to perform possibly dangerous operations";
                },
                [FlagParameter]@{
                    Keys        = @("--force-systemd");
                    Name        = "If set, force the container runtime to use systemd as cgroup manager. Defaults to false.";
                    Description = "If set, force the container runtime to use systemd as cgroup manager. Defaults to false.";
                },
                [FlagParameter]@{
                    Keys        = @("--host-dns-resolver");
                    Name        = "Enable host resolver for NAT DNS requests (virtualbox driver only)";
                    Description = "Enable host resolver for NAT DNS requests (virtualbox driver only)";
                },
                [ValueParameter]@{
                    Keys        = @("--host-only-cidr");
                    Name        = "The CIDR to be used for the minikube VM (virtualbox driver only)";
                    Description = "The CIDR to be used for the minikube VM (virtualbox driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--host-only-nic-type");
                    Name        = "NIC Type used for host only network. One of Am79C970A, Am79C973, 82540EM, 82543GC, 82545EM, or virtio (virtualbox driver only)";
                    Description = "NIC Type used for host only network. One of Am79C970A, Am79C973, 82540EM, 82543GC, 82545EM, or virtio (virtualbox driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hyperkit-vpnkit-sock");
                    Name        = "Location of the VPNKit socket used for networking. If empty, disables Hyperkit VPNKitSock, if 'auto' uses Docker for Mac VPNKit connection, otherwise uses the specified VSock (hyperkit driver only)";
                    Description = "Location of the VPNKit socket used for networking. If empty, disables Hyperkit VPNKitSock, if 'auto' uses Docker for Mac VPNKit connection, otherwise uses the specified VSock (hyperkit driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hyperkit-vsock-ports");
                    Name        = "List of guest VSock ports that should be exposed as sockets on the host (hyperkit driver only)";
                    Description = "List of guest VSock ports that should be exposed as sockets on the host (hyperkit driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hyperv-external-adapter");
                    Name        = "External Adapter on which external switch will be created if no external switch is found. (hyperv driver only)";
                    Description = "External Adapter on which external switch will be created if no external switch is found. (hyperv driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--hyperv-use-external-switch");
                    Name        = "Whether to use external switch over Default Switch if virtual switch not explicitly specified. (hyperv driver only)";
                    Description = "Whether to use external switch over Default Switch if virtual switch not explicitly specified. (hyperv driver only)";
                },
                [ValueParameter]@{
                    Keys        = @("--hyperv-virtual-switch");
                    Name        = "The hyperv virtual switch name. Defaults to first found. (hyperv driver only)";
                    Description = "The hyperv virtual switch name. Defaults to first found. (hyperv driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image-mirror-country");
                    Name        = "Country code of the image mirror to be used. Leave empty to use the global one. For Chinese mainland users, set it to cn.";
                    Description = "Country code of the image mirror to be used. Leave empty to use the global one. For Chinese mainland users, set it to cn.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image-repository");
                    Name        = "Alternative image repository to pull docker images from. This can be used when you have limited access to gcr.io. Set it to `"auto`" to let minikube decide one for you. For Chinese mainland users, you may use local gcr.io mirrors such as registry.cn-hangzhou.aliyuncs.com/google_containers";
                    Description = "Alternative image repository to pull docker images from. This can be used when you have limited access to gcr.io. Set it to `"auto`" to let minikube decide one for you. For Chinese mainland users, you may use local gcr.io mirrors such as registry.cn-hangzhou.aliyuncs.com/google_containers";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--insecure-registry");
                    Name        = "Insecure Docker registries to pass to the Docker daemon.  The default service CIDR range will automatically be added.";
                    Description = "Insecure Docker registries to pass to the Docker daemon.  The default service CIDR range will automatically be added.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--install-addons");
                    Name        = "If set, install addons. Defaults to true.";
                    Description = "If set, install addons. Defaults to true.";
                },
                [FlagParameter]@{
                    Keys        = @("--interactive");
                    Name        = "Allow user prompts for more information";
                    Description = "Allow user prompts for more information";
                },
                [ValueParameter]@{
                    Keys        = @("--iso-url");
                    Name        = "Locations to fetch the minikube ISO from.";
                    Description = "Locations to fetch the minikube ISO from.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--keep-context");
                    Name        = "This will keep the existing kubectl context and will create a minikube context.";
                    Description = "This will keep the existing kubectl context and will create a minikube context.";
                },
                [ValueParameter]@{
                    Keys        = @("--kubernetes-version");
                    Name        = "The Kubernetes version that the minikube VM will use (ex: v1.2.3, 'stable' for v1.20.7, 'latest' for v1.22.0-alpha.2). Defaults to 'stable'.";
                    Description = "The Kubernetes version that the minikube VM will use (ex: v1.2.3, 'stable' for v1.20.7, 'latest' for v1.22.0-alpha.2). Defaults to 'stable'.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--kvm-gpu");
                    Name        = "Enable experimental NVIDIA GPU support in minikube";
                    Description = "Enable experimental NVIDIA GPU support in minikube";
                },
                [FlagParameter]@{
                    Keys        = @("--kvm-hidden");
                    Name        = "Hide the hypervisor signature from the guest in minikube (kvm2 driver only)";
                    Description = "Hide the hypervisor signature from the guest in minikube (kvm2 driver only)";
                },
                [ValueParameter]@{
                    Keys        = @("--kvm-network");
                    Name        = "The KVM default network name. (kvm2 driver only)";
                    Description = "The KVM default network name. (kvm2 driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kvm-numa-count");
                    Name        = "Simulate numa node count in minikube, supported numa node count range is 1-8 (kvm2 driver only)";
                    Description = "Simulate numa node count in minikube, supported numa node count range is 1-8 (kvm2 driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kvm-qemu-uri");
                    Name        = "The KVM QEMU connection URI. (kvm2 driver only)";
                    Description = "The KVM QEMU connection URI. (kvm2 driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--listen-address");
                    Name        = "IP Address to use to expose ports (docker and podman driver only)";
                    Description = "IP Address to use to expose ports (docker and podman driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory");
                    Name        = "Amount of RAM to allocate to Kubernetes (format: <number>[<unit>], where unit = b, k, m or g). Use `"max`" to use the maximum amount of memory.";
                    Description = "Amount of RAM to allocate to Kubernetes (format: <number>[<unit>], where unit = b, k, m or g). Use `"max`" to use the maximum amount of memory.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--mount");
                    Name        = "This will start the mount daemon and automatically mount files into minikube.";
                    Description = "This will start the mount daemon and automatically mount files into minikube.";
                },
                [ValueParameter]@{
                    Keys        = @("--mount-string");
                    Name        = "The argument to pass the minikube mount command on start.";
                    Description = "The argument to pass the minikube mount command on start.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace");
                    Name        = "The named space to activate after start";
                    Description = "The named space to activate after start";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nat-nic-type");
                    Name        = "NIC Type used for nat network. One of Am79C970A, Am79C973, 82540EM, 82543GC, 82545EM, or virtio (virtualbox driver only)";
                    Description = "NIC Type used for nat network. One of Am79C970A, Am79C973, 82540EM, 82543GC, 82545EM, or virtio (virtualbox driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--native-ssh");
                    Name        = "Use native Golang SSH client (default true). Set to 'false' to use the command line 'ssh' command when accessing the docker machine. Useful for the machine drivers when they will not start with 'Waiting for SSH'.";
                    Description = "Use native Golang SSH client (default true). Set to 'false' to use the command line 'ssh' command when accessing the docker machine. Useful for the machine drivers when they will not start with 'Waiting for SSH'.";
                },
                [ValueParameter]@{
                    Keys        = @("--network");
                    Name        = "network to run minikube with. Now it is used by docker/podman and KVM drivers. If left empty, minikube will create a new network.";
                    Description = "network to run minikube with. Now it is used by docker/podman and KVM drivers. If left empty, minikube will create a new network.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--network-plugin");
                    Name        = "Kubelet network plug-in to use (default: auto)";
                    Description = "Kubelet network plug-in to use (default: auto)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nfs-share");
                    Name        = "Local folders to share with Guest via NFS mounts (hyperkit driver only)";
                    Description = "Local folders to share with Guest via NFS mounts (hyperkit driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--nfs-shares-root");
                    Name        = "Where to root the NFS Shares, defaults to /nfsshares (hyperkit driver only)";
                    Description = "Where to root the NFS Shares, defaults to /nfsshares (hyperkit driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-vtx-check");
                    Name        = "Disable checking for the availability of hardware virtualization before the vm is started (virtualbox driver only)";
                    Description = "Disable checking for the availability of hardware virtualization before the vm is started (virtualbox driver only)";
                },
                [ValueParameter]@{
                    Keys        = @("--nodes", "-n");
                    Name        = "The number of nodes to spin up. Defaults to 1.";
                    Description = "The number of nodes to spin up. Defaults to 1.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Format to print stdout in. Options include: [text,json]";
                    Description = "Format to print stdout in. Options include: [text,json]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ports");
                    Name        = "List of ports that should be exposed (docker and podman driver only)";
                    Description = "List of ports that should be exposed (docker and podman driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--preload");
                    Name        = "If set, download tarball of preloaded images if available to improve start time. Defaults to true.";
                    Description = "If set, download tarball of preloaded images if available to improve start time. Defaults to true.";
                },
                [ValueParameter]@{
                    Keys        = @("--registry-mirror");
                    Name        = "Registry mirrors to pass to the Docker daemon";
                    Description = "Registry mirrors to pass to the Docker daemon";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service-cluster-ip-range");
                    Name        = "The CIDR to be used for service cluster IPs.";
                    Description = "The CIDR to be used for service cluster IPs.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssh-ip-address");
                    Name        = "IP address (ssh driver only)";
                    Description = "IP address (ssh driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssh-key");
                    Name        = "SSH key (ssh driver only)";
                    Description = "SSH key (ssh driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssh-port");
                    Name        = "SSH port (ssh driver only)";
                    Description = "SSH port (ssh driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssh-user");
                    Name        = "SSH user (ssh driver only)";
                    Description = "SSH user (ssh driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--trace");
                    Name        = "Send trace events. Options include: [gcp]";
                    Description = "Send trace events. Options include: [gcp]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--uuid");
                    Name        = "Provide VM UUID to restore MAC address (hyperkit driver only)";
                    Description = "Provide VM UUID to restore MAC address (hyperkit driver only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--vm");
                    Name        = "Filter to use only VM Drivers";
                    Description = "Filter to use only VM Drivers";
                },
                [ValueParameter]@{
                    Keys        = @("--vm-driver");
                    Name        = "DEPRECATED, use ``driver`` instead.";
                    Description = "DEPRECATED, use ``driver`` instead.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--wait");
                    Name        = "comma separated list of Kubernetes components to verify and wait for after starting a cluster. defaults to `"apiserver,system_pods`", available options: `"apiserver,system_pods,default_sa,apps_running,node_ready,kubelet`" . other acceptable values are 'all' or 'none', 'true' and 'false'";
                    Description = "comma separated list of Kubernetes components to verify and wait for after starting a cluster. defaults to `"apiserver,system_pods`", available options: `"apiserver,system_pods,default_sa,apps_running,node_ready,kubelet`" . other acceptable values are 'all' or 'none', 'true' and 'false'";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--wait-timeout");
                    Name        = "max time to wait per Kubernetes or host to be healthy.";
                    Description = "max time to wait per Kubernetes or host to be healthy.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("status");
            Name        = "status";
            Description = "Gets the status of a local Kubernetes cluster";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--format", "-f");
                    Name        = "Go template format string for the status output.";
                    Description = "Go template format string for the status output.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--layout", "-l");
                    Name        = "output layout (EXPERIMENTAL, JSON only): 'nodes' or 'cluster'";
                    Description = "output layout (EXPERIMENTAL, JSON only): 'nodes' or 'cluster'";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--node", "-n");
                    Name        = "The node to check status for. Defaults to control plane. Leave blank with default format for status on all nodes.";
                    Description = "The node to check status for. Defaults to control plane. Leave blank with default format for status on all nodes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "minikube status --output OUTPUT. json, text";
                    Description = "minikube status --output OUTPUT. json, text";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--watch", "-w");
                    Name        = "Continuously listing/getting the status with optional interval duration.";
                    Description = "Continuously listing/getting the status with optional interval duration.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("stop");
            Name        = "stop";
            Description = "Stops a running local Kubernetes cluster";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Set flag to stop all profiles (clusters)";
                    Description = "Set flag to stop all profiles (clusters)";
                },
                [FlagParameter]@{
                    Keys        = @("--cancel-scheduled");
                    Name        = "cancel any existing scheduled stop requests";
                    Description = "cancel any existing scheduled stop requests";
                },
                [FlagParameter]@{
                    Keys        = @("--keep-context-active");
                    Name        = "keep the kube-context active after cluster is stopped. Defaults to false.";
                    Description = "keep the kube-context active after cluster is stopped. Defaults to false.";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Format to print stdout in. Options include: [text,json]";
                    Description = "Format to print stdout in. Options include: [text,json]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--schedule");
                    Name        = "Set flag to stop cluster after a set amount of time (e.g. --schedule=5m)";
                    Description = "Set flag to stop cluster after a set amount of time (e.g. --schedule=5m)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("tunnel");
            Name        = "tunnel";
            Description = "Connect to LoadBalancer services";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--cleanup", "-c");
                    Name        = "call with cleanup=true to remove old tunnels";
                    Description = "call with cleanup=true to remove old tunnels";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("unpause");
            Name        = "unpause";
            Description = "unpause Kubernetes";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-namespaces", "-A");
                    Name        = "If set, unpause all namespaces";
                    Description = "If set, unpause all namespaces";
                },
                [ValueParameter]@{
                    Keys        = @("--namespaces", "-n");
                    Name        = "namespaces to unpause";
                    Description = "namespaces to unpause";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Format to print stdout in. Options include: [text,json]";
                    Description = "Format to print stdout in. Options include: [text,json]";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("update-check");
            Name        = "update-check";
            Description = "Print current and latest version number";
        },
        [CommandParameter]@{
            Keys        = @("update-context");
            Name        = "update-context";
            Description = "Update kubeconfig in case of an IP or port change";
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Print the version of minikube";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "One of 'yaml' or 'json'.";
                    Description = "One of 'yaml' or 'json'.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--short");
                    Name        = "Print just the version number.";
                    Description = "Print just the version number.";
                }
            )
        }
    )
}
