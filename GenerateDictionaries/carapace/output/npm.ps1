# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.npmjs.com/";
    Keys        = @("npm");
    Name        = "npm";
    Description = "the package manager for JavaScript";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--registry");
            Name        = "set registry to use";
            Description = "set registry to use";
            # Source = $?? # todo: Fix or remove this!
        },
        ,
        [CommandParameter]@{
            Keys        = @("access");
            Name        = "access";
            Description = "Set access level on published packages";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("2fa-not-required");
                    Name        = "2fa-not-required";
                    Description = "disable 2fa";
                },
                [CommandParameter]@{
                    Keys        = @("2fa-required");
                    Name        = "2fa-required";
                    Description = "enable 2fa";
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "edit access";
                },
                [CommandParameter]@{
                    Keys        = @("grant");
                    Name        = "grant";
                    Description = "grant access";
                },
                [CommandParameter]@{
                    Keys        = @("ls-collaborators");
                    Name        = "ls-collaborators";
                    Description = "list collaborators";
                },
                [CommandParameter]@{
                    Keys        = @("ls-packages");
                    Name        = "ls-packages";
                    Description = "list packages";
                },
                [CommandParameter]@{
                    Keys        = @("public");
                    Name        = "public";
                    Description = "set public access";
                },
                [CommandParameter]@{
                    Keys        = @("restricted");
                    Name        = "restricted";
                    Description = "set restricted access";
                },
                [CommandParameter]@{
                    Keys        = @("revoke");
                    Name        = "revoke";
                    Description = "revoke access";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("adduser");
            Name        = "adduser";
            Description = "Add a registry user account";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--scope");
                    Name        = "associate with scope";
                    Description = "associate with scope";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("audit");
            Name        = "audit";
            Description = "Run a security audit";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--audit-level");
                    Name        = "mnimum level of vulnerability level to exit with non-zero exit code";
                    Description = "mnimum level of vulnerability level to exit with non-zero exit code";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "only report what would be done";
                    Description = "only report what would be done";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "remove various protections against unfortunate side effects";
                    Description = "remove various protections against unfortunate side effects";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "omit dependency type";
                    Description = "omit dependency type";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock-only");
                    Name        = "ignore node-modules";
                    Description = "ignore node-modules";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("bin");
            Name        = "bin";
            Description = "Display npm bin folder";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate in global mode";
                    Description = "operate in global mode";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("bugs");
            Name        = "bugs";
            Description = "Report bugs for a package in a web browser";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--browser");
                    Name        = "browser called to open websites";
                    Description = "browser called to open websites";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cache");
            Name        = "cache";
            Description = "Manipulate packages cache";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "add the specified packages to local cache";
                },
                [CommandParameter]@{
                    Keys        = @("clean");
                    Name        = "clean";
                    Description = "delete all data out of the cache folder";
                },
                [CommandParameter]@{
                    Keys        = @("verify");
                    Name        = "verify";
                    Description = "verify the contents of the cache folder";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ci");
            Name        = "ci";
            Description = "Install a project with a clean slate";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "Disable scripts";
                    Description = "Disable scripts";
                },
                [ValueParameter]@{
                    Keys        = @("--script-shell");
                    Name        = "shell to use for scripts";
                    Description = "shell to use for scripts";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Tab Completion for npm";
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Manage the npm configuration files";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate in global mode";
                    Description = "operate in global mode";
                },
                ,
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Deletes the specified keys from all configuration files";
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "Opens the config file in an editor";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--editor");
                            Name        = "editor to use";
                            Description = "editor to use";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Echo the config values to stdout";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "Show all the config settings";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "output as json";
                            Description = "output as json";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Sets each of the config keys to the value provided";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("dedupe");
            Name        = "dedupe";
            Description = "Reduce duplication in the package tree";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--audit");
                    Name        = "submit audit reports";
                    Description = "submit audit reports";
                },
                [FlagParameter]@{
                    Keys        = @("--bin-links");
                    Name        = "create symlinks";
                    Description = "create symlinks";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "only report changes";
                    Description = "only report changes";
                },
                [FlagParameter]@{
                    Keys        = @("--fund");
                    Name        = "show funding message";
                    Description = "show funding message";
                },
                [FlagParameter]@{
                    Keys        = @("--global-style");
                    Name        = "use global layout";
                    Description = "use global layout";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [FlagParameter]@{
                    Keys        = @("--legacy-bundling");
                    Name        = "support older npm version";
                    Description = "support older npm version";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "omit dependency types";
                    Description = "omit dependency types";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock");
                    Name        = "when false ignore ``package-lock.json``";
                    Description = "when false ignore ``package-lock.json``";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-peer-deps");
                    Name        = "any conflicting ``peerDependencies`` will be treated as install failure";
                    Description = "any conflicting ``peerDependencies`` will be treated as install failure";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("deprecate");
            Name        = "deprecate";
            Description = "Deprecate a version of a package";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("diff");
            Name        = "diff";
            Description = "The registry diff command";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--diff");
                    Name        = "argument to compare";
                    Description = "argument to compare";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--diff-dest-prefix");
                    Name        = "destination prefix to be used in output";
                    Description = "destination prefix to be used in output";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--diff-ignore-all-space");
                    Name        = "ignore whitespace when comparing lines";
                    Description = "ignore whitespace when comparing lines";
                },
                [FlagParameter]@{
                    Keys        = @("--diff-name-only");
                    Name        = "print only filenames";
                    Description = "print only filenames";
                },
                [FlagParameter]@{
                    Keys        = @("--diff-no-prefix");
                    Name        = "do not show any source or destination prefix";
                    Description = "do not show any source or destination prefix";
                },
                [ValueParameter]@{
                    Keys        = @("--diff-src-prefix");
                    Name        = "source prefix to be used in output";
                    Description = "source prefix to be used in output";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--diff-text");
                    Name        = "treat all files as text";
                    Description = "treat all files as text";
                },
                [ValueParameter]@{
                    Keys        = @("--diff-unified");
                    Name        = "numver of lines of context to print";
                    Description = "numver of lines of context to print";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate globally";
                    Description = "operate globally";
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "tag to use when version is omitted";
                    Description = "tag to use when version is omitted";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("dist-tag");
            Name        = "dist-tag";
            Description = "Modify package distribution tags";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                },
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "tag specified version of the package";
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "show all the dist-tags for a package";
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "clear a tag that is no longer in use from the package";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("docs");
            Name        = "docs";
            Description = "Open documentation for a package in a web browser";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--browser");
                    Name        = "browser to use";
                    Description = "browser to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("doctor");
            Name        = "doctor";
            Description = "Check your npm environment";
        },
        [CommandParameter]@{
            Keys        = @("edit");
            Name        = "edit";
            Description = "Edit an installed package";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--editor");
                    Name        = "editor to use";
                    Description = "editor to use";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("exec");
            Name        = "exec";
            Description = "Run a command from a local or remote npm package";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--call");
                    Name        = "optional companion option";
                    Description = "optional companion option";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--package");
                    Name        = "package to install for exec";
                    Description = "package to install for exec";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("explain");
            Name        = "explain";
            Description = "Explain installed packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("explore");
            Name        = "explore";
            Description = "Browse an installed package";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--shell");
                    Name        = "shell to use";
                    Description = "shell to use";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("find-dupes");
            Name        = "find-dupes";
            Description = "Find duplication in the package tree";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--bin-links");
                    Name        = "create symlinks";
                    Description = "create symlinks";
                },
                [FlagParameter]@{
                    Keys        = @("--fund");
                    Name        = "Display funding message";
                    Description = "Display funding message";
                },
                [FlagParameter]@{
                    Keys        = @("--global-style");
                    Name        = "Use global layout";
                    Description = "Use global layout";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "Disable scripts";
                    Description = "Disable scripts";
                },
                [FlagParameter]@{
                    Keys        = @("--legacy-bundling");
                    Name        = "Use legacy bundling";
                    Description = "Use legacy bundling";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "omit dependency type";
                    Description = "omit dependency type";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock");
                    Name        = "When false ignore package.lock";
                    Description = "When false ignore package.lock";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-peer-deps");
                    Name        = "Fail and abort for any conflicting ``peerDependencies``";
                    Description = "Fail and abort for any conflicting ``peerDependencies``";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fund");
            Name        = "fund";
            Description = "Retrieve funding information";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--browser");
                    Name        = "browser to use";
                    Description = "browser to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [FlagParameter]@{
                    Keys        = @("--unicode");
                    Name        = "use unicode characters in output";
                    Description = "use unicode characters in output";
                },
                [ValueParameter]@{
                    Keys        = @("--which");
                    Name        = "index of funding source to open";
                    Description = "index of funding source to open";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("get");
            Name        = "get";
            Description = "Echo the config values to stdout";
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Get help on npm";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--viewer");
                    Name        = "viewer to use";
                    Description = "viewer to use";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("hook");
            Name        = "hook";
            Description = "Manage registry hooks";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add registry hook";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--type");
                            Name        = "type of hook";
                            Description = "type of hook";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List registry hooks";
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove registry hook";
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "Update registry hook";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Create a package.json file";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "remove various protections against unfortunate side effects";
                    Description = "remove various protections against unfortunate side effects";
                },
                [FlagParameter]@{
                    Keys        = @("--if-present");
                    Name        = "";
                    Description = "";
                },
                [FlagParameter]@{
                    Keys        = @("--scope");
                    Name        = "create scoped package";
                    Description = "create scoped package";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "automatically answer yes to any prompts";
                    Description = "automatically answer yes to any prompts";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Install a package";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--audit");
                    Name        = "Conduct security audit";
                    Description = "Conduct security audit";
                },
                [FlagParameter]@{
                    Keys        = @("--bin-links");
                    Name        = "Create symlinks for package executables";
                    Description = "Create symlinks for package executables";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Only report changes";
                    Description = "Only report changes";
                },
                [FlagParameter]@{
                    Keys        = @("--fund");
                    Name        = "Display funding message";
                    Description = "Display funding message";
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate in global mode";
                    Description = "operate in global mode";
                },
                [FlagParameter]@{
                    Keys        = @("--global-style");
                    Name        = "Use global layout";
                    Description = "Use global layout";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "Disable scripts";
                    Description = "Disable scripts";
                },
                [FlagParameter]@{
                    Keys        = @("--legacy-bundling");
                    Name        = "Use legacy bundling";
                    Description = "Use legacy bundling";
                },
                [FlagParameter]@{
                    Keys        = @("--no-save");
                    Name        = "Prevents saving to ``dependencies``";
                    Description = "Prevents saving to ``dependencies``";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "Exclude package";
                    Description = "Exclude package";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock");
                    Name        = "Only update package-lock.json";
                    Description = "Only update package-lock.json";
                },
                [FlagParameter]@{
                    Keys        = @("--save", "-S");
                    Name        = "Package will appear in your ``dependencies``";
                    Description = "Package will appear in your ``dependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-dev");
                    Name        = "Package will appear in your ``devDependencies``";
                    Description = "Package will appear in your ``devDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-exact", "-E");
                    Name        = "Save exact package version";
                    Description = "Save exact package version";
                },
                [FlagParameter]@{
                    Keys        = @("--save-optional");
                    Name        = "Package will appear in your ``optionalDependencies``";
                    Description = "Package will appear in your ``optionalDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-peer");
                    Name        = "Package will appear in your ``peerDependencies``";
                    Description = "Package will appear in your ``peerDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-prod");
                    Name        = "Package will appear in your ``dependencies``.";
                    Description = "Package will appear in your ``dependencies``.";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-peer-deps");
                    Name        = "Fail and abort for any conflicting ``peerDependencies``";
                    Description = "Fail and abort for any conflicting ``peerDependencies``";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install-ci-test");
            Name        = "install-ci-test";
            Description = "Install a project with a clean slate and run tests";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [ValueParameter]@{
                    Keys        = @("--script-shell");
                    Name        = "shell to use";
                    Description = "shell to use";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install-test");
            Name        = "install-test";
            Description = "Install package(s) and run tests";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--audit");
                    Name        = "Conduct security audit";
                    Description = "Conduct security audit";
                },
                [FlagParameter]@{
                    Keys        = @("--bin-links");
                    Name        = "Create symlinks for package executables";
                    Description = "Create symlinks for package executables";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Only report changes";
                    Description = "Only report changes";
                },
                [FlagParameter]@{
                    Keys        = @("--fund");
                    Name        = "Display funding message";
                    Description = "Display funding message";
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate in global mode";
                    Description = "operate in global mode";
                },
                [FlagParameter]@{
                    Keys        = @("--global-style");
                    Name        = "Use global layout";
                    Description = "Use global layout";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "Disable scripts";
                    Description = "Disable scripts";
                },
                [FlagParameter]@{
                    Keys        = @("--legacy-bundling");
                    Name        = "Use legacy bundling";
                    Description = "Use legacy bundling";
                },
                [FlagParameter]@{
                    Keys        = @("--no-save");
                    Name        = "Prevents saving to ``dependencies``";
                    Description = "Prevents saving to ``dependencies``";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "Exclude package";
                    Description = "Exclude package";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock");
                    Name        = "Only update package-lock.json";
                    Description = "Only update package-lock.json";
                },
                [FlagParameter]@{
                    Keys        = @("--save", "-S");
                    Name        = "Package will appear in your ``dependencies``";
                    Description = "Package will appear in your ``dependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-dev");
                    Name        = "Package will appear in your ``devDependencies``";
                    Description = "Package will appear in your ``devDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-exact", "-E");
                    Name        = "Save exact package version";
                    Description = "Save exact package version";
                },
                [FlagParameter]@{
                    Keys        = @("--save-optional");
                    Name        = "Package will appear in your ``optionalDependencies``";
                    Description = "Package will appear in your ``optionalDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-peer");
                    Name        = "Package will appear in your ``peerDependencies``";
                    Description = "Package will appear in your ``peerDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-prod");
                    Name        = "Package will appear in your ``dependencies``.";
                    Description = "Package will appear in your ``dependencies``.";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-peer-deps");
                    Name        = "Fail and abort for any conflicting ``peerDependencies``";
                    Description = "Fail and abort for any conflicting ``peerDependencies``";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("link");
            Name        = "link";
            Description = "Symlink a package folder";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--audit");
                    Name        = "Conduct security audit";
                    Description = "Conduct security audit";
                },
                [FlagParameter]@{
                    Keys        = @("--bin-links");
                    Name        = "Create symlinks for package executables";
                    Description = "Create symlinks for package executables";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Only report changes";
                    Description = "Only report changes";
                },
                [FlagParameter]@{
                    Keys        = @("--fund");
                    Name        = "Display funding message";
                    Description = "Display funding message";
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate in global mode";
                    Description = "operate in global mode";
                },
                [FlagParameter]@{
                    Keys        = @("--global-style");
                    Name        = "Use global layout";
                    Description = "Use global layout";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "Disable scripts";
                    Description = "Disable scripts";
                },
                [FlagParameter]@{
                    Keys        = @("--legacy-bundling");
                    Name        = "Use legacy bundling";
                    Description = "Use legacy bundling";
                },
                [FlagParameter]@{
                    Keys        = @("--no-save");
                    Name        = "Prevents saving to ``dependencies``";
                    Description = "Prevents saving to ``dependencies``";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "Exclude package";
                    Description = "Exclude package";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock");
                    Name        = "Only update package-lock.json";
                    Description = "Only update package-lock.json";
                },
                [FlagParameter]@{
                    Keys        = @("--save", "-S");
                    Name        = "Package will appear in your ``dependencies``";
                    Description = "Package will appear in your ``dependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-dev");
                    Name        = "Package will appear in your ``devDependencies``";
                    Description = "Package will appear in your ``devDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-exact", "-E");
                    Name        = "Save exact package version";
                    Description = "Save exact package version";
                },
                [FlagParameter]@{
                    Keys        = @("--save-optional");
                    Name        = "Package will appear in your ``optionalDependencies``";
                    Description = "Package will appear in your ``optionalDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-peer");
                    Name        = "Package will appear in your ``peerDependencies``";
                    Description = "Package will appear in your ``peerDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-prod");
                    Name        = "Package will appear in your ``dependencies``.";
                    Description = "Package will appear in your ``dependencies``.";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-peer-deps");
                    Name        = "Fail and abort for any conflicting ``peerDependencies``";
                    Description = "Fail and abort for any conflicting ``peerDependencies``";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ll");
            Name        = "ll";
            Description = "List installed packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "show all outdated or installed packages";
                    Description = "show all outdated or installed packages";
                },
                [ValueParameter]@{
                    Keys        = @("--depth");
                    Name        = "depth to ge when recursing packages";
                    Description = "depth to ge when recursing packages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate in global mode";
                    Description = "operate in global mode";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [FlagParameter]@{
                    Keys        = @("--link");
                    Name        = "output only packages that are linked";
                    Description = "output only packages that are linked";
                },
                [FlagParameter]@{
                    Keys        = @("--long", "-l");
                    Name        = "show extended information";
                    Description = "show extended information";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "omit dependency types";
                    Description = "omit dependency types";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock-only");
                    Name        = "only use the package-lock.json";
                    Description = "only use the package-lock.json";
                },
                [FlagParameter]@{
                    Keys        = @("--parseable", "-p");
                    Name        = "output parseable results";
                    Description = "output parseable results";
                },
                [FlagParameter]@{
                    Keys        = @("--unicode");
                    Name        = "output unicode characters";
                    Description = "output unicode characters";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ll");
            Name        = "ll";
            Description = "List installed packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "show all outdated or installed packages";
                    Description = "show all outdated or installed packages";
                },
                [ValueParameter]@{
                    Keys        = @("--depth");
                    Name        = "depth to ge when recursing packages";
                    Description = "depth to ge when recursing packages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate in global mode";
                    Description = "operate in global mode";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [FlagParameter]@{
                    Keys        = @("--link");
                    Name        = "output only packages that are linked";
                    Description = "output only packages that are linked";
                },
                [FlagParameter]@{
                    Keys        = @("--long", "-l");
                    Name        = "show extended information";
                    Description = "show extended information";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "omit dependency types";
                    Description = "omit dependency types";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock-only");
                    Name        = "only use the package-lock.json";
                    Description = "only use the package-lock.json";
                },
                [FlagParameter]@{
                    Keys        = @("--parseable", "-p");
                    Name        = "output parseable results";
                    Description = "output parseable results";
                },
                [FlagParameter]@{
                    Keys        = @("--unicode");
                    Name        = "output unicode characters";
                    Description = "output unicode characters";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("login");
            Name        = "login";
            Description = "Add a registry user account";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--scope");
                    Name        = "associate with scope";
                    Description = "associate with scope";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("login");
            Name        = "login";
            Description = "Log out of the registry";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--scope");
                    Name        = "associate with scope";
                    Description = "associate with scope";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("org");
            Name        = "org";
            Description = "Manage orgs";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--parseable", "-p");
                    Name        = "output as json";
                    Description = "output as json";
                },
                ,
                ,
                ,
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List all users in an org";
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove a user in an org";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Add a new developer to an org";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("outdated");
            Name        = "outdated";
            Description = "Check for outdated packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "show all";
                    Description = "show all";
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate globally";
                    Description = "operate globally";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [FlagParameter]@{
                    Keys        = @("--long", "-l");
                    Name        = "show extended information";
                    Description = "show extended information";
                },
                [FlagParameter]@{
                    Keys        = @("--parseable", "-p");
                    Name        = "output parseable results";
                    Description = "output parseable results";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("owner");
            Name        = "owner";
            Description = "Manage package owners";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add a new user as a maintainer of a package";
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "List all the users who have access to modify a package";
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "Remove a user from the package owner list";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pack");
            Name        = "pack";
            Description = "Create a tarball from a package";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "only report changes";
                    Description = "only report changes";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("ping");
            Name        = "ping";
            Description = "Ping npm registry";
        },
        [CommandParameter]@{
            Keys        = @("prefix");
            Name        = "prefix";
            Description = "Display prefix";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate globally";
                    Description = "operate globally";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("profile");
            Name        = "profile";
            Description = "Change settings on your registry profile";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--parseable", "-p");
                    Name        = "output parseable results";
                    Description = "output parseable results";
                },
                ,
                ,
                ,
                [CommandParameter]@{
                    Keys        = @("disable-2fa");
                    Name        = "disable-2fa";
                    Description = "disable two-factor authorization";
                },
                [CommandParameter]@{
                    Keys        = @("enable-2fa");
                    Name        = "enable-2fa";
                    Description = "enable two-factor authorization";
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "get profile value";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "set profile value";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("prune");
            Name        = "prune";
            Description = "Remove extraneous packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "only report changes";
                    Description = "only report changes";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "omit package type";
                    Description = "omit package type";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("publish");
            Name        = "publish";
            Description = "Publish a package";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--access");
                    Name        = "publish as public or restricted";
                    Description = "publish as public or restricted";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "only report changes";
                    Description = "only report changes";
                },
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "register with given tag";
                    Description = "register with given tag";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rebuild");
            Name        = "rebuild";
            Description = "Rebuild a package";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--bin-links");
                    Name        = "crete symlinks for package executables";
                    Description = "crete symlinks for package executables";
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate globally";
                    Description = "operate globally";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("repo");
            Name        = "repo";
            Description = "Open package repository page in the browser";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--browser");
                    Name        = "browser to user";
                    Description = "browser to user";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("restart");
            Name        = "restart";
            Description = "Restart a package";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [ValueParameter]@{
                    Keys        = @("--script-shell");
                    Name        = "shell to use";
                    Description = "shell to use";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("root");
            Name        = "root";
            Description = "Display npm root";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate globally";
                    Description = "operate globally";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run-script");
            Name        = "run-script";
            Description = "Run arbitrary package scripts";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--if-present");
                    Name        = "";
                    Description = "";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [ValueParameter]@{
                    Keys        = @("--script-shell");
                    Name        = "shell to use for scripts";
                    Description = "shell to use for scripts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "Search for packages";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "whether to show color in output";
                    Description = "whether to show color in output";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [FlagParameter]@{
                    Keys        = @("--long", "-l");
                    Name        = "Search the registry for packages";
                    Description = "Search the registry for packages";
                },
                [FlagParameter]@{
                    Keys        = @("--no-description");
                    Name        = "hide descripton";
                    Description = "hide descripton";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "force offline mode";
                    Description = "force offline mode";
                },
                [FlagParameter]@{
                    Keys        = @("--parseable", "-p");
                    Name        = "output parseable results";
                    Description = "output parseable results";
                },
                [FlagParameter]@{
                    Keys        = @("--prefer-offline");
                    Name        = "bypass staleness checks for cached data";
                    Description = "bypass staleness checks for cached data";
                },
                [FlagParameter]@{
                    Keys        = @("--prefer-online");
                    Name        = "force staleness checks for cached data";
                    Description = "force staleness checks for cached data";
                },
                [ValueParameter]@{
                    Keys        = @("--searchexclude");
                    Name        = "space separated options that limit the results";
                    Description = "space separated options that limit the results";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--searchopts");
                    Name        = "space separated search options";
                    Description = "space separated search options";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("set");
            Name        = "set";
            Description = "Sets each of the config keys to the value provided";
        },
        [CommandParameter]@{
            Keys        = @("set-script");
            Name        = "set-script";
            Description = "Set tasks in the scripts section of package.json";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("shrinkwrap");
            Name        = "shrinkwrap";
            Description = "Lock down dependency versions for publication";
        },
        [CommandParameter]@{
            Keys        = @("star");
            Name        = "star";
            Description = "Mark your favorite packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--unicode");
                    Name        = "use unicode in output";
                    Description = "use unicode in output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("stars");
            Name        = "stars";
            Description = "View packages marked as favorites";
        },
        [CommandParameter]@{
            Keys        = @("start");
            Name        = "start";
            Description = "Start a package";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [ValueParameter]@{
                    Keys        = @("--script-shell");
                    Name        = "shell to use";
                    Description = "shell to use";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("stop");
            Name        = "stop";
            Description = "Stop a package";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [ValueParameter]@{
                    Keys        = @("--script-shell");
                    Name        = "shell to use";
                    Description = "shell to use";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("team");
            Name        = "team";
            Description = "Manage organization teams and team memberships";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--parseable", "-p");
                    Name        = "output parseable results";
                    Description = "output parseable results";
                },
                ,
                ,
                ,
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "add a new user to an existing team";
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "create a new team";
                },
                [CommandParameter]@{
                    Keys        = @("destroy");
                    Name        = "destroy";
                    Description = "destroy an existing team";
                },
                [CommandParameter]@{
                    Keys        = @("ls");
                    Name        = "ls";
                    Description = "list teams/users from organizations/teams";
                },
                [CommandParameter]@{
                    Keys        = @("rm");
                    Name        = "rm";
                    Description = "remove a user from a team they belong to";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "Test a package";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [ValueParameter]@{
                    Keys        = @("--script-shell");
                    Name        = "shell to user";
                    Description = "shell to user";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("token");
            Name        = "token";
            Description = "Manage your authentication tokens";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "create a new authentication token";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--cidr");
                            Name        = "addresses used to limit access";
                            Description = "addresses used to limit access";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--read-only");
                            Name        = "mark token as unable to publish";
                            Description = "mark token as unable to publish";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "show a table of all active authentication tokens";
                },
                [CommandParameter]@{
                    Keys        = @("revoke");
                    Name        = "revoke";
                    Description = "remove an authentication token from the registry";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("uninstall");
            Name        = "uninstall";
            Description = "Remove a package";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--no-save");
                    Name        = "Prevents saving to ``dependencies``";
                    Description = "Prevents saving to ``dependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save", "-S");
                    Name        = "Package will appear in your ``dependencies``";
                    Description = "Package will appear in your ``dependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-dev");
                    Name        = "Package will appear in your ``devDependencies``";
                    Description = "Package will appear in your ``devDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-optional");
                    Name        = "Package will appear in your ``optionalDependencies``";
                    Description = "Package will appear in your ``optionalDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-peer");
                    Name        = "Package will appear in your ``peerDependencies``";
                    Description = "Package will appear in your ``peerDependencies``";
                },
                [FlagParameter]@{
                    Keys        = @("--save-prod");
                    Name        = "Package will appear in your ``dependencies``.";
                    Description = "Package will appear in your ``dependencies``.";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("unpublish");
            Name        = "unpublish";
            Description = "Remove a package from the registry";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "only report changes";
                    Description = "only report changes";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "remove various protections against unfortunate side effects";
                    Description = "remove various protections against unfortunate side effects";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("unstar");
            Name        = "unstar";
            Description = "Remove an item from your favorite packages";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--otp");
                    Name        = "one-time password";
                    Description = "one-time password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--unicode");
                    Name        = "use unicode in output";
                    Description = "use unicode in output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "Update packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--audit");
                    Name        = "submit audit reports";
                    Description = "submit audit reports";
                },
                [FlagParameter]@{
                    Keys        = @("--bin-links");
                    Name        = "Create symlinks for package executables";
                    Description = "Create symlinks for package executables";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Only report changes";
                    Description = "Only report changes";
                },
                [FlagParameter]@{
                    Keys        = @("--fund");
                    Name        = "Display funding message";
                    Description = "Display funding message";
                },
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "operate in global mode";
                    Description = "operate in global mode";
                },
                [FlagParameter]@{
                    Keys        = @("--global-style");
                    Name        = "Use global layout";
                    Description = "Use global layout";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-scripts");
                    Name        = "do not run scripts specified in package.json";
                    Description = "do not run scripts specified in package.json";
                },
                [FlagParameter]@{
                    Keys        = @("--legacy-bundling");
                    Name        = "Use legacy bundling";
                    Description = "Use legacy bundling";
                },
                [ValueParameter]@{
                    Keys        = @("--omit");
                    Name        = "omit dependency types";
                    Description = "omit dependency types";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--package-lock");
                    Name        = "Only update package-lock.json";
                    Description = "Only update package-lock.json";
                },
                [FlagParameter]@{
                    Keys        = @("--strict-peer-deps");
                    Name        = "Fail and abort for any conflicting ``peerDependencies``";
                    Description = "Fail and abort for any conflicting ``peerDependencies``";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Bump a package version";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-same-version");
                    Name        = "prevent error when same version as the current one is used";
                    Description = "prevent error when same version as the current one is used";
                },
                [FlagParameter]@{
                    Keys        = @("--commit-hooks");
                    Name        = "run git commit hooks";
                    Description = "run git commit hooks";
                },
                [FlagParameter]@{
                    Keys        = @("--git-tag-version");
                    Name        = "tag the commit";
                    Description = "tag the commit";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [ValueParameter]@{
                    Keys        = @("--prerelease-id");
                    Name        = "prerelease identififer";
                    Description = "prerelease identififer";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--sign-git-tag");
                    Name        = "sign with gpg signature";
                    Description = "sign with gpg signature";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("view");
            Name        = "view";
            Description = "View registry info";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "output as json";
                    Description = "output as json";
                },
                [ValueParameter]@{
                    Keys        = @("--workspace", "-w");
                    Name        = "Enable running a command in the context of the given workspace";
                    Description = "Enable running a command in the context of the given workspace";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--workspaces");
                    Name        = "Enable running a command in the context fo all workspaces";
                    Description = "Enable running a command in the context fo all workspaces";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("whoami");
            Name        = "whoami";
            Description = "Display npm username";
        }
    )
}
