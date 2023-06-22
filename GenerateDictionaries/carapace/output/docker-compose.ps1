# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://docs.docker.com/compose/";
    Keys        = @("docker-compose");
    Name        = "docker-compose";
    Description = "Define and run multi-container applications with Docker";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--compatibility");
            Name        = "If set, Compose will attempt to convert keys";
            Description = "If set, Compose will attempt to convert keys";
        },
        [ValueParameter]@{
            Keys        = @("--context", "-c");
            Name        = "Specify a context name";
            Description = "Specify a context name";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--env-file");
            Name        = "Specify an alternate environment file";
            Description = "Specify an alternate environment file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "Specify an alternate compose file";
            Description = "Specify an alternate compose file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--host", "-H");
            Name        = "Daemon socket to connect to";
            Description = "Daemon socket to connect to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-level");
            Name        = "Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)";
            Description = "Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-ansi");
            Name        = "Do not print ANSI control characters";
            Description = "Do not print ANSI control characters";
        },
        [ValueParameter]@{
            Keys        = @("--project-directory");
            Name        = "Specify an alternate working directory";
            Description = "Specify an alternate working directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--project-name", "-p");
            Name        = "Specify an alternate project name";
            Description = "Specify an alternate project name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--skip-hostname-check");
            Name        = "Don't check the daemon's hostname against the";
            Description = "Don't check the daemon's hostname against the";
        },
        [FlagParameter]@{
            Keys        = @("--tls");
            Name        = "Use TLS; implied by --tlsverify";
            Description = "Use TLS; implied by --tlsverify";
        },
        [ValueParameter]@{
            Keys        = @("--tlscacert");
            Name        = "Trust certs signed only by this CA";
            Description = "Trust certs signed only by this CA";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tlscert");
            Name        = "Path to TLS certificate file";
            Description = "Path to TLS certificate file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tlskey");
            Name        = "Path to TLS key file";
            Description = "Path to TLS key file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tlsverify");
            Name        = "Use TLS and verify the remote";
            Description = "Use TLS and verify the remote";
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Show more output";
            Description = "Show more output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version and exit";
            Description = "Print version and exit";
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Build or rebuild services";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--build-arg");
                    Name        = "Set build-time variables for services.";
                    Description = "Set build-time variables for services.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--compress");
                    Name        = "Compress the build context using gzip.";
                    Description = "Compress the build context using gzip.";
                },
                [FlagParameter]@{
                    Keys        = @("--force-rm");
                    Name        = "Always remove intermediate containers.";
                    Description = "Always remove intermediate containers.";
                },
                [ValueParameter]@{
                    Keys        = @("--memory", "-m");
                    Name        = "Set memory limit for the build container.";
                    Description = "Set memory limit for the build container.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-cache");
                    Name        = "Do not use cache when building the image.";
                    Description = "Do not use cache when building the image.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-rm");
                    Name        = "Do not remove intermediate containers after a successful build.";
                    Description = "Do not remove intermediate containers after a successful build.";
                },
                [FlagParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Build images in parallel.";
                    Description = "Build images in parallel.";
                },
                [ValueParameter]@{
                    Keys        = @("--progress");
                    Name        = "Set type of progress output (auto, plain, tty).";
                    Description = "Set type of progress output (auto, plain, tty).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pull");
                    Name        = "Always attempt to pull a newer version of the image.";
                    Description = "Always attempt to pull a newer version of the image.";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Don't print anything to STDOUT";
                    Description = "Don't print anything to STDOUT";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Validate and view the Compose file";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--hash");
                    Name        = "Print the service config hash, one per line.";
                    Description = "Print the service config hash, one per line.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-interpolate");
                    Name        = "Don't interpolate environment variables";
                    Description = "Don't interpolate environment variables";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Only validate the configuration, don't print";
                    Description = "Only validate the configuration, don't print";
                },
                [FlagParameter]@{
                    Keys        = @("--resolve-image-digests");
                    Name        = "Pin image tags to digests.";
                    Description = "Pin image tags to digests.";
                },
                [FlagParameter]@{
                    Keys        = @("--services");
                    Name        = "Print the service names, one per line.";
                    Description = "Print the service names, one per line.";
                },
                [FlagParameter]@{
                    Keys        = @("--volumes");
                    Name        = "Print the volume names, one per line.";
                    Description = "Print the volume names, one per line.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("create");
            Name        = "create";
            Description = "Create services";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--build");
                    Name        = "Build images before creating containers.";
                    Description = "Build images before creating containers.";
                },
                [FlagParameter]@{
                    Keys        = @("--force-recreate");
                    Name        = "Recreate containers even if their configuration and";
                    Description = "Recreate containers even if their configuration and";
                },
                [FlagParameter]@{
                    Keys        = @("--no-build");
                    Name        = "Don't build an image, even if it's missing.";
                    Description = "Don't build an image, even if it's missing.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-recreate");
                    Name        = "If containers already exist, don't recreate them.";
                    Description = "If containers already exist, don't recreate them.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("down");
            Name        = "down";
            Description = "Stop and remove containers, networks, images, and volumes";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--remove-orphans");
                    Name        = "Remove containers for services not defined in the";
                    Description = "Remove containers for services not defined in the";
                },
                [ValueParameter]@{
                    Keys        = @("--rmi");
                    Name        = "Remove images. Type must be one of:";
                    Description = "Remove images. Type must be one of:";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout", "-t");
                    Name        = "Specify a shutdown timeout in seconds.";
                    Description = "Specify a shutdown timeout in seconds.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--volumes", "-v");
                    Name        = "Remove named volumes declared in the ``volumes``";
                    Description = "Remove named volumes declared in the ``volumes``";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("events");
            Name        = "events";
            Description = "Receive real time events from containers";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Output events as a stream of json objects";
                    Description = "Output events as a stream of json objects";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("exec");
            Name        = "exec";
            Description = "Execute a command in a running container";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-T");
                    Name        = "Disable pseudo-tty allocation. By default ``docker-compose exec``";
                    Description = "Disable pseudo-tty allocation. By default ``docker-compose exec``";
                },
                [FlagParameter]@{
                    Keys        = @("--detach", "-d");
                    Name        = "Detached mode: Run command in the background.";
                    Description = "Detached mode: Run command in the background.";
                },
                [ValueParameter]@{
                    Keys        = @("--index");
                    Name        = "index of the container if there are multiple";
                    Description = "index of the container if there are multiple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--privileged");
                    Name        = "Give extended privileges to the process.";
                    Description = "Give extended privileges to the process.";
                },
                [ValueParameter]@{
                    Keys        = @("--user", "-u");
                    Name        = "Run the command as this user.";
                    Description = "Run the command as this user.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Get help on a command";
        },
        [CommandParameter]@{
            Keys        = @("images");
            Name        = "images";
            Description = "List images";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Only display IDs";
                    Description = "Only display IDs";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("kill");
            Name        = "kill";
            Description = "Kill containers";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-s");
                    Name        = "SIGNAL to send to the container.";
                    Description = "SIGNAL to send to the container.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logs");
            Name        = "logs";
            Description = "View output from containers";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--follow", "-f");
                    Name        = "Follow log output.";
                    Description = "Follow log output.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "Produce monochrome output.";
                    Description = "Produce monochrome output.";
                },
                [ValueParameter]@{
                    Keys        = @("--tail");
                    Name        = "Number of lines to show from the end of the logs";
                    Description = "Number of lines to show from the end of the logs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--timestamps", "-t");
                    Name        = "Show timestamps.";
                    Description = "Show timestamps.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pause");
            Name        = "pause";
            Description = "Pause services";
        },
        [CommandParameter]@{
            Keys        = @("port");
            Name        = "port";
            Description = "Print the public port for a port binding";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--index");
                    Name        = "index of the container if there are multiple";
                    Description = "index of the container if there are multiple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--protocol");
                    Name        = "tcp or udp [default: tcp]";
                    Description = "tcp or udp [default: tcp]";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ps");
            Name        = "ps";
            Description = "List containers";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Show all stopped containers (including those created by the run command)";
                    Description = "Show all stopped containers (including those created by the run command)";
                },
                [ValueParameter]@{
                    Keys        = @("--filter");
                    Name        = "Filter services by a property";
                    Description = "Filter services by a property";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Only display IDs";
                    Description = "Only display IDs";
                },
                [FlagParameter]@{
                    Keys        = @("--services");
                    Name        = "Display services";
                    Description = "Display services";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pull");
            Name        = "pull";
            Description = "Pull service images";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-pull-failures");
                    Name        = "Pull what it can and ignores images with pull failures.";
                    Description = "Pull what it can and ignores images with pull failures.";
                },
                [FlagParameter]@{
                    Keys        = @("--include-deps");
                    Name        = "Also pull services declared as dependencies";
                    Description = "Also pull services declared as dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--no-parallel");
                    Name        = "Disable parallel pulling.";
                    Description = "Disable parallel pulling.";
                },
                [FlagParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Deprecated, pull multiple images in parallel (enabled by default).";
                    Description = "Deprecated, pull multiple images in parallel (enabled by default).";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Pull without printing progress information";
                    Description = "Pull without printing progress information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("push");
            Name        = "push";
            Description = "Push service images";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-push-failures");
                    Name        = "Push what it can and ignores images with push failures.";
                    Description = "Push what it can and ignores images with push failures.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("restart");
            Name        = "restart";
            Description = "Restart services";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--timeout", "-t");
                    Name        = "Specify a shutdown timeout in seconds.";
                    Description = "Specify a shutdown timeout in seconds.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rm");
            Name        = "rm";
            Description = "Remove stopped containers";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Deprecated - no effect.";
                    Description = "Deprecated - no effect.";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Don't ask to confirm removal";
                    Description = "Don't ask to confirm removal";
                },
                [FlagParameter]@{
                    Keys        = @("--stop", "-s");
                    Name        = "Stop the containers, if required, before removing";
                    Description = "Stop the containers, if required, before removing";
                },
                [FlagParameter]@{
                    Keys        = @("-v");
                    Name        = "Remove any anonymous volumes attached to containers";
                    Description = "Remove any anonymous volumes attached to containers";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run a one-off command";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-T");
                    Name        = "Disable pseudo-tty allocation. By default ``docker-compose run``";
                    Description = "Disable pseudo-tty allocation. By default ``docker-compose run``";
                },
                [FlagParameter]@{
                    Keys        = @("--detach", "-d");
                    Name        = "Detached mode: Run container in the background, print";
                    Description = "Detached mode: Run container in the background, print";
                },
                [ValueParameter]@{
                    Keys        = @("-e");
                    Name        = "Set an environment variable (can be used multiple times)";
                    Description = "Set an environment variable (can be used multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--entrypoint");
                    Name        = "Override the entrypoint of the image.";
                    Description = "Override the entrypoint of the image.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label", "-l");
                    Name        = "Add or override a label (can be used multiple times)";
                    Description = "Add or override a label (can be used multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Assign a name to the container";
                    Description = "Assign a name to the container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Don't start linked services.";
                    Description = "Don't start linked services.";
                },
                [ValueParameter]@{
                    Keys        = @("--publish", "-p");
                    Name        = "Publish a container's port(s) to the host";
                    Description = "Publish a container's port(s) to the host";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--rm");
                    Name        = "Remove container after run. Ignored in detached mode.";
                    Description = "Remove container after run. Ignored in detached mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--service-ports");
                    Name        = "Run command with the service's ports enabled and mapped";
                    Description = "Run command with the service's ports enabled and mapped";
                },
                [FlagParameter]@{
                    Keys        = @("--use-aliases");
                    Name        = "Use the service's network aliases in the network(s) the";
                    Description = "Use the service's network aliases in the network(s) the";
                },
                [ValueParameter]@{
                    Keys        = @("--user", "-u");
                    Name        = "Run as specified username or uid";
                    Description = "Run as specified username or uid";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--volume", "-v");
                    Name        = "Bind mount a volume (default [])";
                    Description = "Bind mount a volume (default [])";
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
            Keys        = @("scale");
            Name        = "scale";
            Description = "Set number of containers for a service";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--timeout", "-t");
                    Name        = "Specify a shutdown timeout in seconds.";
                    Description = "Specify a shutdown timeout in seconds.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("start");
            Name        = "start";
            Description = "Start services";
        },
        [CommandParameter]@{
            Keys        = @("stop");
            Name        = "stop";
            Description = "Stop services";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--timeout", "-t");
                    Name        = "Specify a shutdown timeout in seconds.";
                    Description = "Specify a shutdown timeout in seconds.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("top");
            Name        = "top";
            Description = "Display the running processes";
        },
        [CommandParameter]@{
            Keys        = @("unpause");
            Name        = "unpause";
            Description = "Unpause services";
        },
        [CommandParameter]@{
            Keys        = @("up");
            Name        = "up";
            Description = "Create and start containers";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--abort-on-container-exit");
                    Name        = "Stops all containers if any container was";
                    Description = "Stops all containers if any container was";
                },
                [FlagParameter]@{
                    Keys        = @("--abort-on-container-exit.");
                    Name        = "";
                    Description = "";
                },
                [FlagParameter]@{
                    Keys        = @("--always-recreate-deps");
                    Name        = "Recreate dependent containers.";
                    Description = "Recreate dependent containers.";
                },
                [FlagParameter]@{
                    Keys        = @("--attach-dependencies");
                    Name        = "Attach to dependent containers";
                    Description = "Attach to dependent containers";
                },
                [FlagParameter]@{
                    Keys        = @("--build");
                    Name        = "Build images before starting containers.";
                    Description = "Build images before starting containers.";
                },
                [FlagParameter]@{
                    Keys        = @("--detach", "-d");
                    Name        = "Detached mode: Run containers in the background,";
                    Description = "Detached mode: Run containers in the background,";
                },
                [ValueParameter]@{
                    Keys        = @("--exit-code-from");
                    Name        = "Return the exit code of the selected service";
                    Description = "Return the exit code of the selected service";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force-recreate");
                    Name        = "Recreate containers even if their configuration";
                    Description = "Recreate containers even if their configuration";
                },
                [FlagParameter]@{
                    Keys        = @("--no-build");
                    Name        = "Don't build an image, even if it's missing.";
                    Description = "Don't build an image, even if it's missing.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-color");
                    Name        = "Produce monochrome output.";
                    Description = "Produce monochrome output.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Don't start linked services.";
                    Description = "Don't start linked services.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-recreate");
                    Name        = "If containers already exist, don't recreate";
                    Description = "If containers already exist, don't recreate";
                },
                [FlagParameter]@{
                    Keys        = @("--no-start");
                    Name        = "Don't start the services after creating them.";
                    Description = "Don't start the services after creating them.";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet-pull");
                    Name        = "Pull without printing progress information";
                    Description = "Pull without printing progress information";
                },
                [FlagParameter]@{
                    Keys        = @("--remove-orphans");
                    Name        = "Remove containers for services not defined";
                    Description = "Remove containers for services not defined";
                },
                [FlagParameter]@{
                    Keys        = @("--renew-anon-volumes", "-V");
                    Name        = "Recreate anonymous volumes instead of retrieving";
                    Description = "Recreate anonymous volumes instead of retrieving";
                },
                [ValueParameter]@{
                    Keys        = @("--scale");
                    Name        = "Scale SERVICE to NUM instances. Overrides the";
                    Description = "Scale SERVICE to NUM instances. Overrides the";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout", "-t");
                    Name        = "Use this timeout in seconds for container";
                    Description = "Use this timeout in seconds for container";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Show the Docker-Compose version information";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--short");
                    Name        = "Shows only Compose's version number.";
                    Description = "Shows only Compose's version number.";
                }
            )
        }
    )
}
