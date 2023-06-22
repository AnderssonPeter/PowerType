# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://cli.github.com/";
    Keys        = @("gh");
    Name        = "gh";
    Description = "GitHub CLI";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Show help for command";
            Description = "Show help for command";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show gh version";
            Description = "Show gh version";
        },
        ,
        [CommandParameter]@{
            Keys        = @("actions");
            Name        = "actions";
            Description = "Learn about working with GitHub Actions";
        },
        [CommandParameter]@{
            Keys        = @("alias");
            Name        = "alias";
            Description = "Create command shortcuts";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete an alias";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List your aliases";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Create a shortcut for a gh command";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--shell", "-s");
                            Name        = "Declare an alias to be passed through a shell interpreter";
                            Description = "Declare an alias to be passed through a shell interpreter";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("api");
            Name        = "api";
            Description = "Make an authenticated GitHub API request";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cache");
                    Name        = "Cache the response, e.g. `"3600s`", `"60m`", `"1h`"";
                    Description = "Cache the response, e.g. `"3600s`", `"60m`", `"1h`"";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field", "-F");
                    Name        = "Add a typed parameter in ``key=value`` format";
                    Description = "Add a typed parameter in ``key=value`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--header", "-H");
                    Name        = "Add a HTTP request header in ``key:value`` format";
                    Description = "Add a HTTP request header in ``key:value`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hostname");
                    Name        = "The GitHub hostname for the request (default `"github.com`")";
                    Description = "The GitHub hostname for the request (default `"github.com`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--include", "-i");
                    Name        = "Include HTTP response headers in the output";
                    Description = "Include HTTP response headers in the output";
                },
                [ValueParameter]@{
                    Keys        = @("--input");
                    Name        = "The ``file`` to use as body for the HTTP request";
                    Description = "The ``file`` to use as body for the HTTP request";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--jq", "-q");
                    Name        = "Query to select values from the response using jq syntax";
                    Description = "Query to select values from the response using jq syntax";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--method", "-X");
                    Name        = "The HTTP method for the request";
                    Description = "The HTTP method for the request";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--paginate");
                    Name        = "Make additional HTTP requests to fetch all pages of results";
                    Description = "Make additional HTTP requests to fetch all pages of results";
                },
                [ValueParameter]@{
                    Keys        = @("--preview", "-p");
                    Name        = "Opt into GitHub API previews";
                    Description = "Opt into GitHub API previews";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--raw-field", "-f");
                    Name        = "Add a string parameter in ``key=value`` format";
                    Description = "Add a string parameter in ``key=value`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--silent");
                    Name        = "Do not print the response body";
                    Description = "Do not print the response body";
                },
                [ValueParameter]@{
                    Keys        = @("--template", "-t");
                    Name        = "Format the response using a Go template";
                    Description = "Format the response using a Go template";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("auth");
            Name        = "auth";
            Description = "Login, logout, and refresh your authentication";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("login");
                    Name        = "login";
                    Description = "Authenticate with a GitHub host";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--hostname", "-h");
                            Name        = "The hostname of the GitHub instance to authenticate with";
                            Description = "The hostname of the GitHub instance to authenticate with";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--scopes", "-s");
                            Name        = "Additional authentication scopes for gh to have";
                            Description = "Additional authentication scopes for gh to have";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open a browser to authenticate";
                            Description = "Open a browser to authenticate";
                        },
                        [FlagParameter]@{
                            Keys        = @("--with-token");
                            Name        = "Read token from standard input";
                            Description = "Read token from standard input";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("logout");
                    Name        = "logout";
                    Description = "Log out of a GitHub host";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--hostname", "-h");
                            Name        = "The hostname of the GitHub instance to log out of";
                            Description = "The hostname of the GitHub instance to log out of";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("refresh");
                    Name        = "refresh";
                    Description = "Refresh stored authentication credentials";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--hostname", "-h");
                            Name        = "The GitHub host to use for authentication";
                            Description = "The GitHub host to use for authentication";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--scopes", "-s");
                            Name        = "Additional authentication scopes for gh to have";
                            Description = "Additional authentication scopes for gh to have";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("setup-git");
                    Name        = "setup-git";
                    Description = "Configure git to use GitHub CLI as a credential helper";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--hostname", "-h");
                            Name        = "The hostname to configure git for";
                            Description = "The hostname to configure git for";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("status");
                    Name        = "status";
                    Description = "View authentication status";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--hostname", "-h");
                            Name        = "Check a specific hostname's auth status";
                            Description = "Check a specific hostname's auth status";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--show-token", "-t");
                            Name        = "Display the auth token";
                            Description = "Display the auth token";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("browse");
            Name        = "browse";
            Description = "Open the repository in the browser";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--branch", "-b");
                    Name        = "Select another branch by passing in the branch name";
                    Description = "Select another branch by passing in the branch name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--commit", "-c");
                    Name        = "Open the last commit";
                    Description = "Open the last commit";
                },
                [FlagParameter]@{
                    Keys        = @("--no-browser", "-n");
                    Name        = "Print destination URL instead of opening the browser";
                    Description = "Print destination URL instead of opening the browser";
                },
                [FlagParameter]@{
                    Keys        = @("--projects", "-p");
                    Name        = "Open repository projects";
                    Description = "Open repository projects";
                },
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    Description = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--settings", "-s");
                    Name        = "Open repository settings";
                    Description = "Open repository settings";
                },
                [FlagParameter]@{
                    Keys        = @("--wiki", "-w");
                    Name        = "Open repository wiki";
                    Description = "Open repository wiki";
                },
            )
        },
        [CommandParameter]@{
            Keys        = @("co");
            Name        = "co";
            Description = "pr checkout";
        },
        [CommandParameter]@{
            Keys        = @("codespace");
            Name        = "codespace";
            Description = "Connect to and manage your codespaces";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("code");
                    Name        = "code";
                    Description = "Open a codespace in Visual Studio Code";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--codespace", "-c");
                            Name        = "Name of the codespace";
                            Description = "Name of the codespace";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--insiders");
                            Name        = "Use the insiders version of Visual Studio Code";
                            Description = "Use the insiders version of Visual Studio Code";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("cp");
                    Name        = "cp";
                    Description = "Copy files between local and remote file systems";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--codespace", "-c");
                            Name        = "Name of the codespace";
                            Description = "Name of the codespace";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--expand", "-e");
                            Name        = "Expand remote file names on remote shell";
                            Description = "Expand remote file names on remote shell";
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-r");
                            Name        = "Recursively copy directories";
                            Description = "Recursively copy directories";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a codespace";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "repository branch";
                            Description = "repository branch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--idle-timeout");
                            Name        = "allowed inactivity before codespace is stopped, e.g. `"10m`", `"1h`"";
                            Description = "allowed inactivity before codespace is stopped, e.g. `"10m`", `"1h`"";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--machine", "-m");
                            Name        = "hardware specifications for the VM";
                            Description = "hardware specifications for the VM";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo", "-r");
                            Name        = "repository name with owner: user/repo";
                            Description = "repository name with owner: user/repo";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--status", "-s");
                            Name        = "show status of post-create command and dotfiles";
                            Description = "show status of post-create command and dotfiles";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a codespace";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Delete all codespaces";
                            Description = "Delete all codespaces";
                        },
                        [ValueParameter]@{
                            Keys        = @("--codespace", "-c");
                            Name        = "Name of the codespace";
                            Description = "Name of the codespace";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--days");
                            Name        = "Delete codespaces older than ``N`` days";
                            Description = "Delete codespaces older than ``N`` days";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Skip confirmation for codespaces that contain unsaved changes";
                            Description = "Skip confirmation for codespaces that contain unsaved changes";
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo", "-r");
                            Name        = "Delete codespaces for a ``repository``";
                            Description = "Delete codespaces for a ``repository``";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List your codespaces";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit", "-L");
                            Name        = "Maximum number of codespaces to list";
                            Description = "Maximum number of codespaces to list";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("logs");
                    Name        = "logs";
                    Description = "Access codespace logs";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--codespace", "-c");
                            Name        = "Name of the codespace";
                            Description = "Name of the codespace";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--follow", "-f");
                            Name        = "Tail and follow the logs";
                            Description = "Tail and follow the logs";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ports");
                    Name        = "ports";
                    Description = "List ports in a codespace";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--codespace", "-c");
                            Name        = "Name of the codespace";
                            Description = "Name of the codespace";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                        [CommandParameter]@{
                            Keys        = @("forward");
                            Name        = "forward";
                            Description = "Forward ports";
                        },
                        [CommandParameter]@{
                            Keys        = @("visibility");
                            Name        = "visibility";
                            Description = "Change the visibility of the forwarded port";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ssh");
                    Name        = "ssh";
                    Description = "SSH into a codespace";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--codespace", "-c");
                            Name        = "Name of the codespace";
                            Description = "Name of the codespace";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug", "-d");
                            Name        = "Log debug data to a file";
                            Description = "Log debug data to a file";
                        },
                        [ValueParameter]@{
                            Keys        = @("--debug-file");
                            Name        = "Path of the file log to";
                            Description = "Path of the file log to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--profile");
                            Name        = "Name of the SSH profile to use";
                            Description = "Name of the SSH profile to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--server-port");
                            Name        = "SSH server port number (0 => pick unused)";
                            Description = "SSH server port number (0 => pick unused)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("stop");
                    Name        = "stop";
                    Description = "Stop a running codespace";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--codespace", "-c");
                            Name        = "Name of the codespace";
                            Description = "Name of the codespace";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Generate shell completion scripts";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--shell", "-s");
                    Name        = "Shell type: {bash|zsh|fish|powershell}";
                    Description = "Shell type: {bash|zsh|fish|powershell}";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Manage configuration for gh";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Print the value of a given configuration key";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--host", "-h");
                            Name        = "Get per-host setting";
                            Description = "Get per-host setting";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Print a list of configuration keys and values";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--host", "-h");
                            Name        = "Get per-host configuration";
                            Description = "Get per-host configuration";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Update configuration with a value for the given key";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--host", "-h");
                            Name        = "Set per-host setting";
                            Description = "Set per-host setting";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("extension");
            Name        = "extension";
            Description = "Manage gh extensions";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new extension";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--precompiled");
                            Name        = "Create a precompiled extension. Possible values: go, other";
                            Description = "Create a precompiled extension. Possible values: go, other";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "Install a gh extension from a repository";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List installed extension commands";
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "Remove an installed extension";
                },
                [CommandParameter]@{
                    Keys        = @("upgrade");
                    Name        = "upgrade";
                    Description = "Upgrade installed extensions";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Upgrade all extensions";
                            Description = "Upgrade all extensions";
                        },
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Force upgrade extension";
                            Description = "Force upgrade extension";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("gist");
            Name        = "gist";
            Description = "Manage gists";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("clone");
                    Name        = "clone";
                    Description = "Clone a gist locally";
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new gist";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--desc", "-d");
                            Name        = "A description for this gist";
                            Description = "A description for this gist";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Provide a filename to be used when reading from standard input";
                            Description = "Provide a filename to be used when reading from standard input";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--public", "-p");
                            Name        = "List the gist publicly (default: secret)";
                            Description = "List the gist publicly (default: secret)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open the web browser with created gist";
                            Description = "Open the web browser with created gist";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a gist";
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "Edit one of your gists";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--add", "-a");
                            Name        = "Add a new file to the gist";
                            Description = "Add a new file to the gist";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Select a file to edit";
                            Description = "Select a file to edit";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List your gists";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--limit", "-L");
                            Name        = "Maximum number of gists to fetch";
                            Description = "Maximum number of gists to fetch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--public");
                            Name        = "Show only public gists";
                            Description = "Show only public gists";
                        },
                        [FlagParameter]@{
                            Keys        = @("--secret");
                            Name        = "Show only secret gists";
                            Description = "Show only secret gists";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View a gist";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Display a single file from the gist";
                            Description = "Display a single file from the gist";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--files");
                            Name        = "List file names from the gist";
                            Description = "List file names from the gist";
                        },
                        [FlagParameter]@{
                            Keys        = @("--raw", "-r");
                            Name        = "Print raw instead of rendered gist contents";
                            Description = "Print raw instead of rendered gist contents";
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open gist in the browser";
                            Description = "Open gist in the browser";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("gpg-key");
            Name        = "gpg-key";
            Description = "Manage GPG keys";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add a GPG key to your GitHub account";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Lists GPG keys in your GitHub account";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("issue");
            Name        = "issue";
            Description = "Manage issues";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    Description = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("close");
                    Name        = "close";
                    Description = "Close issue";
                },
                [CommandParameter]@{
                    Keys        = @("comment");
                    Name        = "comment";
                    Description = "Create a new issue comment";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "Supply a body. Will prompt for one otherwise.";
                            Description = "Supply a body. Will prompt for one otherwise.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body-file", "-F");
                            Name        = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            Description = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--editor", "-e");
                            Name        = "Add body using editor";
                            Description = "Add body using editor";
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Add body in browser";
                            Description = "Add body in browser";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new issue";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Assign people by their ``login``. Use `"@me`" to self-assign.";
                            Description = "Assign people by their ``login``. Use `"@me`" to self-assign.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "Supply a body. Will prompt for one otherwise.";
                            Description = "Supply a body. Will prompt for one otherwise.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body-file", "-F");
                            Name        = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            Description = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Add labels by ``name``";
                            Description = "Add labels by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "Add the issue to a milestone by ``name``";
                            Description = "Add the issue to a milestone by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Add the issue to projects by ``name``";
                            Description = "Add the issue to projects by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--recover");
                            Name        = "Recover input from a failed run of create";
                            Description = "Recover input from a failed run of create";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Supply a title. Will prompt for one otherwise.";
                            Description = "Supply a title. Will prompt for one otherwise.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open the browser to create an issue";
                            Description = "Open the browser to create an issue";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete issue";
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "Edit an issue";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--add-assignee");
                            Name        = "Add assigned users by their ``login``. Use `"@me`" to assign yourself.";
                            Description = "Add assigned users by their ``login``. Use `"@me`" to assign yourself.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--add-label");
                            Name        = "Add labels by ``name``";
                            Description = "Add labels by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--add-project");
                            Name        = "Add the issue to projects by ``name``";
                            Description = "Add the issue to projects by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "Set the new body.";
                            Description = "Set the new body.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body-file", "-F");
                            Name        = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            Description = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "Edit the milestone the issue belongs to by ``name``";
                            Description = "Edit the milestone the issue belongs to by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--remove-assignee");
                            Name        = "Remove assigned users by their ``login``. Use `"@me`" to unassign yourself.";
                            Description = "Remove assigned users by their ``login``. Use `"@me`" to unassign yourself.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--remove-label");
                            Name        = "Remove labels by ``name``";
                            Description = "Remove labels by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--remove-project");
                            Name        = "Remove the issue from projects by ``name``";
                            Description = "Remove the issue from projects by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Set the new title.";
                            Description = "Set the new title.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List and filter issues in this repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Filter by assignee";
                            Description = "Filter by assignee";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--author", "-A");
                            Name        = "Filter by author";
                            Description = "Filter by author";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Filter by labels";
                            Description = "Filter by labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit", "-L");
                            Name        = "Maximum number of issues to fetch";
                            Description = "Maximum number of issues to fetch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--mention");
                            Name        = "Filter by mention";
                            Description = "Filter by mention";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "Filter by milestone ``number`` or ``title``";
                            Description = "Filter by milestone ``number`` or ``title``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--search", "-S");
                            Name        = "Search issues with ``query``";
                            Description = "Search issues with ``query``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--state", "-s");
                            Name        = "Filter by state: {open|closed|all}";
                            Description = "Filter by state: {open|closed|all}";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open the browser to list the issue(s)";
                            Description = "Open the browser to list the issue(s)";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("reopen");
                    Name        = "reopen";
                    Description = "Reopen issue";
                },
                [CommandParameter]@{
                    Keys        = @("status");
                    Name        = "status";
                    Description = "Show status of relevant issues";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("transfer");
                    Name        = "transfer";
                    Description = "Transfer issue to another repository";
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View an issue";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--comments", "-c");
                            Name        = "View issue comments";
                            Description = "View issue comments";
                        },
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open an issue in the browser";
                            Description = "Open an issue in the browser";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pr");
            Name        = "pr";
            Description = "Manage pull requests";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    Description = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("checkout");
                    Name        = "checkout";
                    Description = "Check out a pull request in git";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "Local branch name to use (default: the name of the head branch)";
                            Description = "Local branch name to use (default: the name of the head branch)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--detach");
                            Name        = "Checkout PR with a detached HEAD";
                            Description = "Checkout PR with a detached HEAD";
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Reset the existing local branch to the latest state of the pull request";
                            Description = "Reset the existing local branch to the latest state of the pull request";
                        },
                        [FlagParameter]@{
                            Keys        = @("--recurse-submodules");
                            Name        = "Update all submodules after checkout";
                            Description = "Update all submodules after checkout";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("checks");
                    Name        = "checks";
                    Description = "Show CI status for a single pull request";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open the web browser to show details about checks";
                            Description = "Open the web browser to show details about checks";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("close");
                    Name        = "close";
                    Description = "Close a pull request";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--delete-branch", "-d");
                            Name        = "Delete the local and remote branch after close";
                            Description = "Delete the local and remote branch after close";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("comment");
                    Name        = "comment";
                    Description = "Create a new pr comment";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "Supply a body. Will prompt for one otherwise.";
                            Description = "Supply a body. Will prompt for one otherwise.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body-file", "-F");
                            Name        = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            Description = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--editor", "-e");
                            Name        = "Add body using editor";
                            Description = "Add body using editor";
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Add body in browser";
                            Description = "Add body in browser";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a pull request";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Assign people by their ``login``. Use `"@me`" to self-assign.";
                            Description = "Assign people by their ``login``. Use `"@me`" to self-assign.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--base", "-B");
                            Name        = "The ``branch`` into which you want your code merged";
                            Description = "The ``branch`` into which you want your code merged";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "Body for the pull request";
                            Description = "Body for the pull request";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body-file", "-F");
                            Name        = "Read body text from ``file``";
                            Description = "Read body text from ``file``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--draft", "-d");
                            Name        = "Mark pull request as a draft";
                            Description = "Mark pull request as a draft";
                        },
                        [FlagParameter]@{
                            Keys        = @("--fill", "-f");
                            Name        = "Do not prompt for title/body and just use commit info";
                            Description = "Do not prompt for title/body and just use commit info";
                        },
                        [ValueParameter]@{
                            Keys        = @("--head", "-H");
                            Name        = "The ``branch`` that contains commits for your pull request (default: current branch)";
                            Description = "The ``branch`` that contains commits for your pull request (default: current branch)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Add labels by ``name``";
                            Description = "Add labels by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "Add the pull request to a milestone by ``name``";
                            Description = "Add the pull request to a milestone by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-maintainer-edit");
                            Name        = "Disable maintainer's ability to modify pull request";
                            Description = "Disable maintainer's ability to modify pull request";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project", "-p");
                            Name        = "Add the pull request to projects by ``name``";
                            Description = "Add the pull request to projects by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--recover");
                            Name        = "Recover input from a failed run of create";
                            Description = "Recover input from a failed run of create";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--reviewer", "-r");
                            Name        = "Request reviews from people or teams by their ``handle``";
                            Description = "Request reviews from people or teams by their ``handle``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Title for the pull request";
                            Description = "Title for the pull request";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open the web browser to create a pull request";
                            Description = "Open the web browser to create a pull request";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("diff");
                    Name        = "diff";
                    Description = "View changes in a pull request";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--color");
                            Name        = "Use color in diff output: {always|never|auto}";
                            Description = "Use color in diff output: {always|never|auto}";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--patch");
                            Name        = "Display diff in patch format";
                            Description = "Display diff in patch format";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "Edit a pull request";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--add-assignee");
                            Name        = "Add assigned users by their ``login``. Use `"@me`" to assign yourself.";
                            Description = "Add assigned users by their ``login``. Use `"@me`" to assign yourself.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--add-label");
                            Name        = "Add labels by ``name``";
                            Description = "Add labels by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--add-project");
                            Name        = "Add the pull request to projects by ``name``";
                            Description = "Add the pull request to projects by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--add-reviewer");
                            Name        = "Add reviewers by their ``login``.";
                            Description = "Add reviewers by their ``login``.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--base", "-B");
                            Name        = "Change the base ``branch`` for this pull request";
                            Description = "Change the base ``branch`` for this pull request";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "Set the new body.";
                            Description = "Set the new body.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body-file", "-F");
                            Name        = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            Description = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "Edit the milestone the pull request belongs to by ``name``";
                            Description = "Edit the milestone the pull request belongs to by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--remove-assignee");
                            Name        = "Remove assigned users by their ``login``. Use `"@me`" to unassign yourself.";
                            Description = "Remove assigned users by their ``login``. Use `"@me`" to unassign yourself.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--remove-label");
                            Name        = "Remove labels by ``name``";
                            Description = "Remove labels by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--remove-project");
                            Name        = "Remove the pull request from projects by ``name``";
                            Description = "Remove the pull request from projects by ``name``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--remove-reviewer");
                            Name        = "Remove reviewers by their ``login``.";
                            Description = "Remove reviewers by their ``login``.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Set the new title.";
                            Description = "Set the new title.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List and filter pull requests in this repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Filter by assignee";
                            Description = "Filter by assignee";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--author", "-A");
                            Name        = "Filter by author";
                            Description = "Filter by author";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--base", "-B");
                            Name        = "Filter by base branch";
                            Description = "Filter by base branch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--draft", "-d");
                            Name        = "Filter by draft state";
                            Description = "Filter by draft state";
                        },
                        [ValueParameter]@{
                            Keys        = @("--head", "-H");
                            Name        = "Filter by head branch";
                            Description = "Filter by head branch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Filter by labels";
                            Description = "Filter by labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit", "-L");
                            Name        = "Maximum number of items to fetch";
                            Description = "Maximum number of items to fetch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--search", "-S");
                            Name        = "Search pull requests with ``query``";
                            Description = "Search pull requests with ``query``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--state", "-s");
                            Name        = "Filter by state: {open|closed|merged|all}";
                            Description = "Filter by state: {open|closed|merged|all}";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open the browser to list the pull requests";
                            Description = "Open the browser to list the pull requests";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("merge");
                    Name        = "merge";
                    Description = "Merge a pull request";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--admin");
                            Name        = "Use administrator privileges to merge a pull request that does not meet requirements";
                            Description = "Use administrator privileges to merge a pull request that does not meet requirements";
                        },
                        [FlagParameter]@{
                            Keys        = @("--auto");
                            Name        = "Automatically merge only after necessary requirements are met";
                            Description = "Automatically merge only after necessary requirements are met";
                        },
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "Body ``text`` for the merge commit";
                            Description = "Body ``text`` for the merge commit";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body-file", "-F");
                            Name        = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            Description = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--delete-branch", "-d");
                            Name        = "Delete the local and remote branch after merge";
                            Description = "Delete the local and remote branch after merge";
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-auto");
                            Name        = "Disable auto-merge for this pull request";
                            Description = "Disable auto-merge for this pull request";
                        },
                        [FlagParameter]@{
                            Keys        = @("--merge", "-m");
                            Name        = "Merge the commits with the base branch";
                            Description = "Merge the commits with the base branch";
                        },
                        [FlagParameter]@{
                            Keys        = @("--rebase", "-r");
                            Name        = "Rebase the commits onto the base branch";
                            Description = "Rebase the commits onto the base branch";
                        },
                        [FlagParameter]@{
                            Keys        = @("--squash", "-s");
                            Name        = "Squash the commits into one commit and merge it into the base branch";
                            Description = "Squash the commits into one commit and merge it into the base branch";
                        },
                        [ValueParameter]@{
                            Keys        = @("--subject", "-t");
                            Name        = "Subject ``text`` for the merge commit";
                            Description = "Subject ``text`` for the merge commit";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ready");
                    Name        = "ready";
                    Description = "Mark a pull request as ready for review";
                },
                [CommandParameter]@{
                    Keys        = @("reopen");
                    Name        = "reopen";
                    Description = "Reopen a pull request";
                },
                [CommandParameter]@{
                    Keys        = @("review");
                    Name        = "review";
                    Description = "Add a review to a pull request";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--approve", "-a");
                            Name        = "Approve pull request";
                            Description = "Approve pull request";
                        },
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "Specify the body of a review";
                            Description = "Specify the body of a review";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--body-file", "-F");
                            Name        = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            Description = "Read body text from ``file`` (use `"-`" to read from standard input)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--comment", "-c");
                            Name        = "Comment on a pull request";
                            Description = "Comment on a pull request";
                        },
                        [FlagParameter]@{
                            Keys        = @("--request-changes", "-r");
                            Name        = "Request changes on a pull request";
                            Description = "Request changes on a pull request";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("status");
                    Name        = "status";
                    Description = "Show status of relevant pull requests";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View a pull request";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--comments", "-c");
                            Name        = "View pull request comments";
                            Description = "View pull request comments";
                        },
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open a pull request in the browser";
                            Description = "Open a pull request in the browser";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("release");
            Name        = "release";
            Description = "Manage GitHub releases";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    Description = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new release";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--discussion-category");
                            Name        = "Start a discussion of the specified category";
                            Description = "Start a discussion of the specified category";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--draft", "-d");
                            Name        = "Save the release as a draft instead of publishing it";
                            Description = "Save the release as a draft instead of publishing it";
                        },
                        [FlagParameter]@{
                            Keys        = @("--generate-notes");
                            Name        = "Automatically generate title and notes for the release";
                            Description = "Automatically generate title and notes for the release";
                        },
                        [ValueParameter]@{
                            Keys        = @("--notes", "-n");
                            Name        = "Release notes";
                            Description = "Release notes";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--notes-file", "-F");
                            Name        = "Read release notes from ``file`` (use `"-`" to read from standard input)";
                            Description = "Read release notes from ``file`` (use `"-`" to read from standard input)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--prerelease", "-p");
                            Name        = "Mark the release as a prerelease";
                            Description = "Mark the release as a prerelease";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target");
                            Name        = "Target ``branch`` or full commit SHA (default: main branch)";
                            Description = "Target ``branch`` or full commit SHA (default: main branch)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Release title";
                            Description = "Release title";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a release";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip the confirmation prompt";
                            Description = "Skip the confirmation prompt";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("download");
                    Name        = "download";
                    Description = "Download release assets";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--archive", "-A");
                            Name        = "Download the source code archive in the specified ``format`` (zip or tar.gz)";
                            Description = "Download the source code archive in the specified ``format`` (zip or tar.gz)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dir", "-D");
                            Name        = "The directory to download files into";
                            Description = "The directory to download files into";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pattern", "-p");
                            Name        = "Download only assets that match a glob pattern";
                            Description = "Download only assets that match a glob pattern";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List releases in a repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--limit", "-L");
                            Name        = "Maximum number of items to fetch";
                            Description = "Maximum number of items to fetch";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("upload");
                    Name        = "upload";
                    Description = "Upload assets to a release";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--clobber");
                            Name        = "Overwrite existing assets of the same name";
                            Description = "Overwrite existing assets of the same name";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View information about a release";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open the release in the browser";
                            Description = "Open the release in the browser";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("repo");
            Name        = "repo";
            Description = "Create, clone, fork, and view repositories";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("archive");
                    Name        = "archive";
                    Description = "Archive a repository";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--confirm", "-y");
                            Name        = "Skip the confirmation prompt";
                            Description = "Skip the confirmation prompt";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("clone");
                    Name        = "clone";
                    Description = "Clone a repository locally";
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new repository";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--clone", "-c");
                            Name        = "Clone the new repository to the current directory";
                            Description = "Clone the new repository to the current directory";
                        },
                        [FlagParameter]@{
                            Keys        = @("--confirm", "-y");
                            Name        = "Skip the confirmation prompt";
                            Description = "Skip the confirmation prompt";
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "Description of the repository";
                            Description = "Description of the repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-issues");
                            Name        = "Disable issues in the new repository";
                            Description = "Disable issues in the new repository";
                        },
                        [FlagParameter]@{
                            Keys        = @("--disable-wiki");
                            Name        = "Disable wiki in the new repository";
                            Description = "Disable wiki in the new repository";
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-issues");
                            Name        = "Enable issues in the new repository";
                            Description = "Enable issues in the new repository";
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-wiki");
                            Name        = "Enable wiki in the new repository";
                            Description = "Enable wiki in the new repository";
                        },
                        [ValueParameter]@{
                            Keys        = @("--gitignore", "-g");
                            Name        = "Specify a gitignore template for the repository";
                            Description = "Specify a gitignore template for the repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--homepage", "-h");
                            Name        = "Repository home page ``URL``";
                            Description = "Repository home page ``URL``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--internal");
                            Name        = "Make the new repository internal";
                            Description = "Make the new repository internal";
                        },
                        [ValueParameter]@{
                            Keys        = @("--license", "-l");
                            Name        = "Specify an Open Source License for the repository";
                            Description = "Specify an Open Source License for the repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--private");
                            Name        = "Make the new repository private";
                            Description = "Make the new repository private";
                        },
                        [FlagParameter]@{
                            Keys        = @("--public");
                            Name        = "Make the new repository public";
                            Description = "Make the new repository public";
                        },
                        [FlagParameter]@{
                            Keys        = @("--push");
                            Name        = "Push local commits to the new repository";
                            Description = "Push local commits to the new repository";
                        },
                        [ValueParameter]@{
                            Keys        = @("--remote", "-r");
                            Name        = "Specify remote name for the new repository";
                            Description = "Specify remote name for the new repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--source", "-s");
                            Name        = "Specify path to local repository to use as source";
                            Description = "Specify path to local repository to use as source";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--team", "-t");
                            Name        = "The ``name`` of the organization team to be granted access";
                            Description = "The ``name`` of the organization team to be granted access";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-p");
                            Name        = "Make the new repository based on a template ``repository``";
                            Description = "Make the new repository based on a template ``repository``";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a repository";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--confirm");
                            Name        = "confirm deletion without prompting";
                            Description = "confirm deletion without prompting";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "Edit repository settings";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--add-topic");
                            Name        = "Add repository topic";
                            Description = "Add repository topic";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-forking");
                            Name        = "Allow forking of an organization repository";
                            Description = "Allow forking of an organization repository";
                        },
                        [ValueParameter]@{
                            Keys        = @("--default-branch");
                            Name        = "Set the default branch ``name`` for the repository";
                            Description = "Set the default branch ``name`` for the repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--delete-branch-on-merge");
                            Name        = "Delete head branch when pull requests are merged";
                            Description = "Delete head branch when pull requests are merged";
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "Description of the repository";
                            Description = "Description of the repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-auto-merge");
                            Name        = "Enable auto-merge functionality";
                            Description = "Enable auto-merge functionality";
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-issues");
                            Name        = "Enable issues in the repository";
                            Description = "Enable issues in the repository";
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-merge-commit");
                            Name        = "Enable merging pull requests via merge commit";
                            Description = "Enable merging pull requests via merge commit";
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-projects");
                            Name        = "Enable projects in the repository";
                            Description = "Enable projects in the repository";
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-rebase-merge");
                            Name        = "Enable merging pull requests via rebase";
                            Description = "Enable merging pull requests via rebase";
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-squash-merge");
                            Name        = "Enable merging pull requests via squashed commit";
                            Description = "Enable merging pull requests via squashed commit";
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-wiki");
                            Name        = "Enable wiki in the repository";
                            Description = "Enable wiki in the repository";
                        },
                        [ValueParameter]@{
                            Keys        = @("--homepage", "-h");
                            Name        = "Repository home page ``URL``";
                            Description = "Repository home page ``URL``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--remove-topic");
                            Name        = "Remove repository topic";
                            Description = "Remove repository topic";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--template");
                            Name        = "Make the repository available as a template repository";
                            Description = "Make the repository available as a template repository";
                        },
                        [ValueParameter]@{
                            Keys        = @("--visibility");
                            Name        = "Change the visibility of the repository to {public,private,internal}";
                            Description = "Change the visibility of the repository to {public,private,internal}";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("fork");
                    Name        = "fork";
                    Description = "Create a fork of a repository";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--clone");
                            Name        = "Clone the fork {true|false}";
                            Description = "Clone the fork {true|false}";
                        },
                        [ValueParameter]@{
                            Keys        = @("--org");
                            Name        = "Create the fork in an organization";
                            Description = "Create the fork in an organization";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--remote");
                            Name        = "Add remote for fork {true|false}";
                            Description = "Add remote for fork {true|false}";
                        },
                        [ValueParameter]@{
                            Keys        = @("--remote-name");
                            Name        = "Specify a name for a fork's new remote.";
                            Description = "Specify a name for a fork's new remote.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List repositories owned by user or organization";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--archived");
                            Name        = "Show only archived repositories";
                            Description = "Show only archived repositories";
                        },
                        [FlagParameter]@{
                            Keys        = @("--fork");
                            Name        = "Show only forks";
                            Description = "Show only forks";
                        },
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--language", "-l");
                            Name        = "Filter by primary coding language";
                            Description = "Filter by primary coding language";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit", "-L");
                            Name        = "Maximum number of repositories to list";
                            Description = "Maximum number of repositories to list";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-archived");
                            Name        = "Omit archived repositories";
                            Description = "Omit archived repositories";
                        },
                        [FlagParameter]@{
                            Keys        = @("--private");
                            Name        = "Show only private repositories";
                            Description = "Show only private repositories";
                        },
                        [FlagParameter]@{
                            Keys        = @("--public");
                            Name        = "Show only public repositories";
                            Description = "Show only public repositories";
                        },
                        [FlagParameter]@{
                            Keys        = @("--source");
                            Name        = "Show only non-forks";
                            Description = "Show only non-forks";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--topic");
                            Name        = "Filter by topic";
                            Description = "Filter by topic";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rename");
                    Name        = "rename";
                    Description = "Rename a repository";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--confirm", "-y");
                            Name        = "skip confirmation prompt";
                            Description = "skip confirmation prompt";
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo", "-R");
                            Name        = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                            Description = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                            # Source = $?? # todo: Fix or remove this!
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("sync");
                    Name        = "sync";
                    Description = "Sync a repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "Branch to sync (default: main branch)";
                            Description = "Branch to sync (default: main branch)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Hard reset the branch of the destination repository to match the source repository";
                            Description = "Hard reset the branch of the destination repository to match the source repository";
                        },
                        [ValueParameter]@{
                            Keys        = @("--source", "-s");
                            Name        = "Source repository";
                            Description = "Source repository";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View a repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "View a specific branch of the repository";
                            Description = "View a specific branch of the repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open a repository in the browser";
                            Description = "Open a repository in the browser";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "View details about workflow runs";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    Description = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("cancel");
                    Name        = "cancel";
                    Description = "Cancel a workflow run";
                },
                [CommandParameter]@{
                    Keys        = @("download");
                    Name        = "download";
                    Description = "Download artifacts generated by a workflow run";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--dir", "-D");
                            Name        = "The directory to download artifacts into";
                            Description = "The directory to download artifacts into";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name", "-n");
                            Name        = "Only download artifacts that match any of the given names";
                            Description = "Only download artifacts that match any of the given names";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List recent workflow runs";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit", "-L");
                            Name        = "Maximum number of runs to fetch";
                            Description = "Maximum number of runs to fetch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--workflow", "-w");
                            Name        = "Filter runs by workflow";
                            Description = "Filter runs by workflow";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rerun");
                    Name        = "rerun";
                    Description = "Rerun a failed run";
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View a summary of a workflow run";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--exit-status");
                            Name        = "Exit with non-zero status if run failed";
                            Description = "Exit with non-zero status if run failed";
                        },
                        [ValueParameter]@{
                            Keys        = @("--job", "-j");
                            Name        = "View a specific job ID from a run";
                            Description = "View a specific job ID from a run";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--jq", "-q");
                            Name        = "Filter JSON output using a jq ``expression``";
                            Description = "Filter JSON output using a jq ``expression``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--json");
                            Name        = "Output JSON with the specified ``fields``";
                            Description = "Output JSON with the specified ``fields``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--log");
                            Name        = "View full log for either a run or specific job";
                            Description = "View full log for either a run or specific job";
                        },
                        [FlagParameter]@{
                            Keys        = @("--log-failed");
                            Name        = "View the log for any failed steps in a run or specific job";
                            Description = "View the log for any failed steps in a run or specific job";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template", "-t");
                            Name        = "Format JSON output using a Go template";
                            Description = "Format JSON output using a Go template";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verbose", "-v");
                            Name        = "Show job steps";
                            Description = "Show job steps";
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open run in the browser";
                            Description = "Open run in the browser";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("watch");
                    Name        = "watch";
                    Description = "Watch a run until it completes, showing its progress";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--exit-status");
                            Name        = "Exit with non-zero status if run fails";
                            Description = "Exit with non-zero status if run fails";
                        },
                        [ValueParameter]@{
                            Keys        = @("--interval", "-i");
                            Name        = "Refresh interval in seconds";
                            Description = "Refresh interval in seconds";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("secret");
            Name        = "secret";
            Description = "Manage GitHub secrets";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    Description = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List secrets";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "List secrets for an environment";
                            Description = "List secrets for an environment";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--org", "-o");
                            Name        = "List secrets for an organization";
                            Description = "List secrets for an organization";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--user", "-u");
                            Name        = "List a secret for your user";
                            Description = "List a secret for your user";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "Remove secrets";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Remove a secret for an environment";
                            Description = "Remove a secret for an environment";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--org", "-o");
                            Name        = "Remove a secret for an organization";
                            Description = "Remove a secret for an organization";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--user", "-u");
                            Name        = "Remove a secret for your user";
                            Description = "Remove a secret for your user";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Create or update secrets";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--body", "-b");
                            Name        = "The value for the secret (reads from standard input if not specified)";
                            Description = "The value for the secret (reads from standard input if not specified)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Set deployment ``environment`` secret";
                            Description = "Set deployment ``environment`` secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env-file", "-f");
                            Name        = "Load secret names and values from a dotenv-formatted ``file``";
                            Description = "Load secret names and values from a dotenv-formatted ``file``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-store");
                            Name        = "Print the encrypted, base64-encoded value instead of storing it on Github";
                            Description = "Print the encrypted, base64-encoded value instead of storing it on Github";
                        },
                        [ValueParameter]@{
                            Keys        = @("--org", "-o");
                            Name        = "Set ``organization`` secret";
                            Description = "Set ``organization`` secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--repos", "-r");
                            Name        = "List of ``repositories`` that can access an organization or user secret";
                            Description = "List of ``repositories`` that can access an organization or user secret";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--user", "-u");
                            Name        = "Set a secret for your user";
                            Description = "Set a secret for your user";
                        },
                        [ValueParameter]@{
                            Keys        = @("--visibility", "-v");
                            Name        = "Set visibility for an organization secret: ``{all|private|selected}``";
                            Description = "Set visibility for an organization secret: ``{all|private|selected}``";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ssh-key");
            Name        = "ssh-key";
            Description = "Manage SSH keys";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add an SSH key to your GitHub account";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Title for the new key";
                            Description = "Title for the new key";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Lists SSH keys in your GitHub account";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("workflow");
            Name        = "workflow";
            Description = "View details about GitHub Actions workflows";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Show all workflows, including disabled workflows";
                    Description = "Show all workflows, including disabled workflows";
                },
                [ValueParameter]@{
                    Keys        = @("--limit", "-L");
                    Name        = "Maximum number of workflows to fetch";
                    Description = "Maximum number of workflows to fetch";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    Description = "Select another repository using the ``[HOST/]OWNER/REPO`` format";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("disable");
                    Name        = "disable";
                    Description = "Disable a workflow";
                },
                [CommandParameter]@{
                    Keys        = @("enable");
                    Name        = "enable";
                    Description = "Enable a workflow";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List workflows";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Show all workflows, including disabled workflows";
                            Description = "Show all workflows, including disabled workflows";
                        },
                        [ValueParameter]@{
                            Keys        = @("--limit", "-L");
                            Name        = "Maximum number of workflows to fetch";
                            Description = "Maximum number of workflows to fetch";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("run");
                    Name        = "run";
                    Description = "Run a workflow by creating a workflow_dispatch event";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--field", "-F");
                            Name        = "Add a string parameter in ``key=value`` format, respecting @ syntax";
                            Description = "Add a string parameter in ``key=value`` format, respecting @ syntax";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Read workflow inputs as JSON via STDIN";
                            Description = "Read workflow inputs as JSON via STDIN";
                        },
                        [ValueParameter]@{
                            Keys        = @("--raw-field", "-f");
                            Name        = "Add a string parameter in ``key=value`` format";
                            Description = "Add a string parameter in ``key=value`` format";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ref", "-r");
                            Name        = "The branch or tag name which contains the version of the workflow file you'd like to run";
                            Description = "The branch or tag name which contains the version of the workflow file you'd like to run";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View the summary of a workflow";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ref", "-r");
                            Name        = "The branch or tag name which contains the version of the workflow file you'd like to view";
                            Description = "The branch or tag name which contains the version of the workflow file you'd like to view";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open workflow in the browser";
                            Description = "Open workflow in the browser";
                        },
                        [FlagParameter]@{
                            Keys        = @("--yaml", "-y");
                            Name        = "View the workflow yaml file";
                            Description = "View the workflow yaml file";
                        }
                    )
                }
            )
        }
    )
}
