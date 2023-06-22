# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://helm.sh/";
    Keys        = @("helm");
    Name        = "helm";
    Description = "The Helm package manager for Kubernetes.";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--add-dir-header");
            Name        = "If true, adds the file directory to the header of the log messages";
            Description = "If true, adds the file directory to the header of the log messages";
        },
        [FlagParameter]@{
            Keys        = @("--alsologtostderr");
            Name        = "log to standard error as well as files";
            Description = "log to standard error as well as files";
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "enable verbose output";
            Description = "enable verbose output";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for helm";
            Description = "help for helm";
        },
        [ValueParameter]@{
            Keys        = @("--kube-apiserver");
            Name        = "the address and the port for the Kubernetes API server";
            Description = "the address and the port for the Kubernetes API server";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--kube-as-group");
            Name        = "group to impersonate for the operation, this flag can be repeated to specify multiple groups.";
            Description = "group to impersonate for the operation, this flag can be repeated to specify multiple groups.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--kube-as-user");
            Name        = "username to impersonate for the operation";
            Description = "username to impersonate for the operation";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--kube-ca-file");
            Name        = "the certificate authority file for the Kubernetes API server connection";
            Description = "the certificate authority file for the Kubernetes API server connection";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--kube-context");
            Name        = "name of the kubeconfig context to use";
            Description = "name of the kubeconfig context to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--kube-token");
            Name        = "bearer token used for authentication";
            Description = "bearer token used for authentication";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--kubeconfig");
            Name        = "path to the kubeconfig file";
            Description = "path to the kubeconfig file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-backtrace-at");
            Name        = "when logging hits line file:N, emit a stack trace";
            Description = "when logging hits line file:N, emit a stack trace";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-dir");
            Name        = "If non-empty, write log files in this directory";
            Description = "If non-empty, write log files in this directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-file");
            Name        = "If non-empty, use this log file";
            Description = "If non-empty, use this log file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-file-max-size");
            Name        = "Defines the maximum size a log file can grow to. Unit is megabytes. If the value is 0, the maximum file size is unlimited.";
            Description = "Defines the maximum size a log file can grow to. Unit is megabytes. If the value is 0, the maximum file size is unlimited.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--logtostderr");
            Name        = "log to standard error instead of files";
            Description = "log to standard error instead of files";
        },
        [ValueParameter]@{
            Keys        = @("--namespace", "-n");
            Name        = "namespace scope for this request";
            Description = "namespace scope for this request";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--one-output");
            Name        = "If true, only write logs to their native severity level (vs also writing to each lower severity level)";
            Description = "If true, only write logs to their native severity level (vs also writing to each lower severity level)";
        },
        [ValueParameter]@{
            Keys        = @("--registry-config");
            Name        = "path to the registry config file";
            Description = "path to the registry config file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--repository-cache");
            Name        = "path to the file containing cached repository indexes";
            Description = "path to the file containing cached repository indexes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--repository-config");
            Name        = "path to the file containing repository names and URLs";
            Description = "path to the file containing repository names and URLs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--skip-headers");
            Name        = "If true, avoid header prefixes in the log messages";
            Description = "If true, avoid header prefixes in the log messages";
        },
        [FlagParameter]@{
            Keys        = @("--skip-log-headers");
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
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "generate autocompletion scripts for the specified shell";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("bash");
                    Name        = "bash";
                    Description = "generate autocompletion script for bash";
                },
                [CommandParameter]@{
                    Keys        = @("fish");
                    Name        = "fish";
                    Description = "generate autocompletion script for fish";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("zsh");
                    Name        = "zsh";
                    Description = "generate autocompletion script for zsh";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("create");
            Name        = "create";
            Description = "create a new chart with the given name";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--starter", "-p");
                    Name        = "the name or absolute path to Helm starter scaffold";
                    Description = "the name or absolute path to Helm starter scaffold";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("dependency");
            Name        = "dependency";
            Description = "manage a chart's dependencies";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("build");
                    Name        = "build";
                    Description = "rebuild the charts/ directory based on the Chart.lock file";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--keyring");
                            Name        = "keyring containing public keys";
                            Description = "keyring containing public keys";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-refresh");
                            Name        = "do not refresh the local repository cache";
                            Description = "do not refresh the local repository cache";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verify");
                            Name        = "verify the packages against signatures";
                            Description = "verify the packages against signatures";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list the dependencies for the given chart";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--max-col-width");
                            Name        = "maximum column width for output table";
                            Description = "maximum column width for output table";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "update charts/ based on the contents of Chart.yaml";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--keyring");
                            Name        = "keyring containing public keys";
                            Description = "keyring containing public keys";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-refresh");
                            Name        = "do not refresh the local repository cache";
                            Description = "do not refresh the local repository cache";
                        },
                        [FlagParameter]@{
                            Keys        = @("--verify");
                            Name        = "verify the packages against signatures";
                            Description = "verify the packages against signatures";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("diff");
            Name        = "diff";
            Description = "Preview helm upgrade changes as a diff";
        },
        [CommandParameter]@{
            Keys        = @("env");
            Name        = "env";
            Description = "helm client environment information";
        },
        [CommandParameter]@{
            Keys        = @("get");
            Name        = "get";
            Description = "download extended information of a named release";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("all");
                    Name        = "all";
                    Description = "download all information for a named release";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--revision");
                            Name        = "get the named release with revision";
                            Description = "get the named release with revision";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "go template for formatting the output, eg: {{.Release.Name}}";
                            Description = "go template for formatting the output, eg: {{.Release.Name}}";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("hooks");
                    Name        = "hooks";
                    Description = "download all hooks for a named release";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--revision");
                            Name        = "get the named release with revision";
                            Description = "get the named release with revision";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("manifest");
                    Name        = "manifest";
                    Description = "download the manifest for a named release";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--revision");
                            Name        = "get the named release with revision";
                            Description = "get the named release with revision";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("notes");
                    Name        = "notes";
                    Description = "download the notes for a named release";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--revision");
                            Name        = "get the named release with revision";
                            Description = "get the named release with revision";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("values");
                    Name        = "values";
                    Description = "download the values file for a named release";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all", "-a");
                            Name        = "dump all (computed) values";
                            Description = "dump all (computed) values";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                            Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--revision");
                            Name        = "get the named release with revision";
                            Description = "get the named release with revision";
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
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("history");
            Name        = "history";
            Description = "fetch release history";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--max");
                    Name        = "maximum number of revision to include in history";
                    Description = "maximum number of revision to include in history";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                    Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "install a chart";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--atomic");
                    Name        = "if set, the installation process deletes the installation on failure. The --wait flag will be set automatically if --atomic is used";
                    Description = "if set, the installation process deletes the installation on failure. The --wait flag will be set automatically if --atomic is used";
                },
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                    Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cert-file");
                    Name        = "identify HTTPS client using this SSL certificate file";
                    Description = "identify HTTPS client using this SSL certificate file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--create-namespace");
                    Name        = "create the release namespace if not present";
                    Description = "create the release namespace if not present";
                },
                [FlagParameter]@{
                    Keys        = @("--dependency-update");
                    Name        = "update dependencies if they are missing before installing the chart";
                    Description = "update dependencies if they are missing before installing the chart";
                },
                [ValueParameter]@{
                    Keys        = @("--description");
                    Name        = "add a custom description";
                    Description = "add a custom description";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--devel");
                    Name        = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                    Description = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-openapi-validation");
                    Name        = "if set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema";
                    Description = "if set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "simulate an install";
                    Description = "simulate an install";
                },
                [FlagParameter]@{
                    Keys        = @("--generate-name", "-g");
                    Name        = "generate the name (and omit the NAME parameter)";
                    Description = "generate the name (and omit the NAME parameter)";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure-skip-tls-verify");
                    Name        = "skip tls certificate checks for the chart download";
                    Description = "skip tls certificate checks for the chart download";
                },
                [ValueParameter]@{
                    Keys        = @("--key-file");
                    Name        = "identify HTTPS client using this SSL key file";
                    Description = "identify HTTPS client using this SSL key file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keyring");
                    Name        = "location of public keys used for verification";
                    Description = "location of public keys used for verification";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name-template");
                    Name        = "specify template used to name the release";
                    Description = "specify template used to name the release";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-hooks");
                    Name        = "prevent hooks from running during install";
                    Description = "prevent hooks from running during install";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                    Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pass-credentials");
                    Name        = "pass credentials to all domains";
                    Description = "pass credentials to all domains";
                },
                [ValueParameter]@{
                    Keys        = @("--password");
                    Name        = "chart repository password where to locate the requested chart";
                    Description = "chart repository password where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--post-renderer");
                    Name        = "the path to an executable to be used for post rendering. If it exists in `$PATH, the binary will be used, otherwise it will try to look for the executable at the given path";
                    Description = "the path to an executable to be used for post rendering. If it exists in `$PATH, the binary will be used, otherwise it will try to look for the executable at the given path";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--render-subchart-notes");
                    Name        = "if set, render subchart notes along with the parent";
                    Description = "if set, render subchart notes along with the parent";
                },
                [FlagParameter]@{
                    Keys        = @("--replace");
                    Name        = "re-use the given name, only if that name is a deleted release which remains in the history. This is unsafe in production";
                    Description = "re-use the given name, only if that name is a deleted release which remains in the history. This is unsafe in production";
                },
                [ValueParameter]@{
                    Keys        = @("--repo");
                    Name        = "chart repository url where to locate the requested chart";
                    Description = "chart repository url where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set");
                    Name        = "set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    Description = "set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set-file");
                    Name        = "set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)";
                    Description = "set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set-string");
                    Name        = "set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    Description = "set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-crds");
                    Name        = "if set, no CRDs will be installed. By default, CRDs are installed if not already present";
                    Description = "if set, no CRDs will be installed. By default, CRDs are installed if not already present";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    Description = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--username");
                    Name        = "chart repository username where to locate the requested chart";
                    Description = "chart repository username where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--values", "-f");
                    Name        = "specify values in a YAML file or a URL (can specify multiple)";
                    Description = "specify values in a YAML file or a URL (can specify multiple)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verify");
                    Name        = "verify the package before using it";
                    Description = "verify the package before using it";
                },
                [ValueParameter]@{
                    Keys        = @("--version");
                    Name        = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                    Description = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--wait");
                    Name        = "if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout";
                    Description = "if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout";
                },
                [FlagParameter]@{
                    Keys        = @("--wait-for-jobs");
                    Name        = "if set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout";
                    Description = "if set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("lint");
            Name        = "lint";
            Description = "examine a chart for possible issues";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--set");
                    Name        = "set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    Description = "set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set-file");
                    Name        = "set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)";
                    Description = "set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set-string");
                    Name        = "set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    Description = "set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--strict");
                    Name        = "fail on lint warnings";
                    Description = "fail on lint warnings";
                },
                [ValueParameter]@{
                    Keys        = @("--values", "-f");
                    Name        = "specify values in a YAML file or a URL (can specify multiple)";
                    Description = "specify values in a YAML file or a URL (can specify multiple)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--with-subcharts");
                    Name        = "lint dependent charts";
                    Description = "lint dependent charts";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "list releases";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "show all releases without any filter applied";
                    Description = "show all releases without any filter applied";
                },
                [FlagParameter]@{
                    Keys        = @("--all-namespaces", "-A");
                    Name        = "list releases across all namespaces";
                    Description = "list releases across all namespaces";
                },
                [FlagParameter]@{
                    Keys        = @("--date", "-d");
                    Name        = "sort by release date";
                    Description = "sort by release date";
                },
                [FlagParameter]@{
                    Keys        = @("--deployed");
                    Name        = "show deployed releases. If no other is specified, this will be automatically enabled";
                    Description = "show deployed releases. If no other is specified, this will be automatically enabled";
                },
                [FlagParameter]@{
                    Keys        = @("--failed");
                    Name        = "show failed releases";
                    Description = "show failed releases";
                },
                [ValueParameter]@{
                    Keys        = @("--filter", "-f");
                    Name        = "a regular expression (Perl compatible). Any releases that match the expression will be included in the results";
                    Description = "a regular expression (Perl compatible). Any releases that match the expression will be included in the results";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--max", "-m");
                    Name        = "maximum number of releases to fetch";
                    Description = "maximum number of releases to fetch";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--offset");
                    Name        = "next release index in the list, used to offset from start value";
                    Description = "next release index in the list, used to offset from start value";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                    Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pending");
                    Name        = "show pending releases";
                    Description = "show pending releases";
                },
                [FlagParameter]@{
                    Keys        = @("--reverse", "-r");
                    Name        = "reverse the sort order";
                    Description = "reverse the sort order";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2). Works only for secret(default) and configmap storage backends.";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2). Works only for secret(default) and configmap storage backends.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--short", "-q");
                    Name        = "output short (quiet) listing format";
                    Description = "output short (quiet) listing format";
                },
                [FlagParameter]@{
                    Keys        = @("--superseded");
                    Name        = "show superseded releases";
                    Description = "show superseded releases";
                },
                [ValueParameter]@{
                    Keys        = @("--time-format");
                    Name        = "format time using golang time formatter. Example: --time-format `"2006-01-02 15:04:05Z0700`"";
                    Description = "format time using golang time formatter. Example: --time-format `"2006-01-02 15:04:05Z0700`"";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--uninstalled");
                    Name        = "show uninstalled releases (if 'helm uninstall --keep-history' was used)";
                    Description = "show uninstalled releases (if 'helm uninstall --keep-history' was used)";
                },
                [FlagParameter]@{
                    Keys        = @("--uninstalling");
                    Name        = "show releases that are currently being uninstalled";
                    Description = "show releases that are currently being uninstalled";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("package");
            Name        = "package";
            Description = "package a chart directory into a chart archive";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app-version");
                    Name        = "set the appVersion on the chart to this version";
                    Description = "set the appVersion on the chart to this version";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dependency-update", "-u");
                    Name        = "update dependencies from `"Chart.yaml`" to dir `"charts/`" before packaging";
                    Description = "update dependencies from `"Chart.yaml`" to dir `"charts/`" before packaging";
                },
                [ValueParameter]@{
                    Keys        = @("--destination", "-d");
                    Name        = "location to write the chart.";
                    Description = "location to write the chart.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--key");
                    Name        = "name of the key to use when signing. Used if --sign is true";
                    Description = "name of the key to use when signing. Used if --sign is true";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keyring");
                    Name        = "location of a public keyring";
                    Description = "location of a public keyring";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--passphrase-file");
                    Name        = "location of a file which contains the passphrase for the signing key. Use `"-`" in order to read from stdin.";
                    Description = "location of a file which contains the passphrase for the signing key. Use `"-`" in order to read from stdin.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--sign");
                    Name        = "use a PGP private key to sign this package";
                    Description = "use a PGP private key to sign this package";
                },
                [ValueParameter]@{
                    Keys        = @("--version");
                    Name        = "set the version on the chart to this semver version";
                    Description = "set the version on the chart to this semver version";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("plugin");
            Name        = "plugin";
            Description = "install, list, or uninstall Helm plugins";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("install");
                    Name        = "install";
                    Description = "install one or more Helm plugins";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "specify a version constraint. If this is not specified, the latest version is installed";
                            Description = "specify a version constraint. If this is not specified, the latest version is installed";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list installed Helm plugins";
                },
                [CommandParameter]@{
                    Keys        = @("uninstall");
                    Name        = "uninstall";
                    Description = "uninstall one or more Helm plugins";
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "update one or more Helm plugins";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pull");
            Name        = "pull";
            Description = "download a chart from a repository and (optionally) unpack it in local directory";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                    Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cert-file");
                    Name        = "identify HTTPS client using this SSL certificate file";
                    Description = "identify HTTPS client using this SSL certificate file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--destination", "-d");
                    Name        = "location to write the chart. If this and tardir are specified, tardir is appended to this";
                    Description = "location to write the chart. If this and tardir are specified, tardir is appended to this";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--devel");
                    Name        = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored.";
                    Description = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored.";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure-skip-tls-verify");
                    Name        = "skip tls certificate checks for the chart download";
                    Description = "skip tls certificate checks for the chart download";
                },
                [ValueParameter]@{
                    Keys        = @("--key-file");
                    Name        = "identify HTTPS client using this SSL key file";
                    Description = "identify HTTPS client using this SSL key file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keyring");
                    Name        = "location of public keys used for verification";
                    Description = "location of public keys used for verification";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pass-credentials");
                    Name        = "pass credentials to all domains";
                    Description = "pass credentials to all domains";
                },
                [ValueParameter]@{
                    Keys        = @("--password");
                    Name        = "chart repository password where to locate the requested chart";
                    Description = "chart repository password where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--prov");
                    Name        = "fetch the provenance file, but don't perform verification";
                    Description = "fetch the provenance file, but don't perform verification";
                },
                [ValueParameter]@{
                    Keys        = @("--repo");
                    Name        = "chart repository url where to locate the requested chart";
                    Description = "chart repository url where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--untar");
                    Name        = "if set to true, will untar the chart after downloading it";
                    Description = "if set to true, will untar the chart after downloading it";
                },
                [ValueParameter]@{
                    Keys        = @("--untardir");
                    Name        = "if untar is specified, this flag specifies the name of the directory into which the chart is expanded";
                    Description = "if untar is specified, this flag specifies the name of the directory into which the chart is expanded";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--username");
                    Name        = "chart repository username where to locate the requested chart";
                    Description = "chart repository username where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verify");
                    Name        = "verify the package before using it";
                    Description = "verify the package before using it";
                },
                [ValueParameter]@{
                    Keys        = @("--version");
                    Name        = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                    Description = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("repo");
            Name        = "repo";
            Description = "add, list, remove, update, and index chart repositories";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "add a chart repository";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-deprecated-repos");
                            Name        = "by default, this command will not allow adding official repos that have been permanently deleted. This disables that behavior";
                            Description = "by default, this command will not allow adding official repos that have been permanently deleted. This disables that behavior";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert-file");
                            Name        = "identify HTTPS client using this SSL certificate file";
                            Description = "identify HTTPS client using this SSL certificate file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force-update");
                            Name        = "replace (overwrite) the repo if it already exists";
                            Description = "replace (overwrite) the repo if it already exists";
                        },
                        [FlagParameter]@{
                            Keys        = @("--insecure-skip-tls-verify");
                            Name        = "skip tls certificate checks for the repository";
                            Description = "skip tls certificate checks for the repository";
                        },
                        [ValueParameter]@{
                            Keys        = @("--key-file");
                            Name        = "identify HTTPS client using this SSL key file";
                            Description = "identify HTTPS client using this SSL key file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-update");
                            Name        = "Ignored. Formerly, it would disabled forced updates. It is deprecated by force-update.";
                            Description = "Ignored. Formerly, it would disabled forced updates. It is deprecated by force-update.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pass-credentials");
                            Name        = "pass credentials to all domains";
                            Description = "pass credentials to all domains";
                        },
                        [ValueParameter]@{
                            Keys        = @("--password");
                            Name        = "chart repository password";
                            Description = "chart repository password";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "chart repository username";
                            Description = "chart repository username";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("index");
                    Name        = "index";
                    Description = "generate an index file given a directory containing packaged charts";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--merge");
                            Name        = "merge the generated index into the given index";
                            Description = "merge the generated index into the given index";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--url");
                            Name        = "url of chart repository";
                            Description = "url of chart repository";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list chart repositories";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                            Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "remove one or more chart repositories";
                },
                [CommandParameter]@{
                    Keys        = @("update");
                    Name        = "update";
                    Description = "update information of available charts locally from chart repositories";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rollback");
            Name        = "rollback";
            Description = "roll back a release to a previous revision";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--cleanup-on-fail");
                    Name        = "allow deletion of new resources created in this rollback when rollback fails";
                    Description = "allow deletion of new resources created in this rollback when rollback fails";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "simulate a rollback";
                    Description = "simulate a rollback";
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "force resource update through delete/recreate if needed";
                    Description = "force resource update through delete/recreate if needed";
                },
                [ValueParameter]@{
                    Keys        = @("--history-max");
                    Name        = "limit the maximum number of revisions saved per release. Use 0 for no limit";
                    Description = "limit the maximum number of revisions saved per release. Use 0 for no limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-hooks");
                    Name        = "prevent hooks from running during rollback";
                    Description = "prevent hooks from running during rollback";
                },
                [FlagParameter]@{
                    Keys        = @("--recreate-pods");
                    Name        = "performs pods restart for the resource if applicable";
                    Description = "performs pods restart for the resource if applicable";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    Description = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--wait");
                    Name        = "if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout";
                    Description = "if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout";
                },
                [FlagParameter]@{
                    Keys        = @("--wait-for-jobs");
                    Name        = "if set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout";
                    Description = "if set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "search for a keyword in charts";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("hub");
                    Name        = "hub";
                    Description = "search for charts in the Artifact Hub or your own hub instance";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--endpoint");
                            Name        = "Hub instance to query for charts";
                            Description = "Hub instance to query for charts";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--max-col-width");
                            Name        = "maximum column width for output table";
                            Description = "maximum column width for output table";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                            Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("repo");
                    Name        = "repo";
                    Description = "search repositories for a keyword in charts";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--devel");
                            Name        = "use development versions (alpha, beta, and release candidate releases), too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                            Description = "use development versions (alpha, beta, and release candidate releases), too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                        },
                        [ValueParameter]@{
                            Keys        = @("--max-col-width");
                            Name        = "maximum column width for output table";
                            Description = "maximum column width for output table";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                            Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--regexp", "-r");
                            Name        = "use regular expressions for searching repositories you have added";
                            Description = "use regular expressions for searching repositories you have added";
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "search using semantic versioning constraints on repositories you have added";
                            Description = "search using semantic versioning constraints on repositories you have added";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--versions", "-l");
                            Name        = "show the long listing, with each version of each chart on its own line, for repositories you have added";
                            Description = "show the long listing, with each version of each chart on its own line, for repositories you have added";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("show");
            Name        = "show";
            Description = "show information of a chart";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("all");
                    Name        = "all";
                    Description = "show all information of the chart";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert-file");
                            Name        = "identify HTTPS client using this SSL certificate file";
                            Description = "identify HTTPS client using this SSL certificate file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--devel");
                            Name        = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                            Description = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                        },
                        [FlagParameter]@{
                            Keys        = @("--insecure-skip-tls-verify");
                            Name        = "skip tls certificate checks for the chart download";
                            Description = "skip tls certificate checks for the chart download";
                        },
                        [ValueParameter]@{
                            Keys        = @("--key-file");
                            Name        = "identify HTTPS client using this SSL key file";
                            Description = "identify HTTPS client using this SSL key file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--keyring");
                            Name        = "location of public keys used for verification";
                            Description = "location of public keys used for verification";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pass-credentials");
                            Name        = "pass credentials to all domains";
                            Description = "pass credentials to all domains";
                        },
                        [ValueParameter]@{
                            Keys        = @("--password");
                            Name        = "chart repository password where to locate the requested chart";
                            Description = "chart repository password where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo");
                            Name        = "chart repository url where to locate the requested chart";
                            Description = "chart repository url where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "chart repository username where to locate the requested chart";
                            Description = "chart repository username where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verify");
                            Name        = "verify the package before using it";
                            Description = "verify the package before using it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                            Description = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("chart");
                    Name        = "chart";
                    Description = "show the chart's definition";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert-file");
                            Name        = "identify HTTPS client using this SSL certificate file";
                            Description = "identify HTTPS client using this SSL certificate file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--devel");
                            Name        = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                            Description = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                        },
                        [FlagParameter]@{
                            Keys        = @("--insecure-skip-tls-verify");
                            Name        = "skip tls certificate checks for the chart download";
                            Description = "skip tls certificate checks for the chart download";
                        },
                        [ValueParameter]@{
                            Keys        = @("--key-file");
                            Name        = "identify HTTPS client using this SSL key file";
                            Description = "identify HTTPS client using this SSL key file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--keyring");
                            Name        = "location of public keys used for verification";
                            Description = "location of public keys used for verification";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pass-credentials");
                            Name        = "pass credentials to all domains";
                            Description = "pass credentials to all domains";
                        },
                        [ValueParameter]@{
                            Keys        = @("--password");
                            Name        = "chart repository password where to locate the requested chart";
                            Description = "chart repository password where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo");
                            Name        = "chart repository url where to locate the requested chart";
                            Description = "chart repository url where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "chart repository username where to locate the requested chart";
                            Description = "chart repository username where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verify");
                            Name        = "verify the package before using it";
                            Description = "verify the package before using it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                            Description = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("readme");
                    Name        = "readme";
                    Description = "show the chart's README";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert-file");
                            Name        = "identify HTTPS client using this SSL certificate file";
                            Description = "identify HTTPS client using this SSL certificate file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--devel");
                            Name        = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                            Description = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                        },
                        [FlagParameter]@{
                            Keys        = @("--insecure-skip-tls-verify");
                            Name        = "skip tls certificate checks for the chart download";
                            Description = "skip tls certificate checks for the chart download";
                        },
                        [ValueParameter]@{
                            Keys        = @("--key-file");
                            Name        = "identify HTTPS client using this SSL key file";
                            Description = "identify HTTPS client using this SSL key file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--keyring");
                            Name        = "location of public keys used for verification";
                            Description = "location of public keys used for verification";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pass-credentials");
                            Name        = "pass credentials to all domains";
                            Description = "pass credentials to all domains";
                        },
                        [ValueParameter]@{
                            Keys        = @("--password");
                            Name        = "chart repository password where to locate the requested chart";
                            Description = "chart repository password where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo");
                            Name        = "chart repository url where to locate the requested chart";
                            Description = "chart repository url where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "chart repository username where to locate the requested chart";
                            Description = "chart repository username where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verify");
                            Name        = "verify the package before using it";
                            Description = "verify the package before using it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                            Description = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("values");
                    Name        = "values";
                    Description = "show the chart's values";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--cert-file");
                            Name        = "identify HTTPS client using this SSL certificate file";
                            Description = "identify HTTPS client using this SSL certificate file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--devel");
                            Name        = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                            Description = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                        },
                        [FlagParameter]@{
                            Keys        = @("--insecure-skip-tls-verify");
                            Name        = "skip tls certificate checks for the chart download";
                            Description = "skip tls certificate checks for the chart download";
                        },
                        [ValueParameter]@{
                            Keys        = @("--jsonpath");
                            Name        = "supply a JSONPath expression to filter the output";
                            Description = "supply a JSONPath expression to filter the output";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--key-file");
                            Name        = "identify HTTPS client using this SSL key file";
                            Description = "identify HTTPS client using this SSL key file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--keyring");
                            Name        = "location of public keys used for verification";
                            Description = "location of public keys used for verification";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--pass-credentials");
                            Name        = "pass credentials to all domains";
                            Description = "pass credentials to all domains";
                        },
                        [ValueParameter]@{
                            Keys        = @("--password");
                            Name        = "chart repository password where to locate the requested chart";
                            Description = "chart repository password where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--repo");
                            Name        = "chart repository url where to locate the requested chart";
                            Description = "chart repository url where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--username");
                            Name        = "chart repository username where to locate the requested chart";
                            Description = "chart repository username where to locate the requested chart";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--verify");
                            Name        = "verify the package before using it";
                            Description = "verify the package before using it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--version");
                            Name        = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                            Description = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("status");
            Name        = "status";
            Description = "display the status of the named release";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                    Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--revision");
                    Name        = "if set, display the status of the named release with revision";
                    Description = "if set, display the status of the named release with revision";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-desc");
                    Name        = "if set, display the description message of the named release";
                    Description = "if set, display the description message of the named release";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("template");
            Name        = "template";
            Description = "locally render templates";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--api-versions", "-a");
                    Name        = "Kubernetes api versions used for Capabilities.APIVersions";
                    Description = "Kubernetes api versions used for Capabilities.APIVersions";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--atomic");
                    Name        = "if set, the installation process deletes the installation on failure. The --wait flag will be set automatically if --atomic is used";
                    Description = "if set, the installation process deletes the installation on failure. The --wait flag will be set automatically if --atomic is used";
                },
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                    Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cert-file");
                    Name        = "identify HTTPS client using this SSL certificate file";
                    Description = "identify HTTPS client using this SSL certificate file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--create-namespace");
                    Name        = "create the release namespace if not present";
                    Description = "create the release namespace if not present";
                },
                [FlagParameter]@{
                    Keys        = @("--dependency-update");
                    Name        = "update dependencies if they are missing before installing the chart";
                    Description = "update dependencies if they are missing before installing the chart";
                },
                [ValueParameter]@{
                    Keys        = @("--description");
                    Name        = "add a custom description";
                    Description = "add a custom description";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--devel");
                    Name        = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                    Description = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-openapi-validation");
                    Name        = "if set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema";
                    Description = "if set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "simulate an install";
                    Description = "simulate an install";
                },
                [FlagParameter]@{
                    Keys        = @("--generate-name", "-g");
                    Name        = "generate the name (and omit the NAME parameter)";
                    Description = "generate the name (and omit the NAME parameter)";
                },
                [FlagParameter]@{
                    Keys        = @("--include-crds");
                    Name        = "include CRDs in the templated output";
                    Description = "include CRDs in the templated output";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure-skip-tls-verify");
                    Name        = "skip tls certificate checks for the chart download";
                    Description = "skip tls certificate checks for the chart download";
                },
                [FlagParameter]@{
                    Keys        = @("--is-upgrade");
                    Name        = "set .Release.IsUpgrade instead of .Release.IsInstall";
                    Description = "set .Release.IsUpgrade instead of .Release.IsInstall";
                },
                [ValueParameter]@{
                    Keys        = @("--key-file");
                    Name        = "identify HTTPS client using this SSL key file";
                    Description = "identify HTTPS client using this SSL key file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keyring");
                    Name        = "location of public keys used for verification";
                    Description = "location of public keys used for verification";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kube-version");
                    Name        = "Kubernetes version used for Capabilities.KubeVersion";
                    Description = "Kubernetes version used for Capabilities.KubeVersion";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name-template");
                    Name        = "specify template used to name the release";
                    Description = "specify template used to name the release";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-hooks");
                    Name        = "prevent hooks from running during install";
                    Description = "prevent hooks from running during install";
                },
                [ValueParameter]@{
                    Keys        = @("--output-dir");
                    Name        = "writes the executed templates to files in output-dir instead of stdout";
                    Description = "writes the executed templates to files in output-dir instead of stdout";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pass-credentials");
                    Name        = "pass credentials to all domains";
                    Description = "pass credentials to all domains";
                },
                [ValueParameter]@{
                    Keys        = @("--password");
                    Name        = "chart repository password where to locate the requested chart";
                    Description = "chart repository password where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--post-renderer");
                    Name        = "the path to an executable to be used for post rendering. If it exists in `$PATH, the binary will be used, otherwise it will try to look for the executable at the given path";
                    Description = "the path to an executable to be used for post rendering. If it exists in `$PATH, the binary will be used, otherwise it will try to look for the executable at the given path";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--release-name");
                    Name        = "use release name in the output-dir path.";
                    Description = "use release name in the output-dir path.";
                },
                [FlagParameter]@{
                    Keys        = @("--render-subchart-notes");
                    Name        = "if set, render subchart notes along with the parent";
                    Description = "if set, render subchart notes along with the parent";
                },
                [FlagParameter]@{
                    Keys        = @("--replace");
                    Name        = "re-use the given name, only if that name is a deleted release which remains in the history. This is unsafe in production";
                    Description = "re-use the given name, only if that name is a deleted release which remains in the history. This is unsafe in production";
                },
                [ValueParameter]@{
                    Keys        = @("--repo");
                    Name        = "chart repository url where to locate the requested chart";
                    Description = "chart repository url where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set");
                    Name        = "set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    Description = "set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set-file");
                    Name        = "set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)";
                    Description = "set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set-string");
                    Name        = "set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    Description = "set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--show-only", "-s");
                    Name        = "only show manifests rendered from the given templates";
                    Description = "only show manifests rendered from the given templates";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-crds");
                    Name        = "if set, no CRDs will be installed. By default, CRDs are installed if not already present";
                    Description = "if set, no CRDs will be installed. By default, CRDs are installed if not already present";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-tests");
                    Name        = "skip tests from templated output";
                    Description = "skip tests from templated output";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    Description = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--username");
                    Name        = "chart repository username where to locate the requested chart";
                    Description = "chart repository username where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "validate your manifests against the Kubernetes cluster you are currently pointing at. This is the same validation performed on an install";
                    Description = "validate your manifests against the Kubernetes cluster you are currently pointing at. This is the same validation performed on an install";
                },
                [ValueParameter]@{
                    Keys        = @("--values", "-f");
                    Name        = "specify values in a YAML file or a URL (can specify multiple)";
                    Description = "specify values in a YAML file or a URL (can specify multiple)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verify");
                    Name        = "verify the package before using it";
                    Description = "verify the package before using it";
                },
                [ValueParameter]@{
                    Keys        = @("--version");
                    Name        = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                    Description = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--wait");
                    Name        = "if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout";
                    Description = "if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout";
                },
                [FlagParameter]@{
                    Keys        = @("--wait-for-jobs");
                    Name        = "if set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout";
                    Description = "if set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "run tests for a release";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--filter");
                    Name        = "specify tests by attribute (currently `"name`") using attribute=value syntax or '!attribute=value' to exclude a test (can specify multiple or separate values with commas: name=test1,name=test2)";
                    Description = "specify tests by attribute (currently `"name`") using attribute=value syntax or '!attribute=value' to exclude a test (can specify multiple or separate values with commas: name=test1,name=test2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--logs");
                    Name        = "dump the logs from test pods (this runs after all tests are complete, but before any cleanup)";
                    Description = "dump the logs from test pods (this runs after all tests are complete, but before any cleanup)";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    Description = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("uninstall");
            Name        = "uninstall";
            Description = "uninstall a release";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--description");
                    Name        = "add a custom description";
                    Description = "add a custom description";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "simulate a uninstall";
                    Description = "simulate a uninstall";
                },
                [FlagParameter]@{
                    Keys        = @("--keep-history");
                    Name        = "remove all associated resources and mark the release as deleted, but retain the release history";
                    Description = "remove all associated resources and mark the release as deleted, but retain the release history";
                },
                [FlagParameter]@{
                    Keys        = @("--no-hooks");
                    Name        = "prevent hooks from running during uninstallation";
                    Description = "prevent hooks from running during uninstallation";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    Description = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("upgrade");
            Name        = "upgrade";
            Description = "upgrade a release";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--atomic");
                    Name        = "if set, upgrade process rolls back changes made in case of failed upgrade. The --wait flag will be set automatically if --atomic is used";
                    Description = "if set, upgrade process rolls back changes made in case of failed upgrade. The --wait flag will be set automatically if --atomic is used";
                },
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "verify certificates of HTTPS-enabled servers using this CA bundle";
                    Description = "verify certificates of HTTPS-enabled servers using this CA bundle";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cert-file");
                    Name        = "identify HTTPS client using this SSL certificate file";
                    Description = "identify HTTPS client using this SSL certificate file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cleanup-on-fail");
                    Name        = "allow deletion of new resources created in this upgrade when upgrade fails";
                    Description = "allow deletion of new resources created in this upgrade when upgrade fails";
                },
                [FlagParameter]@{
                    Keys        = @("--create-namespace");
                    Name        = "if --install is set, create the release namespace if not present";
                    Description = "if --install is set, create the release namespace if not present";
                },
                [FlagParameter]@{
                    Keys        = @("--dependency-update");
                    Name        = "update dependencies if they are missing before installing the chart";
                    Description = "update dependencies if they are missing before installing the chart";
                },
                [ValueParameter]@{
                    Keys        = @("--description");
                    Name        = "add a custom description";
                    Description = "add a custom description";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--devel");
                    Name        = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                    Description = "use development versions, too. Equivalent to version '>0.0.0-0'. If --version is set, this is ignored";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-openapi-validation");
                    Name        = "if set, the upgrade process will not validate rendered templates against the Kubernetes OpenAPI Schema";
                    Description = "if set, the upgrade process will not validate rendered templates against the Kubernetes OpenAPI Schema";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "simulate an upgrade";
                    Description = "simulate an upgrade";
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "force resource updates through a replacement strategy";
                    Description = "force resource updates through a replacement strategy";
                },
                [ValueParameter]@{
                    Keys        = @("--history-max");
                    Name        = "limit the maximum number of revisions saved per release. Use 0 for no limit";
                    Description = "limit the maximum number of revisions saved per release. Use 0 for no limit";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--insecure-skip-tls-verify");
                    Name        = "skip tls certificate checks for the chart download";
                    Description = "skip tls certificate checks for the chart download";
                },
                [FlagParameter]@{
                    Keys        = @("--install", "-i");
                    Name        = "if a release by this name doesn't already exist, run an install";
                    Description = "if a release by this name doesn't already exist, run an install";
                },
                [ValueParameter]@{
                    Keys        = @("--key-file");
                    Name        = "identify HTTPS client using this SSL key file";
                    Description = "identify HTTPS client using this SSL key file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keyring");
                    Name        = "location of public keys used for verification";
                    Description = "location of public keys used for verification";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-hooks");
                    Name        = "disable pre/post upgrade hooks";
                    Description = "disable pre/post upgrade hooks";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "prints the output in the specified format. Allowed values: table, json, yaml";
                    Description = "prints the output in the specified format. Allowed values: table, json, yaml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pass-credentials");
                    Name        = "pass credentials to all domains";
                    Description = "pass credentials to all domains";
                },
                [ValueParameter]@{
                    Keys        = @("--password");
                    Name        = "chart repository password where to locate the requested chart";
                    Description = "chart repository password where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--post-renderer");
                    Name        = "the path to an executable to be used for post rendering. If it exists in `$PATH, the binary will be used, otherwise it will try to look for the executable at the given path";
                    Description = "the path to an executable to be used for post rendering. If it exists in `$PATH, the binary will be used, otherwise it will try to look for the executable at the given path";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recreate-pods");
                    Name        = "performs pods restart for the resource if applicable";
                    Description = "performs pods restart for the resource if applicable";
                },
                [FlagParameter]@{
                    Keys        = @("--render-subchart-notes");
                    Name        = "if set, render subchart notes along with the parent";
                    Description = "if set, render subchart notes along with the parent";
                },
                [ValueParameter]@{
                    Keys        = @("--repo");
                    Name        = "chart repository url where to locate the requested chart";
                    Description = "chart repository url where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--reset-values");
                    Name        = "when upgrading, reset the values to the ones built into the chart";
                    Description = "when upgrading, reset the values to the ones built into the chart";
                },
                [FlagParameter]@{
                    Keys        = @("--reuse-values");
                    Name        = "when upgrading, reuse the last release's values and merge in any overrides from the command line via --set and -f. If '--reset-values' is specified, this is ignored";
                    Description = "when upgrading, reuse the last release's values and merge in any overrides from the command line via --set and -f. If '--reset-values' is specified, this is ignored";
                },
                [ValueParameter]@{
                    Keys        = @("--set");
                    Name        = "set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    Description = "set values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set-file");
                    Name        = "set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)";
                    Description = "set values from respective files specified via the command line (can specify multiple or separate values with commas: key1=path1,key2=path2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set-string");
                    Name        = "set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    Description = "set STRING values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-crds");
                    Name        = "if set, no CRDs will be installed when an upgrade is performed with install flag enabled. By default, CRDs are installed if not already present, when an upgrade is performed with install flag enabled";
                    Description = "if set, no CRDs will be installed when an upgrade is performed with install flag enabled. By default, CRDs are installed if not already present, when an upgrade is performed with install flag enabled";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    Description = "time to wait for any individual Kubernetes operation (like Jobs for hooks)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--username");
                    Name        = "chart repository username where to locate the requested chart";
                    Description = "chart repository username where to locate the requested chart";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--values", "-f");
                    Name        = "specify values in a YAML file or a URL (can specify multiple)";
                    Description = "specify values in a YAML file or a URL (can specify multiple)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verify");
                    Name        = "verify the package before using it";
                    Description = "verify the package before using it";
                },
                [ValueParameter]@{
                    Keys        = @("--version");
                    Name        = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                    Description = "specify a version constraint for the chart version to use. This constraint can be a specific tag (e.g. 1.1.1) or it may reference a valid range (e.g. ^2.0.0). If this is not specified, the latest version is used";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--wait");
                    Name        = "if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout";
                    Description = "if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout";
                },
                [FlagParameter]@{
                    Keys        = @("--wait-for-jobs");
                    Name        = "if set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout";
                    Description = "if set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("verify");
            Name        = "verify";
            Description = "verify that a chart at the given path has been signed and is valid";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--keyring");
                    Name        = "keyring containing public keys";
                    Description = "keyring containing public keys";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "print the client version information";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--client", "-c");
                    Name        = "display client version information";
                    Description = "display client version information";
                },
                [FlagParameter]@{
                    Keys        = @("--short");
                    Name        = "print the version number";
                    Description = "print the version number";
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "template for version string format";
                    Description = "template for version string format";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
