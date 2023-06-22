# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://docs.docker.com/compose/";
    Keys        = @("docker");
    Name        = "docker";
    Description = "Docker image and container command line interface";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--config");
            Name        = "Location of client config files (default `"/home/user/.docker`")";
            Description = "Location of client config files (default `"/home/user/.docker`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--context", "-c");
            Name        = "Name of the context to use to connect to the daemon (overrides DOCKER_HOST env var and default context set with `"docker context use`")";
            Description = "Name of the context to use to connect to the daemon (overrides DOCKER_HOST env var and default context set with `"docker context use`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-D");
            Name        = "Enable debug mode";
            Description = "Enable debug mode";
        },
        [ValueParameter]@{
            Keys        = @("--host", "-H");
            Name        = "Daemon socket(s) to connect to";
            Description = "Daemon socket(s) to connect to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-level", "-l");
            Name        = "Set the logging level (`"debug`"|`"info`"|`"warn`"|`"error`"|`"fatal`") (default `"info`")";
            Description = "Set the logging level (`"debug`"|`"info`"|`"warn`"|`"error`"|`"fatal`") (default `"info`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tls");
            Name        = "Use TLS; implied by --tlsverify";
            Description = "Use TLS; implied by --tlsverify";
        },
        [ValueParameter]@{
            Keys        = @("--tlscacert");
            Name        = "Trust certs signed only by this CA (default `"/home/user/.docker/ca.pem`")";
            Description = "Trust certs signed only by this CA (default `"/home/user/.docker/ca.pem`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tlscert");
            Name        = "Path to TLS certificate file (default `"/home/user/.docker/cert.pem`")";
            Description = "Path to TLS certificate file (default `"/home/user/.docker/cert.pem`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tlskey");
            Name        = "Path to TLS key file (default `"/home/user/.docker/key.pem`")";
            Description = "Path to TLS key file (default `"/home/user/.docker/key.pem`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tlsverify");
            Name        = "Use TLS and verify the remote";
            Description = "Use TLS and verify the remote";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version information and quit";
            Description = "Print version information and quit";
        },
        [CommandParameter]@{
            Keys        = @("attach");
            Name        = "attach";
            Description = "Attach local standard input, output, and error streams to a running container";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--detach-keys");
                    Name        = "Override the key sequence for detaching a container";
                    Description = "Override the key sequence for detaching a container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-stdin");
                    Name        = "Do not attach STDIN";
                    Description = "Do not attach STDIN";
                },
                [FlagParameter]@{
                    Keys        = @("--sig-proxy");
                    Name        = "Proxy all received signals to the process (default true)";
                    Description = "Proxy all received signals to the process (default true)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Build an image from a Dockerfile";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--add-host");
                    Name        = "Add a custom host-to-IP mapping (host:ip)";
                    Description = "Add a custom host-to-IP mapping (host:ip)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-arg");
                    Name        = "Set build-time variables";
                    Description = "Set build-time variables";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cache-from");
                    Name        = "Images to consider as cache sources";
                    Description = "Images to consider as cache sources";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cgroup-parent");
                    Name        = "Optional parent cgroup for the container";
                    Description = "Optional parent cgroup for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--compress");
                    Name        = "Compress the build context using gzip";
                    Description = "Compress the build context using gzip";
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-period");
                    Name        = "Limit the CPU CFS (Completely Fair Scheduler) period";
                    Description = "Limit the CPU CFS (Completely Fair Scheduler) period";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-quota");
                    Name        = "Limit the CPU CFS (Completely Fair Scheduler) quota";
                    Description = "Limit the CPU CFS (Completely Fair Scheduler) quota";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-shares", "-c");
                    Name        = "CPU shares (relative weight)";
                    Description = "CPU shares (relative weight)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpuset-cpus");
                    Name        = "CPUs in which to allow execution (0-3, 0,1)";
                    Description = "CPUs in which to allow execution (0-3, 0,1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpuset-mems");
                    Name        = "MEMs in which to allow execution (0-3, 0,1)";
                    Description = "MEMs in which to allow execution (0-3, 0,1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-content-trust");
                    Name        = "Skip image verification (default true)";
                    Description = "Skip image verification (default true)";
                },
                [ValueParameter]@{
                    Keys        = @("--file", "-f");
                    Name        = "Name of the Dockerfile (Default is 'PATH/Dockerfile')";
                    Description = "Name of the Dockerfile (Default is 'PATH/Dockerfile')";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force-rm");
                    Name        = "Always remove intermediate containers";
                    Description = "Always remove intermediate containers";
                },
                [ValueParameter]@{
                    Keys        = @("--iidfile");
                    Name        = "Write the image ID to the file";
                    Description = "Write the image ID to the file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--isolation");
                    Name        = "Container isolation technology";
                    Description = "Container isolation technology";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label");
                    Name        = "Set metadata for an image";
                    Description = "Set metadata for an image";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory", "-m");
                    Name        = "Memory limit";
                    Description = "Memory limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-swap");
                    Name        = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                    Description = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--network");
                    Name        = "Set the networking mode for the RUN instructions during build";
                    Description = "Set the networking mode for the RUN instructions during build";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-cache");
                    Name        = "Do not use cache when building the image";
                    Description = "Do not use cache when building the image";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output destination (format: type=local,dest=path)";
                    Description = "Output destination (format: type=local,dest=path)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Set platform if server is multi-platform capable";
                    Description = "Set platform if server is multi-platform capable";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--progress");
                    Name        = "Set type of progress output (auto, plain, tty). Use plain to";
                    Description = "Set type of progress output (auto, plain, tty). Use plain to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pull");
                    Name        = "Always attempt to pull a newer version of the image";
                    Description = "Always attempt to pull a newer version of the image";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Suppress the build output and print image ID on success";
                    Description = "Suppress the build output and print image ID on success";
                },
                [FlagParameter]@{
                    Keys        = @("--rm");
                    Name        = "Remove intermediate containers after a successful build";
                    Description = "Remove intermediate containers after a successful build";
                },
                [ValueParameter]@{
                    Keys        = @("--secret");
                    Name        = "Secret file to expose to the build (only if BuildKit enabled):";
                    Description = "Secret file to expose to the build (only if BuildKit enabled):";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--security-opt");
                    Name        = "Security options";
                    Description = "Security options";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--shm-size");
                    Name        = "Size of /dev/shm";
                    Description = "Size of /dev/shm";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--squash");
                    Name        = "Squash newly built layers into a single new layer";
                    Description = "Squash newly built layers into a single new layer";
                },
                [ValueParameter]@{
                    Keys        = @("--ssh");
                    Name        = "SSH agent socket or keys to expose to the build (only if";
                    Description = "SSH agent socket or keys to expose to the build (only if";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--stream");
                    Name        = "Stream attaches to server to negotiate build context";
                    Description = "Stream attaches to server to negotiate build context";
                },
                [ValueParameter]@{
                    Keys        = @("--tag", "-t");
                    Name        = "Name and optionally a tag in the 'name:tag' format";
                    Description = "Name and optionally a tag in the 'name:tag' format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Set the target build stage to build.";
                    Description = "Set the target build stage to build.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ulimit");
                    Name        = "Ulimit options (default [])";
                    Description = "Ulimit options (default [])";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("builder");
            Name        = "builder";
            Description = "Manage builds";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("build");
                    Name        = "build";
                    Description = "Build an image from a Dockerfile";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--add-host");
                            Name        = "Add a custom host-to-IP mapping (host:ip)";
                            Description = "Add a custom host-to-IP mapping (host:ip)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-arg");
                            Name        = "Set build-time variables";
                            Description = "Set build-time variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cache-from");
                            Name        = "Images to consider as cache sources";
                            Description = "Images to consider as cache sources";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cgroup-parent");
                            Name        = "Optional parent cgroup for the container";
                            Description = "Optional parent cgroup for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--compress");
                            Name        = "Compress the build context using gzip";
                            Description = "Compress the build context using gzip";
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-period");
                            Name        = "Limit the CPU CFS (Completely Fair Scheduler) period";
                            Description = "Limit the CPU CFS (Completely Fair Scheduler) period";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-quota");
                            Name        = "Limit the CPU CFS (Completely Fair Scheduler) quota";
                            Description = "Limit the CPU CFS (Completely Fair Scheduler) quota";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-shares", "-c");
                            Name        = "CPU shares (relative weight)";
                            Description = "CPU shares (relative weight)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-cpus");
                            Name        = "CPUs in which to allow execution (0-3, 0,1)";
                            Description = "CPUs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-mems");
                            Name        = "MEMs in which to allow execution (0-3, 0,1)";
                            Description = "MEMs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image verification (default true)";
                            Description = "Skip image verification (default true)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--file", "-f");
                            Name        = "Name of the Dockerfile (Default is 'PATH/Dockerfile')";
                            Description = "Name of the Dockerfile (Default is 'PATH/Dockerfile')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force-rm");
                            Name        = "Always remove intermediate containers";
                            Description = "Always remove intermediate containers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--iidfile");
                            Name        = "Write the image ID to the file";
                            Description = "Write the image ID to the file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--isolation");
                            Name        = "Container isolation technology";
                            Description = "Container isolation technology";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Set metadata for an image";
                            Description = "Set metadata for an image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory", "-m");
                            Name        = "Memory limit";
                            Description = "Memory limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-swap");
                            Name        = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                            Description = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network");
                            Name        = "Set the networking mode for the RUN instructions during build (default `"default`")";
                            Description = "Set the networking mode for the RUN instructions during build (default `"default`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-cache");
                            Name        = "Do not use cache when building the image";
                            Description = "Do not use cache when building the image";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output destination (format: type=local,dest=path)";
                            Description = "Output destination (format: type=local,dest=path)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Set platform if server is multi-platform capable";
                            Description = "Set platform if server is multi-platform capable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--progress");
                            Name        = "Set type of progress output (auto, plain, tty). Use plain to show container output (default `"auto`")";
                            Description = "Set type of progress output (auto, plain, tty). Use plain to show container output (default `"auto`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pull");
                            Name        = "Always attempt to pull a newer version of the image";
                            Description = "Always attempt to pull a newer version of the image";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Suppress the build output and print image ID on success";
                            Description = "Suppress the build output and print image ID on success";
                        },
                        [FlagParameter]@{
                            Keys        = @("--rm");
                            Name        = "Remove intermediate containers after a successful build (default true)";
                            Description = "Remove intermediate containers after a successful build (default true)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--secret");
                            Name        = "Secret file to expose to the build (only if BuildKit enabled): id=mysecret,src=/local/secret";
                            Description = "Secret file to expose to the build (only if BuildKit enabled): id=mysecret,src=/local/secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--security-opt");
                            Name        = "Security options";
                            Description = "Security options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--shm-size");
                            Name        = "Size of /dev/shm";
                            Description = "Size of /dev/shm";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--squash");
                            Name        = "Squash newly built layers into a single new layer";
                            Description = "Squash newly built layers into a single new layer";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ssh");
                            Name        = "SSH agent socket or keys to expose to the build (only if BuildKit enabled) (format: default|<id>[=<socket>|<key>[,<key>]])";
                            Description = "SSH agent socket or keys to expose to the build (only if BuildKit enabled) (format: default|<id>[=<socket>|<key>[,<key>]])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stream");
                            Name        = "Stream attaches to server to negotiate build context";
                            Description = "Stream attaches to server to negotiate build context";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tag", "-t");
                            Name        = "Name and optionally a tag in the 'name:tag' format";
                            Description = "Name and optionally a tag in the 'name:tag' format";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target");
                            Name        = "Set the target build stage to build.";
                            Description = "Set the target build stage to build.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ulimit");
                            Name        = "Ulimit options (default [])";
                            Description = "Ulimit options (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("prune");
                    Name        = "prune";
                    Description = "Remove build cache";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Remove all unused build cache, not just dangling ones";
                            Description = "Remove all unused build cache, not just dangling ones";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filter");
                            Name        = "Provide filter values (e.g. 'until=24h')";
                            Description = "Provide filter values (e.g. 'until=24h')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Do not prompt for confirmation";
                            Description = "Do not prompt for confirmation";
                        },
                        [ValueParameter]@{
                            Keys        = @("--keep-storage");
                            Name        = "Amount of disk space to keep for cache";
                            Description = "Amount of disk space to keep for cache";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("commit");
            Name        = "commit";
            Description = "Create a new image from a container's changes";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--author", "-a");
                    Name        = "Author (e.g., `"John Hannibal Smith <hannibal@a-team.com>`")";
                    Description = "Author (e.g., `"John Hannibal Smith <hannibal@a-team.com>`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--change", "-c");
                    Name        = "Apply Dockerfile instruction to the created image";
                    Description = "Apply Dockerfile instruction to the created image";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message", "-m");
                    Name        = "Commit message";
                    Description = "Commit message";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pause", "-p");
                    Name        = "Pause container during commit (default true)";
                    Description = "Pause container during commit (default true)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Manage Docker configs";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a config from a file or STDIN";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Config labels";
                            Description = "Config labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template-driver");
                            Name        = "Template driver";
                            Description = "Template driver";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more configs";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pretty");
                            Name        = "Print the information in a human friendly format";
                            Description = "Print the information in a human friendly format";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List configs";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print configs using a Go template";
                            Description = "Pretty-print configs using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display IDs";
                            Description = "Only display IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more configs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("container");
            Name        = "container";
            Description = "Manage containers";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("attach");
                    Name        = "attach";
                    Description = "Attach local standard input, output, and error streams to a running container";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--detach-keys");
                            Name        = "Override the key sequence for detaching a container";
                            Description = "Override the key sequence for detaching a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-stdin");
                            Name        = "Do not attach STDIN";
                            Description = "Do not attach STDIN";
                        },
                        [FlagParameter]@{
                            Keys        = @("--sig-proxy");
                            Name        = "Proxy all received signals to the process (default true)";
                            Description = "Proxy all received signals to the process (default true)";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("commit");
                    Name        = "commit";
                    Description = "Create a new image from a container's changes";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--author", "-a");
                            Name        = "Author (e.g., `"John Hannibal Smith <hannibal@a-team.com>`")";
                            Description = "Author (e.g., `"John Hannibal Smith <hannibal@a-team.com>`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--change", "-c");
                            Name        = "Apply Dockerfile instruction to the created image";
                            Description = "Apply Dockerfile instruction to the created image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--message", "-m");
                            Name        = "Commit message";
                            Description = "Commit message";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pause", "-p");
                            Name        = "Pause container during commit (default true)";
                            Description = "Pause container during commit (default true)";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("cp");
                    Name        = "cp";
                    Description = "Copy files/folders between a container and the local filesystem";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--archive", "-a");
                            Name        = "Archive mode (copy all uid/gid information)";
                            Description = "Archive mode (copy all uid/gid information)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--follow-link", "-L");
                            Name        = "Always follow symbol link in SRC_PATH";
                            Description = "Always follow symbol link in SRC_PATH";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new container";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--add-host");
                            Name        = "Add a custom host-to-IP mapping (host:ip)";
                            Description = "Add a custom host-to-IP mapping (host:ip)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--attach", "-a");
                            Name        = "Attach to STDIN, STDOUT or STDERR";
                            Description = "Attach to STDIN, STDOUT or STDERR";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--blkio-weight");
                            Name        = "Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)";
                            Description = "Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--blkio-weight-device");
                            Name        = "Block IO weight (relative device weight) (default [])";
                            Description = "Block IO weight (relative device weight) (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cap-add");
                            Name        = "Add Linux capabilities";
                            Description = "Add Linux capabilities";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cap-drop");
                            Name        = "Drop Linux capabilities";
                            Description = "Drop Linux capabilities";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cgroup-parent");
                            Name        = "Optional parent cgroup for the container";
                            Description = "Optional parent cgroup for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cidfile");
                            Name        = "Write the container ID to the file";
                            Description = "Write the container ID to the file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-period");
                            Name        = "Limit CPU CFS (Completely Fair Scheduler) period";
                            Description = "Limit CPU CFS (Completely Fair Scheduler) period";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-quota");
                            Name        = "Limit CPU CFS (Completely Fair Scheduler) quota";
                            Description = "Limit CPU CFS (Completely Fair Scheduler) quota";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-rt-period");
                            Name        = "Limit CPU real-time period in microseconds";
                            Description = "Limit CPU real-time period in microseconds";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-rt-runtime");
                            Name        = "Limit CPU real-time runtime in microseconds";
                            Description = "Limit CPU real-time runtime in microseconds";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-shares", "-c");
                            Name        = "CPU shares (relative weight)";
                            Description = "CPU shares (relative weight)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpus");
                            Name        = "Number of CPUs";
                            Description = "Number of CPUs";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-cpus");
                            Name        = "CPUs in which to allow execution (0-3, 0,1)";
                            Description = "CPUs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-mems");
                            Name        = "MEMs in which to allow execution (0-3, 0,1)";
                            Description = "MEMs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device");
                            Name        = "Add a host device to the container";
                            Description = "Add a host device to the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-cgroup-rule");
                            Name        = "Add a rule to the cgroup allowed devices list";
                            Description = "Add a rule to the cgroup allowed devices list";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-read-bps");
                            Name        = "Limit read rate (bytes per second) from a device (default [])";
                            Description = "Limit read rate (bytes per second) from a device (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-read-iops");
                            Name        = "Limit read rate (IO per second) from a device (default [])";
                            Description = "Limit read rate (IO per second) from a device (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-write-bps");
                            Name        = "Limit write rate (bytes per second) to a device (default [])";
                            Description = "Limit write rate (bytes per second) to a device (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-write-iops");
                            Name        = "Limit write rate (IO per second) to a device (default [])";
                            Description = "Limit write rate (IO per second) to a device (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image verification (default true)";
                            Description = "Skip image verification (default true)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns");
                            Name        = "Set custom DNS servers";
                            Description = "Set custom DNS servers";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-option");
                            Name        = "Set DNS options";
                            Description = "Set DNS options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-search");
                            Name        = "Set custom DNS search domains";
                            Description = "Set custom DNS search domains";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--domainname");
                            Name        = "Container NIS domain name";
                            Description = "Container NIS domain name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--entrypoint");
                            Name        = "Overwrite the default ENTRYPOINT of the image";
                            Description = "Overwrite the default ENTRYPOINT of the image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Set environment variables";
                            Description = "Set environment variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env-file");
                            Name        = "Read in a file of environment variables";
                            Description = "Read in a file of environment variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--expose");
                            Name        = "Expose a port or a range of ports";
                            Description = "Expose a port or a range of ports";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--gpus");
                            Name        = "GPU devices to add to the container ('all' to pass all GPUs)";
                            Description = "GPU devices to add to the container ('all' to pass all GPUs)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group-add");
                            Name        = "Add additional groups to join";
                            Description = "Add additional groups to join";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-cmd");
                            Name        = "Command to run to check health";
                            Description = "Command to run to check health";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-interval");
                            Name        = "Time between running the check (ms|s|m|h) (default 0s)";
                            Description = "Time between running the check (ms|s|m|h) (default 0s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-retries");
                            Name        = "Consecutive failures needed to report unhealthy";
                            Description = "Consecutive failures needed to report unhealthy";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-start-period");
                            Name        = "Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)";
                            Description = "Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-timeout");
                            Name        = "Maximum time to allow one check to run (ms|s|m|h) (default 0s)";
                            Description = "Maximum time to allow one check to run (ms|s|m|h) (default 0s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help");
                            Name        = "Print usage";
                            Description = "Print usage";
                        },
                        [ValueParameter]@{
                            Keys        = @("--hostname", "-h");
                            Name        = "Container host name";
                            Description = "Container host name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--init");
                            Name        = "Run an init inside the container that forwards signals and reaps processes";
                            Description = "Run an init inside the container that forwards signals and reaps processes";
                        },
                        [FlagParameter]@{
                            Keys        = @("--interactive", "-i");
                            Name        = "Keep STDIN open even if not attached";
                            Description = "Keep STDIN open even if not attached";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ip");
                            Name        = "IPv4 address (e.g., 172.30.100.104)";
                            Description = "IPv4 address (e.g., 172.30.100.104)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ip6");
                            Name        = "IPv6 address (e.g., 2001:db8::33)";
                            Description = "IPv6 address (e.g., 2001:db8::33)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ipc");
                            Name        = "IPC mode to use";
                            Description = "IPC mode to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--isolation");
                            Name        = "Container isolation technology";
                            Description = "Container isolation technology";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kernel-memory");
                            Name        = "Kernel memory limit";
                            Description = "Kernel memory limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Set meta data on a container";
                            Description = "Set meta data on a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label-file");
                            Name        = "Read in a line delimited file of labels";
                            Description = "Read in a line delimited file of labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--link");
                            Name        = "Add link to another container";
                            Description = "Add link to another container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--link-local-ip");
                            Name        = "Container IPv4/IPv6 link-local addresses";
                            Description = "Container IPv4/IPv6 link-local addresses";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-driver");
                            Name        = "Logging driver for the container";
                            Description = "Logging driver for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-opt");
                            Name        = "Log driver options";
                            Description = "Log driver options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mac-address");
                            Name        = "Container MAC address (e.g., 92:d0:c6:0a:29:33)";
                            Description = "Container MAC address (e.g., 92:d0:c6:0a:29:33)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory", "-m");
                            Name        = "Memory limit";
                            Description = "Memory limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-reservation");
                            Name        = "Memory soft limit";
                            Description = "Memory soft limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-swap");
                            Name        = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                            Description = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-swappiness");
                            Name        = "Tune container memory swappiness (0 to 100) (default -1)";
                            Description = "Tune container memory swappiness (0 to 100) (default -1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mount");
                            Name        = "Attach a filesystem mount to the container";
                            Description = "Attach a filesystem mount to the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "Assign a name to the container";
                            Description = "Assign a name to the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network");
                            Name        = "Connect a container to a network";
                            Description = "Connect a container to a network";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network-alias");
                            Name        = "Add network-scoped alias for the container";
                            Description = "Add network-scoped alias for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-healthcheck");
                            Name        = "Disable any container-specified HEALTHCHECK";
                            Description = "Disable any container-specified HEALTHCHECK";
                        },
                        [FlagParameter]@{
                            Keys        = @("--oom-kill-disable");
                            Name        = "Disable OOM Killer";
                            Description = "Disable OOM Killer";
                        },
                        [ValueParameter]@{
                            Keys        = @("--oom-score-adj");
                            Name        = "Tune host's OOM preferences (-1000 to 1000)";
                            Description = "Tune host's OOM preferences (-1000 to 1000)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pid");
                            Name        = "PID namespace to use";
                            Description = "PID namespace to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pids-limit");
                            Name        = "Tune container pids limit (set -1 for unlimited)";
                            Description = "Tune container pids limit (set -1 for unlimited)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Set platform if server is multi-platform capable";
                            Description = "Set platform if server is multi-platform capable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--privileged");
                            Name        = "Give extended privileges to this container";
                            Description = "Give extended privileges to this container";
                        },
                        [ValueParameter]@{
                            Keys        = @("--publish", "-p");
                            Name        = "Publish a container's port(s) to the host";
                            Description = "Publish a container's port(s) to the host";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--publish-all", "-P");
                            Name        = "Publish all exposed ports to random ports";
                            Description = "Publish all exposed ports to random ports";
                        },
                        [FlagParameter]@{
                            Keys        = @("--read-only");
                            Name        = "Mount the container's root filesystem as read only";
                            Description = "Mount the container's root filesystem as read only";
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart");
                            Name        = "Restart policy to apply when a container exits (default `"no`")";
                            Description = "Restart policy to apply when a container exits (default `"no`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--rm");
                            Name        = "Automatically remove the container when it exits";
                            Description = "Automatically remove the container when it exits";
                        },
                        [ValueParameter]@{
                            Keys        = @("--runtime");
                            Name        = "Runtime to use for this container";
                            Description = "Runtime to use for this container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--security-opt");
                            Name        = "Security Options";
                            Description = "Security Options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--shm-size");
                            Name        = "Size of /dev/shm";
                            Description = "Size of /dev/shm";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--stop-signal");
                            Name        = "Signal to stop a container (default `"SIGTERM`")";
                            Description = "Signal to stop a container (default `"SIGTERM`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--stop-timeout");
                            Name        = "Timeout (in seconds) to stop a container";
                            Description = "Timeout (in seconds) to stop a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--storage-opt");
                            Name        = "Storage driver options for the container";
                            Description = "Storage driver options for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sysctl");
                            Name        = "Sysctl options (default map[])";
                            Description = "Sysctl options (default map[])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tmpfs");
                            Name        = "Mount a tmpfs directory";
                            Description = "Mount a tmpfs directory";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tty", "-t");
                            Name        = "Allocate a pseudo-TTY";
                            Description = "Allocate a pseudo-TTY";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ulimit");
                            Name        = "Ulimit options (default [])";
                            Description = "Ulimit options (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--user", "-u");
                            Name        = "Username or UID (format: <name|uid>[:<group|gid>])";
                            Description = "Username or UID (format: <name|uid>[:<group|gid>])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--userns");
                            Name        = "User namespace to use";
                            Description = "User namespace to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--uts");
                            Name        = "UTS namespace to use";
                            Description = "UTS namespace to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--volume", "-v");
                            Name        = "Bind mount a volume";
                            Description = "Bind mount a volume";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--volume-driver");
                            Name        = "Optional volume driver for the container";
                            Description = "Optional volume driver for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--volumes-from");
                            Name        = "Mount volumes from the specified container(s)";
                            Description = "Mount volumes from the specified container(s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workdir", "-w");
                            Name        = "Working directory inside the container";
                            Description = "Working directory inside the container";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("diff");
                    Name        = "diff";
                    Description = "Inspect changes to files or directories on a container's filesystem";
                },
                [CommandParameter]@{
                    Keys        = @("exec");
                    Name        = "exec";
                    Description = "Run a command in a running container";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--detach", "-d");
                            Name        = "Detached mode: run command in the background";
                            Description = "Detached mode: run command in the background";
                        },
                        [ValueParameter]@{
                            Keys        = @("--detach-keys");
                            Name        = "Override the key sequence for detaching a container";
                            Description = "Override the key sequence for detaching a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Set environment variables";
                            Description = "Set environment variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--interactive", "-i");
                            Name        = "Keep STDIN open even if not attached";
                            Description = "Keep STDIN open even if not attached";
                        },
                        [FlagParameter]@{
                            Keys        = @("--privileged");
                            Name        = "Give extended privileges to the command";
                            Description = "Give extended privileges to the command";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tty", "-t");
                            Name        = "Allocate a pseudo-TTY";
                            Description = "Allocate a pseudo-TTY";
                        },
                        [ValueParameter]@{
                            Keys        = @("--user", "-u");
                            Name        = "Username or UID (format: <name|uid>[:<group|gid>])";
                            Description = "Username or UID (format: <name|uid>[:<group|gid>])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workdir", "-w");
                            Name        = "Working directory inside the container";
                            Description = "Working directory inside the container";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("export");
                    Name        = "export";
                    Description = "Export a container's filesystem as a tar archive";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Write to a file, instead of STDOUT";
                            Description = "Write to a file, instead of STDOUT";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more containers";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--size", "-s");
                            Name        = "Display total file sizes";
                            Description = "Display total file sizes";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("kill");
                    Name        = "kill";
                    Description = "Kill one or more running containers";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--signal", "-s");
                            Name        = "Signal to send to the container (default `"KILL`")";
                            Description = "Signal to send to the container (default `"KILL`")";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("logs");
                    Name        = "logs";
                    Description = "Fetch the logs of a container";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--details");
                            Name        = "Show extra details provided to logs";
                            Description = "Show extra details provided to logs";
                        },
                        [FlagParameter]@{
                            Keys        = @("--follow", "-f");
                            Name        = "Follow log output";
                            Description = "Follow log output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--since");
                            Name        = "Show logs since timestamp (e.g. 2013-01-02T13:23:37) or relative (e.g.";
                            Description = "Show logs since timestamp (e.g. 2013-01-02T13:23:37) or relative (e.g.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tail");
                            Name        = "Number of lines to show from the end of the logs (default `"all`")";
                            Description = "Number of lines to show from the end of the logs (default `"all`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--timestamps", "-t");
                            Name        = "Show timestamps";
                            Description = "Show timestamps";
                        },
                        [ValueParameter]@{
                            Keys        = @("--until");
                            Name        = "Show logs before a timestamp (e.g. 2013-01-02T13:23:37) or relative";
                            Description = "Show logs before a timestamp (e.g. 2013-01-02T13:23:37) or relative";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List containers";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Show all containers (default shows just running)";
                            Description = "Show all containers (default shows just running)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print containers using a Go template";
                            Description = "Pretty-print containers using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--last", "-n");
                            Name        = "Show n last created containers (includes all states) (default -1)";
                            Description = "Show n last created containers (includes all states) (default -1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--latest", "-l");
                            Name        = "Show the latest created container (includes all states)";
                            Description = "Show the latest created container (includes all states)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Don't truncate output";
                            Description = "Don't truncate output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display numeric IDs";
                            Description = "Only display numeric IDs";
                        },
                        [FlagParameter]@{
                            Keys        = @("--size", "-s");
                            Name        = "Display total file sizes";
                            Description = "Display total file sizes";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pause");
                    Name        = "pause";
                    Description = "Pause all processes within one or more containers";
                },
                [CommandParameter]@{
                    Keys        = @("port");
                    Name        = "port";
                    Description = "List port mappings or a specific mapping for the container";
                },
                [CommandParameter]@{
                    Keys        = @("prune");
                    Name        = "prune";
                    Description = "Remove all stopped containers";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter");
                            Name        = "Provide filter values (e.g. 'until=<timestamp>')";
                            Description = "Provide filter values (e.g. 'until=<timestamp>')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Do not prompt for confirmation";
                            Description = "Do not prompt for confirmation";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rename");
                    Name        = "rename";
                    Description = "Rename a container";
                },
                [CommandParameter]@{
                    Keys        = @("restart");
                    Name        = "restart";
                    Description = "Restart one or more containers";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--time", "-t");
                            Name        = "Seconds to wait for stop before killing the container (default 10)";
                            Description = "Seconds to wait for stop before killing the container (default 10)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more containers";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force the removal of a running container (uses SIGKILL)";
                            Description = "Force the removal of a running container (uses SIGKILL)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--link", "-l");
                            Name        = "Remove the specified link";
                            Description = "Remove the specified link";
                        },
                        [FlagParameter]@{
                            Keys        = @("--volumes", "-v");
                            Name        = "Remove anonymous volumes associated with the container";
                            Description = "Remove anonymous volumes associated with the container";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("run");
                    Name        = "run";
                    Description = "Run a command in a new container";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--add-host");
                            Name        = "Add a custom host-to-IP mapping (host:ip)";
                            Description = "Add a custom host-to-IP mapping (host:ip)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--attach", "-a");
                            Name        = "Attach to STDIN, STDOUT or STDERR";
                            Description = "Attach to STDIN, STDOUT or STDERR";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--blkio-weight");
                            Name        = "Block IO (relative weight), between 10 and 1000, or 0 to";
                            Description = "Block IO (relative weight), between 10 and 1000, or 0 to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--blkio-weight-device");
                            Name        = "Block IO weight (relative device weight) (default [])";
                            Description = "Block IO weight (relative device weight) (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cap-add");
                            Name        = "Add Linux capabilities";
                            Description = "Add Linux capabilities";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cap-drop");
                            Name        = "Drop Linux capabilities";
                            Description = "Drop Linux capabilities";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cgroup-parent");
                            Name        = "Optional parent cgroup for the container";
                            Description = "Optional parent cgroup for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cidfile");
                            Name        = "Write the container ID to the file";
                            Description = "Write the container ID to the file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-period");
                            Name        = "Limit CPU CFS (Completely Fair Scheduler) period";
                            Description = "Limit CPU CFS (Completely Fair Scheduler) period";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-quota");
                            Name        = "Limit CPU CFS (Completely Fair Scheduler) quota";
                            Description = "Limit CPU CFS (Completely Fair Scheduler) quota";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-rt-period");
                            Name        = "Limit CPU real-time period in microseconds";
                            Description = "Limit CPU real-time period in microseconds";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-rt-runtime");
                            Name        = "Limit CPU real-time runtime in microseconds";
                            Description = "Limit CPU real-time runtime in microseconds";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-shares", "-c");
                            Name        = "CPU shares (relative weight)";
                            Description = "CPU shares (relative weight)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpus");
                            Name        = "Number of CPUs";
                            Description = "Number of CPUs";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-cpus");
                            Name        = "CPUs in which to allow execution (0-3, 0,1)";
                            Description = "CPUs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-mems");
                            Name        = "MEMs in which to allow execution (0-3, 0,1)";
                            Description = "MEMs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--detach", "-d");
                            Name        = "Run container in background and print container ID";
                            Description = "Run container in background and print container ID";
                        },
                        [ValueParameter]@{
                            Keys        = @("--detach-keys");
                            Name        = "Override the key sequence for detaching a container";
                            Description = "Override the key sequence for detaching a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device");
                            Name        = "Add a host device to the container";
                            Description = "Add a host device to the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-cgroup-rule");
                            Name        = "Add a rule to the cgroup allowed devices list";
                            Description = "Add a rule to the cgroup allowed devices list";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-read-bps");
                            Name        = "Limit read rate (bytes per second) from a device (default [])";
                            Description = "Limit read rate (bytes per second) from a device (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-read-iops");
                            Name        = "Limit read rate (IO per second) from a device (default [])";
                            Description = "Limit read rate (IO per second) from a device (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-write-bps");
                            Name        = "Limit write rate (bytes per second) to a device (default [])";
                            Description = "Limit write rate (bytes per second) to a device (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device-write-iops");
                            Name        = "Limit write rate (IO per second) to a device (default [])";
                            Description = "Limit write rate (IO per second) to a device (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image verification (default true)";
                            Description = "Skip image verification (default true)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns");
                            Name        = "Set custom DNS servers";
                            Description = "Set custom DNS servers";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-option");
                            Name        = "Set DNS options";
                            Description = "Set DNS options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-search");
                            Name        = "Set custom DNS search domains";
                            Description = "Set custom DNS search domains";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--domainname");
                            Name        = "Container NIS domain name";
                            Description = "Container NIS domain name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--entrypoint");
                            Name        = "Overwrite the default ENTRYPOINT of the image";
                            Description = "Overwrite the default ENTRYPOINT of the image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Set environment variables";
                            Description = "Set environment variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env-file");
                            Name        = "Read in a file of environment variables";
                            Description = "Read in a file of environment variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--expose");
                            Name        = "Expose a port or a range of ports";
                            Description = "Expose a port or a range of ports";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--gpus");
                            Name        = "GPU devices to add to the container ('all' to pass all GPUs)";
                            Description = "GPU devices to add to the container ('all' to pass all GPUs)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group-add");
                            Name        = "Add additional groups to join";
                            Description = "Add additional groups to join";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-cmd");
                            Name        = "Command to run to check health";
                            Description = "Command to run to check health";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-interval");
                            Name        = "Time between running the check (ms|s|m|h) (default 0s)";
                            Description = "Time between running the check (ms|s|m|h) (default 0s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-retries");
                            Name        = "Consecutive failures needed to report unhealthy";
                            Description = "Consecutive failures needed to report unhealthy";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-start-period");
                            Name        = "Start period for the container to initialize before";
                            Description = "Start period for the container to initialize before";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-timeout");
                            Name        = "Maximum time to allow one check to run (ms|s|m|h)";
                            Description = "Maximum time to allow one check to run (ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help");
                            Name        = "Print usage";
                            Description = "Print usage";
                        },
                        [ValueParameter]@{
                            Keys        = @("--hostname", "-h");
                            Name        = "Container host name";
                            Description = "Container host name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--init");
                            Name        = "Run an init inside the container that forwards signals";
                            Description = "Run an init inside the container that forwards signals";
                        },
                        [FlagParameter]@{
                            Keys        = @("--interactive", "-i");
                            Name        = "Keep STDIN open even if not attached";
                            Description = "Keep STDIN open even if not attached";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ip");
                            Name        = "IPv4 address (e.g., 172.30.100.104)";
                            Description = "IPv4 address (e.g., 172.30.100.104)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ip6");
                            Name        = "IPv6 address (e.g., 2001:db8::33)";
                            Description = "IPv6 address (e.g., 2001:db8::33)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ipc");
                            Name        = "IPC mode to use";
                            Description = "IPC mode to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--isolation");
                            Name        = "Container isolation technology";
                            Description = "Container isolation technology";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kernel-memory");
                            Name        = "Kernel memory limit";
                            Description = "Kernel memory limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Set meta data on a container";
                            Description = "Set meta data on a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label-file");
                            Name        = "Read in a line delimited file of labels";
                            Description = "Read in a line delimited file of labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--link");
                            Name        = "Add link to another container";
                            Description = "Add link to another container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--link-local-ip");
                            Name        = "Container IPv4/IPv6 link-local addresses";
                            Description = "Container IPv4/IPv6 link-local addresses";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-driver");
                            Name        = "Logging driver for the container";
                            Description = "Logging driver for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-opt");
                            Name        = "Log driver options";
                            Description = "Log driver options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mac-address");
                            Name        = "Container MAC address (e.g., 92:d0:c6:0a:29:33)";
                            Description = "Container MAC address (e.g., 92:d0:c6:0a:29:33)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory", "-m");
                            Name        = "Memory limit";
                            Description = "Memory limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-reservation");
                            Name        = "Memory soft limit";
                            Description = "Memory soft limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-swap");
                            Name        = "Swap limit equal to memory plus swap: '-1' to enable";
                            Description = "Swap limit equal to memory plus swap: '-1' to enable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-swappiness");
                            Name        = "Tune container memory swappiness (0 to 100) (default -1)";
                            Description = "Tune container memory swappiness (0 to 100) (default -1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mount");
                            Name        = "Attach a filesystem mount to the container";
                            Description = "Attach a filesystem mount to the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "Assign a name to the container";
                            Description = "Assign a name to the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network");
                            Name        = "Connect a container to a network";
                            Description = "Connect a container to a network";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network-alias");
                            Name        = "Add network-scoped alias for the container";
                            Description = "Add network-scoped alias for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-healthcheck");
                            Name        = "Disable any container-specified HEALTHCHECK";
                            Description = "Disable any container-specified HEALTHCHECK";
                        },
                        [FlagParameter]@{
                            Keys        = @("--oom-kill-disable");
                            Name        = "Disable OOM Killer";
                            Description = "Disable OOM Killer";
                        },
                        [ValueParameter]@{
                            Keys        = @("--oom-score-adj");
                            Name        = "Tune host's OOM preferences (-1000 to 1000)";
                            Description = "Tune host's OOM preferences (-1000 to 1000)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pid");
                            Name        = "PID namespace to use";
                            Description = "PID namespace to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pids-limit");
                            Name        = "Tune container pids limit (set -1 for unlimited)";
                            Description = "Tune container pids limit (set -1 for unlimited)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Set platform if server is multi-platform capable";
                            Description = "Set platform if server is multi-platform capable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--privileged");
                            Name        = "Give extended privileges to this container";
                            Description = "Give extended privileges to this container";
                        },
                        [ValueParameter]@{
                            Keys        = @("--publish", "-p");
                            Name        = "Publish a container's port(s) to the host";
                            Description = "Publish a container's port(s) to the host";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--publish-all", "-P");
                            Name        = "Publish all exposed ports to random ports";
                            Description = "Publish all exposed ports to random ports";
                        },
                        [FlagParameter]@{
                            Keys        = @("--read-only");
                            Name        = "Mount the container's root filesystem as read only";
                            Description = "Mount the container's root filesystem as read only";
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart");
                            Name        = "Restart policy to apply when a container exits (default `"no`")";
                            Description = "Restart policy to apply when a container exits (default `"no`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--rm");
                            Name        = "Automatically remove the container when it exits";
                            Description = "Automatically remove the container when it exits";
                        },
                        [ValueParameter]@{
                            Keys        = @("--runtime");
                            Name        = "Runtime to use for this container";
                            Description = "Runtime to use for this container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--security-opt");
                            Name        = "Security Options";
                            Description = "Security Options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--shm-size");
                            Name        = "Size of /dev/shm";
                            Description = "Size of /dev/shm";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--sig-proxy");
                            Name        = "Proxy received signals to the process (default true)";
                            Description = "Proxy received signals to the process (default true)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--stop-signal");
                            Name        = "Signal to stop a container (default `"SIGTERM`")";
                            Description = "Signal to stop a container (default `"SIGTERM`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--stop-timeout");
                            Name        = "Timeout (in seconds) to stop a container";
                            Description = "Timeout (in seconds) to stop a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--storage-opt");
                            Name        = "Storage driver options for the container";
                            Description = "Storage driver options for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sysctl");
                            Name        = "Sysctl options (default map[])";
                            Description = "Sysctl options (default map[])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tmpfs");
                            Name        = "Mount a tmpfs directory";
                            Description = "Mount a tmpfs directory";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tty", "-t");
                            Name        = "Allocate a pseudo-TTY";
                            Description = "Allocate a pseudo-TTY";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ulimit");
                            Name        = "Ulimit options (default [])";
                            Description = "Ulimit options (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--user", "-u");
                            Name        = "Username or UID (format: <name|uid>[:<group|gid>])";
                            Description = "Username or UID (format: <name|uid>[:<group|gid>])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--userns");
                            Name        = "User namespace to use";
                            Description = "User namespace to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--uts");
                            Name        = "UTS namespace to use";
                            Description = "UTS namespace to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--volume", "-v");
                            Name        = "Bind mount a volume";
                            Description = "Bind mount a volume";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--volume-driver");
                            Name        = "Optional volume driver for the container";
                            Description = "Optional volume driver for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--volumes-from");
                            Name        = "Mount volumes from the specified container(s)";
                            Description = "Mount volumes from the specified container(s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workdir", "-w");
                            Name        = "Working directory inside the container";
                            Description = "Working directory inside the container";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("start");
                    Name        = "start";
                    Description = "Start one or more stopped containers";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--attach", "-a");
                            Name        = "Attach STDOUT/STDERR and forward signals";
                            Description = "Attach STDOUT/STDERR and forward signals";
                        },
                        [ValueParameter]@{
                            Keys        = @("--checkpoint");
                            Name        = "Restore from this checkpoint";
                            Description = "Restore from this checkpoint";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--checkpoint-dir");
                            Name        = "Use a custom checkpoint storage directory";
                            Description = "Use a custom checkpoint storage directory";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--detach-keys");
                            Name        = "Override the key sequence for detaching a container";
                            Description = "Override the key sequence for detaching a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--interactive", "-i");
                            Name        = "Attach container's STDIN";
                            Description = "Attach container's STDIN";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("stats");
                    Name        = "stats";
                    Description = "Display a live stream of container(s) resource usage statistics";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Show all containers (default shows just running)";
                            Description = "Show all containers (default shows just running)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print images using a Go template";
                            Description = "Pretty-print images using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-stream");
                            Name        = "Disable streaming stats and only pull the first result";
                            Description = "Disable streaming stats and only pull the first result";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Do not truncate output";
                            Description = "Do not truncate output";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("stop");
                    Name        = "stop";
                    Description = "Stop one or more running containers";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--time", "-t");
                            Name        = "Seconds to wait for stop before killing it (default 10)";
                            Description = "Seconds to wait for stop before killing it (default 10)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("top");
                    Name        = "top";
                    Description = "Display the running processes of a container";
                },
                [CommandParameter]@{
                    Keys        = @("unpause");
                    Name        = "unpause";
                    Description = "Unpause all processes within one or more containers";
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update configuration of one or more containers";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--blkio-weight");
                            Name        = "Block IO (relative weight), between 10 and 1000, or 0 to";
                            Description = "Block IO (relative weight), between 10 and 1000, or 0 to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-period");
                            Name        = "Limit CPU CFS (Completely Fair Scheduler) period";
                            Description = "Limit CPU CFS (Completely Fair Scheduler) period";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-quota");
                            Name        = "Limit CPU CFS (Completely Fair Scheduler) quota";
                            Description = "Limit CPU CFS (Completely Fair Scheduler) quota";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-rt-period");
                            Name        = "Limit the CPU real-time period in microseconds";
                            Description = "Limit the CPU real-time period in microseconds";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-rt-runtime");
                            Name        = "Limit the CPU real-time runtime in microseconds";
                            Description = "Limit the CPU real-time runtime in microseconds";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-shares", "-c");
                            Name        = "CPU shares (relative weight)";
                            Description = "CPU shares (relative weight)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpus");
                            Name        = "Number of CPUs";
                            Description = "Number of CPUs";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-cpus");
                            Name        = "CPUs in which to allow execution (0-3, 0,1)";
                            Description = "CPUs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-mems");
                            Name        = "MEMs in which to allow execution (0-3, 0,1)";
                            Description = "MEMs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kernel-memory");
                            Name        = "Kernel memory limit";
                            Description = "Kernel memory limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory", "-m");
                            Name        = "Memory limit";
                            Description = "Memory limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-reservation");
                            Name        = "Memory soft limit";
                            Description = "Memory soft limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-swap");
                            Name        = "Swap limit equal to memory plus swap: '-1' to enable";
                            Description = "Swap limit equal to memory plus swap: '-1' to enable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pids-limit");
                            Name        = "Tune container pids limit (set -1 for unlimited)";
                            Description = "Tune container pids limit (set -1 for unlimited)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart");
                            Name        = "Restart policy to apply when a container exits";
                            Description = "Restart policy to apply when a container exits";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("wait");
                    Name        = "wait";
                    Description = "Block until one or more containers stop, then print their exit codes";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("context");
            Name        = "context";
            Description = "Manage contexts";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--default-stack-orchestrator");
                            Name        = "Default orchestrator for stack operations to use with this context (swarm|kubernetes|all)";
                            Description = "Default orchestrator for stack operations to use with this context (swarm|kubernetes|all)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--description");
                            Name        = "Description of the context";
                            Description = "Description of the context";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--docker");
                            Name        = "set the docker endpoint (default [])";
                            Description = "set the docker endpoint (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from");
                            Name        = "create context from a named context";
                            Description = "create context from a named context";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kubernetes");
                            Name        = "set the kubernetes endpoint (default [])";
                            Description = "set the kubernetes endpoint (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("export");
                    Name        = "export";
                    Description = "Export a context to a tar or kubeconfig file";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--kubeconfig");
                            Name        = "Export as a kubeconfig file";
                            Description = "Export as a kubeconfig file";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("import");
                    Name        = "import";
                    Description = "Import a context from a tar or zip file";
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more contexts";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print contexts using a Go template";
                            Description = "Pretty-print contexts using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only show context names";
                            Description = "Only show context names";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more contexts";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force the removal of a context in use";
                            Description = "Force the removal of a context in use";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update a context";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--default-stack-orchestrator");
                            Name        = "Default orchestrator for stack operations to use";
                            Description = "Default orchestrator for stack operations to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--description");
                            Name        = "Description of the context";
                            Description = "Description of the context";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--docker");
                            Name        = "set the docker endpoint (default [])";
                            Description = "set the docker endpoint (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kubernetes");
                            Name        = "set the kubernetes endpoint (default [])";
                            Description = "set the kubernetes endpoint (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("use");
                    Name        = "use";
                    Description = "Set the current docker context";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cp");
            Name        = "cp";
            Description = "Copy files/folders between a container and the local filesystem";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--archive", "-a");
                    Name        = "Archive mode (copy all uid/gid information)";
                    Description = "Archive mode (copy all uid/gid information)";
                },
                [FlagParameter]@{
                    Keys        = @("--follow-link", "-L");
                    Name        = "Always follow symbol link in SRC_PATH";
                    Description = "Always follow symbol link in SRC_PATH";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("create");
            Name        = "create";
            Description = "Create a new container";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--add-host");
                    Name        = "Add a custom host-to-IP mapping (host:ip)";
                    Description = "Add a custom host-to-IP mapping (host:ip)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--attach", "-a");
                    Name        = "Attach to STDIN, STDOUT or STDERR";
                    Description = "Attach to STDIN, STDOUT or STDERR";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--blkio-weight");
                    Name        = "Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)";
                    Description = "Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--blkio-weight-device");
                    Name        = "Block IO weight (relative device weight) (default [])";
                    Description = "Block IO weight (relative device weight) (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cap-add");
                    Name        = "Add Linux capabilities";
                    Description = "Add Linux capabilities";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cap-drop");
                    Name        = "Drop Linux capabilities";
                    Description = "Drop Linux capabilities";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cgroup-parent");
                    Name        = "Optional parent cgroup for the container";
                    Description = "Optional parent cgroup for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cidfile");
                    Name        = "Write the container ID to the file";
                    Description = "Write the container ID to the file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-period");
                    Name        = "Limit CPU CFS (Completely Fair Scheduler) period";
                    Description = "Limit CPU CFS (Completely Fair Scheduler) period";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-quota");
                    Name        = "Limit CPU CFS (Completely Fair Scheduler) quota";
                    Description = "Limit CPU CFS (Completely Fair Scheduler) quota";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-rt-period");
                    Name        = "Limit CPU real-time period in microseconds";
                    Description = "Limit CPU real-time period in microseconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-rt-runtime");
                    Name        = "Limit CPU real-time runtime in microseconds";
                    Description = "Limit CPU real-time runtime in microseconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-shares", "-c");
                    Name        = "CPU shares (relative weight)";
                    Description = "CPU shares (relative weight)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpus");
                    Name        = "Number of CPUs";
                    Description = "Number of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpuset-cpus");
                    Name        = "CPUs in which to allow execution (0-3, 0,1)";
                    Description = "CPUs in which to allow execution (0-3, 0,1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpuset-mems");
                    Name        = "MEMs in which to allow execution (0-3, 0,1)";
                    Description = "MEMs in which to allow execution (0-3, 0,1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device");
                    Name        = "Add a host device to the container";
                    Description = "Add a host device to the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-cgroup-rule");
                    Name        = "Add a rule to the cgroup allowed devices list";
                    Description = "Add a rule to the cgroup allowed devices list";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-read-bps");
                    Name        = "Limit read rate (bytes per second) from a device (default [])";
                    Description = "Limit read rate (bytes per second) from a device (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-read-iops");
                    Name        = "Limit read rate (IO per second) from a device (default [])";
                    Description = "Limit read rate (IO per second) from a device (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-write-bps");
                    Name        = "Limit write rate (bytes per second) to a device (default [])";
                    Description = "Limit write rate (bytes per second) to a device (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-write-iops");
                    Name        = "Limit write rate (IO per second) to a device (default [])";
                    Description = "Limit write rate (IO per second) to a device (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-content-trust");
                    Name        = "Skip image verification (default true)";
                    Description = "Skip image verification (default true)";
                },
                [ValueParameter]@{
                    Keys        = @("--dns");
                    Name        = "Set custom DNS servers";
                    Description = "Set custom DNS servers";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dns-option");
                    Name        = "Set DNS options";
                    Description = "Set DNS options";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dns-search");
                    Name        = "Set custom DNS search domains";
                    Description = "Set custom DNS search domains";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--domainname");
                    Name        = "Container NIS domain name";
                    Description = "Container NIS domain name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--entrypoint");
                    Name        = "Overwrite the default ENTRYPOINT of the image";
                    Description = "Overwrite the default ENTRYPOINT of the image";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--env", "-e");
                    Name        = "Set environment variables";
                    Description = "Set environment variables";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--env-file");
                    Name        = "Read in a file of environment variables";
                    Description = "Read in a file of environment variables";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--expose");
                    Name        = "Expose a port or a range of ports";
                    Description = "Expose a port or a range of ports";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gpus");
                    Name        = "GPU devices to add to the container ('all' to pass all GPUs)";
                    Description = "GPU devices to add to the container ('all' to pass all GPUs)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--group-add");
                    Name        = "Add additional groups to join";
                    Description = "Add additional groups to join";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-cmd");
                    Name        = "Command to run to check health";
                    Description = "Command to run to check health";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-interval");
                    Name        = "Time between running the check (ms|s|m|h) (default 0s)";
                    Description = "Time between running the check (ms|s|m|h) (default 0s)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-retries");
                    Name        = "Consecutive failures needed to report unhealthy";
                    Description = "Consecutive failures needed to report unhealthy";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-start-period");
                    Name        = "Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)";
                    Description = "Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-timeout");
                    Name        = "Maximum time to allow one check to run (ms|s|m|h) (default 0s)";
                    Description = "Maximum time to allow one check to run (ms|s|m|h) (default 0s)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help");
                    Name        = "Print usage";
                    Description = "Print usage";
                },
                [ValueParameter]@{
                    Keys        = @("--hostname", "-h");
                    Name        = "Container host name";
                    Description = "Container host name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--init");
                    Name        = "Run an init inside the container that forwards signals and reaps processes";
                    Description = "Run an init inside the container that forwards signals and reaps processes";
                },
                [FlagParameter]@{
                    Keys        = @("--interactive", "-i");
                    Name        = "Keep STDIN open even if not attached";
                    Description = "Keep STDIN open even if not attached";
                },
                [ValueParameter]@{
                    Keys        = @("--ip");
                    Name        = "IPv4 address (e.g., 172.30.100.104)";
                    Description = "IPv4 address (e.g., 172.30.100.104)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ip6");
                    Name        = "IPv6 address (e.g., 2001:db8::33)";
                    Description = "IPv6 address (e.g., 2001:db8::33)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ipc");
                    Name        = "IPC mode to use";
                    Description = "IPC mode to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--isolation");
                    Name        = "Container isolation technology";
                    Description = "Container isolation technology";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kernel-memory");
                    Name        = "Kernel memory limit";
                    Description = "Kernel memory limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label", "-l");
                    Name        = "Set meta data on a container";
                    Description = "Set meta data on a container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label-file");
                    Name        = "Read in a line delimited file of labels";
                    Description = "Read in a line delimited file of labels";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--link");
                    Name        = "Add link to another container";
                    Description = "Add link to another container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--link-local-ip");
                    Name        = "Container IPv4/IPv6 link-local addresses";
                    Description = "Container IPv4/IPv6 link-local addresses";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--log-driver");
                    Name        = "Logging driver for the container";
                    Description = "Logging driver for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--log-opt");
                    Name        = "Log driver options";
                    Description = "Log driver options";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--mac-address");
                    Name        = "Container MAC address (e.g., 92:d0:c6:0a:29:33)";
                    Description = "Container MAC address (e.g., 92:d0:c6:0a:29:33)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory", "-m");
                    Name        = "Memory limit";
                    Description = "Memory limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-reservation");
                    Name        = "Memory soft limit";
                    Description = "Memory soft limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-swap");
                    Name        = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                    Description = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-swappiness");
                    Name        = "Tune container memory swappiness (0 to 100) (default -1)";
                    Description = "Tune container memory swappiness (0 to 100) (default -1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--mount");
                    Name        = "Attach a filesystem mount to the container";
                    Description = "Attach a filesystem mount to the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Assign a name to the container";
                    Description = "Assign a name to the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--network");
                    Name        = "Connect a container to a network";
                    Description = "Connect a container to a network";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--network-alias");
                    Name        = "Add network-scoped alias for the container";
                    Description = "Add network-scoped alias for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-healthcheck");
                    Name        = "Disable any container-specified HEALTHCHECK";
                    Description = "Disable any container-specified HEALTHCHECK";
                },
                [FlagParameter]@{
                    Keys        = @("--oom-kill-disable");
                    Name        = "Disable OOM Killer";
                    Description = "Disable OOM Killer";
                },
                [ValueParameter]@{
                    Keys        = @("--oom-score-adj");
                    Name        = "Tune host's OOM preferences (-1000 to 1000)";
                    Description = "Tune host's OOM preferences (-1000 to 1000)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pid");
                    Name        = "PID namespace to use";
                    Description = "PID namespace to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pids-limit");
                    Name        = "Tune container pids limit (set -1 for unlimited)";
                    Description = "Tune container pids limit (set -1 for unlimited)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Set platform if server is multi-platform capable";
                    Description = "Set platform if server is multi-platform capable";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--privileged");
                    Name        = "Give extended privileges to this container";
                    Description = "Give extended privileges to this container";
                },
                [ValueParameter]@{
                    Keys        = @("--publish", "-p");
                    Name        = "Publish a container's port(s) to the host";
                    Description = "Publish a container's port(s) to the host";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--publish-all", "-P");
                    Name        = "Publish all exposed ports to random ports";
                    Description = "Publish all exposed ports to random ports";
                },
                [FlagParameter]@{
                    Keys        = @("--read-only");
                    Name        = "Mount the container's root filesystem as read only";
                    Description = "Mount the container's root filesystem as read only";
                },
                [ValueParameter]@{
                    Keys        = @("--restart");
                    Name        = "Restart policy to apply when a container exits (default `"no`")";
                    Description = "Restart policy to apply when a container exits (default `"no`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--rm");
                    Name        = "Automatically remove the container when it exits";
                    Description = "Automatically remove the container when it exits";
                },
                [ValueParameter]@{
                    Keys        = @("--runtime");
                    Name        = "Runtime to use for this container";
                    Description = "Runtime to use for this container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--security-opt");
                    Name        = "Security Options";
                    Description = "Security Options";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--shm-size");
                    Name        = "Size of /dev/shm";
                    Description = "Size of /dev/shm";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--stop-signal");
                    Name        = "Signal to stop a container (default `"SIGTERM`")";
                    Description = "Signal to stop a container (default `"SIGTERM`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--stop-timeout");
                    Name        = "Timeout (in seconds) to stop a container";
                    Description = "Timeout (in seconds) to stop a container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--storage-opt");
                    Name        = "Storage driver options for the container";
                    Description = "Storage driver options for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--sysctl");
                    Name        = "Sysctl options (default map[])";
                    Description = "Sysctl options (default map[])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tmpfs");
                    Name        = "Mount a tmpfs directory";
                    Description = "Mount a tmpfs directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tty", "-t");
                    Name        = "Allocate a pseudo-TTY";
                    Description = "Allocate a pseudo-TTY";
                },
                [ValueParameter]@{
                    Keys        = @("--ulimit");
                    Name        = "Ulimit options (default [])";
                    Description = "Ulimit options (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--user", "-u");
                    Name        = "Username or UID (format: <name|uid>[:<group|gid>])";
                    Description = "Username or UID (format: <name|uid>[:<group|gid>])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--userns");
                    Name        = "User namespace to use";
                    Description = "User namespace to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--uts");
                    Name        = "UTS namespace to use";
                    Description = "UTS namespace to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--volume", "-v");
                    Name        = "Bind mount a volume";
                    Description = "Bind mount a volume";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--volume-driver");
                    Name        = "Optional volume driver for the container";
                    Description = "Optional volume driver for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--volumes-from");
                    Name        = "Mount volumes from the specified container(s)";
                    Description = "Mount volumes from the specified container(s)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workdir", "-w");
                    Name        = "Working directory inside the container";
                    Description = "Working directory inside the container";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("diff");
            Name        = "diff";
            Description = "Inspect changes to files or directories on a container's filesystem";
        },
        [CommandParameter]@{
            Keys        = @("engine");
            Name        = "engine";
            Description = "Manage the docker engine";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("activate");
                    Name        = "activate";
                    Description = "Activate Enterprise Edition.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--containerd");
                            Name        = "override default location of containerd endpoint";
                            Description = "override default location of containerd endpoint";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--display-only");
                            Name        = "only display license information and exit";
                            Description = "only display license information and exit";
                        },
                        [ValueParameter]@{
                            Keys        = @("--engine-image");
                            Name        = "Specify engine image";
                            Description = "Specify engine image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print licenses using a Go template";
                            Description = "Pretty-print licenses using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--license");
                            Name        = "License File";
                            Description = "License File";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet");
                            Name        = "Only display available licenses by ID";
                            Description = "Only display available licenses by ID";
                        },
                        [ValueParameter]@{
                            Keys        = @("--registry-prefix");
                            Name        = "Override the default location where engine images are pulled";
                            Description = "Override the default location where engine images are pulled";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "Specify engine version (default is to use currently running";
                            Description = "Specify engine version (default is to use currently running";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("check");
                    Name        = "check";
                    Description = "Check for available engine updates";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--containerd");
                            Name        = "override default location of containerd endpoint";
                            Description = "override default location of containerd endpoint";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--downgrades");
                            Name        = "Report downgrades (default omits older versions)";
                            Description = "Report downgrades (default omits older versions)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--engine-image");
                            Name        = "Specify engine image (default uses the same image as currently";
                            Description = "Specify engine image (default uses the same image as currently";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print updates using a Go template";
                            Description = "Pretty-print updates using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pre-releases");
                            Name        = "Include pre-release versions";
                            Description = "Include pre-release versions";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display available versions";
                            Description = "Only display available versions";
                        },
                        [ValueParameter]@{
                            Keys        = @("--registry-prefix");
                            Name        = "Override the existing location where engine images are pulled";
                            Description = "Override the existing location where engine images are pulled";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--upgrades");
                            Name        = "Report available upgrades (default true)";
                            Description = "Report available upgrades (default true)";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update a local engine";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--containerd");
                            Name        = "override default location of containerd endpoint";
                            Description = "override default location of containerd endpoint";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--engine-image");
                            Name        = "Specify engine image (default uses the same image as currently";
                            Description = "Specify engine image (default uses the same image as currently";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--registry-prefix");
                            Name        = "Override the current location where engine images are pulled";
                            Description = "Override the current location where engine images are pulled";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "Specify engine version";
                            Description = "Specify engine version";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("events");
            Name        = "events";
            Description = "Get real time events from the server";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--filter", "-f");
                    Name        = "Filter output based on conditions provided";
                    Description = "Filter output based on conditions provided";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Format the output using the given Go template";
                    Description = "Format the output using the given Go template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--since");
                    Name        = "Show all events created since timestamp";
                    Description = "Show all events created since timestamp";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--until");
                    Name        = "Stream events until this timestamp";
                    Description = "Stream events until this timestamp";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("exec");
            Name        = "exec";
            Description = "Run a command in a running container";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--detach", "-d");
                    Name        = "Detached mode: run command in the background";
                    Description = "Detached mode: run command in the background";
                },
                [ValueParameter]@{
                    Keys        = @("--detach-keys");
                    Name        = "Override the key sequence for detaching a container";
                    Description = "Override the key sequence for detaching a container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--env", "-e");
                    Name        = "Set environment variables";
                    Description = "Set environment variables";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--interactive", "-i");
                    Name        = "Keep STDIN open even if not attached";
                    Description = "Keep STDIN open even if not attached";
                },
                [FlagParameter]@{
                    Keys        = @("--privileged");
                    Name        = "Give extended privileges to the command";
                    Description = "Give extended privileges to the command";
                },
                [FlagParameter]@{
                    Keys        = @("--tty", "-t");
                    Name        = "Allocate a pseudo-TTY";
                    Description = "Allocate a pseudo-TTY";
                },
                [ValueParameter]@{
                    Keys        = @("--user", "-u");
                    Name        = "Username or UID (format: <name|uid>[:<group|gid>])";
                    Description = "Username or UID (format: <name|uid>[:<group|gid>])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workdir", "-w");
                    Name        = "Working directory inside the container";
                    Description = "Working directory inside the container";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("export");
            Name        = "export";
            Description = "Export a container's filesystem as a tar archive";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Write to a file, instead of STDOUT";
                    Description = "Write to a file, instead of STDOUT";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("history");
            Name        = "history";
            Description = "Show the history of an image";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Pretty-print images using a Go template";
                    Description = "Pretty-print images using a Go template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--human", "-H");
                    Name        = "Print sizes and dates in human readable format (default true)";
                    Description = "Print sizes and dates in human readable format (default true)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-trunc");
                    Name        = "Don't truncate output";
                    Description = "Don't truncate output";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Only show numeric IDs";
                    Description = "Only show numeric IDs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("image");
            Name        = "image";
            Description = "Manage images";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("build");
                    Name        = "build";
                    Description = "Build an image from a Dockerfile";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--add-host");
                            Name        = "Add a custom host-to-IP mapping (host:ip)";
                            Description = "Add a custom host-to-IP mapping (host:ip)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-arg");
                            Name        = "Set build-time variables";
                            Description = "Set build-time variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cache-from");
                            Name        = "Images to consider as cache sources";
                            Description = "Images to consider as cache sources";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cgroup-parent");
                            Name        = "Optional parent cgroup for the container";
                            Description = "Optional parent cgroup for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--compress");
                            Name        = "Compress the build context using gzip";
                            Description = "Compress the build context using gzip";
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-period");
                            Name        = "Limit the CPU CFS (Completely Fair Scheduler) period";
                            Description = "Limit the CPU CFS (Completely Fair Scheduler) period";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-quota");
                            Name        = "Limit the CPU CFS (Completely Fair Scheduler) quota";
                            Description = "Limit the CPU CFS (Completely Fair Scheduler) quota";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpu-shares", "-c");
                            Name        = "CPU shares (relative weight)";
                            Description = "CPU shares (relative weight)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-cpus");
                            Name        = "CPUs in which to allow execution (0-3, 0,1)";
                            Description = "CPUs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cpuset-mems");
                            Name        = "MEMs in which to allow execution (0-3, 0,1)";
                            Description = "MEMs in which to allow execution (0-3, 0,1)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image verification (default true)";
                            Description = "Skip image verification (default true)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--file", "-f");
                            Name        = "Name of the Dockerfile (Default is 'PATH/Dockerfile')";
                            Description = "Name of the Dockerfile (Default is 'PATH/Dockerfile')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force-rm");
                            Name        = "Always remove intermediate containers";
                            Description = "Always remove intermediate containers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--iidfile");
                            Name        = "Write the image ID to the file";
                            Description = "Write the image ID to the file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--isolation");
                            Name        = "Container isolation technology";
                            Description = "Container isolation technology";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Set metadata for an image";
                            Description = "Set metadata for an image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory", "-m");
                            Name        = "Memory limit";
                            Description = "Memory limit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--memory-swap");
                            Name        = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                            Description = "Swap limit equal to memory plus swap: '-1' to enable unlimited swap";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network");
                            Name        = "Set the networking mode for the RUN instructions during build";
                            Description = "Set the networking mode for the RUN instructions during build";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-cache");
                            Name        = "Do not use cache when building the image";
                            Description = "Do not use cache when building the image";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output destination (format: type=local,dest=path)";
                            Description = "Output destination (format: type=local,dest=path)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Set platform if server is multi-platform capable";
                            Description = "Set platform if server is multi-platform capable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--progress");
                            Name        = "Set type of progress output (auto, plain, tty). Use plain to";
                            Description = "Set type of progress output (auto, plain, tty). Use plain to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pull");
                            Name        = "Always attempt to pull a newer version of the image";
                            Description = "Always attempt to pull a newer version of the image";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Suppress the build output and print image ID on success";
                            Description = "Suppress the build output and print image ID on success";
                        },
                        [FlagParameter]@{
                            Keys        = @("--rm");
                            Name        = "Remove intermediate containers after a successful build";
                            Description = "Remove intermediate containers after a successful build";
                        },
                        [ValueParameter]@{
                            Keys        = @("--secret");
                            Name        = "Secret file to expose to the build (only if BuildKit enabled):";
                            Description = "Secret file to expose to the build (only if BuildKit enabled):";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--security-opt");
                            Name        = "Security options";
                            Description = "Security options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--shm-size");
                            Name        = "Size of /dev/shm";
                            Description = "Size of /dev/shm";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--squash");
                            Name        = "Squash newly built layers into a single new layer";
                            Description = "Squash newly built layers into a single new layer";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ssh");
                            Name        = "SSH agent socket or keys to expose to the build (only if";
                            Description = "SSH agent socket or keys to expose to the build (only if";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stream");
                            Name        = "Stream attaches to server to negotiate build context";
                            Description = "Stream attaches to server to negotiate build context";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tag", "-t");
                            Name        = "Name and optionally a tag in the 'name:tag' format";
                            Description = "Name and optionally a tag in the 'name:tag' format";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target");
                            Name        = "Set the target build stage to build.";
                            Description = "Set the target build stage to build.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ulimit");
                            Name        = "Ulimit options (default [])";
                            Description = "Ulimit options (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("history");
                    Name        = "history";
                    Description = "Show the history of an image";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print images using a Go template";
                            Description = "Pretty-print images using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--human", "-H");
                            Name        = "Print sizes and dates in human readable format (default true)";
                            Description = "Print sizes and dates in human readable format (default true)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Don't truncate output";
                            Description = "Don't truncate output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only show numeric IDs";
                            Description = "Only show numeric IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("import");
                    Name        = "import";
                    Description = "Import the contents from a tarball to create a filesystem image";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--change", "-c");
                            Name        = "Apply Dockerfile instruction to the created image";
                            Description = "Apply Dockerfile instruction to the created image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--message", "-m");
                            Name        = "Set commit message for imported image";
                            Description = "Set commit message for imported image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Set platform if server is multi-platform capable";
                            Description = "Set platform if server is multi-platform capable";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more images";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("load");
                    Name        = "load";
                    Description = "Load an image from a tar archive or STDIN";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--input", "-i");
                            Name        = "Read from tar archive file, instead of STDIN";
                            Description = "Read from tar archive file, instead of STDIN";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Suppress the load output";
                            Description = "Suppress the load output";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List image";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Show all images (default hides intermediate images)";
                            Description = "Show all images (default hides intermediate images)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--digests");
                            Name        = "Show digests";
                            Description = "Show digests";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print images using a Go template";
                            Description = "Pretty-print images using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Don't truncate output";
                            Description = "Don't truncate output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only show numeric IDs";
                            Description = "Only show numeric IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("prune");
                    Name        = "prune";
                    Description = "Remove unused images";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Remove all unused images, not just dangling ones";
                            Description = "Remove all unused images, not just dangling ones";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filter");
                            Name        = "Provide filter values (e.g. 'until=<timestamp>')";
                            Description = "Provide filter values (e.g. 'until=<timestamp>')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Do not prompt for confirmation";
                            Description = "Do not prompt for confirmation";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pull");
                    Name        = "pull";
                    Description = "Pull an image or a repository from a registry";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all-tags", "-a");
                            Name        = "Download all tagged images in the repository";
                            Description = "Download all tagged images in the repository";
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image verification (default true)";
                            Description = "Skip image verification (default true)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--platform");
                            Name        = "Set platform if server is multi-platform capable";
                            Description = "Set platform if server is multi-platform capable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Suppress verbose output";
                            Description = "Suppress verbose output";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("push");
                    Name        = "push";
                    Description = "Push an image or a repository to a registry";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image signing (default true)";
                            Description = "Skip image signing (default true)";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more images";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force removal of the image";
                            Description = "Force removal of the image";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-prune");
                            Name        = "Do not delete untagged parents";
                            Description = "Do not delete untagged parents";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("save");
                    Name        = "save";
                    Description = "Save one or more images to a tar archive (streamed to STDOUT by default)";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Write to a file, instead of STDOUT";
                            Description = "Write to a file, instead of STDOUT";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("tag");
                    Name        = "tag";
                    Description = "Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("images");
            Name        = "images";
            Description = "List image";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Show all images (default hides intermediate images)";
                    Description = "Show all images (default hides intermediate images)";
                },
                [FlagParameter]@{
                    Keys        = @("--digests");
                    Name        = "Show digests";
                    Description = "Show digests";
                },
                [ValueParameter]@{
                    Keys        = @("--filter", "-f");
                    Name        = "Filter output based on conditions provided";
                    Description = "Filter output based on conditions provided";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Pretty-print images using a Go template";
                    Description = "Pretty-print images using a Go template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-trunc");
                    Name        = "Don't truncate output";
                    Description = "Don't truncate output";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Only show numeric IDs";
                    Description = "Only show numeric IDs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("import");
            Name        = "import";
            Description = "Import the contents from a tarball to create a filesystem image";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--change", "-c");
                    Name        = "Apply Dockerfile instruction to the created image";
                    Description = "Apply Dockerfile instruction to the created image";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message", "-m");
                    Name        = "Set commit message for imported image";
                    Description = "Set commit message for imported image";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Set platform if server is multi-platform capable";
                    Description = "Set platform if server is multi-platform capable";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("info");
            Name        = "info";
            Description = "Display system-wide information";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--format", "-f");
                    Name        = "Format the output using the given Go template";
                    Description = "Format the output using the given Go template";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("inspect");
            Name        = "inspect";
            Description = "Return low-level information on Docker objects";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--format", "-f");
                    Name        = "Format the output using the given Go template";
                    Description = "Format the output using the given Go template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--size", "-s");
                    Name        = "Display total file sizes if the type is container";
                    Description = "Display total file sizes if the type is container";
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "Return JSON for specified type";
                    Description = "Return JSON for specified type";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("kill");
            Name        = "kill";
            Description = "Kill one or more running containers";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--signal", "-s");
                    Name        = "Signal to send to the container (default `"KILL`")";
                    Description = "Signal to send to the container (default `"KILL`")";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("load");
            Name        = "load";
            Description = "Load an image from a tar archive or STDIN";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--input", "-i");
                    Name        = "Read from tar archive file, instead of STDIN";
                    Description = "Read from tar archive file, instead of STDIN";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Suppress the load output";
                    Description = "Suppress the load output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("login");
            Name        = "login";
            Description = "Log in to a Docker registry";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--password", "-p");
                    Name        = "Password";
                    Description = "Password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--password-stdin");
                    Name        = "Take the password from stdin";
                    Description = "Take the password from stdin";
                },
                [ValueParameter]@{
                    Keys        = @("--username", "-u");
                    Name        = "Username";
                    Description = "Username";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logout");
            Name        = "logout";
            Description = "Log out from a Docker registry";
        },
        [CommandParameter]@{
            Keys        = @("logs");
            Name        = "logs";
            Description = "Fetch the logs of a container";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--details");
                    Name        = "Show extra details provided to logs";
                    Description = "Show extra details provided to logs";
                },
                [FlagParameter]@{
                    Keys        = @("--follow", "-f");
                    Name        = "Follow log output";
                    Description = "Follow log output";
                },
                [ValueParameter]@{
                    Keys        = @("--since");
                    Name        = "Show logs since timestamp (e.g. 2013-01-02T13:23:37) or relative (e.g.";
                    Description = "Show logs since timestamp (e.g. 2013-01-02T13:23:37) or relative (e.g.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tail");
                    Name        = "Number of lines to show from the end of the logs (default `"all`")";
                    Description = "Number of lines to show from the end of the logs (default `"all`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--timestamps", "-t");
                    Name        = "Show timestamps";
                    Description = "Show timestamps";
                },
                [ValueParameter]@{
                    Keys        = @("--until");
                    Name        = "Show logs before a timestamp (e.g. 2013-01-02T13:23:37) or relative";
                    Description = "Show logs before a timestamp (e.g. 2013-01-02T13:23:37) or relative";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("network");
            Name        = "network";
            Description = "Manage networks";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("connect");
                    Name        = "connect";
                    Description = "Connect a container to a network";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--alias");
                            Name        = "Add network-scoped alias for the container";
                            Description = "Add network-scoped alias for the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--driver-opt");
                            Name        = "driver options for the network";
                            Description = "driver options for the network";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ip");
                            Name        = "IPv4 address (e.g., 172.30.100.104)";
                            Description = "IPv4 address (e.g., 172.30.100.104)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ip6");
                            Name        = "IPv6 address (e.g., 2001:db8::33)";
                            Description = "IPv6 address (e.g., 2001:db8::33)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--link");
                            Name        = "Add link to another container";
                            Description = "Add link to another container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--link-local-ip");
                            Name        = "Add a link-local address for the container";
                            Description = "Add a link-local address for the container";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a network";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--attachable");
                            Name        = "Enable manual container attachment";
                            Description = "Enable manual container attachment";
                        },
                        [ValueParameter]@{
                            Keys        = @("--aux-address");
                            Name        = "Auxiliary IPv4 or IPv6 addresses used by Network driver (default map[])";
                            Description = "Auxiliary IPv4 or IPv6 addresses used by Network driver (default map[])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config-from");
                            Name        = "The network from which copying the configuration";
                            Description = "The network from which copying the configuration";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--config-only");
                            Name        = "Create a configuration only network";
                            Description = "Create a configuration only network";
                        },
                        [ValueParameter]@{
                            Keys        = @("--driver", "-d");
                            Name        = "Driver to manage the Network (default `"bridge`")";
                            Description = "Driver to manage the Network (default `"bridge`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--gateway");
                            Name        = "IPv4 or IPv6 Gateway for the master subnet";
                            Description = "IPv4 or IPv6 Gateway for the master subnet";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--ingress");
                            Name        = "Create swarm routing-mesh network";
                            Description = "Create swarm routing-mesh network";
                        },
                        [FlagParameter]@{
                            Keys        = @("--internal");
                            Name        = "Restrict external access to the network";
                            Description = "Restrict external access to the network";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ip-range");
                            Name        = "Allocate container ip from a sub-range";
                            Description = "Allocate container ip from a sub-range";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ipam-driver");
                            Name        = "IP Address Management Driver (default `"default`")";
                            Description = "IP Address Management Driver (default `"default`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ipam-opt");
                            Name        = "Set IPAM driver specific options (default map[])";
                            Description = "Set IPAM driver specific options (default map[])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--ipv6");
                            Name        = "Enable IPv6 networking";
                            Description = "Enable IPv6 networking";
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Set metadata on a network";
                            Description = "Set metadata on a network";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--opt", "-o");
                            Name        = "Set driver specific options (default map[])";
                            Description = "Set driver specific options (default map[])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--scope");
                            Name        = "Control the network's scope";
                            Description = "Control the network's scope";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--subnet");
                            Name        = "Subnet in CIDR format that represents a network segment";
                            Description = "Subnet in CIDR format that represents a network segment";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("disconnect");
                    Name        = "disconnect";
                    Description = "Disconnect a container from a network";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force the container to disconnect from a network";
                            Description = "Force the container to disconnect from a network";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more networks";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Verbose output for diagnostics";
                            Description = "Verbose output for diagnostics";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List networks";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Provide filter values (e.g. 'driver=bridge')";
                            Description = "Provide filter values (e.g. 'driver=bridge')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print networks using a Go template";
                            Description = "Pretty-print networks using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Do not truncate the output";
                            Description = "Do not truncate the output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display network IDs";
                            Description = "Only display network IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("prune");
                    Name        = "prune";
                    Description = "Remove all unused networks";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter");
                            Name        = "Provide filter values (e.g. 'until=<timestamp>')";
                            Description = "Provide filter values (e.g. 'until=<timestamp>')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Do not prompt for confirmation";
                            Description = "Do not prompt for confirmation";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more networks";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("node");
            Name        = "node";
            Description = "Manage Swarm nodes";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("demote");
                    Name        = "demote";
                    Description = "Demote one or more nodes from manager in the swarm";
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more nodes";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pretty");
                            Name        = "Print the information in a human friendly format";
                            Description = "Print the information in a human friendly format";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List nodes in the swarm";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print nodes using a Go template";
                            Description = "Pretty-print nodes using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display IDs";
                            Description = "Only display IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("promote");
                    Name        = "promote";
                    Description = "Promote one or more nodes to manager in the swarm";
                },
                [CommandParameter]@{
                    Keys        = @("ps");
                    Name        = "ps";
                    Description = "List tasks running on one or more nodes, defaults to current node";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print tasks using a Go template";
                            Description = "Pretty-print tasks using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-resolve");
                            Name        = "Do not map IDs to Names";
                            Description = "Do not map IDs to Names";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Do not truncate output";
                            Description = "Do not truncate output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display task IDs";
                            Description = "Only display task IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more nodes from the swarm";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force remove a node from the swarm";
                            Description = "Force remove a node from the swarm";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update a node";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--availability");
                            Name        = "Availability of the node (`"active`"|`"pause`"|`"drain`")";
                            Description = "Availability of the node (`"active`"|`"pause`"|`"drain`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label-add");
                            Name        = "Add or update a node label (key=value)";
                            Description = "Add or update a node label (key=value)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label-rm");
                            Name        = "Remove a node label if exists";
                            Description = "Remove a node label if exists";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--role");
                            Name        = "Role of the node (`"worker`"|`"manager`")";
                            Description = "Role of the node (`"worker`"|`"manager`")";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pause");
            Name        = "pause";
            Description = "Pause all processes within one or more containers";
        },
        [CommandParameter]@{
            Keys        = @("plugin");
            Name        = "plugin";
            Description = "Manage plugins";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a plugin from a rootfs and configuration";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--compress");
                            Name        = "Compress the context using gzip";
                            Description = "Compress the context using gzip";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("disable");
                    Name        = "disable";
                    Description = "Disable a plugin";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force the disable of an active plugin";
                            Description = "Force the disable of an active plugin";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("enable");
                    Name        = "enable";
                    Description = "Enable a plugin";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--timeout");
                            Name        = "HTTP client timeout (in seconds) (default 30)";
                            Description = "HTTP client timeout (in seconds) (default 30)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more plugins";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "Install a plugin";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--alias");
                            Name        = "Local name for plugin";
                            Description = "Local name for plugin";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable");
                            Name        = "Do not enable the plugin on install";
                            Description = "Do not enable the plugin on install";
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image verification (default true)";
                            Description = "Skip image verification (default true)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--grant-all-permissions");
                            Name        = "Grant all permissions necessary to run the plugin";
                            Description = "Grant all permissions necessary to run the plugin";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List plugins";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Provide filter values (e.g. 'enabled=true')";
                            Description = "Provide filter values (e.g. 'enabled=true')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print plugins using a Go template";
                            Description = "Pretty-print plugins using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Don't truncate output";
                            Description = "Don't truncate output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display plugin IDs";
                            Description = "Only display plugin IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("push");
                    Name        = "push";
                    Description = "Push a plugin to a registry";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image signing (default true)";
                            Description = "Skip image signing (default true)";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more plugins";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force the removal of an active plugin";
                            Description = "Force the removal of an active plugin";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Change settings for a plugin";
                },
                [CommandParameter]@{
                    Keys        = @("upgrade");
                    Name        = "upgrade";
                    Description = "Upgrade an existing plugin";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--disable-content-trust");
                            Name        = "Skip image verification (default true)";
                            Description = "Skip image verification (default true)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--grant-all-permissions");
                            Name        = "Grant all permissions necessary to run the plugin";
                            Description = "Grant all permissions necessary to run the plugin";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-remote-check");
                            Name        = "Do not check if specified remote plugin matches existing plugin";
                            Description = "Do not check if specified remote plugin matches existing plugin";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("port");
            Name        = "port";
            Description = "List port mappings or a specific mapping for the container";
        },
        [CommandParameter]@{
            Keys        = @("ps");
            Name        = "ps";
            Description = "List containers";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Show all containers (default shows just running)";
                    Description = "Show all containers (default shows just running)";
                },
                [ValueParameter]@{
                    Keys        = @("--filter", "-f");
                    Name        = "Filter output based on conditions provided";
                    Description = "Filter output based on conditions provided";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Pretty-print containers using a Go template";
                    Description = "Pretty-print containers using a Go template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--last", "-n");
                    Name        = "Show n last created containers (includes all states) (default -1)";
                    Description = "Show n last created containers (includes all states) (default -1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--latest", "-l");
                    Name        = "Show the latest created container (includes all states)";
                    Description = "Show the latest created container (includes all states)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-trunc");
                    Name        = "Don't truncate output";
                    Description = "Don't truncate output";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Only display numeric IDs";
                    Description = "Only display numeric IDs";
                },
                [FlagParameter]@{
                    Keys        = @("--size", "-s");
                    Name        = "Display total file sizes";
                    Description = "Display total file sizes";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pull");
            Name        = "pull";
            Description = "Pull an image or a repository from a registry";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-tags", "-a");
                    Name        = "Download all tagged images in the repository";
                    Description = "Download all tagged images in the repository";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-content-trust");
                    Name        = "Skip image verification (default true)";
                    Description = "Skip image verification (default true)";
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Set platform if server is multi-platform capable";
                    Description = "Set platform if server is multi-platform capable";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Suppress verbose output";
                    Description = "Suppress verbose output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("push");
            Name        = "push";
            Description = "Push an image or a repository to a registry";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--disable-content-trust");
                    Name        = "Skip image signing (default true)";
                    Description = "Skip image signing (default true)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rename");
            Name        = "rename";
            Description = "Rename a container";
        },
        [CommandParameter]@{
            Keys        = @("restart");
            Name        = "restart";
            Description = "Restart one or more containers";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--time", "-t");
                    Name        = "Seconds to wait for stop before killing the container (default 10)";
                    Description = "Seconds to wait for stop before killing the container (default 10)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rm");
            Name        = "rm";
            Description = "Remove one or more containers";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Force the removal of a running container (uses SIGKILL)";
                    Description = "Force the removal of a running container (uses SIGKILL)";
                },
                [FlagParameter]@{
                    Keys        = @("--link", "-l");
                    Name        = "Remove the specified link";
                    Description = "Remove the specified link";
                },
                [FlagParameter]@{
                    Keys        = @("--volumes", "-v");
                    Name        = "Remove anonymous volumes associated with the container";
                    Description = "Remove anonymous volumes associated with the container";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rmi");
            Name        = "rmi";
            Description = "Remove one or more images";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Force removal of the image";
                    Description = "Force removal of the image";
                },
                [FlagParameter]@{
                    Keys        = @("--no-prune");
                    Name        = "Do not delete untagged parents";
                    Description = "Do not delete untagged parents";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run a command in a new container";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--add-host");
                    Name        = "Add a custom host-to-IP mapping (host:ip)";
                    Description = "Add a custom host-to-IP mapping (host:ip)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--attach", "-a");
                    Name        = "Attach to STDIN, STDOUT or STDERR";
                    Description = "Attach to STDIN, STDOUT or STDERR";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--blkio-weight");
                    Name        = "Block IO (relative weight), between 10 and 1000, or 0 to";
                    Description = "Block IO (relative weight), between 10 and 1000, or 0 to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--blkio-weight-device");
                    Name        = "Block IO weight (relative device weight) (default [])";
                    Description = "Block IO weight (relative device weight) (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cap-add");
                    Name        = "Add Linux capabilities";
                    Description = "Add Linux capabilities";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cap-drop");
                    Name        = "Drop Linux capabilities";
                    Description = "Drop Linux capabilities";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cgroup-parent");
                    Name        = "Optional parent cgroup for the container";
                    Description = "Optional parent cgroup for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cidfile");
                    Name        = "Write the container ID to the file";
                    Description = "Write the container ID to the file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-period");
                    Name        = "Limit CPU CFS (Completely Fair Scheduler) period";
                    Description = "Limit CPU CFS (Completely Fair Scheduler) period";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-quota");
                    Name        = "Limit CPU CFS (Completely Fair Scheduler) quota";
                    Description = "Limit CPU CFS (Completely Fair Scheduler) quota";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-rt-period");
                    Name        = "Limit CPU real-time period in microseconds";
                    Description = "Limit CPU real-time period in microseconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-rt-runtime");
                    Name        = "Limit CPU real-time runtime in microseconds";
                    Description = "Limit CPU real-time runtime in microseconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-shares", "-c");
                    Name        = "CPU shares (relative weight)";
                    Description = "CPU shares (relative weight)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpus");
                    Name        = "Number of CPUs";
                    Description = "Number of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpuset-cpus");
                    Name        = "CPUs in which to allow execution (0-3, 0,1)";
                    Description = "CPUs in which to allow execution (0-3, 0,1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpuset-mems");
                    Name        = "MEMs in which to allow execution (0-3, 0,1)";
                    Description = "MEMs in which to allow execution (0-3, 0,1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--detach", "-d");
                    Name        = "Run container in background and print container ID";
                    Description = "Run container in background and print container ID";
                },
                [ValueParameter]@{
                    Keys        = @("--detach-keys");
                    Name        = "Override the key sequence for detaching a container";
                    Description = "Override the key sequence for detaching a container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device");
                    Name        = "Add a host device to the container";
                    Description = "Add a host device to the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-cgroup-rule");
                    Name        = "Add a rule to the cgroup allowed devices list";
                    Description = "Add a rule to the cgroup allowed devices list";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-read-bps");
                    Name        = "Limit read rate (bytes per second) from a device (default [])";
                    Description = "Limit read rate (bytes per second) from a device (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-read-iops");
                    Name        = "Limit read rate (IO per second) from a device (default [])";
                    Description = "Limit read rate (IO per second) from a device (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-write-bps");
                    Name        = "Limit write rate (bytes per second) to a device (default [])";
                    Description = "Limit write rate (bytes per second) to a device (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-write-iops");
                    Name        = "Limit write rate (IO per second) to a device (default [])";
                    Description = "Limit write rate (IO per second) to a device (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-content-trust");
                    Name        = "Skip image verification (default true)";
                    Description = "Skip image verification (default true)";
                },
                [ValueParameter]@{
                    Keys        = @("--dns");
                    Name        = "Set custom DNS servers";
                    Description = "Set custom DNS servers";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dns-option");
                    Name        = "Set DNS options";
                    Description = "Set DNS options";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dns-search");
                    Name        = "Set custom DNS search domains";
                    Description = "Set custom DNS search domains";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--domainname");
                    Name        = "Container NIS domain name";
                    Description = "Container NIS domain name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--entrypoint");
                    Name        = "Overwrite the default ENTRYPOINT of the image";
                    Description = "Overwrite the default ENTRYPOINT of the image";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--env", "-e");
                    Name        = "Set environment variables";
                    Description = "Set environment variables";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--env-file");
                    Name        = "Read in a file of environment variables";
                    Description = "Read in a file of environment variables";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--expose");
                    Name        = "Expose a port or a range of ports";
                    Description = "Expose a port or a range of ports";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gpus");
                    Name        = "GPU devices to add to the container ('all' to pass all GPUs)";
                    Description = "GPU devices to add to the container ('all' to pass all GPUs)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--group-add");
                    Name        = "Add additional groups to join";
                    Description = "Add additional groups to join";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-cmd");
                    Name        = "Command to run to check health";
                    Description = "Command to run to check health";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-interval");
                    Name        = "Time between running the check (ms|s|m|h) (default 0s)";
                    Description = "Time between running the check (ms|s|m|h) (default 0s)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-retries");
                    Name        = "Consecutive failures needed to report unhealthy";
                    Description = "Consecutive failures needed to report unhealthy";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-start-period");
                    Name        = "Start period for the container to initialize before";
                    Description = "Start period for the container to initialize before";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--health-timeout");
                    Name        = "Maximum time to allow one check to run (ms|s|m|h)";
                    Description = "Maximum time to allow one check to run (ms|s|m|h)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help");
                    Name        = "Print usage";
                    Description = "Print usage";
                },
                [ValueParameter]@{
                    Keys        = @("--hostname", "-h");
                    Name        = "Container host name";
                    Description = "Container host name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--init");
                    Name        = "Run an init inside the container that forwards signals";
                    Description = "Run an init inside the container that forwards signals";
                },
                [FlagParameter]@{
                    Keys        = @("--interactive", "-i");
                    Name        = "Keep STDIN open even if not attached";
                    Description = "Keep STDIN open even if not attached";
                },
                [ValueParameter]@{
                    Keys        = @("--ip");
                    Name        = "IPv4 address (e.g., 172.30.100.104)";
                    Description = "IPv4 address (e.g., 172.30.100.104)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ip6");
                    Name        = "IPv6 address (e.g., 2001:db8::33)";
                    Description = "IPv6 address (e.g., 2001:db8::33)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ipc");
                    Name        = "IPC mode to use";
                    Description = "IPC mode to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--isolation");
                    Name        = "Container isolation technology";
                    Description = "Container isolation technology";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kernel-memory");
                    Name        = "Kernel memory limit";
                    Description = "Kernel memory limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label", "-l");
                    Name        = "Set meta data on a container";
                    Description = "Set meta data on a container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label-file");
                    Name        = "Read in a line delimited file of labels";
                    Description = "Read in a line delimited file of labels";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--link");
                    Name        = "Add link to another container";
                    Description = "Add link to another container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--link-local-ip");
                    Name        = "Container IPv4/IPv6 link-local addresses";
                    Description = "Container IPv4/IPv6 link-local addresses";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--log-driver");
                    Name        = "Logging driver for the container";
                    Description = "Logging driver for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--log-opt");
                    Name        = "Log driver options";
                    Description = "Log driver options";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--mac-address");
                    Name        = "Container MAC address (e.g., 92:d0:c6:0a:29:33)";
                    Description = "Container MAC address (e.g., 92:d0:c6:0a:29:33)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory", "-m");
                    Name        = "Memory limit";
                    Description = "Memory limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-reservation");
                    Name        = "Memory soft limit";
                    Description = "Memory soft limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-swap");
                    Name        = "Swap limit equal to memory plus swap: '-1' to enable";
                    Description = "Swap limit equal to memory plus swap: '-1' to enable";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-swappiness");
                    Name        = "Tune container memory swappiness (0 to 100) (default -1)";
                    Description = "Tune container memory swappiness (0 to 100) (default -1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--mount");
                    Name        = "Attach a filesystem mount to the container";
                    Description = "Attach a filesystem mount to the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Assign a name to the container";
                    Description = "Assign a name to the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--network");
                    Name        = "Connect a container to a network";
                    Description = "Connect a container to a network";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--network-alias");
                    Name        = "Add network-scoped alias for the container";
                    Description = "Add network-scoped alias for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-healthcheck");
                    Name        = "Disable any container-specified HEALTHCHECK";
                    Description = "Disable any container-specified HEALTHCHECK";
                },
                [FlagParameter]@{
                    Keys        = @("--oom-kill-disable");
                    Name        = "Disable OOM Killer";
                    Description = "Disable OOM Killer";
                },
                [ValueParameter]@{
                    Keys        = @("--oom-score-adj");
                    Name        = "Tune host's OOM preferences (-1000 to 1000)";
                    Description = "Tune host's OOM preferences (-1000 to 1000)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pid");
                    Name        = "PID namespace to use";
                    Description = "PID namespace to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pids-limit");
                    Name        = "Tune container pids limit (set -1 for unlimited)";
                    Description = "Tune container pids limit (set -1 for unlimited)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Set platform if server is multi-platform capable";
                    Description = "Set platform if server is multi-platform capable";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--privileged");
                    Name        = "Give extended privileges to this container";
                    Description = "Give extended privileges to this container";
                },
                [ValueParameter]@{
                    Keys        = @("--publish", "-p");
                    Name        = "Publish a container's port(s) to the host";
                    Description = "Publish a container's port(s) to the host";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--publish-all", "-P");
                    Name        = "Publish all exposed ports to random ports";
                    Description = "Publish all exposed ports to random ports";
                },
                [FlagParameter]@{
                    Keys        = @("--read-only");
                    Name        = "Mount the container's root filesystem as read only";
                    Description = "Mount the container's root filesystem as read only";
                },
                [ValueParameter]@{
                    Keys        = @("--restart");
                    Name        = "Restart policy to apply when a container exits (default `"no`")";
                    Description = "Restart policy to apply when a container exits (default `"no`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--rm");
                    Name        = "Automatically remove the container when it exits";
                    Description = "Automatically remove the container when it exits";
                },
                [ValueParameter]@{
                    Keys        = @("--runtime");
                    Name        = "Runtime to use for this container";
                    Description = "Runtime to use for this container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--security-opt");
                    Name        = "Security Options";
                    Description = "Security Options";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--shm-size");
                    Name        = "Size of /dev/shm";
                    Description = "Size of /dev/shm";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--sig-proxy");
                    Name        = "Proxy received signals to the process (default true)";
                    Description = "Proxy received signals to the process (default true)";
                },
                [ValueParameter]@{
                    Keys        = @("--stop-signal");
                    Name        = "Signal to stop a container (default `"SIGTERM`")";
                    Description = "Signal to stop a container (default `"SIGTERM`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--stop-timeout");
                    Name        = "Timeout (in seconds) to stop a container";
                    Description = "Timeout (in seconds) to stop a container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--storage-opt");
                    Name        = "Storage driver options for the container";
                    Description = "Storage driver options for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--sysctl");
                    Name        = "Sysctl options (default map[])";
                    Description = "Sysctl options (default map[])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tmpfs");
                    Name        = "Mount a tmpfs directory";
                    Description = "Mount a tmpfs directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tty", "-t");
                    Name        = "Allocate a pseudo-TTY";
                    Description = "Allocate a pseudo-TTY";
                },
                [ValueParameter]@{
                    Keys        = @("--ulimit");
                    Name        = "Ulimit options (default [])";
                    Description = "Ulimit options (default [])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--user", "-u");
                    Name        = "Username or UID (format: <name|uid>[:<group|gid>])";
                    Description = "Username or UID (format: <name|uid>[:<group|gid>])";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--userns");
                    Name        = "User namespace to use";
                    Description = "User namespace to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--uts");
                    Name        = "UTS namespace to use";
                    Description = "UTS namespace to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--volume", "-v");
                    Name        = "Bind mount a volume";
                    Description = "Bind mount a volume";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--volume-driver");
                    Name        = "Optional volume driver for the container";
                    Description = "Optional volume driver for the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--volumes-from");
                    Name        = "Mount volumes from the specified container(s)";
                    Description = "Mount volumes from the specified container(s)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workdir", "-w");
                    Name        = "Working directory inside the container";
                    Description = "Working directory inside the container";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("save");
            Name        = "save";
            Description = "Save one or more images to a tar archive (streamed to STDOUT by default)";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Write to a file, instead of STDOUT";
                    Description = "Write to a file, instead of STDOUT";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "Search the Docker Hub for images";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--filter", "-f");
                    Name        = "Filter output based on conditions provided";
                    Description = "Filter output based on conditions provided";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Pretty-print search using a Go template";
                    Description = "Pretty-print search using a Go template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--limit");
                    Name        = "Max number of search results (default 25)";
                    Description = "Max number of search results (default 25)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-trunc");
                    Name        = "Don't truncate output";
                    Description = "Don't truncate output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("secret");
            Name        = "secret";
            Description = "Manage Docker secrets";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a secret from a file or STDIN as content";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--driver", "-d");
                            Name        = "Secret driver";
                            Description = "Secret driver";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Secret labels";
                            Description = "Secret labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template-driver");
                            Name        = "Template driver";
                            Description = "Template driver";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more secrets";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pretty");
                            Name        = "Print the information in a human friendly format";
                            Description = "Print the information in a human friendly format";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List secrets";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print secrets using a Go template";
                            Description = "Pretty-print secrets using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display IDs";
                            Description = "Only display IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more secrets";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("service");
            Name        = "service";
            Description = "Manage services";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new service";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Specify configurations to expose to the service";
                            Description = "Specify configurations to expose to the service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--constraint");
                            Name        = "Placement constraints";
                            Description = "Placement constraints";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--container-label");
                            Name        = "Container labels";
                            Description = "Container labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--credential-spec");
                            Name        = "Credential spec for managed service account (Windows";
                            Description = "Credential spec for managed service account (Windows";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--detach", "-d");
                            Name        = "Exit immediately instead of waiting for the service";
                            Description = "Exit immediately instead of waiting for the service";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns");
                            Name        = "Set custom DNS servers";
                            Description = "Set custom DNS servers";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-option");
                            Name        = "Set DNS options";
                            Description = "Set DNS options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-search");
                            Name        = "Set custom DNS search domains";
                            Description = "Set custom DNS search domains";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--endpoint-mode");
                            Name        = "Endpoint mode (vip or dnsrr) (default `"vip`")";
                            Description = "Endpoint mode (vip or dnsrr) (default `"vip`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--entrypoint");
                            Name        = "Overwrite the default ENTRYPOINT of the image";
                            Description = "Overwrite the default ENTRYPOINT of the image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Set environment variables";
                            Description = "Set environment variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env-file");
                            Name        = "Read in a file of environment variables";
                            Description = "Read in a file of environment variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--generic-resource");
                            Name        = "User defined resources";
                            Description = "User defined resources";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group");
                            Name        = "Set one or more supplementary user groups for the";
                            Description = "Set one or more supplementary user groups for the";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-cmd");
                            Name        = "Command to run to check health";
                            Description = "Command to run to check health";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-interval");
                            Name        = "Time between running the check (ms|s|m|h)";
                            Description = "Time between running the check (ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-retries");
                            Name        = "Consecutive failures needed to report unhealthy";
                            Description = "Consecutive failures needed to report unhealthy";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-start-period");
                            Name        = "Start period for the container to initialize before";
                            Description = "Start period for the container to initialize before";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-timeout");
                            Name        = "Maximum time to allow one check to run (ms|s|m|h)";
                            Description = "Maximum time to allow one check to run (ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--host");
                            Name        = "Set one or more custom host-to-IP mappings (host:ip)";
                            Description = "Set one or more custom host-to-IP mappings (host:ip)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--hostname");
                            Name        = "Container hostname";
                            Description = "Container hostname";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--init");
                            Name        = "Use an init inside each service container to forward";
                            Description = "Use an init inside each service container to forward";
                        },
                        [ValueParameter]@{
                            Keys        = @("--isolation");
                            Name        = "Service container isolation mode";
                            Description = "Service container isolation mode";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Service labels";
                            Description = "Service labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit-cpu");
                            Name        = "Limit CPUs";
                            Description = "Limit CPUs";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit-memory");
                            Name        = "Limit Memory";
                            Description = "Limit Memory";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-driver");
                            Name        = "Logging driver for service";
                            Description = "Logging driver for service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-opt");
                            Name        = "Logging driver options";
                            Description = "Logging driver options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mode");
                            Name        = "Service mode (replicated or global) (default";
                            Description = "Service mode (replicated or global) (default";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mount");
                            Name        = "Attach a filesystem mount to the service";
                            Description = "Attach a filesystem mount to the service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "Service name";
                            Description = "Service name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network");
                            Name        = "Network attachments";
                            Description = "Network attachments";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-healthcheck");
                            Name        = "Disable any container-specified HEALTHCHECK";
                            Description = "Disable any container-specified HEALTHCHECK";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-resolve-image");
                            Name        = "Do not query the registry to resolve image digest";
                            Description = "Do not query the registry to resolve image digest";
                        },
                        [ValueParameter]@{
                            Keys        = @("--placement-pref");
                            Name        = "Add a placement preference";
                            Description = "Add a placement preference";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--publish", "-p");
                            Name        = "Publish a port as a node port";
                            Description = "Publish a port as a node port";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Suppress progress output";
                            Description = "Suppress progress output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--read-only");
                            Name        = "Mount the container's root filesystem as read only";
                            Description = "Mount the container's root filesystem as read only";
                        },
                        [ValueParameter]@{
                            Keys        = @("--replicas");
                            Name        = "Number of tasks";
                            Description = "Number of tasks";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--replicas-max-per-node");
                            Name        = "Maximum number of tasks per node (default 0 = unlimited)";
                            Description = "Maximum number of tasks per node (default 0 = unlimited)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--reserve-cpu");
                            Name        = "Reserve CPUs";
                            Description = "Reserve CPUs";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--reserve-memory");
                            Name        = "Reserve Memory";
                            Description = "Reserve Memory";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart-condition");
                            Name        = "Restart when condition is met";
                            Description = "Restart when condition is met";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart-delay");
                            Name        = "Delay between restart attempts (ns|us|ms|s|m|h)";
                            Description = "Delay between restart attempts (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart-max-attempts");
                            Name        = "Maximum number of restarts before giving up";
                            Description = "Maximum number of restarts before giving up";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart-window");
                            Name        = "Window used to evaluate the restart policy";
                            Description = "Window used to evaluate the restart policy";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-delay");
                            Name        = "Delay between task rollbacks (ns|us|ms|s|m|h)";
                            Description = "Delay between task rollbacks (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-failure-action");
                            Name        = "Action on rollback failure (`"pause`"|`"continue`")";
                            Description = "Action on rollback failure (`"pause`"|`"continue`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-max-failure-ratio");
                            Name        = "Failure rate to tolerate during a rollback (default 0)";
                            Description = "Failure rate to tolerate during a rollback (default 0)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-monitor");
                            Name        = "Duration after each task rollback to monitor for";
                            Description = "Duration after each task rollback to monitor for";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-order");
                            Name        = "Rollback order (`"start-first`"|`"stop-first`") (default";
                            Description = "Rollback order (`"start-first`"|`"stop-first`") (default";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-parallelism");
                            Name        = "Maximum number of tasks rolled back simultaneously";
                            Description = "Maximum number of tasks rolled back simultaneously";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--secret");
                            Name        = "Specify secrets to expose to the service";
                            Description = "Specify secrets to expose to the service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--stop-grace-period");
                            Name        = "Time to wait before force killing a container";
                            Description = "Time to wait before force killing a container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--stop-signal");
                            Name        = "Signal to stop the container";
                            Description = "Signal to stop the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sysctl");
                            Name        = "Sysctl options";
                            Description = "Sysctl options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tty", "-t");
                            Name        = "Allocate a pseudo-TTY";
                            Description = "Allocate a pseudo-TTY";
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-delay");
                            Name        = "Delay between updates (ns|us|ms|s|m|h) (default 0s)";
                            Description = "Delay between updates (ns|us|ms|s|m|h) (default 0s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-failure-action");
                            Name        = "Action on update failure";
                            Description = "Action on update failure";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-max-failure-ratio");
                            Name        = "Failure rate to tolerate during an update (default 0)";
                            Description = "Failure rate to tolerate during an update (default 0)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-monitor");
                            Name        = "Duration after each task update to monitor for";
                            Description = "Duration after each task update to monitor for";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-order");
                            Name        = "Update order (`"start-first`"|`"stop-first`") (default";
                            Description = "Update order (`"start-first`"|`"stop-first`") (default";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-parallelism");
                            Name        = "Maximum number of tasks updated simultaneously (0 to";
                            Description = "Maximum number of tasks updated simultaneously (0 to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--user", "-u");
                            Name        = "Username or UID (format: <name|uid>[:<group|gid>])";
                            Description = "Username or UID (format: <name|uid>[:<group|gid>])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--with-registry-auth");
                            Name        = "Send registry authentication details to swarm agents";
                            Description = "Send registry authentication details to swarm agents";
                        },
                        [ValueParameter]@{
                            Keys        = @("--workdir", "-w");
                            Name        = "Working directory inside the container";
                            Description = "Working directory inside the container";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more services";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pretty");
                            Name        = "Print the information in a human friendly format";
                            Description = "Print the information in a human friendly format";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("logs");
                    Name        = "logs";
                    Description = "Fetch the logs of a service or task";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--details");
                            Name        = "Show extra details provided to logs";
                            Description = "Show extra details provided to logs";
                        },
                        [FlagParameter]@{
                            Keys        = @("--follow", "-f");
                            Name        = "Follow log output";
                            Description = "Follow log output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-resolve");
                            Name        = "Do not map IDs to Names in output";
                            Description = "Do not map IDs to Names in output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-task-ids");
                            Name        = "Do not include task IDs in output";
                            Description = "Do not include task IDs in output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Do not truncate output";
                            Description = "Do not truncate output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--raw");
                            Name        = "Do not neatly format logs";
                            Description = "Do not neatly format logs";
                        },
                        [ValueParameter]@{
                            Keys        = @("--since");
                            Name        = "Show logs since timestamp (e.g. 2013-01-02T13:23:37) or relative (e.g. 42m for 42 minutes)";
                            Description = "Show logs since timestamp (e.g. 2013-01-02T13:23:37) or relative (e.g. 42m for 42 minutes)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tail");
                            Name        = "Number of lines to show from the end of the logs (default `"all`")";
                            Description = "Number of lines to show from the end of the logs (default `"all`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--timestamps", "-t");
                            Name        = "Show timestamps";
                            Description = "Show timestamps";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List services";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print services using a Go template";
                            Description = "Pretty-print services using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display IDs";
                            Description = "Only display IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ps");
                    Name        = "ps";
                    Description = "List the tasks of one or more services";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print tasks using a Go template";
                            Description = "Pretty-print tasks using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-resolve");
                            Name        = "Do not map IDs to Names";
                            Description = "Do not map IDs to Names";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Do not truncate output";
                            Description = "Do not truncate output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display task IDs";
                            Description = "Only display task IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more services";
                },
                [CommandParameter]@{
                    Keys        = @("rollback");
                    Name        = "rollback";
                    Description = "Revert changes to a service's configuration";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--detach", "-d");
                            Name        = "Exit immediately instead of waiting for the service to converge";
                            Description = "Exit immediately instead of waiting for the service to converge";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Suppress progress output";
                            Description = "Suppress progress output";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("scale");
                    Name        = "scale";
                    Description = "Scale one or multiple replicated services";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--detach", "-d");
                            Name        = "Exit immediately instead of waiting for the service to converge";
                            Description = "Exit immediately instead of waiting for the service to converge";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update a service";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--args");
                            Name        = "Service command args";
                            Description = "Service command args";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config-add");
                            Name        = "Add or update a config file on a service";
                            Description = "Add or update a config file on a service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config-rm");
                            Name        = "Remove a configuration file";
                            Description = "Remove a configuration file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--constraint-add");
                            Name        = "Add or update a placement constraint";
                            Description = "Add or update a placement constraint";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--constraint-rm");
                            Name        = "Remove a constraint";
                            Description = "Remove a constraint";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--container-label-add");
                            Name        = "Add or update a container label";
                            Description = "Add or update a container label";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--container-label-rm");
                            Name        = "Remove a container label by its key";
                            Description = "Remove a container label by its key";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--credential-spec");
                            Name        = "Credential spec for managed service account (Windows only)";
                            Description = "Credential spec for managed service account (Windows only)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--detach", "-d");
                            Name        = "Exit immediately instead of waiting for the service to converge";
                            Description = "Exit immediately instead of waiting for the service to converge";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-add");
                            Name        = "Add or update a custom DNS server";
                            Description = "Add or update a custom DNS server";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-option-add");
                            Name        = "Add or update a DNS option";
                            Description = "Add or update a DNS option";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-option-rm");
                            Name        = "Remove a DNS option";
                            Description = "Remove a DNS option";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-rm");
                            Name        = "Remove a custom DNS server";
                            Description = "Remove a custom DNS server";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-search-add");
                            Name        = "Add or update a custom DNS search domain";
                            Description = "Add or update a custom DNS search domain";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dns-search-rm");
                            Name        = "Remove a DNS search domain";
                            Description = "Remove a DNS search domain";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--endpoint-mode");
                            Name        = "Endpoint mode (vip or dnsrr)";
                            Description = "Endpoint mode (vip or dnsrr)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--entrypoint");
                            Name        = "Overwrite the default ENTRYPOINT of the image";
                            Description = "Overwrite the default ENTRYPOINT of the image";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env-add");
                            Name        = "Add or update an environment variable";
                            Description = "Add or update an environment variable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env-rm");
                            Name        = "Remove an environment variable";
                            Description = "Remove an environment variable";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Force update even if no changes require it";
                            Description = "Force update even if no changes require it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--generic-resource-add");
                            Name        = "Add a Generic resource";
                            Description = "Add a Generic resource";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--generic-resource-rm");
                            Name        = "Remove a Generic resource";
                            Description = "Remove a Generic resource";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group-add");
                            Name        = "Add an additional supplementary user group to the container";
                            Description = "Add an additional supplementary user group to the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group-rm");
                            Name        = "Remove a previously added supplementary user group from the container";
                            Description = "Remove a previously added supplementary user group from the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-cmd");
                            Name        = "Command to run to check health";
                            Description = "Command to run to check health";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-interval");
                            Name        = "Time between running the check (ms|s|m|h)";
                            Description = "Time between running the check (ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-retries");
                            Name        = "Consecutive failures needed to report unhealthy";
                            Description = "Consecutive failures needed to report unhealthy";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-start-period");
                            Name        = "Start period for the container to initialize before counting retries towards unstable (ms|s|m|h)";
                            Description = "Start period for the container to initialize before counting retries towards unstable (ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--health-timeout");
                            Name        = "Maximum time to allow one check to run (ms|s|m|h)";
                            Description = "Maximum time to allow one check to run (ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--host-add");
                            Name        = "Add a custom host-to-IP mapping (host:ip)";
                            Description = "Add a custom host-to-IP mapping (host:ip)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--host-rm");
                            Name        = "Remove a custom host-to-IP mapping (host:ip)";
                            Description = "Remove a custom host-to-IP mapping (host:ip)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--hostname");
                            Name        = "Container hostname";
                            Description = "Container hostname";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--image");
                            Name        = "Service image tag";
                            Description = "Service image tag";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--init");
                            Name        = "Use an init inside each service container to forward signals and reap processes";
                            Description = "Use an init inside each service container to forward signals and reap processes";
                        },
                        [ValueParameter]@{
                            Keys        = @("--isolation");
                            Name        = "Service container isolation mode";
                            Description = "Service container isolation mode";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label-add");
                            Name        = "Add or update a service label";
                            Description = "Add or update a service label";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label-rm");
                            Name        = "Remove a label by its key";
                            Description = "Remove a label by its key";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit-cpu");
                            Name        = "Limit CPUs";
                            Description = "Limit CPUs";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit-memory");
                            Name        = "Limit Memory";
                            Description = "Limit Memory";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-driver");
                            Name        = "Logging driver for service";
                            Description = "Logging driver for service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-opt");
                            Name        = "Logging driver options";
                            Description = "Logging driver options";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mount-add");
                            Name        = "Add or update a mount on a service";
                            Description = "Add or update a mount on a service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mount-rm");
                            Name        = "Remove a mount by its target path";
                            Description = "Remove a mount by its target path";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network-add");
                            Name        = "Add a network";
                            Description = "Add a network";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--network-rm");
                            Name        = "Remove a network";
                            Description = "Remove a network";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-healthcheck");
                            Name        = "Disable any container-specified HEALTHCHECK";
                            Description = "Disable any container-specified HEALTHCHECK";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-resolve-image");
                            Name        = "Do not query the registry to resolve image digest and supported platforms";
                            Description = "Do not query the registry to resolve image digest and supported platforms";
                        },
                        [ValueParameter]@{
                            Keys        = @("--placement-pref-add");
                            Name        = "Add a placement preference";
                            Description = "Add a placement preference";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--placement-pref-rm");
                            Name        = "Remove a placement preference";
                            Description = "Remove a placement preference";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--publish-add");
                            Name        = "Add or update a published port";
                            Description = "Add or update a published port";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--publish-rm");
                            Name        = "Remove a published port by its target port";
                            Description = "Remove a published port by its target port";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Suppress progress output";
                            Description = "Suppress progress output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--read-only");
                            Name        = "Mount the container's root filesystem as read only";
                            Description = "Mount the container's root filesystem as read only";
                        },
                        [ValueParameter]@{
                            Keys        = @("--replicas");
                            Name        = "Number of tasks";
                            Description = "Number of tasks";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--replicas-max-per-node");
                            Name        = "Maximum number of tasks per node (default 0 = unlimited)";
                            Description = "Maximum number of tasks per node (default 0 = unlimited)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--reserve-cpu");
                            Name        = "Reserve CPUs";
                            Description = "Reserve CPUs";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--reserve-memory");
                            Name        = "Reserve Memory";
                            Description = "Reserve Memory";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart-condition");
                            Name        = "Restart when condition is met (`"none`"|`"on-failure`"|`"any`")";
                            Description = "Restart when condition is met (`"none`"|`"on-failure`"|`"any`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart-delay");
                            Name        = "Delay between restart attempts (ns|us|ms|s|m|h)";
                            Description = "Delay between restart attempts (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart-max-attempts");
                            Name        = "Maximum number of restarts before giving up";
                            Description = "Maximum number of restarts before giving up";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart-window");
                            Name        = "Window used to evaluate the restart policy (ns|us|ms|s|m|h)";
                            Description = "Window used to evaluate the restart policy (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--rollback");
                            Name        = "Rollback to previous specification";
                            Description = "Rollback to previous specification";
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-delay");
                            Name        = "Delay between task rollbacks (ns|us|ms|s|m|h)";
                            Description = "Delay between task rollbacks (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-failure-action");
                            Name        = "Action on rollback failure (`"pause`"|`"continue`")";
                            Description = "Action on rollback failure (`"pause`"|`"continue`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-max-failure-ratio");
                            Name        = "Failure rate to tolerate during a rollback";
                            Description = "Failure rate to tolerate during a rollback";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-monitor");
                            Name        = "Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h)";
                            Description = "Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-order");
                            Name        = "Rollback order (`"start-first`"|`"stop-first`")";
                            Description = "Rollback order (`"start-first`"|`"stop-first`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rollback-parallelism");
                            Name        = "Maximum number of tasks rolled back simultaneously (0 to roll back all at once)";
                            Description = "Maximum number of tasks rolled back simultaneously (0 to roll back all at once)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--secret-add");
                            Name        = "Add or update a secret on a service";
                            Description = "Add or update a secret on a service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--secret-rm");
                            Name        = "Remove a secret";
                            Description = "Remove a secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--stop-grace-period");
                            Name        = "Time to wait before force killing a container (ns|us|ms|s|m|h)";
                            Description = "Time to wait before force killing a container (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--stop-signal");
                            Name        = "Signal to stop the container";
                            Description = "Signal to stop the container";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sysctl-add");
                            Name        = "Add or update a Sysctl option";
                            Description = "Add or update a Sysctl option";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sysctl-rm");
                            Name        = "Remove a Sysctl option";
                            Description = "Remove a Sysctl option";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tty", "-t");
                            Name        = "Allocate a pseudo-TTY";
                            Description = "Allocate a pseudo-TTY";
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-delay");
                            Name        = "Delay between updates (ns|us|ms|s|m|h)";
                            Description = "Delay between updates (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-failure-action");
                            Name        = "Action on update failure (`"pause`"|`"continue`"|`"rollback`")";
                            Description = "Action on update failure (`"pause`"|`"continue`"|`"rollback`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-max-failure-ratio");
                            Name        = "Failure rate to tolerate during an update";
                            Description = "Failure rate to tolerate during an update";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-monitor");
                            Name        = "Duration after each task update to monitor for failure (ns|us|ms|s|m|h)";
                            Description = "Duration after each task update to monitor for failure (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-order");
                            Name        = "Update order (`"start-first`"|`"stop-first`")";
                            Description = "Update order (`"start-first`"|`"stop-first`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--update-parallelism");
                            Name        = "Maximum number of tasks updated simultaneously (0 to update all at once)";
                            Description = "Maximum number of tasks updated simultaneously (0 to update all at once)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--user", "-u");
                            Name        = "Username or UID (format: <name|uid>[:<group|gid>])";
                            Description = "Username or UID (format: <name|uid>[:<group|gid>])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--with-registry-auth");
                            Name        = "Send registry authentication details to swarm agents";
                            Description = "Send registry authentication details to swarm agents";
                        },
                        [ValueParameter]@{
                            Keys        = @("--workdir", "-w");
                            Name        = "Working directory inside the container";
                            Description = "Working directory inside the container";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("stack");
            Name        = "stack";
            Description = "Manage Docker stacks";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--orchestrator");
                    Name        = "Orchestrator to use (swarm|kubernetes|all)";
                    Description = "Orchestrator to use (swarm|kubernetes|all)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [CommandParameter]@{
                    Keys        = @("deploy");
                    Name        = "deploy";
                    Description = "Deploy a new stack or update an existing stack";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--bundle-file");
                            Name        = "Path to a Distributed Application Bundle file";
                            Description = "Path to a Distributed Application Bundle file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--compose-file", "-c");
                            Name        = "Path to a Compose file, or `"-`" to read from stdin";
                            Description = "Path to a Compose file, or `"-`" to read from stdin";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--orchestrator");
                            Name        = "Orchestrator to use (swarm|kubernetes|all)";
                            Description = "Orchestrator to use (swarm|kubernetes|all)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--prune");
                            Name        = "Prune services that are no longer referenced";
                            Description = "Prune services that are no longer referenced";
                        },
                        [ValueParameter]@{
                            Keys        = @("--resolve-image");
                            Name        = "Query the registry to resolve image digest and supported";
                            Description = "Query the registry to resolve image digest and supported";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--with-registry-auth");
                            Name        = "Send registry authentication details to Swarm agents";
                            Description = "Send registry authentication details to Swarm agents";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List stacks";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print stacks using a Go template";
                            Description = "Pretty-print stacks using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--orchestrator");
                            Name        = "Orchestrator to use (swarm|kubernetes|all)";
                            Description = "Orchestrator to use (swarm|kubernetes|all)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ps");
                    Name        = "ps";
                    Description = "List the tasks in the stack";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print tasks using a Go template";
                            Description = "Pretty-print tasks using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-resolve");
                            Name        = "Do not map IDs to Names";
                            Description = "Do not map IDs to Names";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-trunc");
                            Name        = "Do not truncate output";
                            Description = "Do not truncate output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--orchestrator");
                            Name        = "Orchestrator to use (swarm|kubernetes|all)";
                            Description = "Orchestrator to use (swarm|kubernetes|all)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display task IDs";
                            Description = "Only display task IDs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more stacks";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--orchestrator");
                            Name        = "Orchestrator to use (swarm|kubernetes|all)";
                            Description = "Orchestrator to use (swarm|kubernetes|all)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("services");
                    Name        = "services";
                    Description = "List the services in the stack";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print services using a Go template";
                            Description = "Pretty-print services using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--orchestrator");
                            Name        = "Orchestrator to use (swarm|kubernetes|all)";
                            Description = "Orchestrator to use (swarm|kubernetes|all)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display IDs";
                            Description = "Only display IDs";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("start");
            Name        = "start";
            Description = "Start one or more stopped containers";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--attach", "-a");
                    Name        = "Attach STDOUT/STDERR and forward signals";
                    Description = "Attach STDOUT/STDERR and forward signals";
                },
                [ValueParameter]@{
                    Keys        = @("--checkpoint");
                    Name        = "Restore from this checkpoint";
                    Description = "Restore from this checkpoint";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--checkpoint-dir");
                    Name        = "Use a custom checkpoint storage directory";
                    Description = "Use a custom checkpoint storage directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--detach-keys");
                    Name        = "Override the key sequence for detaching a container";
                    Description = "Override the key sequence for detaching a container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--interactive", "-i");
                    Name        = "Attach container's STDIN";
                    Description = "Attach container's STDIN";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("stats");
            Name        = "stats";
            Description = "Display a live stream of container(s) resource usage statistics";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Show all containers (default shows just running)";
                    Description = "Show all containers (default shows just running)";
                },
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Pretty-print images using a Go template";
                    Description = "Pretty-print images using a Go template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-stream");
                    Name        = "Disable streaming stats and only pull the first result";
                    Description = "Disable streaming stats and only pull the first result";
                },
                [FlagParameter]@{
                    Keys        = @("--no-trunc");
                    Name        = "Do not truncate output";
                    Description = "Do not truncate output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("stop");
            Name        = "stop";
            Description = "Stop one or more running containers";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--time", "-t");
                    Name        = "Seconds to wait for stop before killing it (default 10)";
                    Description = "Seconds to wait for stop before killing it (default 10)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("swarm");
            Name        = "swarm";
            Description = "Manage Swarm";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("ca");
                    Name        = "ca";
                    Description = "Display and rotate the root CA";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-cert");
                            Name        = "Path to the PEM-formatted root CA certificate to use for the";
                            Description = "Path to the PEM-formatted root CA certificate to use for the";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-key");
                            Name        = "Path to the PEM-formatted root CA key to use for the new cluster";
                            Description = "Path to the PEM-formatted root CA key to use for the new cluster";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert-expiry");
                            Name        = "Validity period for node certificates (ns|us|ms|s|m|h)";
                            Description = "Validity period for node certificates (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--detach", "-d");
                            Name        = "Exit immediately instead of waiting for the root rotation to";
                            Description = "Exit immediately instead of waiting for the root rotation to";
                        },
                        [ValueParameter]@{
                            Keys        = @("--external-ca");
                            Name        = "Specifications of one or more certificate signing endpoints";
                            Description = "Specifications of one or more certificate signing endpoints";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Suppress progress output";
                            Description = "Suppress progress output";
                        },
                        [FlagParameter]@{
                            Keys        = @("--rotate");
                            Name        = "Rotate the swarm CA - if no certificate or key are provided,";
                            Description = "Rotate the swarm CA - if no certificate or key are provided,";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("init");
                    Name        = "init";
                    Description = "Initialize a swarm";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--advertise-addr");
                            Name        = "Advertised address (format: <ip|interface>[:port])";
                            Description = "Advertised address (format: <ip|interface>[:port])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--autolock");
                            Name        = "Enable manager autolocking (requiring an unlock";
                            Description = "Enable manager autolocking (requiring an unlock";
                        },
                        [ValueParameter]@{
                            Keys        = @("--availability");
                            Name        = "Availability of the node";
                            Description = "Availability of the node";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert-expiry");
                            Name        = "Validity period for node certificates";
                            Description = "Validity period for node certificates";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--data-path-addr");
                            Name        = "Address or interface to use for data path";
                            Description = "Address or interface to use for data path";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--data-path-port");
                            Name        = "Port number to use for data path traffic (1024 -";
                            Description = "Port number to use for data path traffic (1024 -";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--default-addr-pool");
                            Name        = "default address pool in CIDR format (default [])";
                            Description = "default address pool in CIDR format (default [])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--default-addr-pool-mask-length");
                            Name        = "default address pool subnet mask length (default 24)";
                            Description = "default address pool subnet mask length (default 24)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dispatcher-heartbeat");
                            Name        = "Dispatcher heartbeat period (ns|us|ms|s|m|h)";
                            Description = "Dispatcher heartbeat period (ns|us|ms|s|m|h)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--external-ca");
                            Name        = "Specifications of one or more certificate";
                            Description = "Specifications of one or more certificate";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force-new-cluster");
                            Name        = "Force create a new cluster from current state";
                            Description = "Force create a new cluster from current state";
                        },
                        [ValueParameter]@{
                            Keys        = @("--listen-addr");
                            Name        = "Listen address (format: <ip|interface>[:port])";
                            Description = "Listen address (format: <ip|interface>[:port])";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--max-snapshots");
                            Name        = "Number of additional Raft snapshots to retain";
                            Description = "Number of additional Raft snapshots to retain";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--snapshot-interval");
                            Name        = "Number of log entries between Raft snapshots";
                            Description = "Number of log entries between Raft snapshots";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--task-history-limit");
                            Name        = "Task history retention limit (default 5)";
                            Description = "Task history retention limit (default 5)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("join-token");
                    Name        = "join-token";
                    Description = "Manage join tokens";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display token";
                            Description = "Only display token";
                        },
                        [FlagParameter]@{
                            Keys        = @("--rotate");
                            Name        = "Rotate join token";
                            Description = "Rotate join token";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("leave");
                    Name        = "leave";
                    Description = "Leave the swarm";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force this node to leave the swarm, ignoring warnings";
                            Description = "Force this node to leave the swarm, ignoring warnings";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("unlock");
                    Name        = "unlock";
                    Description = "Unlock swarm";
                },
                [CommandParameter]@{
                    Keys        = @("unlock-key");
                    Name        = "unlock-key";
                    Description = "Manage the unlock key";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display token";
                            Description = "Only display token";
                        },
                        [FlagParameter]@{
                            Keys        = @("--rotate");
                            Name        = "Rotate unlock key";
                            Description = "Rotate unlock key";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update the swarm";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--autolock");
                            Name        = "Change manager autolocking setting (true|false)";
                            Description = "Change manager autolocking setting (true|false)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert-expiry");
                            Name        = "Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)";
                            Description = "Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dispatcher-heartbeat");
                            Name        = "Dispatcher heartbeat period (ns|us|ms|s|m|h) (default 5s)";
                            Description = "Dispatcher heartbeat period (ns|us|ms|s|m|h) (default 5s)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--external-ca");
                            Name        = "Specifications of one or more certificate signing endpoints";
                            Description = "Specifications of one or more certificate signing endpoints";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--max-snapshots");
                            Name        = "Number of additional Raft snapshots to retain";
                            Description = "Number of additional Raft snapshots to retain";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--snapshot-interval");
                            Name        = "Number of log entries between Raft snapshots (default 10000)";
                            Description = "Number of log entries between Raft snapshots (default 10000)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--task-history-limit");
                            Name        = "Task history retention limit (default 5)";
                            Description = "Task history retention limit (default 5)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("system");
            Name        = "system";
            Description = "Manage Docker";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("df");
                    Name        = "df";
                    Description = "Show docker disk usage";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print images using a Go template";
                            Description = "Pretty-print images using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Show detailed information on space usage";
                            Description = "Show detailed information on space usage";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("events");
                    Name        = "events";
                    Description = "Get real time events from the server";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Filter output based on conditions provided";
                            Description = "Filter output based on conditions provided";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--since");
                            Name        = "Show all events created since timestamp";
                            Description = "Show all events created since timestamp";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--until");
                            Name        = "Stream events until this timestamp";
                            Description = "Stream events until this timestamp";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("info");
                    Name        = "info";
                    Description = "Display system-wide information";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("prune");
                    Name        = "prune";
                    Description = "Remove unused data";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Remove all unused images not just dangling ones";
                            Description = "Remove all unused images not just dangling ones";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filter");
                            Name        = "Provide filter values (e.g. 'label=<key>=<value>')";
                            Description = "Provide filter values (e.g. 'label=<key>=<value>')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Do not prompt for confirmation";
                            Description = "Do not prompt for confirmation";
                        },
                        [FlagParameter]@{
                            Keys        = @("--volumes");
                            Name        = "Prune volumes";
                            Description = "Prune volumes";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("tag");
            Name        = "tag";
            Description = "Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE";
        },
        [CommandParameter]@{
            Keys        = @("top");
            Name        = "top";
            Description = "Display the running processes of a container";
        },
        [CommandParameter]@{
            Keys        = @("trust");
            Name        = "trust";
            Description = "Manage trust on Docker images";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Return low-level information about keys and signatures";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--pretty");
                            Name        = "Print the information in a human friendly format";
                            Description = "Print the information in a human friendly format";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("key");
                    Name        = "key";
                    Description = "Manage keys for signing Docker images";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("generate");
                            Name        = "generate";
                            Description = "Generate and load a signing key-pair";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--dir");
                                    Name        = "Directory to generate key in, defaults to current directory";
                                    Description = "Directory to generate key in, defaults to current directory";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("load");
                            Name        = "load";
                            Description = "Load a private key file for signing";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "Name for the loaded key (default `"signer`")";
                                    Description = "Name for the loaded key (default `"signer`")";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("revoke");
                    Name        = "revoke";
                    Description = "Remove trust for an image";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Do not prompt for confirmation";
                            Description = "Do not prompt for confirmation";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("sign");
                    Name        = "sign";
                    Description = "Sign an image";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "Sign a locally tagged image";
                            Description = "Sign a locally tagged image";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("signer");
                    Name        = "signer";
                    Description = "Manage entities who can sign Docker images";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("add");
                            Name        = "add";
                            Description = "Add a signer";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--key");
                                    Name        = "Path to the signer's public key file";
                                    Description = "Path to the signer's public key file";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("remove");
                            Name        = "remove";
                            Description = "Remove a signer";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Do not prompt for confirmation before removing the most recent signer";
                                    Description = "Do not prompt for confirmation before removing the most recent signer";
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("unpause");
            Name        = "unpause";
            Description = "Unpause all processes within one or more containers";
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "Update configuration of one or more containers";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--blkio-weight");
                    Name        = "Block IO (relative weight), between 10 and 1000, or 0 to";
                    Description = "Block IO (relative weight), between 10 and 1000, or 0 to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-period");
                    Name        = "Limit CPU CFS (Completely Fair Scheduler) period";
                    Description = "Limit CPU CFS (Completely Fair Scheduler) period";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-quota");
                    Name        = "Limit CPU CFS (Completely Fair Scheduler) quota";
                    Description = "Limit CPU CFS (Completely Fair Scheduler) quota";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-rt-period");
                    Name        = "Limit the CPU real-time period in microseconds";
                    Description = "Limit the CPU real-time period in microseconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-rt-runtime");
                    Name        = "Limit the CPU real-time runtime in microseconds";
                    Description = "Limit the CPU real-time runtime in microseconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-shares", "-c");
                    Name        = "CPU shares (relative weight)";
                    Description = "CPU shares (relative weight)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpus");
                    Name        = "Number of CPUs";
                    Description = "Number of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpuset-cpus");
                    Name        = "CPUs in which to allow execution (0-3, 0,1)";
                    Description = "CPUs in which to allow execution (0-3, 0,1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cpuset-mems");
                    Name        = "MEMs in which to allow execution (0-3, 0,1)";
                    Description = "MEMs in which to allow execution (0-3, 0,1)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kernel-memory");
                    Name        = "Kernel memory limit";
                    Description = "Kernel memory limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory", "-m");
                    Name        = "Memory limit";
                    Description = "Memory limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-reservation");
                    Name        = "Memory soft limit";
                    Description = "Memory soft limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memory-swap");
                    Name        = "Swap limit equal to memory plus swap: '-1' to enable";
                    Description = "Swap limit equal to memory plus swap: '-1' to enable";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pids-limit");
                    Name        = "Tune container pids limit (set -1 for unlimited)";
                    Description = "Tune container pids limit (set -1 for unlimited)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--restart");
                    Name        = "Restart policy to apply when a container exits";
                    Description = "Restart policy to apply when a container exits";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Show the Docker version information";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--format", "-f");
                    Name        = "Format the output using the given Go template";
                    Description = "Format the output using the given Go template";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kubeconfig");
                    Name        = "Kubernetes config file";
                    Description = "Kubernetes config file";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("volume");
            Name        = "volume";
            Description = "Manage volumes";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a volume";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--driver", "-d");
                            Name        = "Specify volume driver name (default `"local`")";
                            Description = "Specify volume driver name (default `"local`")";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label");
                            Name        = "Set metadata for a volume";
                            Description = "Set metadata for a volume";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--opt", "-o");
                            Name        = "Set driver specific options (default map[])";
                            Description = "Set driver specific options (default map[])";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Display detailed information on one or more volumes";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Format the output using the given Go template";
                            Description = "Format the output using the given Go template";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List volumes";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter", "-f");
                            Name        = "Provide filter values (e.g. 'dangling=true')";
                            Description = "Provide filter values (e.g. 'dangling=true')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Pretty-print volumes using a Go template";
                            Description = "Pretty-print volumes using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "Only display volume names";
                            Description = "Only display volume names";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("prune");
                    Name        = "prune";
                    Description = "Remove all unused local volumes";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filter");
                            Name        = "Provide filter values (e.g. 'label=<label>')";
                            Description = "Provide filter values (e.g. 'label=<label>')";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Do not prompt for confirmation";
                            Description = "Do not prompt for confirmation";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove one or more volumes";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force the removal of one or more volumes";
                            Description = "Force the removal of one or more volumes";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("wait");
            Name        = "wait";
            Description = "Block until one or more containers stop, then print their exit codes";
        }
    )
}
