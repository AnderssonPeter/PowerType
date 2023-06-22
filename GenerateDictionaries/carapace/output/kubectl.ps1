# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://kubernetes.io/docs/reference/kubectl/overview/";
    Keys        = @("kubectl");
    Name        = "kubectl";
    Description = "kubectl controls the Kubernetes cluster manager";
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
        [ValueParameter]@{
            Keys        = @("--as");
            Name        = "Username to impersonate for the operation";
            Description = "Username to impersonate for the operation";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--as-group");
            Name        = "Group to impersonate for the operation, this flag can be repeated to specify multiple groups.";
            Description = "Group to impersonate for the operation, this flag can be repeated to specify multiple groups.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cache-dir");
            Name        = "Default cache directory";
            Description = "Default cache directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--certificate-authority");
            Name        = "Path to a cert file for the certificate authority";
            Description = "Path to a cert file for the certificate authority";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--client-certificate");
            Name        = "Path to a client certificate file for TLS";
            Description = "Path to a client certificate file for TLS";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--client-key");
            Name        = "Path to a client key file for TLS";
            Description = "Path to a client key file for TLS";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cluster");
            Name        = "The name of the kubeconfig cluster to use";
            Description = "The name of the kubeconfig cluster to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--context");
            Name        = "The name of the kubeconfig context to use";
            Description = "The name of the kubeconfig context to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--insecure-skip-tls-verify");
            Name        = "If true, the server's certificate will not be checked for validity. This will make your HTTPS connec";
            Description = "If true, the server's certificate will not be checked for validity. This will make your HTTPS connec";
        },
        [ValueParameter]@{
            Keys        = @("--kubeconfig");
            Name        = "Path to the kubeconfig file to use for CLI requests.";
            Description = "Path to the kubeconfig file to use for CLI requests.";
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
            Name        = "Defines the maximum size a log file can grow to. Unit is megabytes. If the value is 0, the maximum f";
            Description = "Defines the maximum size a log file can grow to. Unit is megabytes. If the value is 0, the maximum f";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-flush-frequency");
            Name        = "Maximum number of seconds between log flushes";
            Description = "Maximum number of seconds between log flushes";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--logtostderr");
            Name        = "log to standard error instead of files";
            Description = "log to standard error instead of files";
        },
        [FlagParameter]@{
            Keys        = @("--match-server-version");
            Name        = "Require server version to match client version";
            Description = "Require server version to match client version";
        },
        [ValueParameter]@{
            Keys        = @("--namespace", "-n");
            Name        = "If present, the namespace scope for this CLI request";
            Description = "If present, the namespace scope for this CLI request";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--one-output");
            Name        = "If true, only write logs to their native severity level (vs also writing to each lower severity leve";
            Description = "If true, only write logs to their native severity level (vs also writing to each lower severity leve";
        },
        [ValueParameter]@{
            Keys        = @("--password");
            Name        = "Password for basic authentication to the API server";
            Description = "Password for basic authentication to the API server";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile");
            Name        = "Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex)";
            Description = "Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile-output");
            Name        = "Name of the file to write the profile to";
            Description = "Name of the file to write the profile to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--request-timeout");
            Name        = "The length of time to wait before giving up on a single server request. Non-zero values should conta";
            Description = "The length of time to wait before giving up on a single server request. Non-zero values should conta";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--server", "-s");
            Name        = "The address and port of the Kubernetes API server";
            Description = "The address and port of the Kubernetes API server";
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
            Keys        = @("--tls-server-name");
            Name        = "Server name to use for server certificate validation. If it is not provided, the hostname used to co";
            Description = "Server name to use for server certificate validation. If it is not provided, the hostname used to co";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--token");
            Name        = "Bearer token for authentication to the API server";
            Description = "Bearer token for authentication to the API server";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user");
            Name        = "The name of the kubeconfig user to use";
            Description = "The name of the kubeconfig user to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--username");
            Name        = "Username for basic authentication to the API server";
            Description = "Username for basic authentication to the API server";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--vmodule");
            Name        = "comma-separated list of pattern=N settings for file-filtered logging";
            Description = "comma-separated list of pattern=N settings for file-filtered logging";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--warnings-as-errors");
            Name        = "Treat warnings received from the server as errors and exit with a non-zero exit code";
            Description = "Treat warnings received from the server as errors and exit with a non-zero exit code";
        },
        [CommandParameter]@{
            Keys        = @("alpha");
            Name        = "alpha";
            Description = "Commands for features in alpha";
        },
        [CommandParameter]@{
            Keys        = @("annotate");
            Name        = "annotate";
            Description = "Update the annotations on a resource";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                    Description = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-selector");
                    Name        = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    Description = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files identifying the resource to update the annotation";
                    Description = "Filename, directory, or URL to files identifying the resource to update the annotation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--list");
                    Name        = "If true, display the annotations for a given resource.";
                    Description = "If true, display the annotations for a given resource.";
                },
                [FlagParameter]@{
                    Keys        = @("--local");
                    Name        = "If true, annotation will NOT contact api-server but run locally.";
                    Description = "If true, annotation will NOT contact api-server but run locally.";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "If true, allow annotations to be overwritten, otherwise reject annotation updates that overwrite exi";
                    Description = "If true, allow annotations to be overwritten, otherwise reject annotation updates that overwrite exi";
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--resource-version");
                    Name        = "If non-empty, the annotation update will only succeed if this is the current resource-version for th";
                    Description = "If non-empty, the annotation update will only succeed if this is the current resource-version for th";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.";
                    Description = "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("api-resources");
            Name        = "api-resources";
            Description = "Print the supported API resources on the server";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--api-group");
                    Name        = "Limit to resources in the specified API group.";
                    Description = "Limit to resources in the specified API group.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cached");
                    Name        = "Use the cached list of resources if available.";
                    Description = "Use the cached list of resources if available.";
                },
                [FlagParameter]@{
                    Keys        = @("--namespaced");
                    Name        = "If false, non-namespaced resources will be returned, otherwise returning namespaced resources by def";
                    Description = "If false, non-namespaced resources will be returned, otherwise returning namespaced resources by def";
                },
                [FlagParameter]@{
                    Keys        = @("--no-headers");
                    Name        = "When using the default or custom-column output format, don't print headers (default print headers).";
                    Description = "When using the default or custom-column output format, don't print headers (default print headers).";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: wide|name.";
                    Description = "Output format. One of: wide|name.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--sort-by");
                    Name        = "If non-empty, sort list of resources using specified field. The field can be either 'name' or 'kind'";
                    Description = "If non-empty, sort list of resources using specified field. The field can be either 'name' or 'kind'";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--verbs");
                    Name        = "Limit to resources that support the specified verbs.";
                    Description = "Limit to resources that support the specified verbs.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("api-versions");
            Name        = "api-versions";
            Description = "Print the supported API versions on the server";
        },
        [CommandParameter]@{
            Keys        = @("apply");
            Name        = "apply";
            Description = "Apply a configuration to a resource by filename or stdin";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Select all resources in the namespace of the specified resource types.";
                    Description = "Select all resources in the namespace of the specified resource types.";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--cascade");
                    Name        = "Must be `"background`", `"orphan`", or `"foreground`". Selects the deletion cascading strategy for the dep";
                    Description = "Must be `"background`", `"orphan`", or `"foreground`". Selects the deletion cascading strategy for the dep";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "that contains the configuration to apply";
                    Description = "that contains the configuration to apply";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate del";
                    Description = "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate del";
                },
                [FlagParameter]@{
                    Keys        = @("--force-conflicts");
                    Name        = "If true, server-side apply will force the changes against conflicts.";
                    Description = "If true, server-side apply will force the changes against conflicts.";
                },
                [ValueParameter]@{
                    Keys        = @("--grace-period");
                    Name        = "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to";
                    Description = "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process a kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process a kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--openapi-patch");
                    Name        = "If true, use openapi to calculate diff when the openapi presents and the resource can be found in th";
                    Description = "If true, use openapi to calculate diff when the openapi presents and the resource can be found in th";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "Automatically resolve conflicts between the modified and live configuration by using values from the";
                    Description = "Automatically resolve conflicts between the modified and live configuration by using values from the";
                },
                [FlagParameter]@{
                    Keys        = @("--prune");
                    Name        = "Automatically delete resource objects, including the uninitialized ones, that do not appear in the c";
                    Description = "Automatically delete resource objects, including the uninitialized ones, that do not appear in the c";
                },
                [ValueParameter]@{
                    Keys        = @("--prune-whitelist");
                    Name        = "Overwrite the default whitelist with <group/version/kind> for --prune";
                    Description = "Overwrite the default whitelist with <group/version/kind> for --prune";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--server-side");
                    Name        = "If true, apply runs in the server instead of the client.";
                    Description = "If true, apply runs in the server instead of the client.";
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "The length of time to wait before giving up on a delete, zero means determine a timeout from the siz";
                    Description = "The length of time to wait before giving up on a delete, zero means determine a timeout from the siz";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "If true, use a schema to validate the input before sending it";
                    Description = "If true, use a schema to validate the input before sending it";
                },
                [FlagParameter]@{
                    Keys        = @("--wait");
                    Name        = "If true, wait for resources to be gone before returning. This waits for finalizers.";
                    Description = "If true, wait for resources to be gone before returning. This waits for finalizers.";
                },
                [CommandParameter]@{
                    Keys        = @("edit-last-applied");
                    Name        = "edit-last-applied";
                    Description = "Edit latest last-applied-configuration annotations of a resource/object";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files to use to edit the resource";
                            Description = "Filename, directory, or URL to files to use to edit the resource";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--record");
                            Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                            Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--windows-line-endings");
                            Name        = "Defaults to the line ending native to your platform.";
                            Description = "Defaults to the line ending native to your platform.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set-last-applied");
                    Name        = "set-last-applied";
                    Description = "Set the last-applied-configuration annotation on a live object to match the contents of a file";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [FlagParameter]@{
                            Keys        = @("--create-annotation");
                            Name        = "Will create 'last-applied-configuration' annotations if current objects doesn't have one";
                            Description = "Will create 'last-applied-configuration' annotations if current objects doesn't have one";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files that contains the last-applied-configuration annotations";
                            Description = "Filename, directory, or URL to files that contains the last-applied-configuration annotations";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("view-last-applied");
                    Name        = "view-last-applied";
                    Description = "View latest last-applied-configuration annotations of a resource/object";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Select all resources in the namespace of the specified resource types";
                            Description = "Select all resources in the namespace of the specified resource types";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files that contains the last-applied-configuration annotations";
                            Description = "Filename, directory, or URL to files that contains the last-applied-configuration annotations";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. Must be one of yaml|json";
                            Description = "Output format. Must be one of yaml|json";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector", "-l");
                            Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                            Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("attach");
            Name        = "attach";
            Description = "Attach to a running container";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--container", "-c");
                    Name        = "Container name. If omitted, the first container in the pod will be chosen";
                    Description = "Container name. If omitted, the first container in the pod will be chosen";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pod-running-timeout");
                    Name        = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    Description = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--stdin", "-i");
                    Name        = "Pass stdin to the container";
                    Description = "Pass stdin to the container";
                },
                [FlagParameter]@{
                    Keys        = @("--tty", "-t");
                    Name        = "Stdin is a TTY";
                    Description = "Stdin is a TTY";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("auth");
            Name        = "auth";
            Description = "Inspect authorization";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("can-i");
                    Name        = "can-i";
                    Description = "Check whether an action is allowed";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all-namespaces", "-A");
                            Name        = "If true, check the specified action in all namespaces.";
                            Description = "If true, check the specified action in all namespaces.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--list");
                            Name        = "If true, prints all allowed actions.";
                            Description = "If true, prints all allowed actions.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-headers");
                            Name        = "If true, prints allowed actions without headers";
                            Description = "If true, prints allowed actions without headers";
                        },
                        [FlagParameter]@{
                            Keys        = @("--quiet", "-q");
                            Name        = "If true, suppress output and just return the exit code.";
                            Description = "If true, suppress output and just return the exit code.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--subresource");
                            Name        = "SubResource such as pod/log or deployment/scale";
                            Description = "SubResource such as pod/log or deployment/scale";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("reconsile");
                    Name        = "reconsile";
                    Description = "Reconciles rules for RBAC Role, RoleBinding, ClusterRole, and ClusterRole binding objects";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to reconcile.";
                            Description = "Filename, directory, or URL to files identifying the resource to reconcile.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [FlagParameter]@{
                            Keys        = @("--remove-extra-permissions");
                            Name        = "If true, removes extra permissions added to roles";
                            Description = "If true, removes extra permissions added to roles";
                        },
                        [FlagParameter]@{
                            Keys        = @("--remove-extra-subjects");
                            Name        = "If true, removes extra subjects added to rolebindings";
                            Description = "If true, removes extra subjects added to rolebindings";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("autoscale");
            Name        = "autoscale";
            Description = "Auto-scale a Deployment, ReplicaSet, or ReplicationController";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--cpu-percent");
                    Name        = "The target average CPU utilization (represented as a percent of requested CPU) over all the pods. If";
                    Description = "The target average CPU utilization (represented as a percent of requested CPU) over all the pods. If";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files identifying the resource to autoscale.";
                    Description = "Filename, directory, or URL to files identifying the resource to autoscale.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--generator");
                    Name        = "The name of the API generator to use. Currently there is only 1 generator.";
                    Description = "The name of the API generator to use. Currently there is only 1 generator.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--max");
                    Name        = "The upper limit for the number of pods that can be set by the autoscaler. Required.";
                    Description = "The upper limit for the number of pods that can be set by the autoscaler. Required.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--min");
                    Name        = "The lower limit for the number of pods that can be set by the autoscaler. If it's not specified or n";
                    Description = "The lower limit for the number of pods that can be set by the autoscaler. If it's not specified or n";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "The name for the newly created object. If not specified, the name of the input resource will be used";
                    Description = "The name for the newly created object. If not specified, the name of the input resource will be used";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [FlagParameter]@{
                    Keys        = @("--save-config");
                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("certificate");
            Name        = "certificate";
            Description = "Modify certificate resources";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("approve");
                    Name        = "approve";
                    Description = "Approve a certificate signing request";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to update";
                            Description = "Filename, directory, or URL to files identifying the resource to update";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Update the CSR even if it is already approved.";
                            Description = "Update the CSR even if it is already approved.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("deny");
                    Name        = "deny";
                    Description = "Deny a certificate signing request";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to update";
                            Description = "Filename, directory, or URL to files identifying the resource to update";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "Update the CSR even if it is already denied.";
                            Description = "Update the CSR even if it is already denied.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cluster-info");
            Name        = "cluster-info";
            Description = "Display cluster info";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("dump");
                    Name        = "dump";
                    Description = "Dump lots of relevant info for debugging and diagnosis";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all-namespaces", "-A");
                            Name        = "If true, dump all namespaces.  If true, --namespaces is ignored.";
                            Description = "If true, dump all namespaces.  If true, --namespaces is ignored.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespaces");
                            Name        = "A comma separated list of namespaces to dump.";
                            Description = "A comma separated list of namespaces to dump.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output-directory");
                            Name        = "Where to output the files.  If empty or '-' uses stdout, otherwise creates a directory hierarchy in ";
                            Description = "Where to output the files.  If empty or '-' uses stdout, otherwise creates a directory hierarchy in ";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pod-running-timeout");
                            Name        = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                            Description = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Output shell completion code for the specified shell (bash or zsh)";
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Modify kubeconfig files";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("current-context");
                    Name        = "current-context";
                    Description = "Displays the current-context";
                },
                [CommandParameter]@{
                    Keys        = @("delete-cluster");
                    Name        = "delete-cluster";
                    Description = "Delete the specified cluster from the kubeconfig";
                },
                [CommandParameter]@{
                    Keys        = @("delete-context");
                    Name        = "delete-context";
                    Description = "Delete the specified context from the kubeconfig";
                },
                [CommandParameter]@{
                    Keys        = @("get-clusters");
                    Name        = "get-clusters";
                    Description = "Display clusters defined in the kubeconfig";
                },
                [CommandParameter]@{
                    Keys        = @("get-contexts");
                    Name        = "get-contexts";
                    Description = "Describe one or many contexts";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-headers");
                            Name        = "When using the default or custom-column output format, don't print headers (default print headers).";
                            Description = "When using the default or custom-column output format, don't print headers (default print headers).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: name";
                            Description = "Output format. One of: name";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rename-context");
                    Name        = "rename-context";
                    Description = "Renames a context from the kubeconfig file";
                },
                [CommandParameter]@{
                    Keys        = @("set");
                    Name        = "set";
                    Description = "Sets an individual value in a kubeconfig file";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--set-raw-bytes");
                            Name        = "When writing a []byte PROPERTY_VALUE, write the given string directly without base64 decoding.";
                            Description = "When writing a []byte PROPERTY_VALUE, write the given string directly without base64 decoding.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set-cluster");
                    Name        = "set-cluster";
                    Description = "Sets a cluster entry in kubeconfig";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--embed-certs");
                            Name        = "embed-certs for the cluster entry in kubeconfig";
                            Description = "embed-certs for the cluster entry in kubeconfig";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set-context");
                    Name        = "set-context";
                    Description = "Sets a context entry in kubeconfig";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--current");
                            Name        = "Modify the current context";
                            Description = "Modify the current context";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set-credentials");
                    Name        = "set-credentials";
                    Description = "Sets a user entry in kubeconfig";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--auth-provider");
                            Name        = "Auth provider for the user entry in kubeconfig";
                            Description = "Auth provider for the user entry in kubeconfig";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--auth-provider-arg");
                            Name        = "'key=value' arguments for the auth provider";
                            Description = "'key=value' arguments for the auth provider";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--embed-certs");
                            Name        = "Embed client cert/key for the user entry in kubeconfig";
                            Description = "Embed client cert/key for the user entry in kubeconfig";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--exec-api-version");
                            Name        = "API version of the exec credential plugin for the user entry in kubeconfig";
                            Description = "API version of the exec credential plugin for the user entry in kubeconfig";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--exec-arg");
                            Name        = "New arguments for the exec credential plugin command for the user entry in kubeconfig";
                            Description = "New arguments for the exec credential plugin command for the user entry in kubeconfig";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--exec-command");
                            Name        = "Command for the exec credential plugin for the user entry in kubeconfig";
                            Description = "Command for the exec credential plugin for the user entry in kubeconfig";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--exec-env");
                            Name        = "'key=value' environment values for the exec credential plugin";
                            Description = "'key=value' environment values for the exec credential plugin";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("unset");
                    Name        = "unset";
                    Description = "Unsets an individual value in a kubeconfig file";
                },
                [CommandParameter]@{
                    Keys        = @("use-context");
                    Name        = "use-context";
                    Description = "Sets the current-context in a kubeconfig file";
                },
                [CommandParameter]@{
                    Keys        = @("view");
                    Name        = "view";
                    Description = "Display merged kubeconfig settings or a specified kubeconfig file";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flatten");
                            Name        = "Flatten the resulting kubeconfig file into self-contained output (useful for creating portable kubec";
                            Description = "Flatten the resulting kubeconfig file into self-contained output (useful for creating portable kubec";
                        },
                        [ValueParameter]@{
                            Keys        = @("--merge");
                            Name        = "Merge the full hierarchy of kubeconfig files";
                            Description = "Merge the full hierarchy of kubeconfig files";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--minify");
                            Name        = "Remove all information not used by current-context from the output";
                            Description = "Remove all information not used by current-context from the output";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--raw");
                            Name        = "Display raw byte data";
                            Description = "Display raw byte data";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("convert");
            Name        = "convert";
            Description = "Convert config files between different API versions. Both YAML and JSON formats are accepted.";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template..";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template..";
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files to need to get converted.";
                    Description = "Filename, directory, or URL to files to need to get converted.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--local");
                    Name        = "If true, convert will NOT try to contact api-server but run locally.";
                    Description = "If true, convert will NOT try to contact api-server but run locally.";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file.";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output-version");
                    Name        = "Output the formatted object with the given group version (for ex: 'extensions/v1beta1').";
                    Description = "Output the formatted object with the given group version (for ex: 'extensions/v1beta1').";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory.";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory.";
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file.";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "If true, use a schema to validate the input before sending it";
                    Description = "If true, use a schema to validate the input before sending it";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cordon");
            Name        = "cordon";
            Description = "Mark node as unschedulable";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on";
                    Description = "Selector (label query) to filter on";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cp");
            Name        = "cp";
            Description = "Copy files and directories to and from containers";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--container", "-c");
                    Name        = "Container name. If omitted, the first container in the pod will be chosen";
                    Description = "Container name. If omitted, the first container in the pod will be chosen";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-preserve");
                    Name        = "The copied file/directory's ownership and permissions will not be preserved in the container";
                    Description = "The copied file/directory's ownership and permissions will not be preserved in the container";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("create");
            Name        = "create";
            Description = "Create a resource from a file or from stdin";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--edit");
                    Name        = "Edit the API resource before creating";
                    Description = "Edit the API resource before creating";
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files to use to create the resource";
                    Description = "Filename, directory, or URL to files to use to create the resource";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--raw");
                    Name        = "Raw URI to POST to the server.  Uses the transport specified by the kubeconfig file.";
                    Description = "Raw URI to POST to the server.  Uses the transport specified by the kubeconfig file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [FlagParameter]@{
                    Keys        = @("--save-config");
                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "If true, use a schema to validate the input before sending it";
                    Description = "If true, use a schema to validate the input before sending it";
                },
                [FlagParameter]@{
                    Keys        = @("--windows-line-endings");
                    Name        = "Only relevant if --edit=true. Defaults to the line ending native to your platform.";
                    Description = "Only relevant if --edit=true. Defaults to the line ending native to your platform.";
                },
                [CommandParameter]@{
                    Keys        = @("clusterrole");
                    Name        = "clusterrole";
                    Description = "Create a ClusterRole";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--aggregation-rule");
                            Name        = "An aggregation label selector for combining ClusterRoles.";
                            Description = "An aggregation label selector for combining ClusterRoles.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--non-resource-url");
                            Name        = "A partial url that user should have access to.";
                            Description = "A partial url that user should have access to.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--resource");
                            Name        = "Resource that the rule applies to";
                            Description = "Resource that the rule applies to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--resource-name");
                            Name        = "Resource in the white list that the rule applies to, repeat this flag for multiple items";
                            Description = "Resource in the white list that the rule applies to, repeat this flag for multiple items";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--verb");
                            Name        = "Verb that applies to the resources contained in the rule";
                            Description = "Verb that applies to the resources contained in the rule";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("clusterrolebinding");
                    Name        = "clusterrolebinding";
                    Description = "Create a ClusterRoleBinding for a particular ClusterRole";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--clusterrole");
                            Name        = "ClusterRole this ClusterRoleBinding should reference";
                            Description = "ClusterRole this ClusterRoleBinding should reference";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group");
                            Name        = "Groups to bind to the clusterrole";
                            Description = "Groups to bind to the clusterrole";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--serviceaccount");
                            Name        = "Service accounts to bind to the clusterrole, in the format <namespace>:<name>";
                            Description = "Service accounts to bind to the clusterrole, in the format <namespace>:<name>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("configmap");
                    Name        = "configmap";
                    Description = "Create a configmap from a local file, directory or literal value";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [FlagParameter]@{
                            Keys        = @("--append-hash");
                            Name        = "Append a hash of the configmap to its name.";
                            Description = "Append a hash of the configmap to its name.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from-env-file");
                            Name        = "Specify the path to a file to read lines of key=val pairs to create a configmap (i.e. a Docker .env ";
                            Description = "Specify the path to a file to read lines of key=val pairs to create a configmap (i.e. a Docker .env ";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from-file");
                            Name        = "Key file can be specified using its file path, in which case file basename will be used as configmap";
                            Description = "Key file can be specified using its file path, in which case file basename will be used as configmap";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from-literal");
                            Name        = "Specify a key and literal value to insert in configmap (i.e. mykey=somevalue)";
                            Description = "Specify a key and literal value to insert in configmap (i.e. mykey=somevalue)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--generator");
                            Name        = "The name of the API generator to use.";
                            Description = "The name of the API generator to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("cronjob");
                    Name        = "cronjob";
                    Description = "Create a cronjob with the specified name";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--image");
                            Name        = "Image name to run.";
                            Description = "Image name to run.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--restart");
                            Name        = "job's restart policy. supported values: OnFailure, Never";
                            Description = "job's restart policy. supported values: OnFailure, Never";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--schedule");
                            Name        = "A schedule in the Cron format the job should be run with.";
                            Description = "A schedule in the Cron format the job should be run with.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("deployment");
                    Name        = "deployment";
                    Description = "Create a cronjob with the specified name";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--generator");
                            Name        = "The name of the API generator to use.";
                            Description = "The name of the API generator to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--image");
                            Name        = "Image names to run.";
                            Description = "Image names to run.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--port");
                            Name        = "The port that this container exposes.";
                            Description = "The port that this container exposes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--replicas", "-r");
                            Name        = "Number of replicas to create. Default is 1.";
                            Description = "Number of replicas to create. Default is 1.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("job");
                    Name        = "job";
                    Description = "Create a job with the specified name";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from");
                            Name        = "The name of the resource to create a Job from (only cronjob is supported).";
                            Description = "The name of the resource to create a Job from (only cronjob is supported).";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--image");
                            Name        = "Image name to run.";
                            Description = "Image name to run.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("namespace");
                    Name        = "namespace";
                    Description = "Create a namespace with the specified name";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--generator");
                            Name        = "The name of the API generator to use.";
                            Description = "The name of the API generator to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("poddisruptionbudget");
                    Name        = "poddisruptionbudget";
                    Description = "Create a pod disruption budget with the specified name";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--generator");
                            Name        = "The name of the API generator to use.";
                            Description = "The name of the API generator to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--max-unavailable");
                            Name        = "The maximum number or percentage of unavailable pods this budget requires.";
                            Description = "The maximum number or percentage of unavailable pods this budget requires.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--min-available");
                            Name        = "The minimum number or percentage of available pods this budget requires.";
                            Description = "The minimum number or percentage of available pods this budget requires.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector");
                            Name        = "A label selector to use for this budget. Only equality-based selector requirements are supported.";
                            Description = "A label selector to use for this budget. Only equality-based selector requirements are supported.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("priorityclass");
                    Name        = "priorityclass";
                    Description = "Create a priorityclass with the specified name";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--description");
                            Name        = "description is an arbitrary string that usually provides guidelines on when this priority class shou";
                            Description = "description is an arbitrary string that usually provides guidelines on when this priority class shou";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--global-default");
                            Name        = "global-default specifies whether this PriorityClass should be considered as the default priority.";
                            Description = "global-default specifies whether this PriorityClass should be considered as the default priority.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--preemption-policy");
                            Name        = "preemption-policy is the policy for preempting pods with lower priority.";
                            Description = "preemption-policy is the policy for preempting pods with lower priority.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--value");
                            Name        = "the value of this priority class.";
                            Description = "the value of this priority class.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("quota");
                    Name        = "quota";
                    Description = "Create a quota with the specified name";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--hard");
                            Name        = "A comma-delimited set of resource=quantity pairs that define a hard limit.";
                            Description = "A comma-delimited set of resource=quantity pairs that define a hard limit.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--scopes");
                            Name        = "A comma-delimited set of quota scopes that must all match each object tracked by the quota.";
                            Description = "A comma-delimited set of quota scopes that must all match each object tracked by the quota.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("role");
                    Name        = "role";
                    Description = "Create a role with single rule";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--resource");
                            Name        = "Resource that the rule applies to";
                            Description = "Resource that the rule applies to";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--resource-name");
                            Name        = "Resource in the white list that the rule applies to, repeat this flag for multiple items";
                            Description = "Resource in the white list that the rule applies to, repeat this flag for multiple items";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        },
                        [ValueParameter]@{
                            Keys        = @("--verb");
                            Name        = "Verb that applies to the resources contained in the rule";
                            Description = "Verb that applies to the resources contained in the rule";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("rolebinding");
                    Name        = "rolebinding";
                    Description = "Create a RoleBinding for a particular Role or ClusterRole";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--clusterrole");
                            Name        = "ClusterRole this RoleBinding should reference";
                            Description = "ClusterRole this RoleBinding should reference";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group");
                            Name        = "Groups to bind to the role";
                            Description = "Groups to bind to the role";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--role");
                            Name        = "Role this RoleBinding should reference";
                            Description = "Role this RoleBinding should reference";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--serviceaccount");
                            Name        = "Service accounts to bind to the role, in the format <namespace>:<name>";
                            Description = "Service accounts to bind to the role, in the format <namespace>:<name>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("secret");
                    Name        = "secret";
                    Description = "Create a secret using specified subcommand";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("docker-registry");
                            Name        = "docker-registry";
                            Description = "Create a secret for use with a Docker registry";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--allow-missing-template-keys");
                                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--append-hash");
                                    Name        = "Append a hash of the secret to its name.";
                                    Description = "Append a hash of the secret to its name.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--docker-email");
                                    Name        = "Email for Docker registry";
                                    Description = "Email for Docker registry";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--docker-password");
                                    Name        = "Password for Docker registry authentication";
                                    Description = "Password for Docker registry authentication";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--docker-server");
                                    Name        = "Server location for Docker registry";
                                    Description = "Server location for Docker registry";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--docker-username");
                                    Name        = "Username for Docker registry authentication";
                                    Description = "Username for Docker registry authentication";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dry-run");
                                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--field-manager");
                                    Name        = "Name of the manager used to track field ownership.";
                                    Description = "Name of the manager used to track field ownership.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--from-file");
                                    Name        = "Key files can be specified using their file path, in which case a default name will be given to them";
                                    Description = "Key files can be specified using their file path, in which case a default name will be given to them";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--generator");
                                    Name        = "The name of the API generator to use.";
                                    Description = "The name of the API generator to use.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--output", "-o");
                                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--save-config");
                                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--template");
                                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--validate");
                                    Name        = "If true, use a schema to validate the input before sending it";
                                    Description = "If true, use a schema to validate the input before sending it";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("generic");
                            Name        = "generic";
                            Description = "Create a secret from a local file, directory or literal value";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--allow-missing-template-keys");
                                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--append-hash");
                                    Name        = "Append a hash of the secret to its name.";
                                    Description = "Append a hash of the secret to its name.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dry-run");
                                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--field-manager");
                                    Name        = "Name of the manager used to track field ownership.";
                                    Description = "Name of the manager used to track field ownership.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--from-env-file");
                                    Name        = "Specify the path to a file to read lines of key=val pairs to create a secret (i.e. a Docker .env fil";
                                    Description = "Specify the path to a file to read lines of key=val pairs to create a secret (i.e. a Docker .env fil";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--from-file");
                                    Name        = "Key files can be specified using their file path, in which case a default name will be given to them";
                                    Description = "Key files can be specified using their file path, in which case a default name will be given to them";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--from-literal");
                                    Name        = "Specify a key and literal value to insert in secret (i.e. mykey=somevalue)";
                                    Description = "Specify a key and literal value to insert in secret (i.e. mykey=somevalue)";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--generator");
                                    Name        = "The name of the API generator to use.";
                                    Description = "The name of the API generator to use.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--output", "-o");
                                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--save-config");
                                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--template");
                                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--type");
                                    Name        = "The type of secret to create";
                                    Description = "The type of secret to create";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--validate");
                                    Name        = "If true, use a schema to validate the input before sending it";
                                    Description = "If true, use a schema to validate the input before sending it";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("tls");
                            Name        = "tls";
                            Description = "Create a TLS secret";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--allow-missing-template-keys");
                                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--append-hash");
                                    Name        = "Append a hash of the secret to its name.";
                                    Description = "Append a hash of the secret to its name.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cert");
                                    Name        = "Path to PEM encoded public key certificate.";
                                    Description = "Path to PEM encoded public key certificate.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dry-run");
                                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--field-manager");
                                    Name        = "Name of the manager used to track field ownership.";
                                    Description = "Name of the manager used to track field ownership.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--generator");
                                    Name        = "The name of the API generator to use.";
                                    Description = "The name of the API generator to use.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--key");
                                    Name        = "Path to private key associated with given certificate.";
                                    Description = "Path to private key associated with given certificate.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--output", "-o");
                                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--save-config");
                                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--template");
                                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--validate");
                                    Name        = "If true, use a schema to validate the input before sending it";
                                    Description = "If true, use a schema to validate the input before sending it";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("service");
                    Name        = "service";
                    Description = "Create a service using specified subcommand";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("clusterip");
                            Name        = "clusterip";
                            Description = "Create a ClusterIP service";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--allow-missing-template-keys");
                                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--clusterip");
                                    Name        = "Assign your own ClusterIP or set to 'None' for a 'headless' service (no loadbalancing).";
                                    Description = "Assign your own ClusterIP or set to 'None' for a 'headless' service (no loadbalancing).";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dry-run");
                                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--field-manager");
                                    Name        = "Name of the manager used to track field ownership.";
                                    Description = "Name of the manager used to track field ownership.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--output", "-o");
                                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--save-config");
                                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tcp");
                                    Name        = "Port pairs can be specified as '<port>:<targetPort>'.";
                                    Description = "Port pairs can be specified as '<port>:<targetPort>'.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--template");
                                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--validate");
                                    Name        = "If true, use a schema to validate the input before sending it";
                                    Description = "If true, use a schema to validate the input before sending it";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("externalname");
                            Name        = "externalname";
                            Description = "Create an ExternalName service";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--allow-missing-template-keys");
                                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dry-run");
                                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--external-name");
                                    Name        = "External name of service";
                                    Description = "External name of service";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--field-manager");
                                    Name        = "Name of the manager used to track field ownership.";
                                    Description = "Name of the manager used to track field ownership.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--output", "-o");
                                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--save-config");
                                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tcp");
                                    Name        = "Port pairs can be specified as '<port>:<targetPort>'.";
                                    Description = "Port pairs can be specified as '<port>:<targetPort>'.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--template");
                                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--validate");
                                    Name        = "If true, use a schema to validate the input before sending it";
                                    Description = "If true, use a schema to validate the input before sending it";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("loadbalancer");
                            Name        = "loadbalancer";
                            Description = "Create a LoadBalancer service";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--allow-missing-template-keys");
                                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dry-run");
                                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--field-manager");
                                    Name        = "Name of the manager used to track field ownership.";
                                    Description = "Name of the manager used to track field ownership.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--output", "-o");
                                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--save-config");
                                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tcp");
                                    Name        = "Port pairs can be specified as '<port>:<targetPort>'.";
                                    Description = "Port pairs can be specified as '<port>:<targetPort>'.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--template");
                                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--validate");
                                    Name        = "If true, use a schema to validate the input before sending it";
                                    Description = "If true, use a schema to validate the input before sending it";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("nodeport");
                            Name        = "nodeport";
                            Description = "Create a NodePort service";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--allow-missing-template-keys");
                                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dry-run");
                                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--field-manager");
                                    Name        = "Name of the manager used to track field ownership.";
                                    Description = "Name of the manager used to track field ownership.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-port");
                                    Name        = "Port used to expose the service on each node in a cluster.";
                                    Description = "Port used to expose the service on each node in a cluster.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--output", "-o");
                                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--save-config");
                                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tcp");
                                    Name        = "Port pairs can be specified as '<port>:<targetPort>'.";
                                    Description = "Port pairs can be specified as '<port>:<targetPort>'.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--template");
                                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--validate");
                                    Name        = "If true, use a schema to validate the input before sending it";
                                    Description = "If true, use a schema to validate the input before sending it";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("serviceaccount");
                    Name        = "serviceaccount";
                    Description = "Create a service account with the specified name";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--generator");
                            Name        = "The name of the API generator to use.";
                            Description = "The name of the API generator to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--save-config");
                            Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                            Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate");
                            Name        = "If true, use a schema to validate the input before sending it";
                            Description = "If true, use a schema to validate the input before sending it";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("delete");
            Name        = "delete";
            Description = "Delete resources";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Delete all resources, including uninitialized ones, in the namespace of the specified resource types";
                    Description = "Delete all resources, including uninitialized ones, in the namespace of the specified resource types";
                },
                [FlagParameter]@{
                    Keys        = @("--all-namespaces", "-A");
                    Name        = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                    Description = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                },
                [ValueParameter]@{
                    Keys        = @("--cascade");
                    Name        = "Must be `"background`", `"orphan`", or `"foreground`". Selects the deletion cascading strategy for the dep";
                    Description = "Must be `"background`", `"orphan`", or `"foreground`". Selects the deletion cascading strategy for the dep";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-selector");
                    Name        = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    Description = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "containing the resource to delete.";
                    Description = "containing the resource to delete.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate del";
                    Description = "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate del";
                },
                [ValueParameter]@{
                    Keys        = @("--grace-period");
                    Name        = "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to";
                    Description = "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-not-found");
                    Name        = "Treat `"resource not found`" as a successful delete. Defaults to `"true`" when --all is specified.";
                    Description = "Treat `"resource not found`" as a successful delete. Defaults to `"true`" when --all is specified.";
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process a kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process a kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--now");
                    Name        = "If true, resources are signaled for immediate shutdown (same as --grace-period=1).";
                    Description = "If true, resources are signaled for immediate shutdown (same as --grace-period=1).";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output mode. Use `"-o name`" for shorter output (resource/name).";
                    Description = "Output mode. Use `"-o name`" for shorter output (resource/name).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--raw");
                    Name        = "Raw URI to DELETE to the server.  Uses the transport specified by the kubeconfig file.";
                    Description = "Raw URI to DELETE to the server.  Uses the transport specified by the kubeconfig file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, not including uninitialized ones.";
                    Description = "Selector (label query) to filter on, not including uninitialized ones.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "The length of time to wait before giving up on a delete, zero means determine a timeout from the siz";
                    Description = "The length of time to wait before giving up on a delete, zero means determine a timeout from the siz";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--wait");
                    Name        = "If true, wait for resources to be gone before returning. This waits for finalizers.";
                    Description = "If true, wait for resources to be gone before returning. This waits for finalizers.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("describe");
            Name        = "describe";
            Description = "Show details of a specific resource or group of resources";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-namespaces", "-A");
                    Name        = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                    Description = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files containing the resource to describe";
                    Description = "Filename, directory, or URL to files containing the resource to describe";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-events");
                    Name        = "If true, display events related to the described object.";
                    Description = "If true, display events related to the described object.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("diff");
            Name        = "diff";
            Description = "Diff live version against would-be applied version";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files contains the configuration to diff";
                    Description = "Filename, directory, or URL to files contains the configuration to diff";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force-conflicts");
                    Name        = "If true, server-side apply will force the changes against conflicts.";
                    Description = "If true, server-side apply will force the changes against conflicts.";
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--server-side");
                    Name        = "If true, apply runs in the server instead of the client.";
                    Description = "If true, apply runs in the server instead of the client.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("drain");
            Name        = "drain";
            Description = "Drain node in preparation for maintenance";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--delete-emptydir-data");
                    Name        = "Continue even if there are pods using emptyDir (local data that will be deleted when the node is dra";
                    Description = "Continue even if there are pods using emptyDir (local data that will be deleted when the node is dra";
                },
                [FlagParameter]@{
                    Keys        = @("--delete-local-data");
                    Name        = "Continue even if there are pods using emptyDir (local data that will be deleted when the node is dra";
                    Description = "Continue even if there are pods using emptyDir (local data that will be deleted when the node is dra";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-eviction");
                    Name        = "Force drain to use delete, even if eviction is supported. This will bypass checking PodDisruptionBud";
                    Description = "Force drain to use delete, even if eviction is supported. This will bypass checking PodDisruptionBud";
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Continue even if there are pods not managed by a ReplicationController, ReplicaSet, Job, DaemonSet o";
                    Description = "Continue even if there are pods not managed by a ReplicationController, ReplicaSet, Job, DaemonSet o";
                },
                [ValueParameter]@{
                    Keys        = @("--grace-period");
                    Name        = "Period of time in seconds given to each pod to terminate gracefully. If negative, the default value ";
                    Description = "Period of time in seconds given to each pod to terminate gracefully. If negative, the default value ";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-daemonsets");
                    Name        = "Ignore DaemonSet-managed pods.";
                    Description = "Ignore DaemonSet-managed pods.";
                },
                [ValueParameter]@{
                    Keys        = @("--pod-selector");
                    Name        = "Label selector to filter pods on the node";
                    Description = "Label selector to filter pods on the node";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on";
                    Description = "Selector (label query) to filter on";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--skip-wait-for-delete-timeout");
                    Name        = "If pod DeletionTimestamp older than N seconds, skip waiting for the pod.  Seconds must be greater th";
                    Description = "If pod DeletionTimestamp older than N seconds, skip waiting for the pod.  Seconds must be greater th";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "The length of time to wait before giving up, zero means infinite";
                    Description = "The length of time to wait before giving up, zero means infinite";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("edit");
            Name        = "edit";
            Description = "Edit a resource on the server";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files to use to edit the resource";
                    Description = "Filename, directory, or URL to files to use to edit the resource";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--output-patch");
                    Name        = "Output the patch if the resource is edited.";
                    Description = "Output the patch if the resource is edited.";
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [FlagParameter]@{
                    Keys        = @("--save-config");
                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "If true, use a schema to validate the input before sending it";
                    Description = "If true, use a schema to validate the input before sending it";
                },
                [FlagParameter]@{
                    Keys        = @("--windows-line-endings");
                    Name        = "Defaults to the line ending native to your platform.";
                    Description = "Defaults to the line ending native to your platform.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("exec");
            Name        = "exec";
            Description = "Execute a command in a container";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--container", "-c");
                    Name        = "Container name. If omitted, the first container in the pod will be chosen";
                    Description = "Container name. If omitted, the first container in the pod will be chosen";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "to use to exec into the resource";
                    Description = "to use to exec into the resource";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pod-running-timeout");
                    Name        = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    Description = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--stdin", "-i");
                    Name        = "Pass stdin to the container";
                    Description = "Pass stdin to the container";
                },
                [FlagParameter]@{
                    Keys        = @("--tty", "-t");
                    Name        = "Stdin is a TTY";
                    Description = "Stdin is a TTY";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("explain");
            Name        = "explain";
            Description = "Documentation of resources";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--api-version");
                    Name        = "Get different explanations for particular API version (API group/version)";
                    Description = "Get different explanations for particular API version (API group/version)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive");
                    Name        = "Print the fields of fields (Currently only 1 level deep)";
                    Description = "Print the fields of fields (Currently only 1 level deep)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("expose");
            Name        = "expose";
            Description = "Expose a resource as a new Kubernetes Service";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--cluster-ip");
                    Name        = "ClusterIP to be assigned to the service. Leave empty to auto-allocate, or set to 'None' to create a ";
                    Description = "ClusterIP to be assigned to the service. Leave empty to auto-allocate, or set to 'None' to create a ";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--container-port");
                    Name        = "Synonym for --target-port";
                    Description = "Synonym for --target-port";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--external-ip");
                    Name        = "Additional external IP address (not managed by Kubernetes) to accept for the service. If this IP is ";
                    Description = "Additional external IP address (not managed by Kubernetes) to accept for the service. If this IP is ";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files identifying the resource to expose a service";
                    Description = "Filename, directory, or URL to files identifying the resource to expose a service";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--generator");
                    Name        = "The name of the API generator to use. There are 2 generators: 'service/v1' and 'service/v2'. The onl";
                    Description = "The name of the API generator to use. There are 2 generators: 'service/v1' and 'service/v2'. The onl";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--labels", "-l");
                    Name        = "Labels to apply to the service created by this call.";
                    Description = "Labels to apply to the service created by this call.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--load-balancer-ip");
                    Name        = "IP to assign to the LoadBalancer. If empty, an ephemeral IP will be created and used (cloud-provider";
                    Description = "IP to assign to the LoadBalancer. If empty, an ephemeral IP will be created and used (cloud-provider";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "The name for the newly created object.";
                    Description = "The name for the newly created object.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--overrides");
                    Name        = "An inline JSON override for the generated object. If this is non-empty, it is used to override the g";
                    Description = "An inline JSON override for the generated object. If this is non-empty, it is used to override the g";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--port");
                    Name        = "The port that the service should serve on. Copied from the resource being exposed, if unspecified";
                    Description = "The port that the service should serve on. Copied from the resource being exposed, if unspecified";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--protocol");
                    Name        = "The network protocol for the service to be created. Default is 'TCP'.";
                    Description = "The network protocol for the service to be created. Default is 'TCP'.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [FlagParameter]@{
                    Keys        = @("--save-config");
                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                },
                [ValueParameter]@{
                    Keys        = @("--selector");
                    Name        = "A label selector to use for this service. Only equality-based selector requirements are supported. I";
                    Description = "A label selector to use for this service. Only equality-based selector requirements are supported. I";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--session-affinity");
                    Name        = "If non-empty, set the session affinity for the service to this; legal values: 'None', 'ClientIP'";
                    Description = "If non-empty, set the session affinity for the service to this; legal values: 'None', 'ClientIP'";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-port");
                    Name        = "Name or number for the port on the container that the service should direct traffic to. Optional.";
                    Description = "Name or number for the port on the container that the service should direct traffic to. Optional.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "Type for this service: ClusterIP, NodePort, LoadBalancer, or ExternalName. Default is 'ClusterIP'.";
                    Description = "Type for this service: ClusterIP, NodePort, LoadBalancer, or ExternalName. Default is 'ClusterIP'.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("get");
            Name        = "get";
            Description = "display one or many resources";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-namespaces", "-A");
                    Name        = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                    Description = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--chunk-size");
                    Name        = "Return large lists in chunks rather than all at once. Pass 0 to disable. This flag is beta and may c";
                    Description = "Return large lists in chunks rather than all at once. Pass 0 to disable. This flag is beta and may c";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-selector");
                    Name        = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    Description = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                    Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-not-found");
                    Name        = "If the requested object does not exist the command will return exit code 0.";
                    Description = "If the requested object does not exist the command will return exit code 0.";
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--label-columns", "-L");
                    Name        = "Accepts a comma separated list of labels that are going to be presented as columns. Names are case-s";
                    Description = "Accepts a comma separated list of labels that are going to be presented as columns. Names are case-s";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-headers");
                    Name        = "When using the default or custom-column output format, don't print headers (default print headers).";
                    Description = "When using the default or custom-column output format, don't print headers (default print headers).";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|wide|name|custom-columns=...|custom-columns-file=...|go-template=..";
                    Description = "Output format. One of: json|yaml|wide|name|custom-columns=...|custom-columns-file=...|go-template=..";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--output-watch-events");
                    Name        = "Output watch event objects when --watch or --watch-only is used. Existing objects are output as init";
                    Description = "Output watch event objects when --watch or --watch-only is used. Existing objects are output as init";
                },
                [ValueParameter]@{
                    Keys        = @("--raw");
                    Name        = "Raw URI to request from the server.  Uses the transport specified by the kubeconfig file.";
                    Description = "Raw URI to request from the server.  Uses the transport specified by the kubeconfig file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--server-print");
                    Name        = "If true, have the server return the appropriate table output. Supports extension APIs and CRDs.";
                    Description = "If true, have the server return the appropriate table output. Supports extension APIs and CRDs.";
                },
                [FlagParameter]@{
                    Keys        = @("--show-kind");
                    Name        = "If present, list the resource type for the requested object(s).";
                    Description = "If present, list the resource type for the requested object(s).";
                },
                [FlagParameter]@{
                    Keys        = @("--show-labels");
                    Name        = "When printing, show all labels as the last column (default hide labels column)";
                    Description = "When printing, show all labels as the last column (default hide labels column)";
                },
                [ValueParameter]@{
                    Keys        = @("--sort-by");
                    Name        = "If non-empty, sort list types using this field specification.  The field specification is expressed ";
                    Description = "If non-empty, sort list types using this field specification.  The field specification is expressed ";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--use-openapi-print-columns");
                    Name        = "If true, use x-kubernetes-print-column metadata (if present) from the OpenAPI schema for displaying ";
                    Description = "If true, use x-kubernetes-print-column metadata (if present) from the OpenAPI schema for displaying ";
                },
                [FlagParameter]@{
                    Keys        = @("--watch", "-w");
                    Name        = "After listing/getting the requested object, watch for changes. Uninitialized objects are excluded if";
                    Description = "After listing/getting the requested object, watch for changes. Uninitialized objects are excluded if";
                },
                [FlagParameter]@{
                    Keys        = @("--watch-only");
                    Name        = "Watch for changes to the requested object(s), without listing/getting first.";
                    Description = "Watch for changes to the requested object(s), without listing/getting first.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("kustomize");
            Name        = "kustomize";
            Description = "Build a kustomization target from a directory or a remote url";
        },
        [CommandParameter]@{
            Keys        = @("label");
            Name        = "label";
            Description = "Update the labels on a resource";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                    Description = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-selector");
                    Name        = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    Description = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files identifying the resource to update the labels";
                    Description = "Filename, directory, or URL to files identifying the resource to update the labels";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--list");
                    Name        = "If true, display the labels for a given resource.";
                    Description = "If true, display the labels for a given resource.";
                },
                [FlagParameter]@{
                    Keys        = @("--local");
                    Name        = "If true, label will NOT contact api-server but run locally.";
                    Description = "If true, label will NOT contact api-server but run locally.";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "If true, allow labels to be overwritten, otherwise reject label updates that overwrite existing labe";
                    Description = "If true, allow labels to be overwritten, otherwise reject label updates that overwrite existing labe";
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--resource-version");
                    Name        = "If non-empty, the labels update will only succeed if this is the current resource-version for the ob";
                    Description = "If non-empty, the labels update will only succeed if this is the current resource-version for the ob";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.";
                    Description = "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logs");
            Name        = "logs";
            Description = "Print the logs for a container in a pod";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-containers");
                    Name        = "Get all containers' logs in the pod(s).";
                    Description = "Get all containers' logs in the pod(s).";
                },
                [ValueParameter]@{
                    Keys        = @("--container", "-c");
                    Name        = "Print the logs of this container";
                    Description = "Print the logs of this container";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--follow", "-f");
                    Name        = "Specify if the logs should be streamed.";
                    Description = "Specify if the logs should be streamed.";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-errors");
                    Name        = "If watching / following pod logs, allow for any errors that occur to be non-fatal";
                    Description = "If watching / following pod logs, allow for any errors that occur to be non-fatal";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure-skip-tls-verify-backend");
                    Name        = "Skip verifying the identity of the kubelet that logs are requested from.  In theory, an attacker cou";
                    Description = "Skip verifying the identity of the kubelet that logs are requested from.  In theory, an attacker cou";
                },
                [ValueParameter]@{
                    Keys        = @("--limit-bytes");
                    Name        = "Maximum bytes of logs to return. Defaults to no limit.";
                    Description = "Maximum bytes of logs to return. Defaults to no limit.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--max-log-requests");
                    Name        = "Specify maximum number of concurrent logs to follow when using by a selector. Defaults to 5.";
                    Description = "Specify maximum number of concurrent logs to follow when using by a selector. Defaults to 5.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pod-running-timeout");
                    Name        = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    Description = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--prefix");
                    Name        = "Prefix each log line with the log source (pod name and container name)";
                    Description = "Prefix each log line with the log source (pod name and container name)";
                },
                [FlagParameter]@{
                    Keys        = @("--previous", "-p");
                    Name        = "If true, print the logs for the previous instance of the container in a pod if it exists.";
                    Description = "If true, print the logs for the previous instance of the container in a pod if it exists.";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on.";
                    Description = "Selector (label query) to filter on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--since");
                    Name        = "Only return logs newer than a relative duration like 5s, 2m, or 3h. Defaults to all logs. Only one o";
                    Description = "Only return logs newer than a relative duration like 5s, 2m, or 3h. Defaults to all logs. Only one o";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--since-time");
                    Name        = "Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / sin";
                    Description = "Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / sin";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tail");
                    Name        = "Lines of recent log file to display. Defaults to -1 with no selector, showing all log lines otherwis";
                    Description = "Lines of recent log file to display. Defaults to -1 with no selector, showing all log lines otherwis";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--timestamps");
                    Name        = "Include timestamps on each line in the log output";
                    Description = "Include timestamps on each line in the log output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("patch");
            Name        = "patch";
            Description = "Update field(s) of a resource";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files identifying the resource to update";
                    Description = "Filename, directory, or URL to files identifying the resource to update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--local");
                    Name        = "If true, patch will operate on the content of the file, not the server-side resource.";
                    Description = "If true, patch will operate on the content of the file, not the server-side resource.";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--patch", "-p");
                    Name        = "The patch to be applied to the resource JSON file.";
                    Description = "The patch to be applied to the resource JSON file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--patch-file");
                    Name        = "A file containing a patch to be applied to the resource.";
                    Description = "A file containing a patch to be applied to the resource.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "The type of patch being provided; one of [json merge strategic]";
                    Description = "The type of patch being provided; one of [json merge strategic]";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("plugin");
            Name        = "plugin";
            Description = "Provides utilities for interacting with plugins";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "list all visible plugin executables on a user's PATH";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--name-only");
                            Name        = "If true, display only the binary name of each plugin, rather than its full path";
                            Description = "If true, display only the binary name of each plugin, rather than its full path";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("port-forward");
            Name        = "port-forward";
            Description = "Forward one or more local ports to a pod";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--address");
                    Name        = "Addresses to listen on (comma separated). Only accepts IP addresses or localhost as a value. When lo";
                    Description = "Addresses to listen on (comma separated). Only accepts IP addresses or localhost as a value. When lo";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pod-running-timeout");
                    Name        = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    Description = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("proxy");
            Name        = "proxy";
            Description = "Run a proxy to the Kubernetes API server";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--accept-hosts");
                    Name        = "Regular expression for hosts that the proxy should accept.";
                    Description = "Regular expression for hosts that the proxy should accept.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--accept-paths");
                    Name        = "Regular expression for paths that the proxy should accept.";
                    Description = "Regular expression for paths that the proxy should accept.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--address");
                    Name        = "The IP address on which to serve on.";
                    Description = "The IP address on which to serve on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--api-prefix");
                    Name        = "Prefix to serve the proxied API under.";
                    Description = "Prefix to serve the proxied API under.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-filter");
                    Name        = "If true, disable request filtering in the proxy. This is dangerous, and can leave you vulnerable to ";
                    Description = "If true, disable request filtering in the proxy. This is dangerous, and can leave you vulnerable to ";
                },
                [ValueParameter]@{
                    Keys        = @("--keepalive");
                    Name        = "keepalive specifies the keep-alive period for an active network connection. Set to 0 to disable keep";
                    Description = "keepalive specifies the keep-alive period for an active network connection. Set to 0 to disable keep";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--port", "-p");
                    Name        = "The port on which to run the proxy. Set to 0 to pick a random port.";
                    Description = "The port on which to run the proxy. Set to 0 to pick a random port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--reject-methods");
                    Name        = "Regular expression for HTTP methods that the proxy should reject (example --reject-methods='POST,PUT";
                    Description = "Regular expression for HTTP methods that the proxy should reject (example --reject-methods='POST,PUT";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--reject-paths");
                    Name        = "Regular expression for paths that the proxy should reject. Paths specified here will be rejected eve";
                    Description = "Regular expression for paths that the proxy should reject. Paths specified here will be rejected eve";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--unix-socket", "-u");
                    Name        = "Unix socket on which to run the proxy.";
                    Description = "Unix socket on which to run the proxy.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--www", "-w");
                    Name        = "Also serve static files from the given directory under the specified prefix.";
                    Description = "Also serve static files from the given directory under the specified prefix.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--www-prefix", "-P");
                    Name        = "Prefix to serve static files under, if static file directory is specified.";
                    Description = "Prefix to serve static files under, if static file directory is specified.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("replace");
            Name        = "replace";
            Description = "Replace a resource by filename or stdin";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--cascade");
                    Name        = "Must be `"background`", `"orphan`", or `"foreground`". Selects the deletion cascading strategy for the dep";
                    Description = "Must be `"background`", `"orphan`", or `"foreground`". Selects the deletion cascading strategy for the dep";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "to use to replace the resource.";
                    Description = "to use to replace the resource.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate del";
                    Description = "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate del";
                },
                [ValueParameter]@{
                    Keys        = @("--grace-period");
                    Name        = "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to";
                    Description = "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process a kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process a kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--raw");
                    Name        = "Raw URI to PUT to the server.  Uses the transport specified by the kubeconfig file.";
                    Description = "Raw URI to PUT to the server.  Uses the transport specified by the kubeconfig file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [FlagParameter]@{
                    Keys        = @("--save-config");
                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "The length of time to wait before giving up on a delete, zero means determine a timeout from the siz";
                    Description = "The length of time to wait before giving up on a delete, zero means determine a timeout from the siz";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "If true, use a schema to validate the input before sending it";
                    Description = "If true, use a schema to validate the input before sending it";
                },
                [FlagParameter]@{
                    Keys        = @("--wait");
                    Name        = "If true, wait for resources to be gone before returning. This waits for finalizers.";
                    Description = "If true, wait for resources to be gone before returning. This waits for finalizers.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rollout");
            Name        = "rollout";
            Description = "Manage the rollout of a resource";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("history");
                    Name        = "history";
                    Description = "View rollout history";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--revision");
                            Name        = "See the details, including podTemplate of the revision specified";
                            Description = "See the details, including podTemplate of the revision specified";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pause");
                    Name        = "pause";
                    Description = "Mark the provided resource as paused";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("restart");
                    Name        = "restart";
                    Description = "Restart a resource";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("resume");
                    Name        = "resume";
                    Description = "Resume a paused resource";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("status");
                    Name        = "status";
                    Description = "Show the status of the rollout";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--revision");
                            Name        = "Pin to a specific revision for showing its status. Defaults to 0 (last revision).";
                            Description = "Pin to a specific revision for showing its status. Defaults to 0 (last revision).";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--timeout");
                            Name        = "The length of time to wait before ending watch, zero means never. Any other values should contain a ";
                            Description = "The length of time to wait before ending watch, zero means never. Any other values should contain a ";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--watch", "-w");
                            Name        = "Watch the status of the rollout until it's done.";
                            Description = "Watch the status of the rollout until it's done.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("undo");
                    Name        = "undo";
                    Description = "Undo a previous rollout";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--to-revision");
                            Name        = "The revision to rollback to. Default to 0 (last revision).";
                            Description = "The revision to rollback to. Default to 0 (last revision).";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run a particular image on the cluster";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--annotations");
                    Name        = "Annotations to apply to the pod.";
                    Description = "Annotations to apply to the pod.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--attach");
                    Name        = "If true, wait for the Pod to start running, and then attach to the Pod as if 'kubectl attach ...' we";
                    Description = "If true, wait for the Pod to start running, and then attach to the Pod as if 'kubectl attach ...' we";
                },
                [ValueParameter]@{
                    Keys        = @("--cascade");
                    Name        = "Must be `"background`", `"orphan`", or `"foreground`". Selects the deletion cascading strategy for the dep";
                    Description = "Must be `"background`", `"orphan`", or `"foreground`". Selects the deletion cascading strategy for the dep";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--command");
                    Name        = "If true and extra arguments are present, use them as the 'command' field in the container, rather th";
                    Description = "If true and extra arguments are present, use them as the 'command' field in the container, rather th";
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--env");
                    Name        = "Environment variables to set in the container.";
                    Description = "Environment variables to set in the container.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--expose");
                    Name        = "If true, service is created for the container(s) which are run";
                    Description = "If true, service is created for the container(s) which are run";
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "to use to replace the resource.";
                    Description = "to use to replace the resource.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate del";
                    Description = "If true, immediately remove resources from API and bypass graceful deletion. Note that immediate del";
                },
                [ValueParameter]@{
                    Keys        = @("--generator");
                    Name        = "The name of the API generator to use, see http://kubernetes.io/docs/user-guide/kubectl-conventions/#";
                    Description = "The name of the API generator to use, see http://kubernetes.io/docs/user-guide/kubectl-conventions/#";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--grace-period");
                    Name        = "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to";
                    Description = "Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hostport");
                    Name        = "The host port mapping for the container port. To demonstrate a single-machine container.";
                    Description = "The host port mapping for the container port. To demonstrate a single-machine container.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image");
                    Name        = "The image for the container to run.";
                    Description = "The image for the container to run.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image-pull-policy");
                    Name        = "The image pull policy for the container. If left empty, this value will not be specified by the clie";
                    Description = "The image pull policy for the container. If left empty, this value will not be specified by the clie";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process a kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process a kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--labels", "-l");
                    Name        = "Comma separated labels to apply to the pod(s). Will override previous values.";
                    Description = "Comma separated labels to apply to the pod(s). Will override previous values.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--leave-stdin-open");
                    Name        = "If the pod is started in interactive mode or with stdin, leave stdin open after the first attach com";
                    Description = "If the pod is started in interactive mode or with stdin, leave stdin open after the first attach com";
                },
                [ValueParameter]@{
                    Keys        = @("--limits");
                    Name        = "The resource requirement limits for this container.  For example, 'cpu=200m,memory=512Mi'.  Note tha";
                    Description = "The resource requirement limits for this container.  For example, 'cpu=200m,memory=512Mi'.  Note tha";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--overrides");
                    Name        = "An inline JSON override for the generated object. If this is non-empty, it is used to override the g";
                    Description = "An inline JSON override for the generated object. If this is non-empty, it is used to override the g";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pod-running-timeout");
                    Name        = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    Description = "The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--port");
                    Name        = "The port that this container exposes.";
                    Description = "The port that this container exposes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--privileged");
                    Name        = "If true, run the container in privileged mode.";
                    Description = "If true, run the container in privileged mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet");
                    Name        = "If true, suppress prompt messages.";
                    Description = "If true, suppress prompt messages.";
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--replicas", "-r");
                    Name        = "Number of replicas to create for this container. Default is 1.";
                    Description = "Number of replicas to create for this container. Default is 1.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--requests");
                    Name        = "The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note t";
                    Description = "The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note t";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--restart");
                    Name        = "The restart policy for this Pod.  Legal values [Always, OnFailure, Never].";
                    Description = "The restart policy for this Pod.  Legal values [Always, OnFailure, Never].";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--rm");
                    Name        = "If true, delete resources created in this command for attached containers.";
                    Description = "If true, delete resources created in this command for attached containers.";
                },
                [FlagParameter]@{
                    Keys        = @("--save-config");
                    Name        = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                    Description = "If true, the configuration of current object will be saved in its annotation. Otherwise, the annotat";
                },
                [ValueParameter]@{
                    Keys        = @("--schedule");
                    Name        = "A schedule in the Cron format the job should be run with.";
                    Description = "A schedule in the Cron format the job should be run with.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service-generator");
                    Name        = "The name of the generator to use for creating a service.  Only used if --expose is true";
                    Description = "The name of the generator to use for creating a service.  Only used if --expose is true";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service-overrides");
                    Name        = "An inline JSON override for the generated service object. If this is non-empty, it is used to overri";
                    Description = "An inline JSON override for the generated service object. If this is non-empty, it is used to overri";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--serviceaccount");
                    Name        = "Service account to set in the pod spec.";
                    Description = "Service account to set in the pod spec.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--stdin", "-i");
                    Name        = "Keep stdin open on the container(s) in the pod, even if nothing is attached.";
                    Description = "Keep stdin open on the container(s) in the pod, even if nothing is attached.";
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "The length of time to wait before giving up on a delete, zero means determine a timeout from the siz";
                    Description = "The length of time to wait before giving up on a delete, zero means determine a timeout from the siz";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tty", "-t");
                    Name        = "Allocated a TTY for each container in the pod.";
                    Description = "Allocated a TTY for each container in the pod.";
                },
                [FlagParameter]@{
                    Keys        = @("--wait");
                    Name        = "If true, wait for resources to be gone before returning. This waits for finalizers.";
                    Description = "If true, wait for resources to be gone before returning. This waits for finalizers.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("scale");
            Name        = "scale";
            Description = "Set a new size for a Deployment, ReplicaSet or Replication Controller";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Select all resources in the namespace of the specified resource types";
                    Description = "Select all resources in the namespace of the specified resource types";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--current-replicas");
                    Name        = "Precondition for current size. Requires that the current size of the resource match this value in or";
                    Description = "Precondition for current size. Requires that the current size of the resource match this value in or";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "Filename, directory, or URL to files identifying the resource to set a new size";
                    Description = "Filename, directory, or URL to files identifying the resource to set a new size";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kustomize", "-k");
                    Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--record");
                    Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                    Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--replicas");
                    Name        = "The new desired number of replicas. Required.";
                    Description = "The new desired number of replicas. Required.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--resource-version");
                    Name        = "Precondition for resource version. Requires that the current resource version match this value in or";
                    Description = "Precondition for resource version. Requires that the current resource version match this value in or";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "The length of time to wait before giving up on a scale operation, zero means don't wait. Any other v";
                    Description = "The length of time to wait before giving up on a scale operation, zero means don't wait. Any other v";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("set");
            Name        = "set";
            Description = "Set specific features on objects";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("env");
                    Name        = "env";
                    Description = "Update environment variables on a pod template";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "If true, select all resources in the namespace of the specified resource types";
                            Description = "If true, select all resources in the namespace of the specified resource types";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--containers", "-c");
                            Name        = "The names of containers in the selected pod templates to change - may use wildcards";
                            Description = "The names of containers in the selected pod templates to change - may use wildcards";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--env", "-e");
                            Name        = "Specify a key-value pair for an environment variable to set into each container.";
                            Description = "Specify a key-value pair for an environment variable to set into each container.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files the resource to update the env";
                            Description = "Filename, directory, or URL to files the resource to update the env";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--from");
                            Name        = "The name of a resource from which to inject environment variables";
                            Description = "The name of a resource from which to inject environment variables";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--keys");
                            Name        = "Comma-separated list of keys to import from specified resource";
                            Description = "Comma-separated list of keys to import from specified resource";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--list");
                            Name        = "If true, display the environment and any changes in the standard format. this flag will removed when";
                            Description = "If true, display the environment and any changes in the standard format. this flag will removed when";
                        },
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "If true, set env will NOT contact api-server but run locally.";
                            Description = "If true, set env will NOT contact api-server but run locally.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--overwrite");
                            Name        = "If true, allow environment to be overwritten, otherwise reject updates that overwrite existing envir";
                            Description = "If true, allow environment to be overwritten, otherwise reject updates that overwrite existing envir";
                        },
                        [ValueParameter]@{
                            Keys        = @("--prefix");
                            Name        = "Prefix to append to variable names";
                            Description = "Prefix to append to variable names";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [FlagParameter]@{
                            Keys        = @("--resolve");
                            Name        = "If true, show secret or configmap references when listing variables";
                            Description = "If true, show secret or configmap references when listing variables";
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector", "-l");
                            Name        = "Selector (label query) to filter on";
                            Description = "Selector (label query) to filter on";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("image");
                    Name        = "image";
                    Description = "Update image of a pod template";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                            Description = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "If true, set image will NOT contact api-server but run locally.";
                            Description = "If true, set image will NOT contact api-server but run locally.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--record");
                            Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                            Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector", "-l");
                            Name        = "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.";
                            Description = "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("resources");
                    Name        = "resources";
                    Description = "Update resource requests/limits on objects with pod templates";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                            Description = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--containers", "-c");
                            Name        = "The names of containers in the selected pod templates to change, all containers are selected by defa";
                            Description = "The names of containers in the selected pod templates to change, all containers are selected by defa";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--limits");
                            Name        = "The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note t";
                            Description = "The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note t";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "If true, set resources will NOT contact api-server but run locally.";
                            Description = "If true, set resources will NOT contact api-server but run locally.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--record");
                            Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                            Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--requests");
                            Name        = "The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note t";
                            Description = "The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note t";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector", "-l");
                            Name        = "Selector (label query) to filter on, not including uninitialized ones,supports '=', '==', and '!='.(";
                            Description = "Selector (label query) to filter on, not including uninitialized ones,supports '=', '==', and '!='.(";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("selector");
                    Name        = "selector";
                    Description = "Set the selector on a resource";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Select all resources in the namespace of the specified resource types";
                            Description = "Select all resources in the namespace of the specified resource types";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "identifying the resource.";
                            Description = "identifying the resource.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "If true, annotation will NOT contact api-server but run locally.";
                            Description = "If true, annotation will NOT contact api-server but run locally.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--record");
                            Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                            Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--resource-version");
                            Name        = "If non-empty, the selectors update will only succeed if this is the current resource-version for the";
                            Description = "If non-empty, the selectors update will only succeed if this is the current resource-version for the";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("serviceaccount");
                    Name        = "serviceaccount";
                    Description = "Update ServiceAccount of a resource";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                            Description = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            Description = "Filename, directory, or URL to files identifying the resource to get from a server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "If true, set serviceaccount will NOT contact api-server but run locally.";
                            Description = "If true, set serviceaccount will NOT contact api-server but run locally.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--record");
                            Name        = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                            Description = "Record current kubectl command in the resource annotation. If set to false, do not record the comman";
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("subject");
                    Name        = "subject";
                    Description = "Update User, Group or ServiceAccount in a RoleBinding/ClusterRoleBinding";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                            Description = "Select all resources, including uninitialized ones, in the namespace of the specified resource types";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--field-manager");
                            Name        = "Name of the manager used to track field ownership.";
                            Description = "Name of the manager used to track field ownership.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--filename", "-f");
                            Name        = "Filename, directory, or URL to files the resource to update the subjects";
                            Description = "Filename, directory, or URL to files the resource to update the subjects";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--group");
                            Name        = "Groups to bind to the role";
                            Description = "Groups to bind to the role";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kustomize", "-k");
                            Name        = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            Description = "Process the kustomization directory. This flag can't be used together with -f or -R.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--local");
                            Name        = "If true, set subject will NOT contact api-server but run locally.";
                            Description = "If true, set subject will NOT contact api-server but run locally.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recursive", "-R");
                            Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                            Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector", "-l");
                            Name        = "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.";
                            Description = "Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--serviceaccount");
                            Name        = "Service accounts to bind to the role";
                            Description = "Service accounts to bind to the role";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--template");
                            Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("taint");
            Name        = "taint";
            Description = "Update the taints on one or more nodes";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Select all nodes in the cluster";
                    Description = "Select all nodes in the cluster";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--field-manager");
                    Name        = "Name of the manager used to track field ownership.";
                    Description = "Name of the manager used to track field ownership.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "If true, allow taints to be overwritten, otherwise reject taint updates that overwrite existing tain";
                    Description = "If true, allow taints to be overwritten, otherwise reject taint updates that overwrite existing tain";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "If true, use a schema to validate the input before sending it";
                    Description = "If true, use a schema to validate the input before sending it";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("top");
            Name        = "top";
            Description = "Display Resource (CPU/Memory/Storage) usage";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("node");
                    Name        = "node";
                    Description = "Display Resource (CPU/Memory/Storage) usage of nodes";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--heapster-namespace");
                            Name        = "Namespace Heapster service is located in";
                            Description = "Namespace Heapster service is located in";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--heapster-port");
                            Name        = "Port name in service to use";
                            Description = "Port name in service to use";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--heapster-scheme");
                            Name        = "Scheme (http or https) to connect to Heapster as";
                            Description = "Scheme (http or https) to connect to Heapster as";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--heapster-service");
                            Name        = "Name of Heapster service";
                            Description = "Name of Heapster service";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-headers");
                            Name        = "If present, print output without headers";
                            Description = "If present, print output without headers";
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector", "-l");
                            Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                            Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sort-by");
                            Name        = "If non-empty, sort nodes list using specified field. The field can be either 'cpu' or 'memory'.";
                            Description = "If non-empty, sort nodes list using specified field. The field can be either 'cpu' or 'memory'.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pod");
                    Name        = "pod";
                    Description = "Display Resource (CPU/Memory/Storage) usage of pods";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all-namespaces", "-A");
                            Name        = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                            Description = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                        },
                        [FlagParameter]@{
                            Keys        = @("--containers");
                            Name        = "If present, print usage of containers within a pod.";
                            Description = "If present, print usage of containers within a pod.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-headers");
                            Name        = "If present, print output without headers.";
                            Description = "If present, print output without headers.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector", "-l");
                            Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                            Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sort-by");
                            Name        = "If non-empty, sort pods list using specified field. The field can be either 'cpu' or 'memory'.";
                            Description = "If non-empty, sort pods list using specified field. The field can be either 'cpu' or 'memory'.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("uncordon");
            Name        = "uncordon";
            Description = "Mark node as schedulable";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    Description = "Must be `"none`", `"server`", or `"client`". If client strategy, only print the object that would be sent,";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on";
                    Description = "Selector (label query) to filter on";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Print the client and server version information";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--client");
                    Name        = "If true, shows client version only (no server required).";
                    Description = "If true, shows client version only (no server required).";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "One of 'yaml' or 'json'.";
                    Description = "One of 'yaml' or 'json'.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--short");
                    Name        = "If true, print just the version number.";
                    Description = "If true, print just the version number.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("wait");
            Name        = "wait";
            Description = "Experimental: Wait for a specific condition on one or many resources";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Select all resources in the namespace of the specified resource types";
                    Description = "Select all resources in the namespace of the specified resource types";
                },
                [FlagParameter]@{
                    Keys        = @("--all-namespaces", "-A");
                    Name        = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                    Description = "If present, list the requested object(s) across all namespaces. Namespace in current context is igno";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-missing-template-keys");
                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only app";
                },
                [ValueParameter]@{
                    Keys        = @("--field-selector");
                    Name        = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    Description = "Selector (field query) to filter on, supports '=', '==', and '!='.(e.g. --field-selector key1=value1";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filename", "-f");
                    Name        = "identifying the resource.";
                    Description = "identifying the resource.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--for");
                    Name        = "The condition to wait on: [delete|condition=condition-name].";
                    Description = "The condition to wait on: [delete|condition=condition-name].";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--local");
                    Name        = "If true, annotation will NOT contact api-server but run locally.";
                    Description = "If true, annotation will NOT contact api-server but run locally.";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    Description = "Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|js";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive", "-R");
                    Name        = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                    Description = "Process the directory used in -f, --filename recursively. Useful when you want to manage related man";
                },
                [ValueParameter]@{
                    Keys        = @("--selector", "-l");
                    Name        = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    Description = "Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template");
                    Name        = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    Description = "Template string or path to template file to use when -o=go-template, -o=go-template-file. The templa";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "The length of time to wait before giving up.  Zero means check once and don't wait, negative means w";
                    Description = "The length of time to wait before giving up.  Zero means check once and don't wait, negative means w";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
