# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.manjaro.org/index.php/Pamac";
    Keys        = @("pamac");
    Name        = "pamac";
    Description = "package manager utility";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show help";
            Description = "show help";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show version";
            Description = "show version";
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Build packages from AUR";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--builddir");
                    Name        = "build directory";
                    Description = "build directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "only print what would be done";
                    Description = "only print what would be done";
                },
                [FlagParameter]@{
                    Keys        = @("--keep", "-k");
                    Name        = "keep built packages in cache after installation";
                    Description = "keep built packages in cache after installation";
                },
                [FlagParameter]@{
                    Keys        = @("--no-clone");
                    Name        = "do not clone build files from AUR, only use local files";
                    Description = "do not clone build files from AUR, only use local files";
                },
                [FlagParameter]@{
                    Keys        = @("--no-confirm");
                    Name        = "bypass any and all confirmation messages";
                    Description = "bypass any and all confirmation messages";
                },
                [FlagParameter]@{
                    Keys        = @("--no-keep");
                    Name        = "do not keep built packages in cache after installation";
                    Description = "do not keep built packages in cache after installation";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("checkupdates");
            Name        = "checkupdates";
            Description = "Safely check for updates";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--aur", "-a");
                    Name        = "also check updates in AUR";
                    Description = "also check updates in AUR";
                },
                [ValueParameter]@{
                    Keys        = @("--builddir");
                    Name        = "build directory (use with --devel)";
                    Description = "build directory (use with --devel)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--devel");
                    Name        = "also check development packages updates (use with --aur)";
                    Description = "also check development packages updates (use with --aur)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-aur");
                    Name        = "do not check updates in AUR";
                    Description = "do not check updates in AUR";
                },
                [FlagParameter]@{
                    Keys        = @("--no-devel");
                    Name        = "do not check development packages updates";
                    Description = "do not check development packages updates";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "only print one line per update";
                    Description = "only print one line per update";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "Clean packages cache or build files";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--build-files", "-b");
                    Name        = "remove all build files";
                    Description = "remove all build files";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "do not remove files, only find candidate packages";
                    Description = "do not remove files, only find candidate packages";
                },
                [ValueParameter]@{
                    Keys        = @("--keep", "-k");
                    Name        = "specify how many versions of each package are kept";
                    Description = "specify how many versions of each package are kept";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-confirm");
                    Name        = "bypass any and all confirmation messages";
                    Description = "bypass any and all confirmation messages";
                },
                [FlagParameter]@{
                    Keys        = @("--uninstalled", "-u");
                    Name        = "only target uninstalled packages";
                    Description = "only target uninstalled packages";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "also display all files names";
                    Description = "also display all files names";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clone");
            Name        = "clone";
            Description = "Clone or sync packages build files from AUR";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--builddir");
                    Name        = "build directory";
                    Description = "build directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "overwrite existing files";
                    Description = "overwrite existing files";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "do not print any output";
                    Description = "do not print any output";
                },
                [FlagParameter]@{
                    Keys        = @("--recurse", "-r");
                    Name        = "also clone needed dependencies";
                    Description = "also clone needed dependencies";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("info");
            Name        = "info";
            Description = "Display package details";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--aur", "-a");
                    Name        = "also search in AUR";
                    Description = "also search in AUR";
                },
                [FlagParameter]@{
                    Keys        = @("--no-aur");
                    Name        = "do not search in AUR";
                    Description = "do not search in AUR";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Install packages from repositories, path or url";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--as-deps");
                    Name        = "mark all packages installed as a dependency";
                    Description = "mark all packages installed as a dependency";
                },
                [FlagParameter]@{
                    Keys        = @("--as-explicit");
                    Name        = "mark all packages explicitly installed";
                    Description = "mark all packages explicitly installed";
                },
                [FlagParameter]@{
                    Keys        = @("--download-only", "-w");
                    Name        = "download all packages but do not install/upgrade";
                    Description = "download all packages but do not install/upgrade";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "only print what would be done but do not run the";
                    Description = "only print what would be done but do not run the";
                },
                [ValueParameter]@{
                    Keys        = @("--ignore");
                    Name        = "ignore a package upgrade, multiple packages can be";
                    Description = "ignore a package upgrade, multiple packages can be";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-confirm");
                    Name        = "bypass any and all confirmation messages";
                    Description = "bypass any and all confirmation messages";
                },
                [FlagParameter]@{
                    Keys        = @("--no-upgrade");
                    Name        = "do not check for updates";
                    Description = "do not check for updates";
                },
                [ValueParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "overwrite conflicting files, multiple patterns can be";
                    Description = "overwrite conflicting files, multiple patterns can be";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--upgrade");
                    Name        = "check for updates";
                    Description = "check for updates";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "List packages, groups, repositories or files";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--files", "-f");
                    Name        = "list files owned by the given packages";
                    Description = "list files owned by the given packages";
                },
                [FlagParameter]@{
                    Keys        = @("--foreign", "-m");
                    Name        = "list packages that were not found in the";
                    Description = "list packages that were not found in the";
                },
                [FlagParameter]@{
                    Keys        = @("--groups", "-g");
                    Name        = "list all packages that are members of the given";
                    Description = "list all packages that are members of the given";
                },
                [FlagParameter]@{
                    Keys        = @("--installed", "-i");
                    Name        = "list installed packages";
                    Description = "list installed packages";
                },
                [FlagParameter]@{
                    Keys        = @("--orphans", "-o");
                    Name        = "list packages that were installed as dependencies";
                    Description = "list packages that were installed as dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "only print names";
                    Description = "only print names";
                },
                [FlagParameter]@{
                    Keys        = @("--repos", "-r");
                    Name        = "list all packages available in the given repos";
                    Description = "list all packages available in the given repos";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("reinstall");
            Name        = "reinstall";
            Description = "Reinstall packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--as-deps");
                    Name        = "mark all packages installed as a dependency";
                    Description = "mark all packages installed as a dependency";
                },
                [FlagParameter]@{
                    Keys        = @("--as-explicit");
                    Name        = "mark all packages explicitly installed";
                    Description = "mark all packages explicitly installed";
                },
                [FlagParameter]@{
                    Keys        = @("--download-only", "-w");
                    Name        = "download all packages but do not install/upgrade";
                    Description = "download all packages but do not install/upgrade";
                },
                [FlagParameter]@{
                    Keys        = @("--no-confirm");
                    Name        = "bypass any and all confirmation messages";
                    Description = "bypass any and all confirmation messages";
                },
                [ValueParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "overwrite conflicting files, multiple patterns can be";
                    Description = "overwrite conflicting files, multiple patterns can be";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("remove");
            Name        = "remove";
            Description = "Remove packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "only print what would be done but do not run the transaction";
                    Description = "only print what would be done but do not run the transaction";
                },
                [FlagParameter]@{
                    Keys        = @("--no-confirm");
                    Name        = "bypass any and all confirmation messages";
                    Description = "bypass any and all confirmation messages";
                },
                [FlagParameter]@{
                    Keys        = @("--no-orphans");
                    Name        = "do not remove dependencies that are not required by other";
                    Description = "do not remove dependencies that are not required by other";
                },
                [FlagParameter]@{
                    Keys        = @("--no-save", "-n");
                    Name        = "ignore files backup";
                    Description = "ignore files backup";
                },
                [FlagParameter]@{
                    Keys        = @("--orphans", "-o");
                    Name        = "remove dependencies that are not required by other packages,";
                    Description = "remove dependencies that are not required by other packages,";
                },
                [FlagParameter]@{
                    Keys        = @("--unneeded", "-u");
                    Name        = "remove packages only if they are not required by any other";
                    Description = "remove packages only if they are not required by any other";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "Search for packages or files";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--aur", "-a");
                    Name        = "also search in AUR";
                    Description = "also search in AUR";
                },
                [FlagParameter]@{
                    Keys        = @("--files", "-f");
                    Name        = "search for packages which own the given filenames";
                    Description = "search for packages which own the given filenames";
                },
                [FlagParameter]@{
                    Keys        = @("--installed", "-i");
                    Name        = "only search for installed packages";
                    Description = "only search for installed packages";
                },
                [FlagParameter]@{
                    Keys        = @("--no-aur");
                    Name        = "do not search in AUR";
                    Description = "do not search in AUR";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "only print names";
                    Description = "only print names";
                },
                [FlagParameter]@{
                    Keys        = @("--repos", "-r");
                    Name        = "only search for packages in repositories";
                    Description = "only search for packages in repositories";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "Upgrade your system";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--aur", "-a");
                    Name        = "also upgrade packages installed from AUR";
                    Description = "also upgrade packages installed from AUR";
                },
                [ValueParameter]@{
                    Keys        = @("--builddir");
                    Name        = "build directory (use with --aur)";
                    Description = "build directory (use with --aur)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--devel");
                    Name        = "also upgrade development packages (use with --aur)";
                    Description = "also upgrade development packages (use with --aur)";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-downgrade");
                    Name        = "disable package downgrades";
                    Description = "disable package downgrades";
                },
                [FlagParameter]@{
                    Keys        = @("--download-only", "-w");
                    Name        = "download all packages but do not install/upgrade";
                    Description = "download all packages but do not install/upgrade";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-downgrade");
                    Name        = "enable package downgrades";
                    Description = "enable package downgrades";
                },
                [FlagParameter]@{
                    Keys        = @("--force-refresh");
                    Name        = "force the refresh of the databases";
                    Description = "force the refresh of the databases";
                },
                [ValueParameter]@{
                    Keys        = @("--ignore");
                    Name        = "ignore a package upgrade";
                    Description = "ignore a package upgrade";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-aur");
                    Name        = "do not upgrade packages installed from AUR";
                    Description = "do not upgrade packages installed from AUR";
                },
                [FlagParameter]@{
                    Keys        = @("--no-confirm");
                    Name        = "bypass any and all confirmation messages";
                    Description = "bypass any and all confirmation messages";
                },
                [FlagParameter]@{
                    Keys        = @("--no-devel");
                    Name        = "do not upgrade development packages";
                    Description = "do not upgrade development packages";
                },
                [ValueParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "overwrite conflicting files";
                    Description = "overwrite conflicting files";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
