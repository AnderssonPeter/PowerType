# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://pip.pypa.io/en/stable/";
    Keys        = @("pip");
    Name        = "pip";
    Description = "package manager for Python packages";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cache-dir");
            Name        = "Store the cache data in dir";
            Description = "Store the cache data in dir";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cert");
            Name        = "Path to alternate CA bundle";
            Description = "Path to alternate CA bundle";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--client-cert");
            Name        = "Path to SSL client certificate, a single file";
            Description = "Path to SSL client certificate, a single file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disable-pip-version-check");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--exists-action");
            Name        = "Default action when a path already exists";
            Description = "Default action when a path already exists";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help";
            Description = "Show help";
        },
        [FlagParameter]@{
            Keys        = @("--isolated");
            Name        = "Run pip in an isolated mode";
            Description = "Run pip in an isolated mode";
        },
        [ValueParameter]@{
            Keys        = @("--log");
            Name        = "Path to a verbose appending log";
            Description = "Path to a verbose appending log";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-cache-dir");
            Name        = "Disable the cache";
            Description = "Disable the cache";
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "Suppress colored output";
            Description = "Suppress colored output";
        },
        [FlagParameter]@{
            Keys        = @("--no-input");
            Name        = "Disable prompting for input";
            Description = "Disable prompting for input";
        },
        [FlagParameter]@{
            Keys        = @("--no-python-version-warning");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--proxy");
            Name        = "Specify a proxy in the form";
            Description = "Specify a proxy in the form";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Give less output";
            Description = "Give less output";
        },
        [ValueParameter]@{
            Keys        = @("--retries");
            Name        = "Maximum number of retries each connection should";
            Description = "Maximum number of retries each connection should";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--timeout");
            Name        = "Set the socket timeout (default 15 seconds)";
            Description = "Set the socket timeout (default 15 seconds)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--trusted-host");
            Name        = "Mark this host or host:port pair as trusted";
            Description = "Mark this host or host:port pair as trusted";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--use-deprecated");
            Name        = "Enable deprecated functionality";
            Description = "Enable deprecated functionality";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--use-feature");
            Name        = "Enable new functionality";
            Description = "Enable new functionality";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Give more output";
            Description = "Give more output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version and exit";
            Description = "Show version and exit";
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
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("cache");
            Name        = "cache";
            Description = "Inspect and manage pip's wheel cache";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("dir");
                    Name        = "dir";
                    Description = "Show the cache directory";
                },
                [CommandParameter]@{
                    Keys        = @("info");
                    Name        = "info";
                    Description = "Show information about the cache";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List filenames of packages stored in the cache";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Select the output format";
                            Description = "Select the output format";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("purge");
                    Name        = "purge";
                    Description = "Remove all items from the cache";
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "Remove one or more package from the cache";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("check");
            Name        = "check";
            Description = "Verify installed packages have compatible dependencies";
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "A helper command to be used for command completion";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--bash", "-b");
                    Name        = "Emit completion code for bash";
                    Description = "Emit completion code for bash";
                },
                [FlagParameter]@{
                    Keys        = @("--fish", "-f");
                    Name        = "Emit completion code for fish";
                    Description = "Emit completion code for fish";
                },
                [FlagParameter]@{
                    Keys        = @("--zsh", "-z");
                    Name        = "Emit completion code for zsh";
                    Description = "Emit completion code for zsh";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Manage local and global configuration";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--global");
                    Name        = "Use the system-wide configuration file only";
                    Description = "Use the system-wide configuration file only";
                },
                [FlagParameter]@{
                    Keys        = @("--site");
                    Name        = "Use the current environment configuration file only";
                    Description = "Use the current environment configuration file only";
                },
                [FlagParameter]@{
                    Keys        = @("--user");
                    Name        = "Use the user configuration file only";
                    Description = "Use the user configuration file only";
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "Edit the configuration file in an editor";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--editor");
                            Name        = "Editor to use to edit the file";
                            Description = "Editor to use to edit the file";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Get the value associated with name";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List the active configuration";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Set the value";
                },
                [CommandParameter]@{
                    Keys        = @("unset");
                    Name        = "unset";
                    Description = "Unset the value associated with name";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("debug");
            Name        = "debug";
            Description = "Display debug information";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--abi");
                    Name        = "Only use wheels compatible with Python abi";
                    Description = "Only use wheels compatible with Python abi";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--implementation");
                    Name        = "Only use wheels compatible with Python implementation";
                    Description = "Only use wheels compatible with Python implementation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Only use wheels compatible with <platform>";
                    Description = "Only use wheels compatible with <platform>";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--python-version");
                    Name        = "The Python interpreter version to use for wheel";
                    Description = "The Python interpreter version to use for wheel";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("download");
            Name        = "download";
            Description = "Download packages";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--abi");
                    Name        = "Only use wheels compatible with Python abi <abi>";
                    Description = "Only use wheels compatible with Python abi <abi>";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--constraint", "-c");
                    Name        = "Constrain versions using the given constraints file";
                    Description = "Constrain versions using the given constraints file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dest", "-d");
                    Name        = "Download packages into <dir>";
                    Description = "Download packages into <dir>";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--extra-index-url");
                    Name        = "Extra URLs of package indexes to use";
                    Description = "Extra URLs of package indexes to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--find-links", "-f");
                    Name        = "If a URL or path to an html file, then parse for links";
                    Description = "If a URL or path to an html file, then parse for links";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--global-option");
                    Name        = "Extra global options to be supplied to the setup.py call";
                    Description = "Extra global options to be supplied to the setup.py call";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--implementation");
                    Name        = "Only use wheels compatible with Python implementation <implementation>";
                    Description = "Only use wheels compatible with Python implementation <implementation>";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--index-url", "-i");
                    Name        = "Base URL of the Python Package Index";
                    Description = "Base URL of the Python Package Index";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--no-binary");
                    Name        = "Do not use binary packages";
                    Description = "Do not use binary packages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-build-isolation");
                    Name        = "Disable isolation when building a modern source distribution";
                    Description = "Disable isolation when building a modern source distribution";
                },
                [FlagParameter]@{
                    Keys        = @("--no-clean");
                    Name        = "Don't clean up build directories.";
                    Description = "Don't clean up build directories.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Don't install package dependencies";
                    Description = "Don't install package dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--no-index");
                    Name        = "Ignore package index";
                    Description = "Ignore package index";
                },
                [ValueParameter]@{
                    Keys        = @("--only-binary");
                    Name        = "Do not use source packages";
                    Description = "Do not use source packages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Only use wheels compatible with <platform>";
                    Description = "Only use wheels compatible with <platform>";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pre");
                    Name        = "Include pre-release and development versions";
                    Description = "Include pre-release and development versions";
                },
                [FlagParameter]@{
                    Keys        = @("--prefer-binary");
                    Name        = "Prefer older binary packages over newer source packages";
                    Description = "Prefer older binary packages over newer source packages";
                },
                [ValueParameter]@{
                    Keys        = @("--progress-bar");
                    Name        = "Specify type of progress to be displayed";
                    Description = "Specify type of progress to be displayed";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--python-version");
                    Name        = "The Python interpreter version to use for wheel";
                    Description = "The Python interpreter version to use for wheel";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--require-hashes");
                    Name        = "Require a hash to check each requirement against";
                    Description = "Require a hash to check each requirement against";
                },
                [ValueParameter]@{
                    Keys        = @("--requirement", "-r");
                    Name        = "Install from the given requirements file";
                    Description = "Install from the given requirements file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--src");
                    Name        = "Directory to check out editable projects into";
                    Description = "Directory to check out editable projects into";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--use-pep517");
                    Name        = "Use PEP 517 for building source distributions";
                    Description = "Use PEP 517 for building source distributions";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("freeze");
            Name        = "freeze";
            Description = "Output installed packages in requirements format";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Do not skip pip, distribute, setuptools, wheel";
                    Description = "Do not skip pip, distribute, setuptools, wheel";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude specified package from the output";
                    Description = "Exclude specified package from the output";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--exclude-editable");
                    Name        = "Exclude editable package from output.";
                    Description = "Exclude editable package from output.";
                },
                [ValueParameter]@{
                    Keys        = @("--find-links", "-f");
                    Name        = "URL for finding packages, which will be added to the output.";
                    Description = "URL for finding packages, which will be added to the output.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--local", "-l");
                    Name        = "If in a virtualenv that has global access, do not output globally-installed packages.";
                    Description = "If in a virtualenv that has global access, do not output globally-installed packages.";
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "Restrict to the specified installation path for listing packages";
                    Description = "Restrict to the specified installation path for listing packages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--requirement", "-r");
                    Name        = "Use the order in the given requirements file and its comments when generating output.";
                    Description = "Use the order in the given requirements file and its comments when generating output.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--user");
                    Name        = "Only output packages installed in user-site.";
                    Description = "Only output packages installed in user-site.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("hash");
            Name        = "hash";
            Description = "Compute a hash of a local package archive";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--algorithm", "-a");
                    Name        = "The hash algorithm to use";
                    Description = "The hash algorithm to use";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Show help for commands";
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Install packages";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--abi");
                    Name        = "Only use wheels compatible with Python abi";
                    Description = "Only use wheels compatible with Python abi";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--compile");
                    Name        = "Compile Python source files to bytecode";
                    Description = "Compile Python source files to bytecode";
                },
                [ValueParameter]@{
                    Keys        = @("--constraint", "-c");
                    Name        = "Constrain versions using the given constraints file";
                    Description = "Constrain versions using the given constraints file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--editable", "-e");
                    Name        = "Install a project in editable mode";
                    Description = "Install a project in editable mode";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--extra-index-url");
                    Name        = "Extra URLs of package indexes to use in addition to --index-url";
                    Description = "Extra URLs of package indexes to use in addition to --index-url";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--find-links", "-f");
                    Name        = "If a URL or path to an html file, then parse for links to archives such as sdist";
                    Description = "If a URL or path to an html file, then parse for links to archives such as sdist";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force-reinstall");
                    Name        = "Reinstall all packages even if they are already up-to-date";
                    Description = "Reinstall all packages even if they are already up-to-date";
                },
                [ValueParameter]@{
                    Keys        = @("--global-option");
                    Name        = "Extra global options to be supplied to the setup.py call before the install command";
                    Description = "Extra global options to be supplied to the setup.py call before the install command";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-installed", "-I");
                    Name        = "Ignore the installed packages, overwriting them";
                    Description = "Ignore the installed packages, overwriting them";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-requires-python");
                    Name        = "Ignore the Requires-Python information";
                    Description = "Ignore the Requires-Python information";
                },
                [ValueParameter]@{
                    Keys        = @("--implementation");
                    Name        = "Only use wheels compatible with Python implementation <implementation>";
                    Description = "Only use wheels compatible with Python implementation <implementation>";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--index-url", "-i");
                    Name        = "Base URL of the Python Package Index";
                    Description = "Base URL of the Python Package Index";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--install-option");
                    Name        = "Extra arguments to be supplied to the setup.py install command";
                    Description = "Extra arguments to be supplied to the setup.py install command";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--no-binary");
                    Name        = "Do not use binary packages";
                    Description = "Do not use binary packages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-build-isolation");
                    Name        = "Disable isolation when building a modern source distribution";
                    Description = "Disable isolation when building a modern source distribution";
                },
                [FlagParameter]@{
                    Keys        = @("--no-clean");
                    Name        = "Don't clean up build directories";
                    Description = "Don't clean up build directories";
                },
                [FlagParameter]@{
                    Keys        = @("--no-compile");
                    Name        = "Do not compile Python source files to bytecode";
                    Description = "Do not compile Python source files to bytecode";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Don't install package dependencies";
                    Description = "Don't install package dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--no-index");
                    Name        = "Ignore package index";
                    Description = "Ignore package index";
                },
                [FlagParameter]@{
                    Keys        = @("--no-warn-conflicts");
                    Name        = "Do not warn about broken dependencies";
                    Description = "Do not warn about broken dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--no-warn-script-location");
                    Name        = "Do not warn when installing scripts outside PATH";
                    Description = "Do not warn when installing scripts outside PATH";
                },
                [ValueParameter]@{
                    Keys        = @("--only-binary");
                    Name        = "Do not use source packages";
                    Description = "Do not use source packages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--platform");
                    Name        = "Only use wheels compatible with <platform>";
                    Description = "Only use wheels compatible with <platform>";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pre");
                    Name        = "Include pre-release and development versions";
                    Description = "Include pre-release and development versions";
                },
                [FlagParameter]@{
                    Keys        = @("--prefer-binary");
                    Name        = "Prefer older binary packages over newer source packages";
                    Description = "Prefer older binary packages over newer source packages";
                },
                [ValueParameter]@{
                    Keys        = @("--prefix");
                    Name        = "Installation prefix where lib, bin and other top-level folders are placed";
                    Description = "Installation prefix where lib, bin and other top-level folders are placed";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--progress-bar");
                    Name        = "Specify type of progress to be displayed";
                    Description = "Specify type of progress to be displayed";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--python-version");
                    Name        = "The Python interpreter version to use for wheel";
                    Description = "The Python interpreter version to use for wheel";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--require-hashes");
                    Name        = "Require a hash to check each requirement against";
                    Description = "Require a hash to check each requirement against";
                },
                [ValueParameter]@{
                    Keys        = @("--requirement", "-r");
                    Name        = "Install from the given requirements file";
                    Description = "Install from the given requirements file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--root");
                    Name        = "Install everything relative to this alternate root directory";
                    Description = "Install everything relative to this alternate root directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--src");
                    Name        = "Directory to check out editable projects into";
                    Description = "Directory to check out editable projects into";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "Install packages into <dir>";
                    Description = "Install packages into <dir>";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--upgrade", "-U");
                    Name        = "Upgrade all specified packages to the newest available version";
                    Description = "Upgrade all specified packages to the newest available version";
                },
                [ValueParameter]@{
                    Keys        = @("--upgrade-strategy");
                    Name        = "Determines how dependency upgrading should be handled";
                    Description = "Determines how dependency upgrading should be handled";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--use-pep517");
                    Name        = "Use PEP 517 for building source distributions";
                    Description = "Use PEP 517 for building source distributions";
                },
                [FlagParameter]@{
                    Keys        = @("--user");
                    Name        = "Install to the Python user install directory for";
                    Description = "Install to the Python user install directory for";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "List installed packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--editable", "-e");
                    Name        = "List editable projects.";
                    Description = "List editable projects.";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude specified package from the output";
                    Description = "Exclude specified package from the output";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--exclude-editable");
                    Name        = "Exclude editable package from output.";
                    Description = "Exclude editable package from output.";
                },
                [ValueParameter]@{
                    Keys        = @("--extra-index-url");
                    Name        = "Extra URLs of package indexes to use in addition to --index-url.";
                    Description = "Extra URLs of package indexes to use in addition to --index-url.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--find-links", "-f");
                    Name        = "parse file for links to archives";
                    Description = "parse file for links to archives";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Select the output format";
                    Description = "Select the output format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--include-editable");
                    Name        = "Include editable package from output.";
                    Description = "Include editable package from output.";
                },
                [ValueParameter]@{
                    Keys        = @("--index-url", "-i");
                    Name        = "Base URL of the Python Package Index";
                    Description = "Base URL of the Python Package Index";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--local", "-l");
                    Name        = "do not list globally-installed packages.";
                    Description = "do not list globally-installed packages.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-index");
                    Name        = "Ignore package index";
                    Description = "Ignore package index";
                },
                [FlagParameter]@{
                    Keys        = @("--not-required");
                    Name        = "List packages that are not dependencies of installed packages.";
                    Description = "List packages that are not dependencies of installed packages.";
                },
                [FlagParameter]@{
                    Keys        = @("--outdated", "-o");
                    Name        = "List outdated packages";
                    Description = "List outdated packages";
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "Restrict to the specified installation path for listing packages";
                    Description = "Restrict to the specified installation path for listing packages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pre");
                    Name        = "Include pre-release and development versions.";
                    Description = "Include pre-release and development versions.";
                },
                [FlagParameter]@{
                    Keys        = @("--uptodate", "-u");
                    Name        = "List uptodate packages";
                    Description = "List uptodate packages";
                },
                [FlagParameter]@{
                    Keys        = @("--user");
                    Name        = "Only output packages installed in user-site.";
                    Description = "Only output packages installed in user-site.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "Search for PyPI packages";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--index", "-i");
                    Name        = "Base URL of Python Package Index (default";
                    Description = "Base URL of Python Package Index (default";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("show");
            Name        = "show";
            Description = "Show information about one or more installed packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--files", "-f");
                    Name        = "Show the full list of installed files for each";
                    Description = "Show the full list of installed files for each";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("uninstall");
            Name        = "uninstall";
            Description = "Uninstall packages";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--requirement", "-r");
                    Name        = "Uninstall all the packages listed in the given requirements file.";
                    Description = "Uninstall all the packages listed in the given requirements file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Don't ask for confirmation of uninstall deletions.";
                    Description = "Don't ask for confirmation of uninstall deletions.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("wheel");
            Name        = "wheel";
            Description = "Build Wheel archives for your requirements and dependencies";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--build-option");
                    Name        = "Extra arguments to be supplied to 'setup.py bdist_wheel'.";
                    Description = "Extra arguments to be supplied to 'setup.py bdist_wheel'.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--constraint", "-c");
                    Name        = "Constrain versions using the given constraints file.";
                    Description = "Constrain versions using the given constraints file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--editable", "-e");
                    Name        = "Install a project in editable mode from path.";
                    Description = "Install a project in editable mode from path.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--extra-index-url");
                    Name        = "Extra URLs of package indexes to use in addition to --index-url.";
                    Description = "Extra URLs of package indexes to use in addition to --index-url.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--find-links", "-f");
                    Name        = "parse file for links to archives";
                    Description = "parse file for links to archives";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--global-option");
                    Name        = "Extra global options to be supplied to the setup.py call.";
                    Description = "Extra global options to be supplied to the setup.py call.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-requires-python");
                    Name        = "Ignore the Requires-Python information.";
                    Description = "Ignore the Requires-Python information.";
                },
                [ValueParameter]@{
                    Keys        = @("--index-url", "-i");
                    Name        = "Base URL of the Python Package Index";
                    Description = "Base URL of the Python Package Index";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--no-binary");
                    Name        = "Do not use binary packages.";
                    Description = "Do not use binary packages.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-build-isolation");
                    Name        = "Disable isolation when building a modern source distribution.";
                    Description = "Disable isolation when building a modern source distribution.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-clean");
                    Name        = "Don't clean up build directories.";
                    Description = "Don't clean up build directories.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Don't install package dependencies.";
                    Description = "Don't install package dependencies.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-index");
                    Name        = "Ignore package index.";
                    Description = "Ignore package index.";
                },
                [ValueParameter]@{
                    Keys        = @("--only-binary");
                    Name        = "Do not use source packages.";
                    Description = "Do not use source packages.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pre");
                    Name        = "Include pre-release and development versions.";
                    Description = "Include pre-release and development versions.";
                },
                [FlagParameter]@{
                    Keys        = @("--prefer-binary");
                    Name        = "Prefer older binary packages over newer source packages.";
                    Description = "Prefer older binary packages over newer source packages.";
                },
                [ValueParameter]@{
                    Keys        = @("--progress-bar");
                    Name        = "Specify type of progress to be displayed";
                    Description = "Specify type of progress to be displayed";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--require-hashes");
                    Name        = "Require a hash to check each requirement against";
                    Description = "Require a hash to check each requirement against";
                },
                [ValueParameter]@{
                    Keys        = @("--requirement", "-r");
                    Name        = "Install from the given requirements file.";
                    Description = "Install from the given requirements file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--src");
                    Name        = "Directory to check out editable projects into.";
                    Description = "Directory to check out editable projects into.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--use-pep517");
                    Name        = "Use PEP 517 for building source distributions.";
                    Description = "Use PEP 517 for building source distributions.";
                },
                [ValueParameter]@{
                    Keys        = @("--wheel-dir", "-w");
                    Name        = "Build wheels into <dir>";
                    Description = "Build wheels into <dir>";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
