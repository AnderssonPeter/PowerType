# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.vagrantup.com/";
    Keys        = @("vagrant");
    Name        = "vagrant";
    Description = "tool for building and managing virtual machine environments";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--color");
            Name        = "Enable color output";
            Description = "Enable color output";
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Enable debug output";
            Description = "Enable debug output";
        },
        [FlagParameter]@{
            Keys        = @("--debug-timestamp");
            Name        = "Enable debug output with timestamps";
            Description = "Enable debug output with timestamps";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this help";
            Description = "Print this help";
        },
        [FlagParameter]@{
            Keys        = @("--machine-readable");
            Name        = "Enable machine readable output";
            Description = "Enable machine readable output";
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "Disable color output";
            Description = "Disable color output";
        },
        [FlagParameter]@{
            Keys        = @("--no-tty");
            Name        = "Enable non-interactive output";
            Description = "Enable non-interactive output";
        },
        [FlagParameter]@{
            Keys        = @("--timestamp");
            Name        = "Enable timestamps on log output";
            Description = "Enable timestamps on log output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display Vagrant version";
            Description = "Display Vagrant version";
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
        [CommandParameter]@{
            Keys        = @("autocomplete");
            Name        = "autocomplete";
            Description = "manages autocomplete installation on host";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "install autocomplete";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--bash", "-b");
                            Name        = "Install bash autocomplete";
                            Description = "Install bash autocomplete";
                        },
                        [FlagParameter]@{
                            Keys        = @("--zsh", "-z");
                            Name        = "Install zsh autocomplete";
                            Description = "Install zsh autocomplete";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("box");
            Name        = "box";
            Description = "manages boxes: installation, removal, etc.";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "add a box";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--box-version");
                            Name        = "Constrain version of the added box";
                            Description = "Constrain version of the added box";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cacert");
                            Name        = "CA certificate for SSL download";
                            Description = "CA certificate for SSL download";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--capath");
                            Name        = "CA certificate directory for SSL download";
                            Description = "CA certificate directory for SSL download";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert");
                            Name        = "A client SSL cert, if needed";
                            Description = "A client SSL cert, if needed";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--checksum");
                            Name        = "Checksum for the box";
                            Description = "Checksum for the box";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--checksum-type");
                            Name        = "Checksum type (md5, sha1, sha256)";
                            Description = "Checksum type (md5, sha1, sha256)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--clean", "-c");
                            Name        = "Clean any temporary download files";
                            Description = "Clean any temporary download files";
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Overwrite an existing box if it exists";
                            Description = "Overwrite an existing box if it exists";
                        },
                        [FlagParameter]@{
                            Keys        = @("--insecure");
                            Name        = "Do not validate SSL certificates";
                            Description = "Do not validate SSL certificates";
                        },
                        [FlagParameter]@{
                            Keys        = @("--location-trusted");
                            Name        = "Trust 'Location' header from HTTP redirects and use the same credentials for subsequent urls as for the initial one";
                            Description = "Trust 'Location' header from HTTP redirects and use the same credentials for subsequent urls as for the initial one";
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "Name of the box";
                            Description = "Name of the box";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--provider");
                            Name        = "Provider the box should satisfy";
                            Description = "Provider the box should satisfy";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list boxes";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--box-info", "-i");
                            Name        = "Displays additional information about the boxes";
                            Description = "Displays additional information about the boxes";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("outdated");
                    Name        = "outdated";
                    Description = "check if there is a new version for the box";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--cacert");
                            Name        = "CA certificate for SSL download";
                            Description = "CA certificate for SSL download";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--capath");
                            Name        = "CA certificate directory for SSL download";
                            Description = "CA certificate directory for SSL download";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert");
                            Name        = "A client SSL cert, if needed";
                            Description = "A client SSL cert, if needed";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force checks for latest box updates";
                            Description = "Force checks for latest box updates";
                        },
                        [FlagParameter]@{
                            Keys        = @("--global");
                            Name        = "Check all boxes installed";
                            Description = "Check all boxes installed";
                        },
                        [FlagParameter]@{
                            Keys        = @("--insecure");
                            Name        = "Do not validate SSL certificates";
                            Description = "Do not validate SSL certificates";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("prune");
                    Name        = "prune";
                    Description = "remove outdated boxes";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Only print the boxes that would be removed.";
                            Description = "Only print the boxes that would be removed.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Destroy without confirmation even when box is in use.";
                            Description = "Destroy without confirmation even when box is in use.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--keep-active-boxes", "-k");
                            Name        = "When combined with ``--force``, will keep boxes still actively in use.";
                            Description = "When combined with ``--force``, will keep boxes still actively in use.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "The specific box name to check for outdated versions.";
                            Description = "The specific box name to check for outdated versions.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--provider", "-p");
                            Name        = "The specific provider type for the boxes to destroy.";
                            Description = "The specific provider type for the boxes to destroy.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "remove a box";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Remove all available versions of the box";
                            Description = "Remove all available versions of the box";
                        },
                        [ValueParameter]@{
                            Keys        = @("--box-version");
                            Name        = "The specific version of the box to remove";
                            Description = "The specific version of the box to remove";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Remove without confirmation.";
                            Description = "Remove without confirmation.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--provider");
                            Name        = "The specific provider type for the box to remove";
                            Description = "The specific provider type for the box to remove";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cloud");
            Name        = "cloud";
            Description = "manages everything related to Vagrant Cloud";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("auth");
                    Name        = "auth";
                    Description = "For various authorization operations on Vagrant Cloud";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("login");
                            Name        = "login";
                            Description = "authenticate with Vagrant Cloud";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--check", "-c");
                                    Name        = "Checks if currently logged in";
                                    Description = "Checks if currently logged in";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description", "-d");
                                    Name        = "Set description for the Vagrant Cloud token";
                                    Description = "Set description for the Vagrant Cloud token";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token", "-t");
                                    Name        = "Set the Vagrant Cloud token";
                                    Description = "Set the Vagrant Cloud token";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("logout");
                            Name        = "logout";
                            Description = "Log out of Vagrant Cloud";
                        },
                        [CommandParameter]@{
                            Keys        = @("whoami");
                            Name        = "whoami";
                            Description = "Display currently logged in user";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("box");
                    Name        = "box";
                    Description = "For managing a Vagrant box entry on Vagrant Cloud";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Creates an empty box entry on Vagrant Cloud";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--description", "-d");
                                    Name        = "Full description of the box";
                                    Description = "Full description of the box";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-private");
                                    Name        = "Makes box public";
                                    Description = "Makes box public";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--private", "-p");
                                    Name        = "Makes box private";
                                    Description = "Makes box private";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Deletes box entry on Vagrant Cloud";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Do not prompt for deletion confirmation";
                                    Description = "Do not prompt for deletion confirmation";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-force");
                                    Name        = "Prompt for deletion confirmation";
                                    Description = "Prompt for deletion confirmation";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("show");
                            Name        = "show";
                            Description = "Displays a boxes attributes on Vagrant Cloud";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--auth");
                                    Name        = "Authenticate with Vagrant Cloud if required before searching";
                                    Description = "Authenticate with Vagrant Cloud if required before searching";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-auth");
                                    Name        = "Do not authenticate with Vagrant Cloud if required before searching";
                                    Description = "Do not authenticate with Vagrant Cloud if required before searching";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Updates a box entry on Vagrant Cloud";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--description", "-d");
                                    Name        = "Full description of the box";
                                    Description = "Full description of the box";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-private");
                                    Name        = "Makes box private";
                                    Description = "Makes box private";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--private", "-p");
                                    Name        = "Makes box private";
                                    Description = "Makes box private";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--short-description", "-s");
                                    Name        = "Short description of the box";
                                    Description = "Short description of the box";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("provider");
                    Name        = "provider";
                    Description = "For various provider actions with Vagrant Cloud";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Creates a provider entry on Vagrant Cloud";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--checksum", "-c");
                                    Name        = "Checksum of the box for this provider. --checksum-type option is required.";
                                    Description = "Checksum of the box for this provider. --checksum-type option is required.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--checksum-type", "-C");
                                    Name        = "Type of checksum used (md5, sha1, sha256, sha384, sha512). --checksum option is required.";
                                    Description = "Type of checksum used (md5, sha1, sha256, sha384, sha512). --checksum option is required.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Deletes a provider entry on Vagrant Cloud";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Force deletion of box version provider without confirmation";
                                    Description = "Force deletion of box version provider without confirmation";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-force");
                                    Name        = "Do not force deletion of box version provider without confirmation";
                                    Description = "Do not force deletion of box version provider without confirmation";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Updates a provider entry on Vagrant Cloud";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--checksum", "-c");
                                    Name        = "Checksum of the box for this provider. --checksum-type option is required.";
                                    Description = "Checksum of the box for this provider. --checksum-type option is required.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--checksum-type", "-C");
                                    Name        = "Type of checksum used (md5, sha1, sha256, sha384, sha512). --checksum option is required.";
                                    Description = "Type of checksum used (md5, sha1, sha256, sha384, sha512). --checksum option is required.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("upload");
                            Name        = "upload";
                            Description = "Uploads a box file to Vagrant Cloud for a specific provider";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--direct", "-D");
                                    Name        = "Upload asset directly to backend storage";
                                    Description = "Upload asset directly to backend storage";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-direct");
                                    Name        = "Do not upload asset directly to backend storage";
                                    Description = "Do not upload asset directly to backend storage";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("publish");
                    Name        = "publish";
                    Description = "Create and release a new Vagrant Box on Vagrant Cloud";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--box-version");
                            Name        = "Version of box to create";
                            Description = "Version of box to create";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--checksum", "-c");
                            Name        = "Checksum of the box for this provider. --checksum-type option is required.";
                            Description = "Checksum of the box for this provider. --checksum-type option is required.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--checksum-type", "-C");
                            Name        = "Type of checksum used (md5, sha1, sha256, sha384, sha512). --checksum option is required.";
                            Description = "Type of checksum used (md5, sha1, sha256, sha384, sha512). --checksum option is required.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "Full description of box";
                            Description = "Full description of box";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--direct-upload");
                            Name        = "Upload asset directly to backend storage";
                            Description = "Upload asset directly to backend storage";
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Disables confirmation to create or update box";
                            Description = "Disables confirmation to create or update box";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-direct-upload");
                            Name        = "Do not upload asset directly to backend storage";
                            Description = "Do not upload asset directly to backend storage";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-force");
                            Name        = "Enables confirmation to create or update box";
                            Description = "Enables confirmation to create or update box";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-private");
                            Name        = "Makes box public";
                            Description = "Makes box public";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-release");
                            Name        = "Does not elease box";
                            Description = "Does not elease box";
                        },
                        [FlagParameter]@{
                            Keys        = @("--private", "-p");
                            Name        = "Makes box private";
                            Description = "Makes box private";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release", "-r");
                            Name        = "Releases box";
                            Description = "Releases box";
                        },
                        [ValueParameter]@{
                            Keys        = @("--short-description", "-s");
                            Name        = "Short description of the box";
                            Description = "Short description of the box";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--url");
                            Name        = "Remote URL to download this provider (cannot be used with provider-file)";
                            Description = "Remote URL to download this provider (cannot be used with provider-file)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--version-description");
                            Name        = "Description of the version to create";
                            Description = "Description of the version to create";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("search");
                    Name        = "search";
                    Description = "Search Vagrant Cloud for available boxes";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--auth");
                            Name        = "Authenticate with Vagrant Cloud if required before searching";
                            Description = "Authenticate with Vagrant Cloud if required before searching";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json", "-j");
                            Name        = "Formats results in JSON";
                            Description = "Formats results in JSON";
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit", "-l");
                            Name        = "Max number of search results Default: 25";
                            Description = "Max number of search results Default: 25";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-auth");
                            Name        = "Do not authenticate with Vagrant Cloud if required before searching";
                            Description = "Do not authenticate with Vagrant Cloud if required before searching";
                        },
                        [ValueParameter]@{
                            Keys        = @("--order", "-o");
                            Name        = "Order to display results ('desc' or 'asc') Default: 'desc'";
                            Description = "Order to display results ('desc' or 'asc') Default: 'desc'";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--page");
                            Name        = "The page to display Default: 1";
                            Description = "The page to display Default: 1";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--provider", "-p");
                            Name        = "Filter search results to a single provider. Defaults to all.";
                            Description = "Filter search results to a single provider. Defaults to all.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--short", "-s");
                            Name        = "Shows a simple list of box names";
                            Description = "Shows a simple list of box names";
                        },
                        [ValueParameter]@{
                            Keys        = @("--sort-by");
                            Name        = "Field to sort results on (created, downloads, updated) Default: downloads";
                            Description = "Field to sort results on (created, downloads, updated) Default: downloads";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("version");
                    Name        = "version";
                    Description = "For managing a Vagrant box's versions";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Creates a version entry on Vagrant Cloud";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--description", "-d");
                                    Name        = "A description for this version";
                                    Description = "A description for this version";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Deletes a version entry on Vagrant Cloud";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Force deletion without confirmation";
                                    Description = "Force deletion without confirmation";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-force");
                                    Name        = "Do not force deletion without confirmation";
                                    Description = "Do not force deletion without confirmation";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("release");
                            Name        = "release";
                            Description = "Releases a version entry on Vagrant Cloud";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Release without confirmation";
                                    Description = "Release without confirmation";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-force");
                                    Name        = "Do not release without confirmation";
                                    Description = "Do not release without confirmation";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("revoke");
                            Name        = "revoke";
                            Description = "Revokes a version entry on Vagrant Cloud";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Force revocation without confirmation";
                                    Description = "Force revocation without confirmation";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-force");
                                    Name        = "Do not force revocation without confirmation";
                                    Description = "Do not force revocation without confirmation";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Updates a version entry on Vagrant Cloud";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--description", "-d");
                                    Name        = "A description for this version";
                                    Description = "A description for this version";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("destroy");
            Name        = "destroy";
            Description = "stops and deletes all traces of the vagrant machine";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Destroy without confirmation.";
                    Description = "Destroy without confirmation.";
                },
                [FlagParameter]@{
                    Keys        = @("--graceful", "-g");
                    Name        = "Gracefully poweroff of VM";
                    Description = "Gracefully poweroff of VM";
                },
                [FlagParameter]@{
                    Keys        = @("--no-parallel");
                    Name        = "Disable parallelism if provider supports it (automatically enables force)";
                    Description = "Disable parallelism if provider supports it (automatically enables force)";
                },
                [FlagParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Enable parallelism if provider supports it (automatically enables force)";
                    Description = "Enable parallelism if provider supports it (automatically enables force)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("global-status");
            Name        = "global-status";
            Description = "outputs status Vagrant environments for this user";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--prune");
                    Name        = "Prune invalid entries.";
                    Description = "Prune invalid entries.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("halt");
            Name        = "halt";
            Description = "stops the vagrant machine";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Force shut down (equivalent of pulling power)";
                    Description = "Force shut down (equivalent of pulling power)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "shows the help for a subcommand";
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "initializes a new Vagrant environment by creating a Vagrantfile";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--box-version");
                    Name        = "Version of the box to add";
                    Description = "Version of the box to add";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Overwrite existing Vagrantfile";
                    Description = "Overwrite existing Vagrantfile";
                },
                [FlagParameter]@{
                    Keys        = @("--minimal", "-m");
                    Name        = "Use minimal Vagrantfile template (no help comments). Ignored with --template";
                    Description = "Use minimal Vagrantfile template (no help comments). Ignored with --template";
                },
                [ValueParameter]@{
                    Keys        = @("--output");
                    Name        = "Output path for the box. '-' for stdout";
                    Description = "Output path for the box. '-' for stdout";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Path to custom Vagrantfile template";
                    Description = "Path to custom Vagrantfile template";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("package");
            Name        = "package";
            Description = "packages a running vagrant environment into a box";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--base");
                    Name        = "Name of a VM in VirtualBox to package as a base box (VirtualBox Only)";
                    Description = "Name of a VM in VirtualBox to package as a base box (VirtualBox Only)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--include");
                    Name        = "Comma separated additional files to package with the box";
                    Description = "Comma separated additional files to package with the box";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--info");
                    Name        = "Path to a custom info.json file containing additional box information";
                    Description = "Path to a custom info.json file containing additional box information";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output");
                    Name        = "Name of the file to output";
                    Description = "Name of the file to output";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--vagrantfile");
                    Name        = "Vagrantfile to package with the box";
                    Description = "Vagrantfile to package with the box";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("plugin");
            Name        = "plugin";
            Description = "manages plugins: install, uninstall, update, etc.";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("expunge");
                    Name        = "expunge";
                    Description = "expunge plugin";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Do not prompt for confirmation";
                            Description = "Do not prompt for confirmation";
                        },
                        [FlagParameter]@{
                            Keys        = @("--global-only");
                            Name        = "Only expunge global plugins";
                            Description = "Only expunge global plugins";
                        },
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "Include plugins from local project for expunge";
                            Description = "Include plugins from local project for expunge";
                        },
                        [FlagParameter]@{
                            Keys        = @("--local-only");
                            Name        = "Only expunge local project plugins";
                            Description = "Only expunge local project plugins";
                        },
                        [FlagParameter]@{
                            Keys        = @("--reinstall");
                            Name        = "Reinstall current plugins after expunge";
                            Description = "Reinstall current plugins after expunge";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "install plugin";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--entry-point");
                            Name        = "The name of the entry point file for loading the plugin.";
                            Description = "The name of the entry point file for loading the plugin.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "Install plugin for local project only";
                            Description = "Install plugin for local project only";
                        },
                        [FlagParameter]@{
                            Keys        = @("--plugin-clean-sources");
                            Name        = "Remove all plugin sources defined so far (including defaults)";
                            Description = "Remove all plugin sources defined so far (including defaults)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--plugin-source");
                            Name        = "Add a RubyGems repository source";
                            Description = "Add a RubyGems repository source";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--plugin-version");
                            Name        = "Install a specific version of the plugin";
                            Description = "Install a specific version of the plugin";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose");
                            Name        = "Enable verbose output for plugin installation";
                            Description = "Enable verbose output for plugin installation";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("license");
                    Name        = "license";
                    Description = "install license";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list plugins";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "Include local project plugins";
                            Description = "Include local project plugins";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("repair");
                    Name        = "repair";
                    Description = "repair plugins";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "Repair plugins in local project";
                            Description = "Repair plugins in local project";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("uninstall");
                    Name        = "uninstall";
                    Description = "uninstall plugin";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "Remove plugin from local project";
                            Description = "Remove plugin from local project";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "update plugin";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "Update plugin in local project";
                            Description = "Update plugin in local project";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("port");
            Name        = "port";
            Description = "displays information about guest port mappings";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--guest");
                    Name        = "Output the host port that maps to the given guest port";
                    Description = "Output the host port that maps to the given guest port";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("powershell");
            Name        = "powershell";
            Description = "connects to machine via powershell remoting";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--command", "-c");
                    Name        = "Execute a powershell command directly";
                    Description = "Execute a powershell command directly";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--elevated", "-e");
                    Name        = "Execute a powershell command with elevated permissions";
                    Description = "Execute a powershell command with elevated permissions";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("provision");
            Name        = "provision";
            Description = "provisions the vagrant machine";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--provision-with");
                    Name        = "Enable only certain provisioners, by type or by name.";
                    Description = "Enable only certain provisioners, by type or by name.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("push");
            Name        = "push";
            Description = "deploys code in this environment to a configured destination";
        },
        [CommandParameter]@{
            Keys        = @("rdp");
            Name        = "rdp";
            Description = "connects to machine via RDP";
        },
        [CommandParameter]@{
            Keys        = @("reload");
            Name        = "reload";
            Description = "restarts vagrant machine, loads new Vagrantfile configuration";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Force shut down (equivalent of pulling power)";
                    Description = "Force shut down (equivalent of pulling power)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-provision");
                    Name        = "Disable provisioning";
                    Description = "Disable provisioning";
                },
                [FlagParameter]@{
                    Keys        = @("--provision");
                    Name        = "Enable provisioning";
                    Description = "Enable provisioning";
                },
                [ValueParameter]@{
                    Keys        = @("--provision-with");
                    Name        = "Enable only certain provisioners, by type or by name.";
                    Description = "Enable only certain provisioners, by type or by name.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("resume");
            Name        = "resume";
            Description = "resume a suspended vagrant machine";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--no-provision");
                    Name        = "Disable provisioning";
                    Description = "Disable provisioning";
                },
                [FlagParameter]@{
                    Keys        = @("--provision");
                    Name        = "Enable provisioning";
                    Description = "Enable provisioning";
                },
                [ValueParameter]@{
                    Keys        = @("--provision-with");
                    Name        = "Enable only certain provisioners, by type or by name.";
                    Description = "Enable only certain provisioners, by type or by name.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("snapshot");
            Name        = "snapshot";
            Description = "manages snapshots: saving, restoring, etc.";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a snapshot taken previously with snapshot save";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List all snapshots taken for a machine";
                },
                [CommandParameter]@{
                    Keys        = @("pop");
                    Name        = "pop";
                    Description = "Restore state that was pushed onto the snapshot stack";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-delete");
                            Name        = "Don't delete the snapshot after the restore";
                            Description = "Don't delete the snapshot after the restore";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-provision");
                            Name        = "Disable provisioning";
                            Description = "Disable provisioning";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-start");
                            Name        = "Don't start the snapshot after the restore";
                            Description = "Don't start the snapshot after the restore";
                        },
                        [FlagParameter]@{
                            Keys        = @("--provision");
                            Name        = "Enable provisioning";
                            Description = "Enable provisioning";
                        },
                        [ValueParameter]@{
                            Keys        = @("--provision-with");
                            Name        = "Enable only certain provisioners, by type or by name.";
                            Description = "Enable only certain provisioners, by type or by name.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("push");
                    Name        = "push";
                    Description = "Take a snapshot of the current state of the machine and 'push' it onto the stack of states";
                },
                [CommandParameter]@{
                    Keys        = @("restore");
                    Name        = "restore";
                    Description = "Restore a snapshot taken previously with snapshot save";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-provision");
                            Name        = "Disable provisioning";
                            Description = "Disable provisioning";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-start");
                            Name        = "Don't start the snapshot after the restore";
                            Description = "Don't start the snapshot after the restore";
                        },
                        [FlagParameter]@{
                            Keys        = @("--provision");
                            Name        = "Enable provisioning";
                            Description = "Enable provisioning";
                        },
                        [ValueParameter]@{
                            Keys        = @("--provision-with");
                            Name        = "Enable only certain provisioners, by type or by name.";
                            Description = "Enable only certain provisioners, by type or by name.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("save");
                    Name        = "save";
                    Description = "Take a snapshot of the current state of the machine";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Replace snapshot without confirmation";
                            Description = "Replace snapshot without confirmation";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ssh");
            Name        = "ssh";
            Description = "connects to machine via SSH";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--command", "-c");
                    Name        = "Execute an SSH command directly";
                    Description = "Execute an SSH command directly";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--plain", "-p");
                    Name        = "Plain mode, leaves authentication up to user";
                    Description = "Plain mode, leaves authentication up to user";
                },
                [FlagParameter]@{
                    Keys        = @("--tty", "-t");
                    Name        = "Enables tty when executing an ssh command (defaults to true)";
                    Description = "Enables tty when executing an ssh command (defaults to true)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ssh-config");
            Name        = "ssh-config";
            Description = " outputs OpenSSH valid configuration to connect to the machine";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--host");
                    Name        = "Name the host for the config";
                    Description = "Name the host for the config";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("status");
            Name        = "status";
            Description = "outputs status of the vagrant machine";
        },
        [CommandParameter]@{
            Keys        = @("suspend");
            Name        = "suspend";
            Description = "suspends the machine";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-global", "-a");
                    Name        = "Suspend all running vms globally.";
                    Description = "Suspend all running vms globally.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("up");
            Name        = "up";
            Description = "starts and provisions the vagrant environment";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--destroy-on-error");
                    Name        = "Destroy machine if any fatal error happens";
                    Description = "Destroy machine if any fatal error happens";
                },
                [FlagParameter]@{
                    Keys        = @("--install-provider");
                    Name        = "If possible, install the provider if it isn't installed";
                    Description = "If possible, install the provider if it isn't installed";
                },
                [FlagParameter]@{
                    Keys        = @("--no-destroy-on-error");
                    Name        = "Do not destroy machine if any fatal error happens";
                    Description = "Do not destroy machine if any fatal error happens";
                },
                [FlagParameter]@{
                    Keys        = @("--no-install-provider");
                    Name        = "Do not install the provider if it isn't installed";
                    Description = "Do not install the provider if it isn't installed";
                },
                [FlagParameter]@{
                    Keys        = @("--no-parallel");
                    Name        = "Disable parallelism if provider supports it";
                    Description = "Disable parallelism if provider supports it";
                },
                [FlagParameter]@{
                    Keys        = @("--no-provision");
                    Name        = "Disable provisioning";
                    Description = "Disable provisioning";
                },
                [FlagParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Enable parallelism if provider supports it";
                    Description = "Enable parallelism if provider supports it";
                },
                [ValueParameter]@{
                    Keys        = @("--provider");
                    Name        = "Back the machine with a specific provider";
                    Description = "Back the machine with a specific provider";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--provision");
                    Name        = "Enable provisioning";
                    Description = "Enable provisioning";
                },
                [ValueParameter]@{
                    Keys        = @("--provision-with");
                    Name        = "Enable only certain provisioners, by type or by name.";
                    Description = "Enable only certain provisioners, by type or by name.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("upload");
            Name        = "upload";
            Description = "upload to machine via communicator";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--compress", "-c");
                    Name        = "Use gzip compression for upload";
                    Description = "Use gzip compression for upload";
                },
                [ValueParameter]@{
                    Keys        = @("--compression-type", "-C");
                    Name        = "Type of compression to use (tgz, zip)";
                    Description = "Type of compression to use (tgz, zip)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--temporary", "-t");
                    Name        = "Upload source to temporary directory";
                    Description = "Upload source to temporary directory";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("validate");
            Name        = "validate";
            Description = "Validates a Vagrantfile config";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-provider", "-p");
                    Name        = "Ignores provider config options";
                    Description = "Ignores provider config options";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "prints current and latest Vagrant version";
        },
        [CommandParameter]@{
            Keys        = @("winrm");
            Name        = "winrm";
            Description = "executes commands on a machine via WinRM";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--command", "-c");
                    Name        = "Execute a WinRM command directly";
                    Description = "Execute a WinRM command directly";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--elevated", "-e");
                    Name        = "Run with elevated credentials";
                    Description = "Run with elevated credentials";
                },
                [ValueParameter]@{
                    Keys        = @("--shell", "-s");
                    Name        = "Use specified shell (powershell, cmd)";
                    Description = "Use specified shell (powershell, cmd)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("winrm-config");
            Name        = "winrm-config";
            Description = "outputs WinRM configuration to connect to the machine";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--host");
                    Name        = "Name the host for the config";
                    Description = "Name the host for the config";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
