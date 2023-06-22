# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://docs.conda.io/en/latest/";
    Keys        = @("conda");
    Name        = "conda";
    Description = "conda is a tool for managing and deploying applications, environments and packages";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help message and exit.";
            Description = "Show this help message and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show the conda version number and exit.";
            Description = "Show the conda version number and exit.";
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "Remove unused packages and caches";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Remove index cache, lock files, unused cache packages, and tarballs.";
                    Description = "Remove index cache, lock files, unused cache packages, and tarballs.";
                },
                [ValueParameter]@{
                    Keys        = @("-c");
                    Name        = "Remove temporary files that could not be deleted earlier due to being in-use.";
                    Description = "Remove temporary files that could not be deleted earlier due to being in-use.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "Only display what would have been done.";
                    Description = "Only display what would have been done.";
                },
                [FlagParameter]@{
                    Keys        = @("--force-pkgs-dirs", "-f");
                    Name        = "Remove *all* writable package caches.";
                    Description = "Remove *all* writable package caches.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--index-cache", "-i");
                    Name        = "Remove index cache.";
                    Description = "Remove index cache.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json.";
                    Description = "Report all output as json.";
                },
                [FlagParameter]@{
                    Keys        = @("--packages", "-p");
                    Name        = "Remove unused packages from writable package caches.";
                    Description = "Remove unused packages from writable package caches.";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [FlagParameter]@{
                    Keys        = @("--tarballs", "-t");
                    Name        = "Remove cached package tarballs.";
                    Description = "Remove cached package tarballs.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Can be used multiple times.";
                    Description = "Can be used multiple times.";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Do not ask for confirmation.";
                    Description = "Do not ask for confirmation.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("compare");
            Name        = "compare";
            Description = "Compare packages between conda environments";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json.";
                    Description = "Report all output as json.";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Name of environment.";
                    Description = "Name of environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "Full path to environment location (i.e. prefix).";
                    Description = "Full path to environment location (i.e. prefix).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use once for info, twice for debug, three times for trace.";
                    Description = "Use once for info, twice for debug, three times for trace.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Modify configuration values in .condarc";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--add");
                    Name        = "Add one configuration value to the beginning of a list key.";
                    Description = "Add one configuration value to the beginning of a list key.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--append");
                    Name        = "Add one configuration value to the end of a list key.";
                    Description = "Add one configuration value to the end of a list key.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--describe");
                    Name        = "Describe given configuration parameters.";
                    Description = "Describe given configuration parameters.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--env");
                    Name        = "Write to the active conda environment .condarc file";
                    Description = "Write to the active conda environment .condarc file";
                },
                [ValueParameter]@{
                    Keys        = @("--file");
                    Name        = "Write to the given file.";
                    Description = "Write to the given file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--get");
                    Name        = "Get a configuration value.";
                    Description = "Get a configuration value.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json.";
                    Description = "Report all output as json.";
                },
                [ValueParameter]@{
                    Keys        = @("--prepend");
                    Name        = "Add one configuration value to the beginning of a list key.";
                    Description = "Add one configuration value to the beginning of a list key.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [ValueParameter]@{
                    Keys        = @("--remove");
                    Name        = "Remove a configuration value from a list key.";
                    Description = "Remove a configuration value from a list key.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--remove-key");
                    Name        = "Remove a configuration key (and all its values).";
                    Description = "Remove a configuration key (and all its values).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set");
                    Name        = "Set a boolean or string key";
                    Description = "Set a boolean or string key";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--show");
                    Name        = "Display configuration values as calculated and compiled.";
                    Description = "Display configuration values as calculated and compiled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-sources");
                    Name        = "Display all identified configuration sources.";
                    Description = "Display all identified configuration sources.";
                },
                [FlagParameter]@{
                    Keys        = @("--stdin");
                    Name        = "Apply configuration information given in yaml format piped through stdin.";
                    Description = "Apply configuration information given in yaml format piped through stdin.";
                },
                [FlagParameter]@{
                    Keys        = @("--system");
                    Name        = "Write to the system .condarc file at '/opt/miniconda3/.condarc'.";
                    Description = "Write to the system .condarc file at '/opt/miniconda3/.condarc'.";
                },
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "Validate all configuration sources.";
                    Description = "Validate all configuration sources.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use once for info, twice for debug, three times for trace.";
                    Description = "Use once for info, twice for debug, three times for trace.";
                },
                [FlagParameter]@{
                    Keys        = @("--write-default");
                    Name        = "Write the default configuration to a file.";
                    Description = "Write the default configuration to a file.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("create");
            Name        = "create";
            Description = "Create a new conda environment from a list of specified packages";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--channel", "-c");
                    Name        = "Additional channel to search for packages.";
                    Description = "Additional channel to search for packages.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--clone");
                    Name        = "Path to (or name of) existing local environment.";
                    Description = "Path to (or name of) existing local environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--copy");
                    Name        = "Install all packages using copies instead of hard- or soft-linking.";
                    Description = "Install all packages using copies instead of hard- or soft-linking.";
                },
                [FlagParameter]@{
                    Keys        = @("--dev");
                    Name        = "Use ``sys.executable -m conda`` in wrapper scripts instead of CONDA_EXE.";
                    Description = "Use ``sys.executable -m conda`` in wrapper scripts instead of CONDA_EXE.";
                },
                [FlagParameter]@{
                    Keys        = @("--download-only");
                    Name        = "Solve an environment and ensure package caches are populated";
                    Description = "Solve an environment and ensure package caches are populated";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "Only display what would have been done.";
                    Description = "Only display what would have been done.";
                },
                [ValueParameter]@{
                    Keys        = @("--file");
                    Name        = "Read package versions from the given file.";
                    Description = "Read package versions from the given file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure", "-k");
                    Name        = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                    Description = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json.";
                    Description = "Report all output as json.";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Name of environment.";
                    Description = "Name of environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-channel-priority");
                    Name        = "Package version takes precedence over channel priority.";
                    Description = "Package version takes precedence over channel priority.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-packages");
                    Name        = "Ignore create_default_packages in the .condarc file.";
                    Description = "Ignore create_default_packages in the .condarc file.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Do not install, update, remove, or change dependencies.";
                    Description = "Do not install, update, remove, or change dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pin");
                    Name        = "Ignore pinned file.";
                    Description = "Ignore pinned file.";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Offline mode.";
                    Description = "Offline mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--only-deps");
                    Name        = "Only install dependencies.";
                    Description = "Only install dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--override-channels");
                    Name        = "Do not search default or .condarc channels.";
                    Description = "Do not search default or .condarc channels.";
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "Full path to environment location (i.e. prefix).";
                    Description = "Full path to environment location (i.e. prefix).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [ValueParameter]@{
                    Keys        = @("--repodata-fn");
                    Name        = "Specify name of repodata on remote server.";
                    Description = "Specify name of repodata on remote server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-channel-urls");
                    Name        = "Show channel urls.";
                    Description = "Show channel urls.";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-channel-priority");
                    Name        = "Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.";
                    Description = "Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.";
                },
                [FlagParameter]@{
                    Keys        = @("--use-index-cache", "-C");
                    Name        = "Use cache of channel index files, even if it has expired.";
                    Description = "Use cache of channel index files, even if it has expired.";
                },
                [FlagParameter]@{
                    Keys        = @("--use-local");
                    Name        = "Use locally built packages. Identical to '-c local'.";
                    Description = "Use locally built packages. Identical to '-c local'.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Once for INFO, twice for DEBUG, three times for TRACE.";
                    Description = "Once for INFO, twice for DEBUG, three times for TRACE.";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Do not ask for confirmation.";
                    Description = "Do not ask for confirmation.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Displays a list of available conda commands and their help strings";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--help).");
                    Name        = "";
                    Description = "";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("info");
            Name        = "info";
            Description = "Display information about current conda install";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Show all information.";
                    Description = "Show all information.";
                },
                [FlagParameter]@{
                    Keys        = @("--base");
                    Name        = "Display base environment path.";
                    Description = "Display base environment path.";
                },
                [FlagParameter]@{
                    Keys        = @("--envs", "-e");
                    Name        = "List all known conda environments.";
                    Description = "List all known conda environments.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json. Suitable for using conda";
                    Description = "Report all output as json. Suitable for using conda";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [FlagParameter]@{
                    Keys        = @("--system", "-s");
                    Name        = "List environment variables.";
                    Description = "List environment variables.";
                },
                [FlagParameter]@{
                    Keys        = @("--unsafe-channels");
                    Name        = "Display list of channels with tokens exposed.";
                    Description = "Display list of channels with tokens exposed.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use once for info, twice for debug, three times for";
                    Description = "Use once for info, twice for debug, three times for";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Initialize conda for shell interaction";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Initialize all currently available shells.";
                    Description = "Initialize all currently available shells.";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "Only display what would have been done.";
                    Description = "Only display what would have been done.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json. Suitable for using conda";
                    Description = "Report all output as json. Suitable for using conda";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [FlagParameter]@{
                    Keys        = @("--reverse");
                    Name        = "Undo past effects of conda init.";
                    Description = "Undo past effects of conda init.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use once for info, twice for debug, three times for trace.";
                    Description = "Use once for info, twice for debug, three times for trace.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Installs a list of packages into a specified conda environment";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Update all installed packages in the environment.";
                    Description = "Update all installed packages in the environment.";
                },
                [ValueParameter]@{
                    Keys        = @("--channel", "-c");
                    Name        = "Additional channel to search for packages.";
                    Description = "Additional channel to search for packages.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--clobber");
                    Name        = "Allow clobbering of overlapping file paths within packages, and suppress related warnings.";
                    Description = "Allow clobbering of overlapping file paths within packages, and suppress related warnings.";
                },
                [FlagParameter]@{
                    Keys        = @("--copy");
                    Name        = "Install all packages using copies instead of hard- or soft-linking.";
                    Description = "Install all packages using copies instead of hard- or soft-linking.";
                },
                [FlagParameter]@{
                    Keys        = @("--dev");
                    Name        = "Use ``sys.executable -m conda`` in wrapper scripts instead of CONDA_EXE.";
                    Description = "Use ``sys.executable -m conda`` in wrapper scripts instead of CONDA_EXE.";
                },
                [FlagParameter]@{
                    Keys        = @("--download-only");
                    Name        = "Solve an environment and ensure package caches are populated";
                    Description = "Solve an environment and ensure package caches are populated";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "Only display what would have been done.";
                    Description = "Only display what would have been done.";
                },
                [ValueParameter]@{
                    Keys        = @("--file");
                    Name        = "Read package versions from the given file.";
                    Description = "Read package versions from the given file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force-reinstall");
                    Name        = "Ensure that any user-requested package for the current operation is uninstalled and reinstalled";
                    Description = "Ensure that any user-requested package for the current operation is uninstalled and reinstalled";
                },
                [FlagParameter]@{
                    Keys        = @("--freeze-installed");
                    Name        = "Do not update or change already-installed dependencies.";
                    Description = "Do not update or change already-installed dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure", "-k");
                    Name        = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                    Description = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json.";
                    Description = "Report all output as json.";
                },
                [FlagParameter]@{
                    Keys        = @("--mkdir", "-m");
                    Name        = "Create the environment directory if necessary.";
                    Description = "Create the environment directory if necessary.";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Name of environment.";
                    Description = "Name of environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-channel-priority");
                    Name        = "Package version takes precedence over channel priority.";
                    Description = "Package version takes precedence over channel priority.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Do not install, update, remove, or change dependencies.";
                    Description = "Do not install, update, remove, or change dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pin");
                    Name        = "Ignore pinned file.";
                    Description = "Ignore pinned file.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-update-deps");
                    Name        = "Do not update or change already-installed dependencies.";
                    Description = "Do not update or change already-installed dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Offline mode.";
                    Description = "Offline mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--only-deps");
                    Name        = "Only install dependencies.";
                    Description = "Only install dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--override-channels");
                    Name        = "Do not search default or .condarc channels.";
                    Description = "Do not search default or .condarc channels.";
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "Full path to environment location (i.e. prefix).";
                    Description = "Full path to environment location (i.e. prefix).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [ValueParameter]@{
                    Keys        = @("--repodata-fn");
                    Name        = "Specify name of repodata on remote server.";
                    Description = "Specify name of repodata on remote server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--revision");
                    Name        = "Revert to the specified REVISION.";
                    Description = "Revert to the specified REVISION.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--satisfied-skip-solve", "-S");
                    Name        = "Exit early and do not run the solver if the requested specs are satisfied.";
                    Description = "Exit early and do not run the solver if the requested specs are satisfied.";
                },
                [FlagParameter]@{
                    Keys        = @("--show-channel-urls");
                    Name        = "Show channel urls.";
                    Description = "Show channel urls.";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-channel-priority");
                    Name        = "Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.";
                    Description = "Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.";
                },
                [FlagParameter]@{
                    Keys        = @("--update-all");
                    Name        = "Update all installed packages in the environment.";
                    Description = "Update all installed packages in the environment.";
                },
                [FlagParameter]@{
                    Keys        = @("--update-deps");
                    Name        = "Update dependencies.";
                    Description = "Update dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--update-specs");
                    Name        = "Update based on provided specifications.";
                    Description = "Update based on provided specifications.";
                },
                [FlagParameter]@{
                    Keys        = @("--use-index-cache", "-C");
                    Name        = "Use cache of channel index files, even if it has expired.";
                    Description = "Use cache of channel index files, even if it has expired.";
                },
                [FlagParameter]@{
                    Keys        = @("--use-local");
                    Name        = "Use locally built packages. Identical to '-c local'.";
                    Description = "Use locally built packages. Identical to '-c local'.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Once for INFO, twice for DEBUG, three times for TRACE.";
                    Description = "Once for INFO, twice for DEBUG, three times for TRACE.";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Do not ask for confirmation.";
                    Description = "Do not ask for confirmation.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "List linked packages in a conda environment";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--canonical", "-c");
                    Name        = "Output canonical names of packages only.";
                    Description = "Output canonical names of packages only.";
                },
                [FlagParameter]@{
                    Keys        = @("--explicit");
                    Name        = "List explicitly all installed conda packaged with URL";
                    Description = "List explicitly all installed conda packaged with URL";
                },
                [FlagParameter]@{
                    Keys        = @("--export", "-e");
                    Name        = "Output requirement string only";
                    Description = "Output requirement string only";
                },
                [FlagParameter]@{
                    Keys        = @("--full-name", "-f");
                    Name        = "Only search for full names.";
                    Description = "Only search for full names.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json.";
                    Description = "Report all output as json.";
                },
                [FlagParameter]@{
                    Keys        = @("--md5");
                    Name        = "Add MD5 hashsum when using --explicit";
                    Description = "Add MD5 hashsum when using --explicit";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Name of environment.";
                    Description = "Name of environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-pip");
                    Name        = "Do not include pip-only installed packages.";
                    Description = "Do not include pip-only installed packages.";
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "Full path to environment location (i.e. prefix).";
                    Description = "Full path to environment location (i.e. prefix).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [FlagParameter]@{
                    Keys        = @("--revisions", "-r");
                    Name        = "List the revision history and exit.";
                    Description = "List the revision history and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--show-channel-urls");
                    Name        = "Show channel urls.";
                    Description = "Show channel urls.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use once for info, twice for debug, three times for trace.";
                    Description = "Use once for info, twice for debug, three times for trace.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("package");
            Name        = "package";
            Description = "Low-level conda package utility";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Name of environment.";
                    Description = "Name of environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pkg-build");
                    Name        = "Package build number of the created package.";
                    Description = "Package build number of the created package.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pkg-name");
                    Name        = "Package name of the created package.";
                    Description = "Package name of the created package.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pkg-version");
                    Name        = "Package version of the created package.";
                    Description = "Package version of the created package.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "Full path to environment location (i.e. prefix).";
                    Description = "Full path to environment location (i.e. prefix).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--reset", "-r");
                    Name        = "Remove all untracked files and exit.";
                    Description = "Remove all untracked files and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--untracked", "-u");
                    Name        = "Display all untracked files and exit.";
                    Description = "Display all untracked files and exit.";
                },
                [ValueParameter]@{
                    Keys        = @("--which", "-w");
                    Name        = "Given some PATH print which conda package the file came from.";
                    Description = "Given some PATH print which conda package the file came from.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("remove");
            Name        = "remove";
            Description = "Remove a list of packages from a specified conda environment";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Remove all packages, i.e., the entire environment.";
                    Description = "Remove all packages, i.e., the entire environment.";
                },
                [ValueParameter]@{
                    Keys        = @("--channel", "-c");
                    Name        = "Additional channel to search for packages.";
                    Description = "Additional channel to search for packages.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dev");
                    Name        = "Use ``sys.executable -m conda`` in wrapper scripts instead of CONDA_EXE.";
                    Description = "Use ``sys.executable -m conda`` in wrapper scripts instead of CONDA_EXE.";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "Only display what would have been done.";
                    Description = "Only display what would have been done.";
                },
                [FlagParameter]@{
                    Keys        = @("--features");
                    Name        = "Remove features (instead of packages).";
                    Description = "Remove features (instead of packages).";
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Forces removal of a package without removing packages that depend on it.";
                    Description = "Forces removal of a package without removing packages that depend on it.";
                },
                [FlagParameter]@{
                    Keys        = @("--force-remove");
                    Name        = "Forces removal of a package without removing packages that depend on it.";
                    Description = "Forces removal of a package without removing packages that depend on it.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure", "-k");
                    Name        = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                    Description = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json.";
                    Description = "Report all output as json.";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Name of environment.";
                    Description = "Name of environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-pin");
                    Name        = "Ignore pinned file.";
                    Description = "Ignore pinned file.";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Offline mode. Don't connect to the Internet.";
                    Description = "Offline mode. Don't connect to the Internet.";
                },
                [FlagParameter]@{
                    Keys        = @("--override-channels");
                    Name        = "Do not search default or .condarc channels.";
                    Description = "Do not search default or .condarc channels.";
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "Full path to environment location (i.e. prefix).";
                    Description = "Full path to environment location (i.e. prefix).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [ValueParameter]@{
                    Keys        = @("--repodata-fn");
                    Name        = "Specify name of repodata on remote server.";
                    Description = "Specify name of repodata on remote server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--use-index-cache", "-C");
                    Name        = "Use cache of channel index files, even if it has expired.";
                    Description = "Use cache of channel index files, even if it has expired.";
                },
                [FlagParameter]@{
                    Keys        = @("--use-local");
                    Name        = "Use locally built packages.";
                    Description = "Use locally built packages.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Once for INFO, twice for DEBUG, three times for TRACE.";
                    Description = "Once for INFO, twice for DEBUG, three times for TRACE.";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Do not ask for confirmation.";
                    Description = "Do not ask for confirmation.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run an executable in a conda environment";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cwd");
                    Name        = "Current working directory for command to run in.";
                    Description = "Current working directory for command to run in.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug-wrapper-scripts");
                    Name        = "When this is set, where implemented, the shell wrapper scriptswill echo to stderr a lot of debugging information.";
                    Description = "When this is set, where implemented, the shell wrapper scriptswill echo to stderr a lot of debugging information.";
                },
                [FlagParameter]@{
                    Keys        = @("--dev");
                    Name        = "Sets ``CONDA_EXE`` to ``python -m conda``.";
                    Description = "Sets ``CONDA_EXE`` to ``python -m conda``.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--live-stream");
                    Name        = "Display the output for the subprocess stdout and stderr on real time.";
                    Description = "Display the output for the subprocess stdout and stderr on real time.";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Name of environment.";
                    Description = "Name of environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-capture-output");
                    Name        = "Don't capture stdout/stderr";
                    Description = "Don't capture stdout/stderr";
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "Full path to environment location (i.e. prefix).";
                    Description = "Full path to environment location (i.e. prefix).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use once for info, twice for debug, three times for trace.";
                    Description = "Use once for info, twice for debug, three times for trace.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "Search for packages and display associated information";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--envs");
                    Name        = "Search all of the current user's environments.";
                    Description = "Search all of the current user's environments.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--info", "-i");
                    Name        = "Provide detailed information about each package.";
                    Description = "Provide detailed information about each package.";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure", "-k");
                    Name        = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                    Description = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json.";
                    Description = "Report all output as json.";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Offline mode.";
                    Description = "Offline mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--override-channels");
                    Name        = "Do not search default or .condarc channels.";
                    Description = "Do not search default or .condarc channels.";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [ValueParameter]@{
                    Keys        = @("--repodata-fn");
                    Name        = "Specify name of repodata on remote server.";
                    Description = "Specify name of repodata on remote server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--use-index-cache", "-C");
                    Name        = "Use cache of channel index files, even if it has expired.";
                    Description = "Use cache of channel index files, even if it has expired.";
                },
                [FlagParameter]@{
                    Keys        = @("--use-local");
                    Name        = "Use locally built packages.";
                    Description = "Use locally built packages.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use once for info, twice for debug, three times for trace.";
                    Description = "Use once for info, twice for debug, three times for trace.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "Updates conda packages to the latest compatible version";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Update all installed packages in the environment.";
                    Description = "Update all installed packages in the environment.";
                },
                [FlagParameter]@{
                    Keys        = @("--clobber");
                    Name        = "Allow clobbering of overlapping file paths within packages, and suppress related warnings.";
                    Description = "Allow clobbering of overlapping file paths within packages, and suppress related warnings.";
                },
                [FlagParameter]@{
                    Keys        = @("--copy");
                    Name        = "Install all packages using copies instead of hard- or soft-linking.";
                    Description = "Install all packages using copies instead of hard- or soft-linking.";
                },
                [FlagParameter]@{
                    Keys        = @("--download-only");
                    Name        = "Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix.";
                    Description = "Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix.";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "Only display what would have been done.";
                    Description = "Only display what would have been done.";
                },
                [ValueParameter]@{
                    Keys        = @("--file");
                    Name        = "Read package versions from the given file.";
                    Description = "Read package versions from the given file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force-reinstall");
                    Name        = "Ensure that any user-requested package for the current operation is uninstalled and reinstalled, even if that package already exists in the environment.";
                    Description = "Ensure that any user-requested package for the current operation is uninstalled and reinstalled, even if that package already exists in the environment.";
                },
                [FlagParameter]@{
                    Keys        = @("--freeze-installed");
                    Name        = "Do not update or change already-installed dependencies.";
                    Description = "Do not update or change already-installed dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Show this help message and exit.";
                    Description = "Show this help message and exit.";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure", "-k");
                    Name        = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                    Description = "Allow conda to perform `"insecure`" SSL connections and transfers.";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Report all output as json. Suitable for using conda programmatically.";
                    Description = "Report all output as json. Suitable for using conda programmatically.";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Name of environment.";
                    Description = "Name of environment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-channel-priority");
                    Name        = "Package version takes precedence over channel priority.";
                    Description = "Package version takes precedence over channel priority.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Do not install, update, remove, or change dependencies.";
                    Description = "Do not install, update, remove, or change dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pin");
                    Name        = "Ignore pinned file.";
                    Description = "Ignore pinned file.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-update-deps");
                    Name        = "Do not update or change already-installed dependencies.";
                    Description = "Do not update or change already-installed dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Offline mode.";
                    Description = "Offline mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--only-deps");
                    Name        = "Only install dependencies.";
                    Description = "Only install dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--override-channels");
                    Name        = "Do not search default or .condarc channels.";
                    Description = "Do not search default or .condarc channels.";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not display progress bar.";
                    Description = "Do not display progress bar.";
                },
                [ValueParameter]@{
                    Keys        = @("--repodata-fn");
                    Name        = "Specify name of repodata on remote server.";
                    Description = "Specify name of repodata on remote server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--satisfied-skip-solve", "-S");
                    Name        = "Exit early and do not run the solver if the requested specs are satisfied.";
                    Description = "Exit early and do not run the solver if the requested specs are satisfied.";
                },
                [FlagParameter]@{
                    Keys        = @("--show-channel-urls");
                    Name        = "Show channel urls.";
                    Description = "Show channel urls.";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-channel-priority");
                    Name        = "Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.";
                    Description = "Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.";
                },
                [FlagParameter]@{
                    Keys        = @("--update-all");
                    Name        = "Update all installed packages in the environment.";
                    Description = "Update all installed packages in the environment.";
                },
                [FlagParameter]@{
                    Keys        = @("--update-deps");
                    Name        = "Update dependencies.";
                    Description = "Update dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--update-specs");
                    Name        = "Update based on provided specifications.";
                    Description = "Update based on provided specifications.";
                },
                [FlagParameter]@{
                    Keys        = @("--use-index-cache", "-C");
                    Name        = "Use cache of channel index files, even if it has expired.";
                    Description = "Use cache of channel index files, even if it has expired.";
                },
                [FlagParameter]@{
                    Keys        = @("--use-local");
                    Name        = "Use locally built packages.";
                    Description = "Use locally built packages.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Once for INFO, twice for DEBUG, three times for TRACE.";
                    Description = "Once for INFO, twice for DEBUG, three times for TRACE.";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Do not ask for confirmation.";
                    Description = "Do not ask for confirmation.";
                }
            )
        }
    )
}
