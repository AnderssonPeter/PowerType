# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://kubernetes.io/docs/reference/setup-tools/kubeadm/";
    Keys        = @("kubeadm");
    Name        = "kubeadm";
    Description = "kubeadm: easily bootstrap a secure Kubernetes cluster";
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
        [FlagParameter]@{
            Keys        = @("--one-output");
            Name        = "If true, only write logs to their native severity level (vs also writing to each lower severity level)";
            Description = "If true, only write logs to their native severity level (vs also writing to each lower severity level)";
        },
        [ValueParameter]@{
            Keys        = @("--rootfs");
            Name        = "[EXPERIMENTAL] The path to the 'real' host root filesystem.";
            Description = "[EXPERIMENTAL] The path to the 'real' host root filesystem.";
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
        [CommandParameter]@{
            Keys        = @("alpha");
            Name        = "alpha";
            Description = "Kubeadm experimental sub-commands";
        },
        [CommandParameter]@{
            Keys        = @("certs");
            Name        = "certs";
            Description = "Commands related to handling kubernetes certificates";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("certificate-key");
                    Name        = "certificate-key";
                    Description = "Generate certificate keys";
                },
                [CommandParameter]@{
                    Keys        = @("check-expiration");
                    Name        = "check-expiration";
                    Description = "Check certificates expiration for a Kubernetes cluster";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--cert-dir");
                            Name        = "The path where to save the certificates";
                            Description = "The path where to save the certificates";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Path to a kubeadm configuration file.";
                            Description = "Path to a kubeadm configuration file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kubeconfig");
                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("generate-csr");
                    Name        = "generate-csr";
                    Description = "Generate keys and certificate signing requests";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--cert-dir");
                            Name        = "The path where to save the certificates";
                            Description = "The path where to save the certificates";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Path to a kubeadm configuration file.";
                            Description = "Path to a kubeadm configuration file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kubeconfig-dir");
                            Name        = "The path where to save the kubeconfig file.";
                            Description = "The path where to save the kubeconfig file.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("renew");
                    Name        = "renew";
                    Description = "Renew certificates for a Kubernetes cluster";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("admin.conf");
                            Name        = "admin.conf";
                            Description = "Renew the certificate embedded in the kubeconfig file for the admin to use and for kubeadm itself";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster.";
                                    Description = "The kubeconfig file to use when talking to the cluster.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("all");
                            Name        = "all";
                            Description = "Renew all available certificates";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("apiserver");
                            Name        = "apiserver";
                            Description = "Renew the certificate for serving the Kubernetes API";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("apiserver-etcd-client");
                            Name        = "apiserver-etcd-client";
                            Description = "Renew the certificate the apiserver uses to access etcd";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("apiserver-kubelet-client");
                            Name        = "apiserver-kubelet-client";
                            Description = "Renew the certificate for the API server to connect to kubelet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("controller-manager.conf");
                            Name        = "controller-manager.conf";
                            Description = "Renew the certificate embedded in the kubeconfig file for the controller manager to use";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("etcd-healthcheck-client");
                            Name        = "etcd-healthcheck-client";
                            Description = "Renew the certificate for liveness probes to healthcheck etcd";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("etcd-peer");
                            Name        = "etcd-peer";
                            Description = "Renew the certificate for etcd nodes to communicate with each other";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("etcd-server");
                            Name        = "etcd-server";
                            Description = "Renew the certificate for serving etcd";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("front-proxy-client");
                            Name        = "front-proxy-client";
                            Description = "Renew the certificate for the front proxy client";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("scheduler.conf");
                            Name        = "scheduler.conf";
                            Description = "Renew the certificate embedded in the kubeconfig file for the scheduler manager to use";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path where to save the certificates";
                                    Description = "The path where to save the certificates";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster.";
                                    Description = "The kubeconfig file to use when talking to the cluster.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
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
            Description = "Manage configuration for a kubeadm cluster persisted in a ConfigMap in the cluster";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--kubeconfig");
                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                [CommandParameter]@{
                    Keys        = @("images");
                    Name        = "images";
                    Description = "Interact with container images used by kubeadm";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Print a list of images kubeadm will use. The configuration file is used in case any images or image repositories are customized";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--allow-missing-template-keys");
                                    Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats.";
                                    Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--experimental-output", "-o");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--feature-gates");
                                    Name        = "A set of key=value pairs that describe feature gates for various features.";
                                    Description = "A set of key=value pairs that describe feature gates for various features.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--image-repository");
                                    Name        = "Choose a container registry to pull control plane images from";
                                    Description = "Choose a container registry to pull control plane images from";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubernetes-version");
                                    Name        = "Choose a specific Kubernetes version for the control plane.";
                                    Description = "Choose a specific Kubernetes version for the control plane.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--show-managed-fields");
                                    Name        = "If true, keep the managedFields when printing objects in JSON or YAML format.";
                                    Description = "If true, keep the managedFields when printing objects in JSON or YAML format.";
                                },
                                ,
                                ,
                                ,
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("pull");
                            Name        = "pull";
                            Description = "Pull images used by kubeadm";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cri-socket");
                                    Name        = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    Description = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--feature-gates");
                                    Name        = "A set of key=value pairs that describe feature gates for various features.";
                                    Description = "A set of key=value pairs that describe feature gates for various features.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--image-repository");
                                    Name        = "Choose a container registry to pull control plane images from";
                                    Description = "Choose a container registry to pull control plane images from";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubernetes-version");
                                    Name        = "Choose a specific Kubernetes version for the control plane.";
                                    Description = "Choose a specific Kubernetes version for the control plane.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                ,
                                ,
                                ,
                                ,
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("migrate");
                    Name        = "migrate";
                    Description = "Read an older version of the kubeadm configuration API types from a file, and output the similar config object for the newer version";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--new-config");
                            Name        = "Path to the resulting equivalent kubeadm config file using the new API version. Optional, if not specified output will be sent to STDOUT.";
                            Description = "Path to the resulting equivalent kubeadm config file using the new API version. Optional, if not specified output will be sent to STDOUT.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--old-config");
                            Name        = "Path to the kubeadm config file that is using an old API version and should be converted. This flag is mandatory.";
                            Description = "Path to the kubeadm config file that is using an old API version and should be converted. This flag is mandatory.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("print");
                    Name        = "print";
                    Description = "Print configuration";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("init-defaults");
                            Name        = "init-defaults";
                            Description = "Print default init configuration, that can be used for 'kubeadm init'";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--component-configs");
                                    Name        = "A comma-separated list for component config API objects to print the default values for.";
                                    Description = "A comma-separated list for component config API objects to print the default values for.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("join-defaults");
                            Name        = "join-defaults";
                            Description = "Print default join configuration, that can be used for 'kubeadm join'";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--component-configs");
                                    Name        = "A comma-separated list for component config API objects to print the default values for. Available values: [KubeProxyConfiguration KubeletConfiguration]. If this flag is not set, no component configs will be printed.";
                                    Description = "A comma-separated list for component config API objects to print the default values for. Available values: [KubeProxyConfiguration KubeletConfiguration]. If this flag is not set, no component configs will be printed.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Run this command in order to set up the Kubernetes control plane";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--apiserver-advertise-address");
                    Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                    Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--apiserver-bind-port");
                    Name        = "Port for the API Server to bind to.";
                    Description = "Port for the API Server to bind to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--apiserver-cert-extra-sans");
                    Name        = "Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate. Can be both IP addresses and DNS names.";
                    Description = "Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate. Can be both IP addresses and DNS names.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cert-dir");
                    Name        = "The path where to save and store the certificates.";
                    Description = "The path where to save and store the certificates.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--certificate-key");
                    Name        = "Key used to encrypt the control-plane certificates in the kubeadm-certs Secret.";
                    Description = "Key used to encrypt the control-plane certificates in the kubeadm-certs Secret.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config");
                    Name        = "Path to a kubeadm configuration file.";
                    Description = "Path to a kubeadm configuration file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--control-plane-endpoint");
                    Name        = "Specify a stable IP address or DNS name for the control plane.";
                    Description = "Specify a stable IP address or DNS name for the control plane.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cri-socket");
                    Name        = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                    Description = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Don't apply any changes; just output what would be done.";
                    Description = "Don't apply any changes; just output what would be done.";
                },
                [ValueParameter]@{
                    Keys        = @("--feature-gates");
                    Name        = "A set of key=value pairs that describe feature gates for various features.";
                    Description = "A set of key=value pairs that describe feature gates for various features.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ignore-preflight-errors");
                    Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                    Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--image-repository");
                    Name        = "Choose a container registry to pull control plane images from";
                    Description = "Choose a container registry to pull control plane images from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kubernetes-version");
                    Name        = "Choose a specific Kubernetes version for the control plane.";
                    Description = "Choose a specific Kubernetes version for the control plane.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--node-name");
                    Name        = "Specify the node name.";
                    Description = "Specify the node name.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--patches");
                    Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                    Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pod-network-cidr");
                    Name        = "Specify range of IP addresses for the pod network.";
                    Description = "Specify range of IP addresses for the pod network.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service-cidr");
                    Name        = "Use alternative range of IP address for service VIPs.";
                    Description = "Use alternative range of IP address for service VIPs.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service-dns-domain");
                    Name        = "Use alternative domain for services, e.g. `"myorg.internal`".";
                    Description = "Use alternative domain for services, e.g. `"myorg.internal`".";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-certificate-key-print");
                    Name        = "Don't print the key used to encrypt the control-plane certificates.";
                    Description = "Don't print the key used to encrypt the control-plane certificates.";
                },
                [ValueParameter]@{
                    Keys        = @("--skip-phases");
                    Name        = "List of phases to be skipped";
                    Description = "List of phases to be skipped";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-token-print");
                    Name        = "Skip printing of the default bootstrap token generated by 'kubeadm init'.";
                    Description = "Skip printing of the default bootstrap token generated by 'kubeadm init'.";
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "The token to use for establishing bidirectional trust between nodes and control-plane nodes.";
                    Description = "The token to use for establishing bidirectional trust between nodes and control-plane nodes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-ttl");
                    Name        = "The duration before the token is automatically deleted (e.g. 1s, 2m, 3h). If set to '0', the token will never expire";
                    Description = "The duration before the token is automatically deleted (e.g. 1s, 2m, 3h). If set to '0', the token will never expire";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--upload-certs");
                    Name        = "Upload control-plane certificates to the kubeadm-certs Secret.";
                    Description = "Upload control-plane certificates to the kubeadm-certs Secret.";
                },
                [CommandParameter]@{
                    Keys        = @("phase");
                    Name        = "phase";
                    Description = "Use this command to invoke single phase of the init workflow";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("addon");
                            Name        = "addon";
                            Description = "Install required addons for passing conformance tests";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("all");
                                    Name        = "all";
                                    Description = "Install all the addons";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--feature-gates");
                                            Name        = "A set of key=value pairs that describe feature gates for various features.";
                                            Description = "A set of key=value pairs that describe feature gates for various features.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--image-repository");
                                            Name        = "Choose a container registry to pull control plane images from";
                                            Description = "Choose a container registry to pull control plane images from";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig");
                                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--pod-network-cidr");
                                            Name        = "Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.";
                                            Description = "Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-cidr");
                                            Name        = "Use alternative range of IP address for service VIPs.";
                                            Description = "Use alternative range of IP address for service VIPs.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-dns-domain");
                                            Name        = "Use alternative domain for services, e.g. `"myorg.internal`".";
                                            Description = "Use alternative domain for services, e.g. `"myorg.internal`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("coredns");
                                    Name        = "coredns";
                                    Description = "Install the CoreDNS addon to a Kubernetes cluster";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--feature-gates");
                                            Name        = "A set of key=value pairs that describe feature gates for various features.";
                                            Description = "A set of key=value pairs that describe feature gates for various features.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--image-repository");
                                            Name        = "Choose a container registry to pull control plane images from";
                                            Description = "Choose a container registry to pull control plane images from";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig");
                                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-cidr");
                                            Name        = "Use alternative range of IP address for service VIPs.";
                                            Description = "Use alternative range of IP address for service VIPs.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-dns-domain");
                                            Name        = "Use alternative domain for services, e.g. `"myorg.internal`".";
                                            Description = "Use alternative domain for services, e.g. `"myorg.internal`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("kube-proxy");
                                    Name        = "kube-proxy";
                                    Description = "Install the kube-proxy addon to a Kubernetes cluster";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--image-repository");
                                            Name        = "Choose a container registry to pull control plane images from";
                                            Description = "Choose a container registry to pull control plane images from";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig");
                                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--pod-network-cidr");
                                            Name        = "Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.";
                                            Description = "Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("bootstrap-token");
                            Name        = "bootstrap-token";
                            Description = "Generates bootstrap tokens used to join a node to a cluster";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--skip-token-print");
                                    Name        = "Skip printing of the default bootstrap token generated by 'kubeadm init'.";
                                    Description = "Skip printing of the default bootstrap token generated by 'kubeadm init'.";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("certs");
                            Name        = "certs";
                            Description = "Certificate generation";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("all");
                                    Name        = "all";
                                    Description = "Generate all certificates";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-cert-extra-sans");
                                            Name        = "Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate. Can be both IP addresses and DNS names.";
                                            Description = "Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate. Can be both IP addresses and DNS names.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-cidr");
                                            Name        = "Use alternative range of IP address for service VIPs.";
                                            Description = "Use alternative range of IP address for service VIPs.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-dns-domain");
                                            Name        = "Use alternative domain for services, e.g. `"myorg.internal`".";
                                            Description = "Use alternative domain for services, e.g. `"myorg.internal`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("apiserver");
                                    Name        = "apiserver";
                                    Description = "Generate the certificate for serving the Kubernetes API";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-cert-extra-sans");
                                            Name        = "Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate. Can be both IP addresses and DNS names.";
                                            Description = "Optional extra Subject Alternative Names (SANs) to use for the API Server serving certificate. Can be both IP addresses and DNS names.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-cidr");
                                            Name        = "Use alternative range of IP address for service VIPs.";
                                            Description = "Use alternative range of IP address for service VIPs.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-dns-domain");
                                            Name        = "Use alternative domain for services, e.g. `"myorg.internal`".";
                                            Description = "Use alternative domain for services, e.g. `"myorg.internal`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("apiserver-etcd-client");
                                    Name        = "apiserver-etcd-client";
                                    Description = "Generate the certificate the apiserver uses to access etcd";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("apiserver-kubelet-client");
                                    Name        = "apiserver-kubelet-client";
                                    Description = "Generate the certificate for the API server to connect to kubelet";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("ca");
                                    Name        = "ca";
                                    Description = "Generate the self-signed Kubernetes CA to provision identities for other Kubernetes components";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("etcd-ca");
                                    Name        = "etcd-ca";
                                    Description = "Generate the self-signed CA to provision identities for etcd";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("etcd-healthcheck-client");
                                    Name        = "etcd-healthcheck-client";
                                    Description = "Generate the certificate for liveness probes to healthcheck etcd";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("etcd-peer");
                                    Name        = "etcd-peer";
                                    Description = "Generate the certificate for etcd nodes to communicate with each other";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("etcd-server");
                                    Name        = "etcd-server";
                                    Description = "Generate the certificate for serving etcd";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("front-proxy-ca");
                                    Name        = "front-proxy-ca";
                                    Description = "Generate the self-signed CA to provision identities for front proxy";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("front-proxy-client");
                                    Name        = "front-proxy-client";
                                    Description = "Generate the certificate for the front proxy client";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("sa");
                                    Name        = "sa";
                                    Description = "Generate a private key for signing service account tokens along with its public key";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("control-plane");
                            Name        = "control-plane";
                            Description = "Generate all static Pod manifest files necessary to establish the control plane";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("all");
                                    Name        = "all";
                                    Description = "Generate all static Pod manifest files";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-extra-args");
                                            Name        = "A set of extra flags to pass to the API Server or override default ones in form of <flagname>=<value>";
                                            Description = "A set of extra flags to pass to the API Server or override default ones in form of <flagname>=<value>";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--controller-manager-extra-args");
                                            Name        = "A set of extra flags to pass to the Controller Manager or override default ones in form of <flagname>=<value>";
                                            Description = "A set of extra flags to pass to the Controller Manager or override default ones in form of <flagname>=<value>";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--dry-run");
                                            Name        = "Don't apply any changes; just output what would be done.";
                                            Description = "Don't apply any changes; just output what would be done.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--feature-gates");
                                            Name        = "A set of key=value pairs that describe feature gates for various features.";
                                            Description = "A set of key=value pairs that describe feature gates for various features.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--image-repository");
                                            Name        = "Choose a container registry to pull control plane images from";
                                            Description = "Choose a container registry to pull control plane images from";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--pod-network-cidr");
                                            Name        = "Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.";
                                            Description = "Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--scheduler-extra-args");
                                            Name        = "A set of extra flags to pass to the Scheduler or override default ones in form of <flagname>=<value>";
                                            Description = "A set of extra flags to pass to the Scheduler or override default ones in form of <flagname>=<value>";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-cidr");
                                            Name        = "Use alternative range of IP address for service VIPs.";
                                            Description = "Use alternative range of IP address for service VIPs.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("apiserver");
                                    Name        = "apiserver";
                                    Description = "Generates the kube-apiserver static Pod manifest";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-extra-args");
                                            Name        = "A set of extra flags to pass to the API Server or override default ones in form of <flagname>=<value>";
                                            Description = "A set of extra flags to pass to the API Server or override default ones in form of <flagname>=<value>";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--dry-run");
                                            Name        = "Don't apply any changes; just output what would be done.";
                                            Description = "Don't apply any changes; just output what would be done.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--feature-gates");
                                            Name        = "A set of key=value pairs that describe feature gates for various features.";
                                            Description = "A set of key=value pairs that describe feature gates for various features.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--image-repository");
                                            Name        = "Choose a container registry to pull control plane images from";
                                            Description = "Choose a container registry to pull control plane images from";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--service-cidr");
                                            Name        = "Use alternative range of IP address for service VIPs.";
                                            Description = "Use alternative range of IP address for service VIPs.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("controller-manager");
                                    Name        = "controller-manager";
                                    Description = "Generates the kube-controller-manager static Pod manifest";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--controller-manager-extra-args");
                                            Name        = "A set of extra flags to pass to the Controller Manager or override default ones in form of <flagname>=<value>";
                                            Description = "A set of extra flags to pass to the Controller Manager or override default ones in form of <flagname>=<value>";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--dry-run");
                                            Name        = "Don't apply any changes; just output what would be done.";
                                            Description = "Don't apply any changes; just output what would be done.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--image-repository");
                                            Name        = "Choose a container registry to pull control plane images from";
                                            Description = "Choose a container registry to pull control plane images from";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--pod-network-cidr");
                                            Name        = "Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.";
                                            Description = "Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("scheduler");
                                    Name        = "scheduler";
                                    Description = "Generates the kube-scheduler static Pod manifest";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--dry-run");
                                            Name        = "Don't apply any changes; just output what would be done.";
                                            Description = "Don't apply any changes; just output what would be done.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--image-repository");
                                            Name        = "Choose a container registry to pull control plane images from";
                                            Description = "Choose a container registry to pull control plane images from";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--scheduler-extra-args");
                                            Name        = "A set of extra flags to pass to the Scheduler or override default ones in form of <flagname>=<value>";
                                            Description = "A set of extra flags to pass to the Scheduler or override default ones in form of <flagname>=<value>";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("etcd");
                            Name        = "etcd";
                            Description = "Generate static Pod manifest file for local etcd";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("local");
                                    Name        = "local";
                                    Description = "Generate the static Pod manifest file for a local, single-node local etcd instance";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--image-repository");
                                            Name        = "Choose a container registry to pull control plane images from";
                                            Description = "Choose a container registry to pull control plane images from";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("kubeconfig");
                            Name        = "kubeconfig";
                            Description = "Generate all kubeconfig files necessary to establish the control plane and the admin kubeconfig file";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("admin");
                                    Name        = "admin";
                                    Description = "Generate a kubeconfig file for the admin to use and for kubeadm itself";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig-dir");
                                            Name        = "The path where to save the kubeconfig file.";
                                            Description = "The path where to save the kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("all");
                                    Name        = "all";
                                    Description = "Generate all kubeconfig files";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig-dir");
                                            Name        = "The path where to save the kubeconfig file.";
                                            Description = "The path where to save the kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--node-name");
                                            Name        = "Specify the node name.";
                                            Description = "Specify the node name.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("controller-manager");
                                    Name        = "controller-manager";
                                    Description = "Generate a kubeconfig file for the controller manager to use";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig-dir");
                                            Name        = "The path where to save the kubeconfig file.";
                                            Description = "The path where to save the kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("kubelet");
                                    Name        = "kubelet";
                                    Description = "Generate a kubeconfig file for the kubelet to use *only* for cluster bootstrapping purposes";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig-dir");
                                            Name        = "The path where to save the kubeconfig file.";
                                            Description = "The path where to save the kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--node-name");
                                            Name        = "Specify the node name.";
                                            Description = "Specify the node name.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("scheduler");
                                    Name        = "scheduler";
                                    Description = "Generate a kubeconfig file for the scheduler to use";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "Port for the API Server to bind to.";
                                            Description = "Port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--control-plane-endpoint");
                                            Name        = "Specify a stable IP address or DNS name for the control plane.";
                                            Description = "Specify a stable IP address or DNS name for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig-dir");
                                            Name        = "The path where to save the kubeconfig file.";
                                            Description = "The path where to save the kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubernetes-version");
                                            Name        = "Choose a specific Kubernetes version for the control plane.";
                                            Description = "Choose a specific Kubernetes version for the control plane.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("kubelet-finalize");
                            Name        = "kubelet-finalize";
                            Description = "Updates settings relevant to the kubelet after TLS bootstrap";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("all");
                                    Name        = "all";
                                    Description = "Run all kubelet-finalize phases";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("experimental-cert-rotation");
                                    Name        = "experimental-cert-rotation";
                                    Description = "Enable kubelet client certificate rotation";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--cert-dir");
                                            Name        = "The path where to save and store the certificates.";
                                            Description = "The path where to save and store the certificates.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("kubelet-start");
                            Name        = "kubelet-start";
                            Description = "Write kubelet settings and (re)start the kubelet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cri-socket");
                                    Name        = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    Description = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-name");
                                    Name        = "Specify the node name.";
                                    Description = "Specify the node name.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("mark-control-plane");
                            Name        = "mark-control-plane";
                            Description = "Mark a node as a control-plane";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-name");
                                    Name        = "Specify the node name.";
                                    Description = "Specify the node name.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("preflight");
                            Name        = "preflight";
                            Description = "Run pre-flight checks";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ignore-preflight-errors");
                                    Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                                    Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("upload-certs");
                            Name        = "upload-certs";
                            Description = "Upload certificates to kubeadm-certs";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--certificate-key");
                                    Name        = "Key used to encrypt the control-plane certificates in the kubeadm-certs Secret.";
                                    Description = "Key used to encrypt the control-plane certificates in the kubeadm-certs Secret.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to a kubeadm configuration file.";
                                    Description = "Path to a kubeadm configuration file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--skip-certificate-key-print");
                                    Name        = "Don't print the key used to encrypt the control-plane certificates.";
                                    Description = "Don't print the key used to encrypt the control-plane certificates.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--upload-certs");
                                    Name        = "Upload control-plane certificates to the kubeadm-certs Secret.";
                                    Description = "Upload control-plane certificates to the kubeadm-certs Secret.";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("upload-config");
                            Name        = "upload-config";
                            Description = "Upload the kubeadm and kubelet configuration to a ConfigMap";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("all");
                                    Name        = "all";
                                    Description = "Upload all configuration to a config map";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig");
                                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("kubeadm");
                                    Name        = "kubeadm";
                                    Description = "Upload the kubeadm ClusterConfiguration to a ConfigMap";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig");
                                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("kubelet");
                                    Name        = "kubelet";
                                    Description = "Upload the kubelet component config to a ConfigMap";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to a kubeadm configuration file.";
                                            Description = "Path to a kubeadm configuration file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig");
                                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("join");
            Name        = "join";
            Description = "Run this on any machine you wish to join an existing cluster";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--apiserver-advertise-address");
                    Name        = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                    Description = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--apiserver-bind-port");
                    Name        = "If the node should host a new control plane instance, the port for the API Server to bind to.";
                    Description = "If the node should host a new control plane instance, the port for the API Server to bind to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--certificate-key");
                    Name        = "Use this key to decrypt the certificate secrets uploaded by init.";
                    Description = "Use this key to decrypt the certificate secrets uploaded by init.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config");
                    Name        = "Path to kubeadm config file.";
                    Description = "Path to kubeadm config file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--control-plane");
                    Name        = "Create a new control plane instance on this node";
                    Description = "Create a new control plane instance on this node";
                },
                [ValueParameter]@{
                    Keys        = @("--cri-socket");
                    Name        = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                    Description = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--discovery-file");
                    Name        = "For file-based discovery, a file or URL from which to load cluster information.";
                    Description = "For file-based discovery, a file or URL from which to load cluster information.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--discovery-token");
                    Name        = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                    Description = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--discovery-token-ca-cert-hash");
                    Name        = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                    Description = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--discovery-token-unsafe-skip-ca-verification");
                    Name        = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                    Description = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Don't apply any changes; just output what would be done.";
                    Description = "Don't apply any changes; just output what would be done.";
                },
                [ValueParameter]@{
                    Keys        = @("--ignore-preflight-errors");
                    Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                    Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--node-name");
                    Name        = "Specify the node name.";
                    Description = "Specify the node name.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--patches");
                    Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                    Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--skip-phases");
                    Name        = "List of phases to be skipped";
                    Description = "List of phases to be skipped";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-bootstrap-token");
                    Name        = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                    Description = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                    Description = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [CommandParameter]@{
                    Keys        = @("phase");
                    Name        = "phase";
                    Description = "Use this command to invoke single phase of the join workflow";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("control-plane-join");
                            Name        = "control-plane-join";
                            Description = "Join a machine as a control plane instance";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("all");
                                    Name        = "all";
                                    Description = "Join a machine as a control plane instance";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--node-name");
                                            Name        = "Specify the node name.";
                                            Description = "Specify the node name.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("etcd");
                                    Name        = "etcd";
                                    Description = "Add a new local etcd member";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--node-name");
                                            Name        = "Specify the node name.";
                                            Description = "Specify the node name.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("mark-control-plane");
                                    Name        = "mark-control-plane";
                                    Description = "Mark a node as a control-plane";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--node-name");
                                            Name        = "Specify the node name.";
                                            Description = "Specify the node name.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("update-status");
                                    Name        = "update-status";
                                    Description = "Register the new control-plane node into the ClusterStatus maintained in the kubeadm-config ConfigMap (DEPRECATED)";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--node-name");
                                            Name        = "Specify the node name.";
                                            Description = "Specify the node name.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("control-plane-prepare");
                            Name        = "control-plane-prepare";
                            Description = "Prepare the machine for serving a control plane";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("all");
                                    Name        = "all";
                                    Description = "Prepare the machine for serving a control plane";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "If the node should host a new control plane instance, the port for the API Server to bind to.";
                                            Description = "If the node should host a new control plane instance, the port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--certificate-key");
                                            Name        = "Use this key to decrypt the certificate secrets uploaded by init.";
                                            Description = "Use this key to decrypt the certificate secrets uploaded by init.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-file");
                                            Name        = "For file-based discovery, a file or URL from which to load cluster information.";
                                            Description = "For file-based discovery, a file or URL from which to load cluster information.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-token");
                                            Name        = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                            Description = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-token-ca-cert-hash");
                                            Name        = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                            Description = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--discovery-token-unsafe-skip-ca-verification");
                                            Name        = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                            Description = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--node-name");
                                            Name        = "Specify the node name.";
                                            Description = "Specify the node name.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--tls-bootstrap-token");
                                            Name        = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                            Description = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--token");
                                            Name        = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                            Description = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("certs");
                                    Name        = "certs";
                                    Description = "Generate the certificates for the new control plane components";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-file");
                                            Name        = "For file-based discovery, a file or URL from which to load cluster information.";
                                            Description = "For file-based discovery, a file or URL from which to load cluster information.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-token");
                                            Name        = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                            Description = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-token-ca-cert-hash");
                                            Name        = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                            Description = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--discovery-token-unsafe-skip-ca-verification");
                                            Name        = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                            Description = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--node-name");
                                            Name        = "Specify the node name.";
                                            Description = "Specify the node name.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--tls-bootstrap-token");
                                            Name        = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                            Description = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--token");
                                            Name        = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                            Description = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("control-plane");
                                    Name        = "control-plane";
                                    Description = "Generate the manifests for the new control plane components";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-advertise-address");
                                            Name        = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            Description = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--apiserver-bind-port");
                                            Name        = "If the node should host a new control plane instance, the port for the API Server to bind to.";
                                            Description = "If the node should host a new control plane instance, the port for the API Server to bind to.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("download-certs");
                                    Name        = "download-certs";
                                    Description = "[EXPERIMENTAL] Download certificates shared among control-plane nodes from the kubeadm-certs Secret";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--certificate-key");
                                            Name        = "Use this key to decrypt the certificate secrets uploaded by init.";
                                            Description = "Use this key to decrypt the certificate secrets uploaded by init.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-file");
                                            Name        = "For file-based discovery, a file or URL from which to load cluster information.";
                                            Description = "For file-based discovery, a file or URL from which to load cluster information.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-token");
                                            Name        = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                            Description = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-token-ca-cert-hash");
                                            Name        = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                            Description = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--discovery-token-unsafe-skip-ca-verification");
                                            Name        = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                            Description = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--tls-bootstrap-token");
                                            Name        = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                            Description = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--token");
                                            Name        = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                            Description = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("kubeconfig");
                                    Name        = "kubeconfig";
                                    Description = "Generate the kubeconfig for the new control plane components";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--certificate-key");
                                            Name        = "Use this key to decrypt the certificate secrets uploaded by init.";
                                            Description = "Use this key to decrypt the certificate secrets uploaded by init.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--config");
                                            Name        = "Path to kubeadm config file.";
                                            Description = "Path to kubeadm config file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--control-plane");
                                            Name        = "Create a new control plane instance on this node";
                                            Description = "Create a new control plane instance on this node";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-file");
                                            Name        = "For file-based discovery, a file or URL from which to load cluster information.";
                                            Description = "For file-based discovery, a file or URL from which to load cluster information.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-token");
                                            Name        = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                            Description = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--discovery-token-ca-cert-hash");
                                            Name        = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                            Description = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--discovery-token-unsafe-skip-ca-verification");
                                            Name        = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                            Description = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--tls-bootstrap-token");
                                            Name        = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                            Description = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--token");
                                            Name        = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                            Description = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("kubelet-start");
                            Name        = "kubelet-start";
                            Description = "Write kubelet settings, certificates and (re)start the kubelet";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to kubeadm config file.";
                                    Description = "Path to kubeadm config file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cri-socket");
                                    Name        = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    Description = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--discovery-file");
                                    Name        = "For file-based discovery, a file or URL from which to load cluster information.";
                                    Description = "For file-based discovery, a file or URL from which to load cluster information.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--discovery-token");
                                    Name        = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                    Description = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--discovery-token-ca-cert-hash");
                                    Name        = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                    Description = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--discovery-token-unsafe-skip-ca-verification");
                                    Name        = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                    Description = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-name");
                                    Name        = "Specify the node name.";
                                    Description = "Specify the node name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-bootstrap-token");
                                    Name        = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                    Description = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                    Description = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("preflight");
                            Name        = "preflight";
                            Description = "Run join pre-flight checks";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--apiserver-advertise-address");
                                    Name        = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                    Description = "If the node should host a new control plane instance, the IP address the API Server will advertise it's listening on. If not set the default network interface will be used.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--apiserver-bind-port");
                                    Name        = "If the node should host a new control plane instance, the port for the API Server to bind to.";
                                    Description = "If the node should host a new control plane instance, the port for the API Server to bind to.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--certificate-key");
                                    Name        = "Use this key to decrypt the certificate secrets uploaded by init.";
                                    Description = "Use this key to decrypt the certificate secrets uploaded by init.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "Path to kubeadm config file.";
                                    Description = "Path to kubeadm config file.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--control-plane");
                                    Name        = "Create a new control plane instance on this node";
                                    Description = "Create a new control plane instance on this node";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cri-socket");
                                    Name        = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    Description = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--discovery-file");
                                    Name        = "For file-based discovery, a file or URL from which to load cluster information.";
                                    Description = "For file-based discovery, a file or URL from which to load cluster information.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--discovery-token");
                                    Name        = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                    Description = "For token-based discovery, the token used to validate cluster information fetched from the API server.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--discovery-token-ca-cert-hash");
                                    Name        = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                    Description = "For token-based discovery, validate that the root CA public key matches this hash (format: `"<type>:<value>`").";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--discovery-token-unsafe-skip-ca-verification");
                                    Name        = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                    Description = "For token-based discovery, allow joining without --discovery-token-ca-cert-hash pinning.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ignore-preflight-errors");
                                    Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                                    Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-name");
                                    Name        = "Specify the node name.";
                                    Description = "Specify the node name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-bootstrap-token");
                                    Name        = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                    Description = "Specify the token used to temporarily authenticate with the Kubernetes Control Plane while joining the node.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                    Description = "Use this token for both discovery-token and tls-bootstrap-token when those values are not provided.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("kubeconfig");
            Name        = "kubeconfig";
            Description = "Kubeconfig file utilities";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("user");
                    Name        = "user";
                    Description = "Output a kubeconfig file for an additional user";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--client-name");
                            Name        = "The name of user. It will be used as the CN if client certificates are created";
                            Description = "The name of user. It will be used as the CN if client certificates are created";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Path to a kubeadm configuration file.";
                            Description = "Path to a kubeadm configuration file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--org");
                            Name        = "The orgnizations of the client certificate. It will be used as the O if client certificates are created";
                            Description = "The orgnizations of the client certificate. It will be used as the O if client certificates are created";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "The token that should be used as the authentication mechanism for this kubeconfig, instead of client certificates";
                            Description = "The token that should be used as the authentication mechanism for this kubeconfig, instead of client certificates";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--validity-period");
                            Name        = "The validity period of the client certificate. It is an offset from the current time.";
                            Description = "The validity period of the client certificate. It is an offset from the current time.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("reset");
            Name        = "reset";
            Description = "Performs a best effort revert of changes made to this host by 'kubeadm init' or 'kubeadm join'";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cert-dir");
                    Name        = "The path to the directory where the certificates are stored. If specified, clean this directory.";
                    Description = "The path to the directory where the certificates are stored. If specified, clean this directory.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cri-socket");
                    Name        = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                    Description = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Reset the node without prompting for confirmation.";
                    Description = "Reset the node without prompting for confirmation.";
                },
                [ValueParameter]@{
                    Keys        = @("--ignore-preflight-errors");
                    Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                    Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--kubeconfig");
                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--skip-phases");
                    Name        = "List of phases to be skipped";
                    Description = "List of phases to be skipped";
                    # Source = $?? # todo: Fix or remove this!
                },
                [CommandParameter]@{
                    Keys        = @("phase");
                    Name        = "phase";
                    Description = "Use this command to invoke single phase of the reset workflow";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("cleanup-node");
                            Name        = "cleanup-node";
                            Description = "Run cleanup node.";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--cert-dir");
                                    Name        = "The path to the directory where the certificates are stored. If specified, clean this directory.";
                                    Description = "The path to the directory where the certificates are stored. If specified, clean this directory.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cri-socket");
                                    Name        = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    Description = "Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("preflight");
                            Name        = "preflight";
                            Description = "Run reset pre-flight checks";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Reset the node without prompting for confirmation.";
                                    Description = "Reset the node without prompting for confirmation.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ignore-preflight-errors");
                                    Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                                    Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("remove-etcd-member");
                            Name        = "remove-etcd-member";
                            Description = "Remove a local etcd member.";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--kubeconfig");
                                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update-cluster-status");
                            Name        = "update-cluster-status";
                            Description = "Remove this node from the ClusterStatus object (DEPRECATED).";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("token");
            Name        = "token";
            Description = "Manage bootstrap tokens";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Whether to enable dry-run mode or not";
                    Description = "Whether to enable dry-run mode or not";
                },
                [ValueParameter]@{
                    Keys        = @("--kubeconfig");
                    Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                    Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                ,
                ,
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create bootstrap tokens on the server";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--certificate-key");
                            Name        = "When used together with '--print-join-command', print the full 'kubeadm join' flag needed to join the cluster as a control-plane. To create a new certificate key you must use 'kubeadm init phase upload-certs --upload-certs'.";
                            Description = "When used together with '--print-join-command', print the full 'kubeadm join' flag needed to join the cluster as a control-plane. To create a new certificate key you must use 'kubeadm init phase upload-certs --upload-certs'.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Path to a kubeadm configuration file.";
                            Description = "Path to a kubeadm configuration file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--description");
                            Name        = "A human friendly description of how this token is used.";
                            Description = "A human friendly description of how this token is used.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--groups");
                            Name        = "Extra groups that this token will authenticate as when used for authentication. Must match `"\Asystem:bootstrappers:[a-z0-9:-]{0,255}[a-z0-9]\z`"";
                            Description = "Extra groups that this token will authenticate as when used for authentication. Must match `"\Asystem:bootstrappers:[a-z0-9:-]{0,255}[a-z0-9]\z`"";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--print-join-command");
                            Name        = "Instead of printing only the token, print the full 'kubeadm join' flag needed to join the cluster using the token.";
                            Description = "Instead of printing only the token, print the full 'kubeadm join' flag needed to join the cluster using the token.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ttl");
                            Name        = "The duration before the token is automatically deleted (e.g. 1s, 2m, 3h). If set to '0', the token will never expire";
                            Description = "The duration before the token is automatically deleted (e.g. 1s, 2m, 3h). If set to '0', the token will never expire";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--usages");
                            Name        = "Describes the ways in which this token can be used. You can pass --usages multiple times or provide a comma separated list of options. Valid options: [signing,authentication]";
                            Description = "Describes the ways in which this token can be used. You can pass --usages multiple times or provide a comma separated list of options. Valid options: [signing,authentication]";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete bootstrap tokens on the server";
                },
                [CommandParameter]@{
                    Keys        = @("generate");
                    Name        = "generate";
                    Description = "Generate and print a bootstrap token, but do not create it on the server";
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List bootstrap tokens on the server";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-missing-template-keys");
                            Name        = "If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats.";
                            Description = "If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--experimental-output", "-o");
                            Name        = "Output format. One of: text|json|yaml|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file.";
                            Description = "Output format. One of: text|json|yaml|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--show-managed-fields");
                            Name        = "If true, keep the managedFields when printing objects in JSON or YAML format.";
                            Description = "If true, keep the managedFields when printing objects in JSON or YAML format.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("upgrade");
            Name        = "upgrade";
            Description = "Upgrade your cluster smoothly to a newer version with this command";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("apply");
                    Name        = "apply";
                    Description = "Upgrade your Kubernetes cluster to the specified version";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-experimental-upgrades");
                            Name        = "Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.";
                            Description = "Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-release-candidate-upgrades");
                            Name        = "Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.";
                            Description = "Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--certificate-renewal");
                            Name        = "Perform the renewal of certificates used by component changed during upgrades.";
                            Description = "Perform the renewal of certificates used by component changed during upgrades.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Path to a kubeadm configuration file.";
                            Description = "Path to a kubeadm configuration file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Do not change any state, just output what actions would be performed.";
                            Description = "Do not change any state, just output what actions would be performed.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--etcd-upgrade");
                            Name        = "Perform the upgrade of etcd.";
                            Description = "Perform the upgrade of etcd.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--feature-gates");
                            Name        = "A set of key=value pairs that describe feature gates for various features.";
                            Description = "A set of key=value pairs that describe feature gates for various features.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Force upgrading although some requirements might not be met. This also implies non-interactive mode.";
                            Description = "Force upgrading although some requirements might not be met. This also implies non-interactive mode.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ignore-preflight-errors");
                            Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                            Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kubeconfig");
                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--patches");
                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--print-config");
                            Name        = "Specifies whether the configuration file that will be used in the upgrade should be printed or not.";
                            Description = "Specifies whether the configuration file that will be used in the upgrade should be printed or not.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--yes", "-y");
                            Name        = "Perform the upgrade and do not prompt for confirmation (non-interactive mode).";
                            Description = "Perform the upgrade and do not prompt for confirmation (non-interactive mode).";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("diff");
                    Name        = "diff";
                    Description = "Show what differences would be applied to existing static pod manifests. See also: kubeadm upgrade apply --dry-run";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--api-server-manifest");
                            Name        = "path to API server manifest";
                            Description = "path to API server manifest";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Path to a kubeadm configuration file.";
                            Description = "Path to a kubeadm configuration file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--context-lines", "-c");
                            Name        = "How many lines of context in the diff";
                            Description = "How many lines of context in the diff";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--controller-manager-manifest");
                            Name        = "path to controller manifest";
                            Description = "path to controller manifest";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kubeconfig");
                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--scheduler-manifest");
                            Name        = "path to scheduler manifest";
                            Description = "path to scheduler manifest";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("node");
                    Name        = "node";
                    Description = "Upgrade commands for a node in the cluster";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--certificate-renewal");
                            Name        = "Perform the renewal of certificates used by component changed during upgrades.";
                            Description = "Perform the renewal of certificates used by component changed during upgrades.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run");
                            Name        = "Do not change any state, just output the actions that would be performed.";
                            Description = "Do not change any state, just output the actions that would be performed.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--etcd-upgrade");
                            Name        = "Perform the upgrade of etcd.";
                            Description = "Perform the upgrade of etcd.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ignore-preflight-errors");
                            Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                            Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kubeconfig");
                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--patches");
                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--skip-phases");
                            Name        = "List of phases to be skipped";
                            Description = "List of phases to be skipped";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [CommandParameter]@{
                            Keys        = @("phase");
                            Name        = "phase";
                            Description = "Use this command to invoke single phase of the node workflow";
                            Parameters  = @(
                                [CommandParameter]@{
                                    Keys        = @("control-plane");
                                    Name        = "control-plane";
                                    Description = "Upgrade the control plane instance deployed on this node, if any";
                                    Parameters  = @(
                                        [FlagParameter]@{
                                            Keys        = @("--certificate-renewal");
                                            Name        = "Perform the renewal of certificates used by component changed during upgrades.";
                                            Description = "Perform the renewal of certificates used by component changed during upgrades.";
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--dry-run");
                                            Name        = "Do not change any state, just output the actions that would be performed.";
                                            Description = "Do not change any state, just output the actions that would be performed.";
                                        },
                                        [FlagParameter]@{
                                            Keys        = @("--etcd-upgrade");
                                            Name        = "Perform the upgrade of etcd.";
                                            Description = "Perform the upgrade of etcd.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig");
                                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--patches");
                                            Name        = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            Description = "Path to a directory that contains files named `"target[suffix][+patchtype].extension`".";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("kubelet-config");
                                    Name        = "kubelet-config";
                                    Description = "Upgrade the kubelet configuration for this node";
                                    Parameters  = @(
                                        [FlagParameter]@{
                                            Keys        = @("--dry-run");
                                            Name        = "Do not change any state, just output the actions that would be performed.";
                                            Description = "Do not change any state, just output the actions that would be performed.";
                                        },
                                        [ValueParameter]@{
                                            Keys        = @("--kubeconfig");
                                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                },
                                [CommandParameter]@{
                                    Keys        = @("preflight");
                                    Name        = "preflight";
                                    Description = "Run upgrade node pre-flight checks";
                                    Parameters  = @(
                                        [ValueParameter]@{
                                            Keys        = @("--ignore-preflight-errors");
                                            Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                                            Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                                            # Source = $?? # todo: Fix or remove this!
                                        }
                                    )
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("plan");
                    Name        = "plan";
                    Description = "Check which versions are available to upgrade to and validate whether your current cluster is upgradeable. To skip the internet check, pass in the optional [version] parameter";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow-experimental-upgrades");
                            Name        = "Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.";
                            Description = "Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--allow-release-candidate-upgrades");
                            Name        = "Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.";
                            Description = "Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--config");
                            Name        = "Path to a kubeadm configuration file.";
                            Description = "Path to a kubeadm configuration file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--feature-gates");
                            Name        = "A set of key=value pairs that describe feature gates for various features.";
                            Description = "A set of key=value pairs that describe feature gates for various features.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ignore-preflight-errors");
                            Name        = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                            Description = "A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kubeconfig");
                            Name        = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            Description = "The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--print-config");
                            Name        = "Specifies whether the configuration file that will be used in the upgrade should be printed or not.";
                            Description = "Specifies whether the configuration file that will be used in the upgrade should be printed or not.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Print the version of kubeadm";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output format; available options are 'yaml', 'json' and 'short'";
                    Description = "Output format; available options are 'yaml', 'json' and 'short'";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
