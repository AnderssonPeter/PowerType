# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://glab.readthedocs.io/en/latest/";
    Keys        = @("glab");
    Name        = "glab";
    Description = "A GitLab CLI Tool";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Show help for command";
            Description = "Show help for command";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "show glab version information";
            Description = "show glab version information";
        },
        ,
        [CommandParameter]@{
            Keys        = @("alias");
            Name        = "alias";
            Description = "Create, list and delete aliases";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete an alias.";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List the available aliases.";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Set an alias.";
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
            Description = "Make an authenticated request to GitLab API";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--field", "-F");
                    Name        = "Add a parameter of inferred type";
                    Description = "Add a parameter of inferred type";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--header", "-H");
                    Name        = "Add an additional HTTP request header";
                    Description = "Add an additional HTTP request header";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hostname");
                    Name        = "The GitLab hostname for the request (default is `"gitlab.com`" or authenticated host in current git directory)";
                    Description = "The GitLab hostname for the request (default is `"gitlab.com`" or authenticated host in current git directory)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--include", "-i");
                    Name        = "Include HTTP response headers in the output";
                    Description = "Include HTTP response headers in the output";
                },
                [ValueParameter]@{
                    Keys        = @("--input");
                    Name        = "The file to use as body for the HTTP request";
                    Description = "The file to use as body for the HTTP request";
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
                    Keys        = @("--raw-field", "-f");
                    Name        = "Add a string parameter";
                    Description = "Add a string parameter";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--silent");
                    Name        = "Do not print the response body";
                    Description = "Do not print the response body";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("auth");
            Name        = "auth";
            Description = "Manage glab's authentication state";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("login");
                    Name        = "login";
                    Description = "Authenticate with a GitLab instance";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--hostname", "-h");
                            Name        = "The hostname of the GitLab instance to authenticate with";
                            Description = "The hostname of the GitLab instance to authenticate with";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stdin");
                            Name        = "Read token from standard input";
                            Description = "Read token from standard input";
                        },
                        [ValueParameter]@{
                            Keys        = @("--token", "-t");
                            Name        = "Your GitLab access token";
                            Description = "Your GitLab access token";
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
                            Name        = "Check a specific instance's authentication status";
                            Description = "Check a specific instance's authentication status";
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
            Keys        = @("check-update");
            Name        = "check-update";
            Description = "Check for latest glab releases";
        },
        [CommandParameter]@{
            Keys        = @("ci");
            Name        = "ci";
            Description = "Work with GitLab CI pipelines and jobs";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    Description = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a CI pipeline";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--status", "-s");
                            Name        = "delete pipelines by status: {running|pending|success|failed|canceled|skipped|created|manual}";
                            Description = "delete pipelines by status: {running|pending|success|failed|canceled|skipped|created|manual}";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("lint");
                    Name        = "lint";
                    Description = "Checks if your .gitlab-ci.yml file is valid.";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Get the list of CI pipelines";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--orderBy", "-o");
                            Name        = "Order pipeline by <string>";
                            Description = "Order pipeline by <string>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--page", "-p");
                            Name        = "Page number";
                            Description = "Page number";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--per-page", "-P");
                            Name        = "Number of items to list per page. (default 30)";
                            Description = "Number of items to list per page. (default 30)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sort");
                            Name        = "Sort pipeline by {asc|desc}. (Defaults to desc)";
                            Description = "Sort pipeline by {asc|desc}. (Defaults to desc)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--status", "-s");
                            Name        = "Get pipeline with status: {running|pending|success|failed|canceled|skipped|created|manual}";
                            Description = "Get pipeline with status: {running|pending|success|failed|canceled|skipped|created|manual}";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("retry");
                    Name        = "retry";
                    Description = "Retry a CI job";
                },
                [CommandParameter]@{
                    Keys        = @("run");
                    Name        = "run";
                    Description = "Create or run a new CI pipeline";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "Create pipeline on branch/ref <string>";
                            Description = "Create pipeline on branch/ref <string>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--variables");
                            Name        = "Pass variables to pipeline";
                            Description = "Pass variables to pipeline";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("status");
                    Name        = "status";
                    Description = "View a running CI pipeline on current or other branch specified";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "Check pipeline status for a branch. (Default is current branch)";
                            Description = "Check pipeline status for a branch. (Default is current branch)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--compact", "-c");
                            Name        = "Show status in compact format";
                            Description = "Show status in compact format";
                        },
                        [FlagParameter]@{
                            Keys        = @("--live", "-l");
                            Name        = "Show status in real-time till pipeline ends";
                            Description = "Show status in real-time till pipeline ends";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("trace");
                    Name        = "trace";
                    Description = "Trace a CI job log in real time";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "Check pipeline status for a branch. (Default is the current branch)";
                            Description = "Check pipeline status for a branch. (Default is the current branch)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View, run, trace/logs, and cancel CI jobs current pipeline";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "Check pipeline status for a branch/tag. (Default is the current branch)";
                            Description = "Check pipeline status for a branch/tag. (Default is the current branch)";
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
                [FlagParameter]@{
                    Keys        = @("--no-desc");
                    Name        = "Do not include shell completion description";
                    Description = "Do not include shell completion description";
                },
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
            Description = "Set and get glab settings";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "use global config file";
                    Description = "use global config file";
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Prints the value of a given configuration key";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--global", "-g");
                            Name        = "Read from global config file (~/.config/glab-cli/config.yml). [Default: looks through Environment variables → Local → Global]";
                            Description = "Read from global config file (~/.config/glab-cli/config.yml). [Default: looks through Environment variables → Local → Global]";
                        },
                        [ValueParameter]@{
                            Keys        = @("--host", "-h");
                            Name        = "Get per-host setting";
                            Description = "Get per-host setting";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("init");
                    Name        = "init";
                    Description = "Shows a prompt to set basic glab configuration";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Updates configuration with the value of a given key";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--global", "-g");
                            Name        = "write to global ~/.config/glab-cli/config.yml file rather than the repository .glab-cli/config/config";
                            Description = "write to global ~/.config/glab-cli/config.yml file rather than the repository .glab-cli/config/config";
                        },
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
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("issue");
            Name        = "issue";
            Description = "Work with GitLab issues";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    Description = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("board");
                    Name        = "board";
                    Description = "Work with GitLab Issue Boards in the given project.";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a project issue board.";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--name", "-n");
                                    Name        = "The name of the new board";
                                    Description = "The name of the new board";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("view");
                            Name        = "view";
                            Description = "View project issue board.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("close");
                    Name        = "close";
                    Description = "Close an issue";
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create an issue";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Assign issue to people by their ``usernames``";
                            Description = "Assign issue to people by their ``usernames``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--confidential", "-c");
                            Name        = "Set an issue to be confidential. Default is false";
                            Description = "Set an issue to be confidential. Default is false";
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "Supply a description for issue";
                            Description = "Supply a description for issue";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Add label by name. Multiple labels should be comma separated";
                            Description = "Add label by name. Multiple labels should be comma separated";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--link-type");
                            Name        = "Type for the issue link";
                            Description = "Type for the issue link";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--linked-issues");
                            Name        = "The IIDs of issues that this issue links to";
                            Description = "The IIDs of issues that this issue links to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--linked-mr");
                            Name        = "The IID of a merge request in which to resolve all issues";
                            Description = "The IID of a merge request in which to resolve all issues";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "The global ID or title of a milestone to assign";
                            Description = "The global ID or title of a milestone to assign";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-editor");
                            Name        = "Don't open editor to enter description. If set to true, uses prompt. Default is false";
                            Description = "Don't open editor to enter description. If set to true, uses prompt. Default is false";
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Supply a title for issue";
                            Description = "Supply a title for issue";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web");
                            Name        = "continue issue creation with web interface";
                            Description = "continue issue creation with web interface";
                        },
                        [ValueParameter]@{
                            Keys        = @("--weight", "-w");
                            Name        = "The weight of the issue. Valid values are greater than or equal to 0.";
                            Description = "The weight of the issue. Valid values are greater than or equal to 0.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Don't prompt for confirmation to submit the issue";
                            Description = "Don't prompt for confirmation to submit the issue";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete an issue";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List project issues";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-A");
                            Name        = "Get all issues";
                            Description = "Get all issues";
                        },
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Filter issue by assignee <username>";
                            Description = "Filter issue by assignee <username>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--author");
                            Name        = "Filter issue by author <username>";
                            Description = "Filter issue by author <username>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--closed", "-c");
                            Name        = "Get only closed issues";
                            Description = "Get only closed issues";
                        },
                        [FlagParameter]@{
                            Keys        = @("--confidential", "-C");
                            Name        = "Filter by confidential issues";
                            Description = "Filter by confidential issues";
                        },
                        [ValueParameter]@{
                            Keys        = @("--group", "-g");
                            Name        = "Get issues from group and it's subgroups";
                            Description = "Get issues from group and it's subgroups";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--in");
                            Name        = "search in {title|description}";
                            Description = "search in {title|description}";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Filter issue by label <name>";
                            Description = "Filter issue by label <name>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "Filter issue by milestone <id>";
                            Description = "Filter issue by milestone <id>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--mine", "-M");
                            Name        = "Filter only issues issues assigned to me";
                            Description = "Filter only issues issues assigned to me";
                        },
                        [ValueParameter]@{
                            Keys        = @("--not-assignee");
                            Name        = "Filter issue by not being assigneed to <username>";
                            Description = "Filter issue by not being assigneed to <username>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--not-author");
                            Name        = "Filter by not being by author(s) <username>";
                            Description = "Filter by not being by author(s) <username>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--not-label");
                            Name        = "Filter issue by lack of label <name>";
                            Description = "Filter issue by lack of label <name>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--opened", "-o");
                            Name        = "Get only opened issues";
                            Description = "Get only opened issues";
                        },
                        [ValueParameter]@{
                            Keys        = @("--page", "-p");
                            Name        = "Page number";
                            Description = "Page number";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--per-page", "-P");
                            Name        = "Number of items to list per page. (default 30)";
                            Description = "Number of items to list per page. (default 30)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--search");
                            Name        = "Search <string> in the fields defined by --in";
                            Description = "Search <string> in the fields defined by --in";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("note");
                    Name        = "note";
                    Description = "Add a comment or note to an issue on GitLab";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--message", "-m");
                            Name        = "Comment/Note message";
                            Description = "Comment/Note message";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("reopen");
                    Name        = "reopen";
                    Description = "Reopen a closed issue";
                },
                [CommandParameter]@{
                    Keys        = @("subscribe");
                    Name        = "subscribe";
                    Description = "Subscribe to an issue";
                },
                [CommandParameter]@{
                    Keys        = @("unsubscribe");
                    Name        = "unsubscribe";
                    Description = "Unsubscribe to an issue";
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update issue";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "assign users via username, prefix with '!' or '-' to remove from existing assignees, '+' to add, otherwise replace existing assignees with given users";
                            Description = "assign users via username, prefix with '!' or '-' to remove from existing assignees, '+' to add, otherwise replace existing assignees with given users";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--confidential", "-c");
                            Name        = "Make issue confidential";
                            Description = "Make issue confidential";
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "Issue description";
                            Description = "Issue description";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "add labels";
                            Description = "add labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--lock-discussion");
                            Name        = "Lock discussion on issue";
                            Description = "Lock discussion on issue";
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "title of the milestone to assign, pass `"`" or 0 to unassign";
                            Description = "title of the milestone to assign, pass `"`" or 0 to unassign";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--public", "-p");
                            Name        = "Make issue public";
                            Description = "Make issue public";
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Title of issue";
                            Description = "Title of issue";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--unassign");
                            Name        = "unassign all users";
                            Description = "unassign all users";
                        },
                        [ValueParameter]@{
                            Keys        = @("--unlabel", "-u");
                            Name        = "remove labels";
                            Description = "remove labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--unlock-discussion");
                            Name        = "Unlock discussion on issue";
                            Description = "Unlock discussion on issue";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "Display the title, body, and other information about an issue.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--comments", "-c");
                            Name        = "Show mr comments and activities";
                            Description = "Show mr comments and activities";
                        },
                        [ValueParameter]@{
                            Keys        = @("--page", "-p");
                            Name        = "Page number";
                            Description = "Page number";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--per-page", "-P");
                            Name        = "Number of items to list per page";
                            Description = "Number of items to list per page";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--system-logs", "-s");
                            Name        = "Show system activities / logs";
                            Description = "Show system activities / logs";
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open mr in a browser. Uses default browser or browser specified in BROWSER variable";
                            Description = "Open mr in a browser. Uses default browser or browser specified in BROWSER variable";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("label");
            Name        = "label";
            Description = "Manage labels on remote";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    Description = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create labels for repository/project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--color", "-c");
                            Name        = "Color of label in plain or HEX code. (Default: #428BCA)";
                            Description = "Color of label in plain or HEX code. (Default: #428BCA)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "Label description";
                            Description = "Label description";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name", "-n");
                            Name        = "Name of label";
                            Description = "Name of label";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List labels in repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--page", "-p");
                            Name        = "Page number";
                            Description = "Page number";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--per-page", "-P");
                            Name        = "Number of items to list per page";
                            Description = "Number of items to list per page";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("mr");
            Name        = "mr";
            Description = "Create, view and manage merge requests";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    Description = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("approve");
                    Name        = "approve";
                    Description = "Approve merge requests";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--sha", "-s");
                            Name        = "SHA which must match the SHA of the HEAD commit of the merge request";
                            Description = "SHA which must match the SHA of the HEAD commit of the merge request";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("approvers");
                    Name        = "approvers";
                    Description = "List merge request eligible approvers";
                },
                [CommandParameter]@{
                    Keys        = @("checkout");
                    Name        = "checkout";
                    Description = "Checkout to an open merge request";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "checkout merge request with <branch> name";
                            Description = "checkout merge request with <branch> name";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--set-upstream-to", "-u");
                            Name        = "set tracking of checked out branch to [REMOTE/]BRANCH";
                            Description = "set tracking of checked out branch to [REMOTE/]BRANCH";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--track", "-t");
                            Name        = "set checked out branch to track remote branch, adds remote if needed";
                            Description = "set checked out branch to track remote branch, adds remote if needed";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("close");
                    Name        = "close";
                    Description = "Close merge requests";
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create new merge request";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-collaboration");
                            Name        = "Allow commits from other members";
                            Description = "Allow commits from other members";
                        },
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Assign merge request to people by their ``usernames``";
                            Description = "Assign merge request to people by their ``usernames``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--copy-issue-labels");
                            Name        = "Copy labels from issue to the merge request. Used with --related-issue";
                            Description = "Copy labels from issue to the merge request. Used with --related-issue";
                        },
                        [FlagParameter]@{
                            Keys        = @("--create-source-branch");
                            Name        = "Create source branch if it does not exist";
                            Description = "Create source branch if it does not exist";
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "Supply a description for merge request";
                            Description = "Supply a description for merge request";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--draft");
                            Name        = "Mark merge request as a draft";
                            Description = "Mark merge request as a draft";
                        },
                        [FlagParameter]@{
                            Keys        = @("--fill", "-f");
                            Name        = "Do not prompt for title/description and just use commit info";
                            Description = "Do not prompt for title/description and just use commit info";
                        },
                        [FlagParameter]@{
                            Keys        = @("--fill-commit-body");
                            Name        = "Fill description with each commit body when multiple commits. Can only be used with --fill";
                            Description = "Fill description with each commit body when multiple commits. Can only be used with --fill";
                        },
                        [ValueParameter]@{
                            Keys        = @("--head", "-H");
                            Name        = "Select another head repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or the project ID or full URL";
                            Description = "Select another head repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or the project ID or full URL";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Add label by name. Multiple labels should be comma separated";
                            Description = "Add label by name. Multiple labels should be comma separated";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "The global ID or title of a milestone to assign";
                            Description = "The global ID or title of a milestone to assign";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-editor");
                            Name        = "Don't open editor to enter description. If set to true, uses prompt. Default is false";
                            Description = "Don't open editor to enter description. If set to true, uses prompt. Default is false";
                        },
                        [FlagParameter]@{
                            Keys        = @("--push");
                            Name        = "Push committed changes after creating merge request. Make sure you have committed changes";
                            Description = "Push committed changes after creating merge request. Make sure you have committed changes";
                        },
                        [ValueParameter]@{
                            Keys        = @("--related-issue", "-i");
                            Name        = "Create merge request for an issue. The merge request title will be created from the issue if --title is not provided.";
                            Description = "Create merge request for an issue. The merge request title will be created from the issue if --title is not provided.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--remove-source-branch");
                            Name        = "Remove Source Branch on merge";
                            Description = "Remove Source Branch on merge";
                        },
                        [ValueParameter]@{
                            Keys        = @("--reviewer");
                            Name        = "Request review from users by their ``usernames``";
                            Description = "Request review from users by their ``usernames``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--source-branch", "-s");
                            Name        = "The Branch you are creating the merge request. Default is the current branch.";
                            Description = "The Branch you are creating the merge request. Default is the current branch.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--squash-before-merge");
                            Name        = "Squash commits into a single commit when merging";
                            Description = "Squash commits into a single commit when merging";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-branch", "-b");
                            Name        = "The target or base branch into which you want your code merged";
                            Description = "The target or base branch into which you want your code merged";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-project");
                            Name        = "Add target project by id or OWNER/REPO or GROUP/NAMESPACE/REPO";
                            Description = "Add target project by id or OWNER/REPO or GROUP/NAMESPACE/REPO";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Supply a title for merge request";
                            Description = "Supply a title for merge request";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "continue merge request creation on web browser";
                            Description = "continue merge request creation on web browser";
                        },
                        [FlagParameter]@{
                            Keys        = @("--wip");
                            Name        = "Mark merge request as a work in progress. Alternative to --draft";
                            Description = "Mark merge request as a work in progress. Alternative to --draft";
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip submission confirmation prompt, with --fill it skips all optional prompts";
                            Description = "Skip submission confirmation prompt, with --fill it skips all optional prompts";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete merge requests";
                },
                [CommandParameter]@{
                    Keys        = @("diff");
                    Name        = "diff";
                    Description = "View changes in a merge request";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--color");
                            Name        = "Use color in diff output: {always|never|auto}";
                            Description = "Use color in diff output: {always|never|auto}";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("for");
                    Name        = "for";
                    Description = "Create new merge request for an issue";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-collaboration");
                            Name        = "Allow commits from other members";
                            Description = "Allow commits from other members";
                        },
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Assign merge request to people by their IDs. Multiple values should be comma separated ";
                            Description = "Assign merge request to people by their IDs. Multiple values should be comma separated ";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--draft");
                            Name        = "Mark merge request as a draft. Default is true";
                            Description = "Mark merge request as a draft. Default is true";
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Add label by name. Multiple labels should be comma separated";
                            Description = "Add label by name. Multiple labels should be comma separated";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "add milestone by <id> for merge request";
                            Description = "add milestone by <id> for merge request";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--remove-source-branch");
                            Name        = "Remove Source Branch on merge";
                            Description = "Remove Source Branch on merge";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-branch", "-b");
                            Name        = "The target or base branch into which you want your code merged";
                            Description = "The target or base branch into which you want your code merged";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--wip");
                            Name        = "Mark merge request as a work in progress. Overrides --draft";
                            Description = "Mark merge request as a work in progress. Overrides --draft";
                        },
                        [FlagParameter]@{
                            Keys        = @("--with-labels");
                            Name        = "Copy labels from issue to the merge request";
                            Description = "Copy labels from issue to the merge request";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("issues");
                    Name        = "issues";
                    Description = "Get issues related to a particular merge request.";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List merge requests";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-A");
                            Name        = "Get all merge requests";
                            Description = "Get all merge requests";
                        },
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "Get only merge requests assigned to users";
                            Description = "Get only merge requests assigned to users";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--author");
                            Name        = "Fitler merge request by Author <username>";
                            Description = "Fitler merge request by Author <username>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--closed", "-c");
                            Name        = "Get only closed merge requests";
                            Description = "Get only closed merge requests";
                        },
                        [FlagParameter]@{
                            Keys        = @("--draft", "-d");
                            Name        = "Filter by draft merge requests";
                            Description = "Filter by draft merge requests";
                        },
                        [ValueParameter]@{
                            Keys        = @("--group", "-g");
                            Name        = "Get MRs from group and it's subgroups";
                            Description = "Get MRs from group and it's subgroups";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "Filter merge request by label <name>";
                            Description = "Filter merge request by label <name>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--merged", "-M");
                            Name        = "Get only merged merge requests";
                            Description = "Get only merged merge requests";
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "Filter merge request by milestone <id>";
                            Description = "Filter merge request by milestone <id>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--mine");
                            Name        = "Get only merge requests assigned to me";
                            Description = "Get only merge requests assigned to me";
                        },
                        [ValueParameter]@{
                            Keys        = @("--not-label");
                            Name        = "Filter merge requests by not having label <name>";
                            Description = "Filter merge requests by not having label <name>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--opened", "-o");
                            Name        = "Get only open merge requests";
                            Description = "Get only open merge requests";
                        },
                        [ValueParameter]@{
                            Keys        = @("--page", "-p");
                            Name        = "Page number";
                            Description = "Page number";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--per-page", "-P");
                            Name        = "Number of items to list per page";
                            Description = "Number of items to list per page";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--reviewer", "-r");
                            Name        = "Get only merge requests with users as reviewer";
                            Description = "Get only merge requests with users as reviewer";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--search");
                            Name        = "Filter by <string> in title and description";
                            Description = "Filter by <string> in title and description";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--source-branch", "-s");
                            Name        = "Filter by source branch <name>";
                            Description = "Filter by source branch <name>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-branch", "-t");
                            Name        = "Filter by target branch <name>";
                            Description = "Filter by target branch <name>";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("merge");
                    Name        = "merge";
                    Description = "Merge/Accept merge requests";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--message", "-m");
                            Name        = "Custom merge commit message";
                            Description = "Custom merge commit message";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--rebase", "-r");
                            Name        = "Rebase the commits onto the base branch";
                            Description = "Rebase the commits onto the base branch";
                        },
                        [FlagParameter]@{
                            Keys        = @("--remove-source-branch", "-d");
                            Name        = "Remove source branch on merge";
                            Description = "Remove source branch on merge";
                        },
                        [ValueParameter]@{
                            Keys        = @("--sha");
                            Name        = "Merge Commit sha";
                            Description = "Merge Commit sha";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--squash", "-s");
                            Name        = "Squash commits on merge";
                            Description = "Squash commits on merge";
                        },
                        [ValueParameter]@{
                            Keys        = @("--squash-message");
                            Name        = "Custom Squash commit message";
                            Description = "Custom Squash commit message";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--when-pipeline-succeeds");
                            Name        = "Merge only when pipeline succeeds";
                            Description = "Merge only when pipeline succeeds";
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip submission confirmation prompt";
                            Description = "Skip submission confirmation prompt";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("note");
                    Name        = "note";
                    Description = "Add a comment or note to merge request";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--message", "-m");
                            Name        = "Comment/Note message";
                            Description = "Comment/Note message";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rebase");
                    Name        = "rebase";
                    Description = "Automatically rebase the source_branch of the merge request against its target_branch.";
                },
                [CommandParameter]@{
                    Keys        = @("reopen");
                    Name        = "reopen";
                    Description = "Reopen merge requests";
                },
                [CommandParameter]@{
                    Keys        = @("revoke");
                    Name        = "revoke";
                    Description = "Revoke approval on a merge request <id>";
                },
                [CommandParameter]@{
                    Keys        = @("subscribe");
                    Name        = "subscribe";
                    Description = "Subscribe to merge requests";
                },
                [CommandParameter]@{
                    Keys        = @("todo");
                    Name        = "todo";
                    Description = "Add a ToDo to merge request";
                },
                [CommandParameter]@{
                    Keys        = @("unsubscribe");
                    Name        = "unsubscribe";
                    Description = "Unsubscribe from merge requests";
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update merge requests";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assignee", "-a");
                            Name        = "assign users via username, prefix with '!' or '-' to remove from existing assignees, '+' to add, otherwise replace existing assignees with given users";
                            Description = "assign users via username, prefix with '!' or '-' to remove from existing assignees, '+' to add, otherwise replace existing assignees with given users";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "merge request description";
                            Description = "merge request description";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--draft");
                            Name        = "Mark merge request as a draft";
                            Description = "Mark merge request as a draft";
                        },
                        [ValueParameter]@{
                            Keys        = @("--label", "-l");
                            Name        = "add labels";
                            Description = "add labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--lock-discussion");
                            Name        = "Lock discussion on merge request";
                            Description = "Lock discussion on merge request";
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "title of the milestone to assign, pass `"`" or 0 to unassign";
                            Description = "title of the milestone to assign, pass `"`" or 0 to unassign";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--ready", "-r");
                            Name        = "Mark merge request as ready to be reviewed and merged";
                            Description = "Mark merge request as ready to be reviewed and merged";
                        },
                        [FlagParameter]@{
                            Keys        = @("--remove-source-branch");
                            Name        = "Remove Source Branch on merge";
                            Description = "Remove Source Branch on merge";
                        },
                        [ValueParameter]@{
                            Keys        = @("--reviewer");
                            Name        = "request review from users by their usernames, prefix with '!' or '-' to remove from existing reviewers, '+' to add, otherwise replace existing reviewers with given users";
                            Description = "request review from users by their usernames, prefix with '!' or '-' to remove from existing reviewers, '+' to add, otherwise replace existing reviewers with given users";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--squash-before-merge");
                            Name        = "Toggles the option to squash commits into a single commit when merging";
                            Description = "Toggles the option to squash commits into a single commit when merging";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-branch");
                            Name        = "set target branch";
                            Description = "set target branch";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "Title of merge request";
                            Description = "Title of merge request";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--unassign");
                            Name        = "unassign all users";
                            Description = "unassign all users";
                        },
                        [ValueParameter]@{
                            Keys        = @("--unlabel", "-u");
                            Name        = "remove labels";
                            Description = "remove labels";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--unlock-discussion");
                            Name        = "Unlock discussion on merge request";
                            Description = "Unlock discussion on merge request";
                        },
                        [FlagParameter]@{
                            Keys        = @("--wip");
                            Name        = "Mark merge request as a work in progress. Alternative to --draft";
                            Description = "Mark merge request as a work in progress. Alternative to --draft";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "Display the title, body, and other information about a merge request.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--comments", "-c");
                            Name        = "Show mr comments and activities";
                            Description = "Show mr comments and activities";
                        },
                        [ValueParameter]@{
                            Keys        = @("--page", "-p");
                            Name        = "Page number";
                            Description = "Page number";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--per-page", "-P");
                            Name        = "Number of items to list per page";
                            Description = "Number of items to list per page";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--system-logs", "-s");
                            Name        = "Show system activities / logs";
                            Description = "Show system activities / logs";
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open mr in a browser. Uses default browser or browser specified in BROWSER variable";
                            Description = "Open mr in a browser. Uses default browser or browser specified in BROWSER variable";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("release");
            Name        = "release";
            Description = "Manage GitLab releases";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    Description = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new or update a GitLab Release for a repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assets-links", "-a");
                            Name        = "``JSON`` string representation of assets links (e.g. ``--assets='[{`"name`": `"Asset1`", `"url`":`"https://<domain>/some/location/1`", `"link_type`": `"other`", `"filepath`": `"path/to/file`"}]')``";
                            Description = "``JSON`` string representation of assets links (e.g. ``--assets='[{`"name`": `"Asset1`", `"url`":`"https://<domain>/some/location/1`", `"link_type`": `"other`", `"filepath`": `"path/to/file`"}]')``";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--milestone", "-m");
                            Name        = "The title of each milestone the release is associated with";
                            Description = "The title of each milestone the release is associated with";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name", "-n");
                            Name        = "The release name or title";
                            Description = "The release name or title";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--notes", "-N");
                            Name        = "The release notes/description. You can use Markdown";
                            Description = "The release notes/description. You can use Markdown";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--notes-file", "-F");
                            Name        = "Read release notes ``file``. Specify ``-`` as value to read from stdin";
                            Description = "Read release notes ``file``. Specify ``-`` as value to read from stdin";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ref", "-r");
                            Name        = "If a tag specified doesn't exist, the release is created from ref and tagged with the specified tag name. It can be a commit SHA, another tag name, or a branch name.";
                            Description = "If a tag specified doesn't exist, the release is created from ref and tagged with the specified tag name. It can be a commit SHA, another tag name, or a branch name.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--released-at", "-D");
                            Name        = "The ``date`` when the release is/was ready. Defaults to the current datetime. Expected in ISO 8601 format (2019-03-15T08:00:00Z)";
                            Description = "The ``date`` when the release is/was ready. Defaults to the current datetime. Expected in ISO 8601 format (2019-03-15T08:00:00Z)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a  GitLab Release";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--with-tag", "-t");
                            Name        = "Delete associated tag";
                            Description = "Delete associated tag";
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip confirmation prompt";
                            Description = "Skip confirmation prompt";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("download");
                    Name        = "download";
                    Description = "Download asset files from a GitLab Release";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--asset-name", "-n");
                            Name        = "Download only assets that match the name or a glob pattern";
                            Description = "Download only assets that match the name or a glob pattern";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dir", "-D");
                            Name        = "Directory to download the release assets to";
                            Description = "Directory to download the release assets to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--include-external", "-x");
                            Name        = "Include external asset files";
                            Description = "Include external asset files";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List releases in a repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--tag", "-t");
                            Name        = "Filter releases by tag <name>";
                            Description = "Filter releases by tag <name>";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("upload");
                    Name        = "upload";
                    Description = "Upload release asset files or links to GitLab Release";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--assets-links", "-a");
                            Name        = "``JSON`` string representation of assets links (e.g. ``--assets='[{`"name`": `"Asset1`", `"url`":`"https://<domain>/some/location/1`", `"link_type`": `"other`", `"filepath`": `"path/to/file`"}]')``";
                            Description = "``JSON`` string representation of assets links (e.g. ``--assets='[{`"name`": `"Asset1`", `"url`":`"https://<domain>/some/location/1`", `"link_type`": `"other`", `"filepath`": `"path/to/file`"}]')``";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View information about a GitLab Release";
                    Parameters  = @(
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
            Description = "Work with GitLab repositories and projects";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("archive");
                    Name        = "archive";
                    Description = "Get an archive of the repository.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "Optionally Specify format if you want a downloaded archive: {tar.gz|tar.bz2|tbz|tbz2|tb2|bz2|tar|zip} (Default: zip)";
                            Description = "Optionally Specify format if you want a downloaded archive: {tar.gz|tar.bz2|tbz|tbz2|tb2|bz2|tar|zip} (Default: zip)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sha", "-s");
                            Name        = "The commit SHA to download. A tag, branch reference, or SHA can be used. This defaults to the tip of the default branch if not specified";
                            Description = "The commit SHA to download. A tag, branch reference, or SHA can be used. This defaults to the tip of the default branch if not specified";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("clone");
                    Name        = "clone";
                    Description = "Clone a Gitlab repository/project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--archived", "-a");
                            Name        = "Limit by archived status. Used with --group flag";
                            Description = "Limit by archived status. Used with --group flag";
                        },
                        [ValueParameter]@{
                            Keys        = @("--group", "-g");
                            Name        = "Specify group to clone repositories from";
                            Description = "Specify group to clone repositories from";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--include-subgroups", "-G");
                            Name        = "Include projects in subgroups of this group. Default is true. Used with --group flag";
                            Description = "Include projects in subgroups of this group. Default is true. Used with --group flag";
                        },
                        [FlagParameter]@{
                            Keys        = @("--mine", "-m");
                            Name        = "Limit by projects in the group owned by the current authenticated user. Used with --group flag";
                            Description = "Limit by projects in the group owned by the current authenticated user. Used with --group flag";
                        },
                        [FlagParameter]@{
                            Keys        = @("--preserve-namespace", "-p");
                            Name        = "Clone the repo in a subdirectory based on namespace";
                            Description = "Clone the repo in a subdirectory based on namespace";
                        },
                        [ValueParameter]@{
                            Keys        = @("--visibility", "-v");
                            Name        = "Limit by visibility {public, internal, or private}. Used with --group flag";
                            Description = "Limit by visibility {public, internal, or private}. Used with --group flag";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--with-issues-enabled", "-I");
                            Name        = "Limit by projects with issues feature enabled. Default is false. Used with --group flag";
                            Description = "Limit by projects with issues feature enabled. Default is false. Used with --group flag";
                        },
                        [FlagParameter]@{
                            Keys        = @("--with-mr-enabled", "-M");
                            Name        = "Limit by projects with issues feature enabled. Default is false. Used with --group flag";
                            Description = "Limit by projects with issues feature enabled. Default is false. Used with --group flag";
                        },
                        [FlagParameter]@{
                            Keys        = @("--with-shared", "-S");
                            Name        = "Include projects shared to this group. Default is false. Used with --group flag";
                            Description = "Include projects shared to this group. Default is false. Used with --group flag";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("contributors");
                    Name        = "contributors";
                    Description = "Get repository contributors list.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--order", "-o");
                            Name        = "Return contributors ordered by name, email, or commits (orders by commit date) fields";
                            Description = "Return contributors ordered by name, email, or commits (orders by commit date) fields";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--page", "-p");
                            Name        = "Page number";
                            Description = "Page number";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--per-page", "-P");
                            Name        = "Number of items to list per page.";
                            Description = "Number of items to list per page.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo", "-R");
                            Name        = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                            Description = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sort", "-s");
                            Name        = "Return contributors sorted in asc or desc order";
                            Description = "Return contributors sorted in asc or desc order";
                            # Source = $?? # todo: Fix or remove this!
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create a new GitLab project/repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--defaultBranch");
                            Name        = "Default branch of the project. If not provided, ``master`` by default.";
                            Description = "Default branch of the project. If not provided, ``master`` by default.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--description", "-d");
                            Name        = "Description of the new project";
                            Description = "Description of the new project";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group", "-g");
                            Name        = "Namespace/group for the new project (defaults to the current user’s namespace)";
                            Description = "Namespace/group for the new project (defaults to the current user’s namespace)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--internal");
                            Name        = "Make project internal: visible to any authenticated user (default)";
                            Description = "Make project internal: visible to any authenticated user (default)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--name", "-n");
                            Name        = "Name of the new project";
                            Description = "Name of the new project";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--private", "-p");
                            Name        = "Make project private: visible only to project members";
                            Description = "Make project private: visible only to project members";
                        },
                        [FlagParameter]@{
                            Keys        = @("--public", "-P");
                            Name        = "Make project public: visible without any authentication";
                            Description = "Make project public: visible without any authentication";
                        },
                        [FlagParameter]@{
                            Keys        = @("--readme");
                            Name        = "Initialize project with README.md";
                            Description = "Initialize project with README.md";
                        },
                        [ValueParameter]@{
                            Keys        = @("--remoteName");
                            Name        = "Remote name for the Git repository you're in. If not provided, ``origin`` by default.";
                            Description = "Remote name for the Git repository you're in. If not provided, ``origin`` by default.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tag", "-t");
                            Name        = "The list of tags for the project.";
                            Description = "The list of tags for the project.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete an existing repository on GitLab";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Skip the confirmation prompt and immediately delete the repository.";
                            Description = "Skip the confirmation prompt and immediately delete the repository.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("fork");
                    Name        = "fork";
                    Description = "Create a fork of a GitLab repository";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--clone", "-c");
                            Name        = "Clone the fork {true|false}";
                            Description = "Clone the fork {true|false}";
                        },
                        [ValueParameter]@{
                            Keys        = @("--name", "-n");
                            Name        = "The name assigned to the resultant project after forking";
                            Description = "The name assigned to the resultant project after forking";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--path", "-p");
                            Name        = "The path assigned to the resultant project after forking";
                            Description = "The path assigned to the resultant project after forking";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--remote");
                            Name        = "Add remote for fork {true|false}";
                            Description = "Add remote for fork {true|false}";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("mirror");
                    Name        = "mirror";
                    Description = "Mirror a project/repository";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-divergence");
                            Name        = "Determines if divergent refs are skipped.";
                            Description = "Determines if divergent refs are skipped.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--direction");
                            Name        = "Mirror direction";
                            Description = "Mirror direction";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--enabled");
                            Name        = "Determines if the mirror is enabled.";
                            Description = "Determines if the mirror is enabled.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--protected-branches-only");
                            Name        = "Determines if only protected branches are mirrored.";
                            Description = "Determines if only protected branches are mirrored.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--url");
                            Name        = "The target URL to which the repository is mirrored.";
                            Description = "The target URL to which the repository is mirrored.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("search");
                    Name        = "search";
                    Description = "Search for GitLab repositories and projects by name";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--page", "-p");
                            Name        = "Page number";
                            Description = "Page number";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--per-page", "-P");
                            Name        = "Number of items to list per page";
                            Description = "Number of items to list per page";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--search", "-s");
                            Name        = "A string contained in the project name";
                            Description = "A string contained in the project name";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "View a project/repository";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--branch", "-b");
                            Name        = "View a specific branch of the repository";
                            Description = "View a specific branch of the repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--web", "-w");
                            Name        = "Open a project in the browser";
                            Description = "Open a project in the browser";
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
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    Description = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add an SSH key to your GitLab account";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--expires-at", "-e");
                            Name        = "The expiration date of the SSH key in ISO 8601 format (YYYY-MM-DDTHH:MM:SSZ)";
                            Description = "The expiration date of the SSH key in ISO 8601 format (YYYY-MM-DDTHH:MM:SSZ)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--title", "-t");
                            Name        = "New SSH key's title";
                            Description = "New SSH key's title";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Gets a single key";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Lists currently authenticated user’s SSH keys";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--show-id");
                            Name        = "Show IDs of SSH Keys";
                            Description = "Show IDs of SSH Keys";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("user");
            Name        = "user";
            Description = "Interact with user";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("events");
                    Name        = "events";
                    Description = "View user events";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "Get events from all projects";
                            Description = "Get events from all projects";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("variable");
            Name        = "variable";
            Description = "Manage GitLab Project and Group Variables";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--repo", "-R");
                    Name        = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    Description = "Select another repository using the ``OWNER/REPO`` or ``GROUP/NAMESPACE/REPO`` format or full URL or git URL";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a project or group variable";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--group", "-g");
                            Name        = "Delete variable from a group";
                            Description = "Delete variable from a group";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--scope", "-s");
                            Name        = "The environment_scope of the variable. All (*), or specific environments";
                            Description = "The environment_scope of the variable. All (*), or specific environments";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List project or group variables";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--group", "-g");
                            Name        = "List group variables";
                            Description = "List group variables";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Create a new project or group variable";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--group", "-g");
                            Name        = "Set variable for a group";
                            Description = "Set variable for a group";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--masked", "-m");
                            Name        = "Whether the variable is masked";
                            Description = "Whether the variable is masked";
                        },
                        [FlagParameter]@{
                            Keys        = @("--protected", "-p");
                            Name        = "Whether the variable is protected";
                            Description = "Whether the variable is protected";
                        },
                        [ValueParameter]@{
                            Keys        = @("--scope", "-s");
                            Name        = "The environment_scope of the variable. All (*), or specific environments";
                            Description = "The environment_scope of the variable. All (*), or specific environments";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--type", "-t");
                            Name        = "The type of a variable: {env_var|file}";
                            Description = "The type of a variable: {env_var|file}";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--value", "-v");
                            Name        = "The value of a variable";
                            Description = "The value of a variable";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update an existing project or group variable";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--group", "-g");
                            Name        = "Set variable for a group";
                            Description = "Set variable for a group";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--masked", "-m");
                            Name        = "Whether the variable is masked";
                            Description = "Whether the variable is masked";
                        },
                        [FlagParameter]@{
                            Keys        = @("--protected", "-p");
                            Name        = "Whether the variable is protected";
                            Description = "Whether the variable is protected";
                        },
                        [ValueParameter]@{
                            Keys        = @("--scope", "-s");
                            Name        = "The environment_scope of the variable. All (*), or specific environments";
                            Description = "The environment_scope of the variable. All (*), or specific environments";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--type", "-t");
                            Name        = "The type of a variable: {env_var|file}";
                            Description = "The type of a variable: {env_var|file}";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--value", "-v");
                            Name        = "The value of a variable";
                            Description = "The value of a variable";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "show glab version information";
        }
    )
}
