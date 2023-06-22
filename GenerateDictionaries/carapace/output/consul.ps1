# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.consul.io/";
    Keys        = @("consul");
    Name        = "consul";
    Description = "Consul automates networking for simple and secure application delivery";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show help";
            Description = "show help";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "show version";
            Description = "show version";
        },
        [CommandParameter]@{
            Keys        = @("acl");
            Name        = "acl";
            Description = "Interact with Consul's ACLs";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("auth-method");
                    Name        = "auth-method";
                    Description = " Manage Consul's ACL auth methods";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create an ACL auth method";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "The configuration for the auth method.";
                                    Description = "The configuration for the auth method.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the auth method.";
                                    Description = "A description of the auth method.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--display-name");
                                    Name        = "An optional name to use instead of the name when displaying this auth method in a UI.";
                                    Description = "An optional name to use instead of the name when displaying this auth method in a UI.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubernetes-ca-cert");
                                    Name        = "PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API.";
                                    Description = "PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubernetes-host");
                                    Name        = "Address of the Kubernetes API server.";
                                    Description = "Address of the Kubernetes API server.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubernetes-service-account-jwt");
                                    Name        = "A Kubernetes service account JWT used to access the TokenReview API to validate other JWTs during login.";
                                    Description = "A Kubernetes service account JWT used to access the TokenReview API to validate other JWTs during login.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--max-token-ttl");
                                    Name        = "Duration of time all tokens created by this auth method should be valid for";
                                    Description = "Duration of time all tokens created by this auth method should be valid for";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that auth method metadata such as the raft indices should be shown for each entry.";
                                    Description = "Indicates that auth method metadata such as the raft indices should be shown for each entry.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The new auth method's name.";
                                    Description = "The new auth method's name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-locality");
                                    Name        = "Defines the kind of token that this auth method should produce.";
                                    Description = "Defines the kind of token that this auth method should produce.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--type");
                                    Name        = "The new auth method's type.";
                                    Description = "The new auth method's type.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete an ACL auth method";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The name of the auth method to delete.";
                                    Description = "The name of the auth method to delete.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Lists ACL auth methods";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format";
                                    Description = "Output format";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that auth method metadata such as the raft indices should be shown for each entry.";
                                    Description = "Indicates that auth method metadata such as the raft indices should be shown for each entry.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("read");
                            Name        = "read";
                            Description = "Read an ACL auth method";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that auth method metadata such as the raft indices should be shown for each entry.";
                                    Description = "Indicates that auth method metadata such as the raft indices should be shown for each entry.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The name of the auth method to read.";
                                    Description = "The name of the auth method to read.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update an ACL auth method";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config");
                                    Name        = "The configuration for the auth method.";
                                    Description = "The configuration for the auth method.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the auth method.";
                                    Description = "A description of the auth method.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--display-name");
                                    Name        = "An optional name to use instead of the name when displaying this auth method in a UI.";
                                    Description = "An optional name to use instead of the name when displaying this auth method in a UI.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubernetes-ca-cert");
                                    Name        = "PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API.";
                                    Description = "PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubernetes-host");
                                    Name        = "Address of the Kubernetes API server.";
                                    Description = "Address of the Kubernetes API server.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--kubernetes-service-account-jwt");
                                    Name        = "A Kubernetes service account JWT used to access the TokenReview API to validate other JWTs during login.";
                                    Description = "A Kubernetes service account JWT used to access the TokenReview API to validate other JWTs during login.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--max-token-ttl");
                                    Name        = "Duration of time all tokens created by this auth method should be valid for";
                                    Description = "Duration of time all tokens created by this auth method should be valid for";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that auth method metadata such as the raft indices should be shown for each entry.";
                                    Description = "Indicates that auth method metadata such as the raft indices should be shown for each entry.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The auth method name.";
                                    Description = "The auth method name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-merge");
                                    Name        = "Do not merge the current auth method information with what is provided to the command.";
                                    Description = "Do not merge the current auth method information with what is provided to the command.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-locality");
                                    Name        = "Defines the kind of token that this auth method should produce.";
                                    Description = "Defines the kind of token that this auth method should produce.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("binding-rule");
                    Name        = "binding-rule";
                    Description = "Manage Consul's ACL binding rule";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create an ACL binding rule";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--bind-name");
                                    Name        = "Name to bind on match.";
                                    Description = "Name to bind on match.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--bind-type");
                                    Name        = "Type of binding to perform.";
                                    Description = "Type of binding to perform.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the binding rule.";
                                    Description = "A description of the binding rule.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that binding rule metadata such as the raft indices should be shown for each entry.";
                                    Description = "Indicates that binding rule metadata such as the raft indices should be shown for each entry.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--method");
                                    Name        = "The auth method's name for which this binding rule applies.";
                                    Description = "The auth method's name for which this binding rule applies.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--selector");
                                    Name        = "Selector is an expression that matches against verified identity attributes returned from the auth method during login.";
                                    Description = "Selector is an expression that matches against verified identity attributes returned from the auth method during login.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete an ACL binding rule";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the binding rule to delete.";
                                    Description = "The ID of the binding rule to delete.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Lists ACL binding rules";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that binding rule metadata such as the raft indices should be shown for each entry.";
                                    Description = "Indicates that binding rule metadata such as the raft indices should be shown for each entry.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--method");
                                    Name        = "Only show rules linked to the auth method with the given name.";
                                    Description = "Only show rules linked to the auth method with the given name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("read");
                            Name        = "read";
                            Description = "Read an ACL binding rule";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the binding rule to read.";
                                    Description = "The ID of the binding rule to read.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that binding rule metadata such as the raft indices should be shown for each entry.";
                                    Description = "Indicates that binding rule metadata such as the raft indices should be shown for each entry.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update an ACL binding rule";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--bind-name");
                                    Name        = "Name to bind on match.";
                                    Description = "Name to bind on match.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--bind-type");
                                    Name        = "Type of binding to perform.";
                                    Description = "Type of binding to perform.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the binding rule.";
                                    Description = "A description of the binding rule.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the binding rule to update.";
                                    Description = "The ID of the binding rule to update.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that binding rule metadata such as the raft indices should be shown for each entry.";
                                    Description = "Indicates that binding rule metadata such as the raft indices should be shown for each entry.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-merge");
                                    Name        = "Do not merge the current binding rule information with what is provided to the command.";
                                    Description = "Do not merge the current binding rule information with what is provided to the command.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--selector");
                                    Name        = "Selector is an expression that matches against verified identity attributes returned from the auth method during login.";
                                    Description = "Selector is an expression that matches against verified identity attributes returned from the auth method during login.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("bootstrap");
                    Name        = "bootstrap";
                    Description = "Bootstrap Consul's ACL system";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--format");
                            Name        = "Output format.";
                            Description = "Output format.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("policy");
                    Name        = "policy";
                    Description = "Manage Consul's ACL policies";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create an ACL policy";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--from-token");
                                    Name        = "The legacy token to retrieve the rules for when creating this policy.";
                                    Description = "The legacy token to retrieve the rules for when creating this policy.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that policy metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that policy metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The new policy's name.";
                                    Description = "The new policy's name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--rules");
                                    Name        = "The policy rules.";
                                    Description = "The policy rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--token-secret");
                                    Name        = "Indicates the token provided with -from-token is a SecretID and not an AccessorID";
                                    Description = "Indicates the token provided with -from-token is a SecretID and not an AccessorID";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--valid-datacenter");
                                    Name        = "Datacenter that the policy should be valid within.";
                                    Description = "Datacenter that the policy should be valid within.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete an ACL policy";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the policy to delete.";
                                    Description = "The ID of the policy to delete.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The name of the policy to delete.";
                                    Description = "The name of the policy to delete.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("read");
                            Name        = "read";
                            Description = "Read an ACL policy";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the policy to read.";
                                    Description = "The ID of the policy to read.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that policy metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that policy metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The name of the policy to read.";
                                    Description = "The name of the policy to read.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = " Update an ACL policy";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the policy";
                                    Description = "A description of the policy";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the policy to update.";
                                    Description = "The ID of the policy to update.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that policy metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that policy metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The policies name.";
                                    Description = "The policies name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-merge");
                                    Name        = "Do not merge the current policy information with what is provided to the command.";
                                    Description = "Do not merge the current policy information with what is provided to the command.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--rules");
                                    Name        = "The policy rules.";
                                    Description = "The policy rules.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--valid-datacenter");
                                    Name        = "Datacenter that the policy should be valid within.";
                                    Description = "Datacenter that the policy should be valid within.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("role");
                    Name        = "role";
                    Description = "Manage Consul's ACL roles";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create an ACL role";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the role";
                                    Description = "A description of the role";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that role metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that role metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The new role's name.";
                                    Description = "The new role's name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-identity");
                                    Name        = "Name of a node identity to use for this role.";
                                    Description = "Name of a node identity to use for this role.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--policy-id");
                                    Name        = "ID of a policy to use for this role.";
                                    Description = "ID of a policy to use for this role.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--policy-name");
                                    Name        = "Name of a policy to use for this role.";
                                    Description = "Name of a policy to use for this role.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--service-identity");
                                    Name        = "Name of a service identity to use for this role.";
                                    Description = "Name of a service identity to use for this role.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete an ACL role";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the role to delete.";
                                    Description = "The ID of the role to delete.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The name of the role to delete.";
                                    Description = "The name of the role to delete.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "Lists ACL roles";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that policy metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that policy metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("read");
                            Name        = "read";
                            Description = "Read an ACL role";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the role to read.";
                                    Description = "The ID of the role to read.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that role metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that role metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The name of the role to read.";
                                    Description = "The name of the role to read.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update an ACL role";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the role";
                                    Description = "A description of the role";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID of the role to update.";
                                    Description = "The ID of the role to update.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that role metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that role metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--name");
                                    Name        = "The role name.";
                                    Description = "The role name.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-merge");
                                    Name        = "Do not merge the current role information with what is provided to the command.";
                                    Description = "Do not merge the current role information with what is provided to the command.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-identity");
                                    Name        = "Name of a node identity to use for this role.";
                                    Description = "Name of a node identity to use for this role.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--policy-id");
                                    Name        = "ID of a policy to use for this role.";
                                    Description = "ID of a policy to use for this role.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--policy-name");
                                    Name        = "Name of a policy to use for this role.";
                                    Description = "Name of a policy to use for this role.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--service-identity");
                                    Name        = "Name of a service identity to use for this role.";
                                    Description = "Name of a service identity to use for this role.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("set-agent-token");
                    Name        = "set-agent-token";
                    Description = "Assign tokens for the Consul Agent's usage";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("token");
                    Name        = "token";
                    Description = "Manage Consul's ACL tokens";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("clone");
                            Name        = "clone";
                            Description = "Clone an ACL token";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the new cloned token";
                                    Description = "A description of the new cloned token";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The Accessor ID of the token to clone.";
                                    Description = "The Accessor ID of the token to clone.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create an ACL token";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--accessor");
                                    Name        = "Create the token with this Accessor ID.";
                                    Description = "Create the token with this Accessor ID.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the token";
                                    Description = "A description of the token";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--expires-ttl");
                                    Name        = "Duration of time this token should be valid for";
                                    Description = "Duration of time this token should be valid for";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--local");
                                    Name        = "Create this as a datacenter local token";
                                    Description = "Create this as a datacenter local token";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that token metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that token metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-identity");
                                    Name        = "Name of a node identity to use for this token.";
                                    Description = "Name of a node identity to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--policy-id");
                                    Name        = "ID of a policy to use for this token.";
                                    Description = "ID of a policy to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--policy-name");
                                    Name        = "Name of a policy to use for this token.";
                                    Description = "Name of a policy to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--role-id");
                                    Name        = "ID of a role to use for this token.";
                                    Description = "ID of a role to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--role-name");
                                    Name        = "Name of a role to use for this token.";
                                    Description = "Name of a role to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--secret");
                                    Name        = "Create the token with this Secret ID.";
                                    Description = "Create the token with this Secret ID.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--service-identity");
                                    Name        = "Name of a service identity to use for this token.";
                                    Description = "Name of a service identity to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("delete");
                            Name        = "delete";
                            Description = "Delete an ACL token";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The Accessor ID of the token to delete.";
                                    Description = "The Accessor ID of the token to delete.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List ACL tokens";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that token metadata such as the content hash and Raft indices should be shown for each entry";
                                    Description = "Indicates that token metadata such as the content hash and Raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("read");
                            Name        = "read";
                            Description = "Read an ACL token";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The Accessor ID of the token to read.";
                                    Description = "The Accessor ID of the token to read.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that token metadata such as the content hash and Raft indices should be shown for each entry";
                                    Description = "Indicates that token metadata such as the content hash and Raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--self");
                                    Name        = "Indicates that the current HTTP token should be read by secret ID";
                                    Description = "Indicates that the current HTTP token should be read by secret ID";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("update");
                            Name        = "update";
                            Description = "Update an ACL token";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--description");
                                    Name        = "A description of the token";
                                    Description = "A description of the token";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format.";
                                    Description = "Output format.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The Accessor ID of the token to update.";
                                    Description = "The Accessor ID of the token to update.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--merge-node-identities");
                                    Name        = "Merge the new node identities with the existing node identities";
                                    Description = "Merge the new node identities with the existing node identities";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--merge-policies");
                                    Name        = "Merge the new policies with the existing policies";
                                    Description = "Merge the new policies with the existing policies";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--merge-roles");
                                    Name        = "Merge the new roles with the existing roles";
                                    Description = "Merge the new roles with the existing roles";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--merge-service-identities");
                                    Name        = "Merge the new service identities with the existing service identities";
                                    Description = "Merge the new service identities with the existing service identities";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--meta");
                                    Name        = "Indicates that token metadata such as the content hash and raft indices should be shown for each entry";
                                    Description = "Indicates that token metadata such as the content hash and raft indices should be shown for each entry";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--namespace");
                                    Name        = "Specifies the namespace to query.";
                                    Description = "Specifies the namespace to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node-identity");
                                    Name        = "Name of a node identity to use for this token.";
                                    Description = "Name of a node identity to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--policy-id");
                                    Name        = "ID of a policy to use for this token.";
                                    Description = "ID of a policy to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--policy-name");
                                    Name        = "Name of a policy to use for this token.";
                                    Description = "Name of a policy to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--role-id");
                                    Name        = "ID of a role to use for this token.";
                                    Description = "ID of a role to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--role-name");
                                    Name        = "Name of a role to use for this token.";
                                    Description = "Name of a role to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--service-identity");
                                    Name        = "Name of a service identity to use for this token.";
                                    Description = "Name of a service identity to use for this token.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--upgrade-legacy");
                                    Name        = "Add new polices to a legacy token replacing all existing rules.";
                                    Description = "Add new polices to a legacy token replacing all existing rules.";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("translate-rules");
                    Name        = "translate-rules";
                    Description = "Translate the legacy rule syntax into the current syntax";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--token-accessor");
                            Name        = "Specifies that the TRANSLATE argument refers to a ACL token AccessorID.";
                            Description = "Specifies that the TRANSLATE argument refers to a ACL token AccessorID.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--token-secret");
                            Name        = "Specifies that the TRANSLATE argument refers to a ACL token SecretID.";
                            Description = "Specifies that the TRANSLATE argument refers to a ACL token SecretID.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("agent");
            Name        = "agent";
            Description = "Runs a Consul agent";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--advertise");
                    Name        = "Sets the advertise address to use.";
                    Description = "Sets the advertise address to use.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--advertise-wan");
                    Name        = "Sets address to advertise on WAN instead of -advertise address.";
                    Description = "Sets address to advertise on WAN instead of -advertise address.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-write-http-from");
                    Name        = "Only allow write endpoint calls from given network.";
                    Description = "Only allow write endpoint calls from given network.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--alt-domain");
                    Name        = "Alternate domain to use for DNS interface.";
                    Description = "Alternate domain to use for DNS interface.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--bind");
                    Name        = "Sets the bind address for cluster communication.";
                    Description = "Sets the bind address for cluster communication.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bootstrap");
                    Name        = "Sets server to bootstrap mode.";
                    Description = "Sets server to bootstrap mode.";
                },
                [ValueParameter]@{
                    Keys        = @("--bootstrap-expect");
                    Name        = "Sets server to expect bootstrap mode.";
                    Description = "Sets server to expect bootstrap mode.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--check_output_max_size");
                    Name        = "Sets the maximum output size for checks on this agent";
                    Description = "Sets the maximum output size for checks on this agent";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client");
                    Name        = "Sets the address to bind for client access.";
                    Description = "Sets the address to bind for client access.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config-dir");
                    Name        = "Path to a directory to read configuration files from.";
                    Description = "Path to a directory to read configuration files from.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config-file");
                    Name        = "Path to a file in JSON or HCL format with a matching file extension.";
                    Description = "Path to a file in JSON or HCL format with a matching file extension.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config-format");
                    Name        = "Config files are in this format irrespective of their extension.";
                    Description = "Config files are in this format irrespective of their extension.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--data-dir");
                    Name        = "Path to a data directory to store agent state.";
                    Description = "Path to a data directory to store agent state.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--default-query-time");
                    Name        = "the amount of time a blocking query will wait before Consul will force a response.";
                    Description = "the amount of time a blocking query will wait before Consul will force a response.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dev");
                    Name        = "Starts the agent in development mode.";
                    Description = "Starts the agent in development mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-host-node-id");
                    Name        = "generate a random node ID.";
                    Description = "generate a random node ID.";
                },
                [FlagParameter]@{
                    Keys        = @("--disable-keyring-file");
                    Name        = "Disables the backing up of the keyring to a file.";
                    Description = "Disables the backing up of the keyring to a file.";
                },
                [ValueParameter]@{
                    Keys        = @("--dns-port");
                    Name        = "DNS port to use.";
                    Description = "DNS port to use.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--domain");
                    Name        = "Domain to use for DNS interface.";
                    Description = "Domain to use for DNS interface.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--enable-local-script-checks");
                    Name        = "Enables health check scripts from configuration file.";
                    Description = "Enables health check scripts from configuration file.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-script-checks");
                    Name        = "Enables health check scripts.";
                    Description = "Enables health check scripts.";
                },
                [ValueParameter]@{
                    Keys        = @("--encrypt");
                    Name        = "Provides the gossip encryption key.";
                    Description = "Provides the gossip encryption key.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--grpc-port");
                    Name        = "Sets the gRPC API port to listen on (currently needed for Envoy xDS only).";
                    Description = "Sets the gRPC API port to listen on (currently needed for Envoy xDS only).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hcl");
                    Name        = "hcl config fragment. Can be specified multiple times.";
                    Description = "hcl config fragment. Can be specified multiple times.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-port");
                    Name        = "Sets the HTTP API port to listen on.";
                    Description = "Sets the HTTP API port to listen on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--https-port");
                    Name        = "Sets the HTTPS API port to listen on.";
                    Description = "Sets the HTTPS API port to listen on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--join");
                    Name        = "Address of an agent to join at start time. Can be specified multiple times.";
                    Description = "Address of an agent to join at start time. Can be specified multiple times.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--join-wan");
                    Name        = "Address of an agent to join -wan at start time. Can be specified multiple times.";
                    Description = "Address of an agent to join -wan at start time. Can be specified multiple times.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--log-file");
                    Name        = "Path to the file the logs get written to";
                    Description = "Path to the file the logs get written to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--log-json");
                    Name        = "Output logs in JSON format.";
                    Description = "Output logs in JSON format.";
                },
                [ValueParameter]@{
                    Keys        = @("--log-level");
                    Name        = "Log level of the agent.";
                    Description = "Log level of the agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--log-rotate-bytes");
                    Name        = "Maximum number of bytes that should be written to a log file";
                    Description = "Maximum number of bytes that should be written to a log file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--log-rotate-duration");
                    Name        = "Time after which log rotation needs to be performed";
                    Description = "Time after which log rotation needs to be performed";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--log-rotate-max-files");
                    Name        = "Maximum number of log file archives to keep";
                    Description = "Maximum number of log file archives to keep";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--node");
                    Name        = "Name of this node. Must be unique in the cluster.";
                    Description = "Name of this node. Must be unique in the cluster.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--node-meta");
                    Name        = "An arbitrary metadata key/value pair for this node, of the format ``key:value``.";
                    Description = "An arbitrary metadata key/value pair for this node, of the format ``key:value``.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--non-voting-server");
                    Name        = "(Enterprise-only) DEPRECATED: -read-replica should be used instead";
                    Description = "(Enterprise-only) DEPRECATED: -read-replica should be used instead";
                },
                [ValueParameter]@{
                    Keys        = @("--pid-file");
                    Name        = "Path to file to store agent PID.";
                    Description = "Path to file to store agent PID.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--primary-gateway");
                    Name        = "Address of a mesh gateway in the primary datacenter to use to bootstrap WAN federation at start time with retries enabled.";
                    Description = "Address of a mesh gateway in the primary datacenter to use to bootstrap WAN federation at start time with retries enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--protocol");
                    Name        = "Sets the protocol version.";
                    Description = "Sets the protocol version.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--raft-protocol");
                    Name        = "Sets the Raft protocol version. Defaults to latest.";
                    Description = "Sets the Raft protocol version. Defaults to latest.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--read-replica");
                    Name        = "(Enterprise-only) This flag is used to make the server not participate in the Raft quorum";
                    Description = "(Enterprise-only) This flag is used to make the server not participate in the Raft quorum";
                },
                [ValueParameter]@{
                    Keys        = @("--recursor");
                    Name        = "Address of an upstream DNS server. Can be specified multiple times.";
                    Description = "Address of an upstream DNS server. Can be specified multiple times.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--rejoin");
                    Name        = "Ignores a previous leave and attempts to rejoin the cluster.";
                    Description = "Ignores a previous leave and attempts to rejoin the cluster.";
                },
                [ValueParameter]@{
                    Keys        = @("--retry-interval");
                    Name        = "Time to wait between join attempts.";
                    Description = "Time to wait between join attempts.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--retry-interval-wan");
                    Name        = "Time to wait between join -wan attempts.";
                    Description = "Time to wait between join -wan attempts.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--retry-join");
                    Name        = "Address of an agent to join at start time with retries enabled.";
                    Description = "Address of an agent to join at start time with retries enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--retry-join-wan");
                    Name        = "Address of an agent to join -wan at start time with retries enabled.";
                    Description = "Address of an agent to join -wan at start time with retries enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--retry-max");
                    Name        = "Maximum number of join attempts. Defaults to 0, which will retry indefinitely.";
                    Description = "Maximum number of join attempts. Defaults to 0, which will retry indefinitely.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--retry-max-wan");
                    Name        = "Maximum number of join -wan attempts. Defaults to 0, which will retry indefinitely.";
                    Description = "Maximum number of join -wan attempts. Defaults to 0, which will retry indefinitely.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--segment");
                    Name        = "(Enterprise-only) Sets the network segment to join.";
                    Description = "(Enterprise-only) Sets the network segment to join.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--serf-lan-allowed-cidrs");
                    Name        = "Networks allowed for Serf LAN.";
                    Description = "Networks allowed for Serf LAN.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--serf-lan-bind");
                    Name        = "Address to bind Serf LAN listeners to.";
                    Description = "Address to bind Serf LAN listeners to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--serf-lan-port");
                    Name        = "Sets the Serf LAN port to listen on.";
                    Description = "Sets the Serf LAN port to listen on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--serf-wan-allowed-cidrs");
                    Name        = "Networks allowed for Serf WAN (other datacenters).";
                    Description = "Networks allowed for Serf WAN (other datacenters).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--serf-wan-bind");
                    Name        = "Address to bind Serf WAN listeners to.";
                    Description = "Address to bind Serf WAN listeners to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--serf-wan-port");
                    Name        = "Sets the Serf WAN port to listen on.";
                    Description = "Sets the Serf WAN port to listen on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--server");
                    Name        = "Switches agent to server mode.";
                    Description = "Switches agent to server mode.";
                },
                [ValueParameter]@{
                    Keys        = @("--server-port");
                    Name        = "Sets the server port to listen on.";
                    Description = "Sets the server port to listen on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--syslog");
                    Name        = "Enables logging to syslog.";
                    Description = "Enables logging to syslog.";
                },
                [FlagParameter]@{
                    Keys        = @("--ui");
                    Name        = "Enables the built-in static web UI server.";
                    Description = "Enables the built-in static web UI server.";
                },
                [ValueParameter]@{
                    Keys        = @("--ui-content-path");
                    Name        = "Sets the external UI path to a string.";
                    Description = "Sets the external UI path to a string.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ui-dir");
                    Name        = "Path to directory containing the web UI resources.";
                    Description = "Path to directory containing the web UI resources.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("catalog");
            Name        = "catalog";
            Description = "Interact with the catalog";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("datacenters");
                    Name        = "datacenters";
                    Description = "Lists all known datacenters";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("nodes");
                    Name        = "nodes";
                    Description = "Lists all nodes in the given datacenter";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--detailed");
                            Name        = "Output detailed information about the nodes including their addresses and metadata.";
                            Description = "Output detailed information about the nodes including their addresses and metadata.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--filter");
                            Name        = "Filter to use with the request";
                            Description = "Filter to use with the request";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--near");
                            Name        = "Node name to sort the node list in ascending order based on estimated round-trip time from that node.";
                            Description = "Node name to sort the node list in ascending order based on estimated round-trip time from that node.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--node-meta");
                            Name        = "Metadata to filter nodes with the given ``key=value`` pairs.";
                            Description = "Metadata to filter nodes with the given ``key=value`` pairs.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--service");
                            Name        = "Service ``id or name`` to filter nodes.";
                            Description = "Service ``id or name`` to filter nodes.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("services");
                    Name        = "services";
                    Description = "Lists all registered services in a datacenter";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--node");
                            Name        = "Node ``id or name`` for which to list services.";
                            Description = "Node ``id or name`` for which to list services.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--node-meta");
                            Name        = "Metadata to filter nodes with the given ``key=value`` pairs.";
                            Description = "Metadata to filter nodes with the given ``key=value`` pairs.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tags");
                            Name        = "Display each service's tags as a comma-separated list beside each service entry.";
                            Description = "Display each service's tags as a comma-separated list beside each service entry.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Interact with Consul's Centralized Configurations";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete a centralized config entry";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--kind");
                            Name        = "The kind of configuration to delete.";
                            Description = "The kind of configuration to delete.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "The name of configuration to delete.";
                            Description = "The name of configuration to delete.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List centralized config entries of a given kind";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--kind");
                            Name        = "The kind of configurations to list.";
                            Description = "The kind of configurations to list.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("read");
                    Name        = "read";
                    Description = "Read a centralized config entry";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kind");
                            Name        = "The kind of configuration to delete.";
                            Description = "The kind of configuration to delete.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "The name of configuration to delete.";
                            Description = "The name of configuration to delete.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("write");
                    Name        = "write";
                    Description = "Create or update a centralized config entry";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--cas");
                            Name        = "Perform a Check-And-Set operation.";
                            Description = "Perform a Check-And-Set operation.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--modify-index");
                            Name        = "Unsigned integer representing the ModifyIndex of the config entry.";
                            Description = "Unsigned integer representing the ModifyIndex of the config entry.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("connect");
            Name        = "connect";
            Description = "Interact with Consul Connect";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("ca");
                    Name        = "ca";
                    Description = "Interact with the Consul Connect Certificate Authority (CA)";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get-config");
                            Name        = "get-config";
                            Description = "Display the current Connect Certificate Authority (CA) configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("set-config");
                            Name        = "set-config";
                            Description = "Modify the current Connect CA configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--config-file");
                                    Name        = "The path to the config file to use.";
                                    Description = "The path to the config file to use.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--force-without-cross-signing");
                                    Name        = "Indicates that the CA reconfiguration should go ahead even if the current CA is unable to cross sign certificates.";
                                    Description = "Indicates that the CA reconfiguration should go ahead even if the current CA is unable to cross sign certificates.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("envoy");
                    Name        = "envoy";
                    Description = "Runs or Configures Envoy as a Connect proxy";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--address");
                            Name        = "LAN address to advertise in the gateway service registration";
                            Description = "LAN address to advertise in the gateway service registration";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--admin-access-log-path");
                            Name        = "The path to write the access log for the administration server.";
                            Description = "The path to write the access log for the administration server.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--admin-bind");
                            Name        = "The address:port to start envoy's admin server on.";
                            Description = "The address:port to start envoy's admin server on.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--bind-address");
                            Name        = "Bind address to use instead of the default binding rules given as ``<name>=<ip>:<port>`` pairs.";
                            Description = "Bind address to use instead of the default binding rules given as ``<name>=<ip>:<port>`` pairs.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--bootstrap");
                            Name        = "Generate the bootstrap.json but don't exec envoy";
                            Description = "Generate the bootstrap.json but don't exec envoy";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--deregister-after-critical");
                            Name        = "The amount of time the gateway services health check can be failing before being deregistered";
                            Description = "The amount of time the gateway services health check can be failing before being deregistered";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--envoy-binary");
                            Name        = "The full path to the envoy binary to run.";
                            Description = "The full path to the envoy binary to run.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--envoy-version");
                            Name        = "Sets the envoy-version that the envoy binary has.";
                            Description = "Sets the envoy-version that the envoy binary has.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--expose-servers");
                            Name        = "Expose the servers for WAN federation via this mesh gateway";
                            Description = "Expose the servers for WAN federation via this mesh gateway";
                        },
                        [ValueParameter]@{
                            Keys        = @("--gateway");
                            Name        = "The type of gateway to register.";
                            Description = "The type of gateway to register.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--grpc-addr");
                            Name        = "Set the agent's gRPC address and port (in http(s)://host:port format).";
                            Description = "Set the agent's gRPC address and port (in http(s)://host:port format).";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--mesh-gateway");
                            Name        = "Configure Envoy as a Mesh Gateway.";
                            Description = "Configure Envoy as a Mesh Gateway.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-central-config");
                            Name        = "Require that the command run on the same agent as the proxy will.";
                            Description = "Require that the command run on the same agent as the proxy will.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--omit-deprecated-tags");
                            Name        = "Disable deprecated tags.";
                            Description = "Disable deprecated tags.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--proxy-id");
                            Name        = "The proxy's ID on the local agent.";
                            Description = "The proxy's ID on the local agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--register");
                            Name        = "Register a new gateway service before configuring and starting Envoy";
                            Description = "Register a new gateway service before configuring and starting Envoy";
                        },
                        [ValueParameter]@{
                            Keys        = @("--service");
                            Name        = "Service name to use for the registration";
                            Description = "Service name to use for the registration";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sidecar-for");
                            Name        = "The ID of a service instance on the local agent that this proxy should become a sidecar for.";
                            Description = "The ID of a service instance on the local agent that this proxy should become a sidecar for.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--wan-address");
                            Name        = "WAN address to advertise in the gateway service registration.";
                            Description = "WAN address to advertise in the gateway service registration.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("expose");
                    Name        = "expose";
                    Description = "Expose a Connect-enabled service through an Ingress gateway";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--host");
                            Name        = "Additional DNS hostname to use for routing to this service.";
                            Description = "Additional DNS hostname to use for routing to this service.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ingress-gateway");
                            Name        = "(Required) The name of the ingress gateway service to use.";
                            Description = "(Required) The name of the ingress gateway service to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--port");
                            Name        = "(Required) The listener port to use for the service on the Ingress gateway.";
                            Description = "(Required) The listener port to use for the service on the Ingress gateway.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--protocol");
                            Name        = "The protocol for the service. Defaults to 'tcp'.";
                            Description = "The protocol for the service. Defaults to 'tcp'.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--service");
                            Name        = "(Required) The name of destination service to expose.";
                            Description = "(Required) The name of destination service to expose.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("proxy");
                    Name        = "proxy";
                    Description = "Runs a Consul Connect proxy";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--listen");
                            Name        = "Address to listen for inbound connections to the proxied service.";
                            Description = "Address to listen for inbound connections to the proxied service.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--log-json");
                            Name        = "Output logs in JSON format.";
                            Description = "Output logs in JSON format.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--log-level");
                            Name        = "Specifies the log level.";
                            Description = "Specifies the log level.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--pprof-addr");
                            Name        = "Enable debugging via pprof.";
                            Description = "Enable debugging via pprof.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--proxy-id");
                            Name        = "The proxy's ID on the local agent.";
                            Description = "The proxy's ID on the local agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--register");
                            Name        = "Self-register with the local Consul agent.";
                            Description = "Self-register with the local Consul agent.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--register-id");
                            Name        = "ID suffix for the service.";
                            Description = "ID suffix for the service.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--service");
                            Name        = "Name of the service this proxy is representing.";
                            Description = "Name of the service this proxy is representing.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--service-addr");
                            Name        = "Address of the local service to proxy.";
                            Description = "Address of the local service to proxy.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sidecar-for");
                            Name        = "The ID of a service instance on the local agent that this proxy should become a sidecar for.";
                            Description = "The ID of a service instance on the local agent that this proxy should become a sidecar for.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--upstream");
                            Name        = "Upstream service to support connecting to.";
                            Description = "Upstream service to support connecting to.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("debug");
            Name        = "debug";
            Description = "Records a debugging archive for operators";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--archive");
                    Name        = "Boolean value for if the files should be archived and compressed.";
                    Description = "Boolean value for if the files should be archived and compressed.";
                },
                [ValueParameter]@{
                    Keys        = @("--capture");
                    Name        = "One or more types of information to capture.";
                    Description = "One or more types of information to capture.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--duration");
                    Name        = "The total time to record information.";
                    Description = "The total time to record information.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--interval");
                    Name        = "The interval in which to capture dynamic information.";
                    Description = "The interval in which to capture dynamic information.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output");
                    Name        = "The path to the compressed archive that will be created with the information after collection.";
                    Description = "The path to the compressed archive that will be created with the information after collection.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("event");
            Name        = "event";
            Description = "Fire a new event";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Name of the event.";
                    Description = "Name of the event.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--node");
                    Name        = "Regular expression to filter on node names.";
                    Description = "Regular expression to filter on node names.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service");
                    Name        = "Regular expression to filter on service instances.";
                    Description = "Regular expression to filter on service instances.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Regular expression to filter on service tags.";
                    Description = "Regular expression to filter on service tags.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("exec");
            Name        = "exec";
            Description = "Executes a command on Consul nodes";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--datacenter");
                    Name        = "Name of the datacenter to query.";
                    Description = "Name of the datacenter to query.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--node");
                    Name        = "Regular expression to filter on node names.";
                    Description = "Regular expression to filter on node names.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--prefix");
                    Name        = "Prefix in the KV store to use for request data.";
                    Description = "Prefix in the KV store to use for request data.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service");
                    Name        = "Regular expression to filter on service instances.";
                    Description = "Regular expression to filter on service instances.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--shell");
                    Name        = "Use a shell to run the command.";
                    Description = "Use a shell to run the command.";
                },
                [FlagParameter]@{
                    Keys        = @("--stale");
                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Regular expression to filter on service tags.";
                    Description = "Regular expression to filter on service tags.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose");
                    Name        = "Enables verbose output.";
                    Description = "Enables verbose output.";
                },
                [ValueParameter]@{
                    Keys        = @("--wait");
                    Name        = "Period to wait with no responses before terminating execution.";
                    Description = "Period to wait with no responses before terminating execution.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--wait-repl");
                    Name        = "Period to wait for replication before firing event.";
                    Description = "Period to wait for replication before firing event.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("force-leave");
            Name        = "force-leave";
            Description = "Forces a member of the cluster to enter the left state";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--prune");
                    Name        = "Remove agent completely from list of members";
                    Description = "Remove agent completely from list of members";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("info");
            Name        = "info";
            Description = "Provides debugging information for operators";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("intention");
            Name        = "intention";
            Description = "Interact with Connect service intentions";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("check");
                    Name        = "check";
                    Description = "Check whether a connection between two services is allowed";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query";
                            Description = "Specifies the namespace to query";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("create");
                    Name        = "create";
                    Description = "Create intentions for service connections.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--allow");
                            Name        = "Create an intention that allows when matched.";
                            Description = "Create an intention that allows when matched.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--deny");
                            Name        = "Create an intention that denies when matched.";
                            Description = "Create an intention that denies when matched.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--file");
                            Name        = "Read intention data from one or more files.";
                            Description = "Read intention data from one or more files.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--meta");
                            Name        = "Metadata to set on the intention, formatted as key=value.";
                            Description = "Metadata to set on the intention, formatted as key=value.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--replace");
                            Name        = "Replace matching intentions.";
                            Description = "Replace matching intentions.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Delete an intention";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query";
                            Description = "Specifies the namespace to query";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Show information about an intention.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query";
                            Description = "Specifies the namespace to query";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("list");
                    Name        = "list";
                    Description = "List intentions";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query";
                            Description = "Specifies the namespace to query";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("match");
                    Name        = "match";
                    Description = "Show intentions that match a source or destination";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--destination");
                            Name        = "Match intentions with the given destination.";
                            Description = "Match intentions with the given destination.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--source");
                            Name        = "Match intentions with the given source.";
                            Description = "Match intentions with the given source.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("join");
            Name        = "join";
            Description = "Tell Consul agent to join cluster";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--wan");
                    Name        = "Joins a server to another server in the WAN pool.";
                    Description = "Joins a server to another server in the WAN pool.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("keygen");
            Name        = "keygen";
            Description = "Generates a new encryption key";
        },
        [CommandParameter]@{
            Keys        = @("keyring");
            Name        = "keyring";
            Description = "Manages gossip layer encryption keys";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--install");
                    Name        = "Install a new encryption key.";
                    Description = "Install a new encryption key.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--list");
                    Name        = "List all keys currently in use within the cluster.";
                    Description = "List all keys currently in use within the cluster.";
                },
                [FlagParameter]@{
                    Keys        = @("--list-primary");
                    Name        = "List all primary keys currently in use within the cluster.";
                    Description = "List all primary keys currently in use within the cluster.";
                },
                [FlagParameter]@{
                    Keys        = @("--local-only");
                    Name        = "Setting this to true will force the keyring query to only hit local servers (no WAN traffic).";
                    Description = "Setting this to true will force the keyring query to only hit local servers (no WAN traffic).";
                },
                [ValueParameter]@{
                    Keys        = @("--relay-factor");
                    Name        = "Setting this to a non-zero value will cause nodes to relay their response.";
                    Description = "Setting this to a non-zero value will cause nodes to relay their response.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--remove");
                    Name        = "Remove the given key from the cluster.";
                    Description = "Remove the given key from the cluster.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--use");
                    Name        = "Change the primary encryption key, which is used to encrypt messages.";
                    Description = "Change the primary encryption key, which is used to encrypt messages.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("kv");
            Name        = "kv";
            Description = "Interact with the key-value store";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("delete");
                    Name        = "delete";
                    Description = "Removes data from the KV store";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--cas");
                            Name        = "Perform a Check-And-Set operation.";
                            Description = "Perform a Check-And-Set operation.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--modify-index");
                            Name        = "Unsigned integer representing the ModifyIndex of the key.";
                            Description = "Unsigned integer representing the ModifyIndex of the key.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recurse");
                            Name        = "Recursively delete all keys with the path.";
                            Description = "Recursively delete all keys with the path.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("export");
                    Name        = "export";
                    Description = "Exports a tree from the KV store as JSON";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Retrieves or lists data from the KV store";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--base64");
                            Name        = "Base64 encode the value.";
                            Description = "Base64 encode the value.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--detailed");
                            Name        = "Provide additional metadata about the key in addition to the value.";
                            Description = "Provide additional metadata about the key in addition to the value.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--keys");
                            Name        = "List keys which start with the given prefix, but not their values.";
                            Description = "List keys which start with the given prefix, but not their values.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--recurse");
                            Name        = "Recursively look at all keys prefixed with the given path.";
                            Description = "Recursively look at all keys prefixed with the given path.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--separator");
                            Name        = "String to use as a separator between keys.";
                            Description = "String to use as a separator between keys.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("import");
                    Name        = "import";
                    Description = "Imports a tree stored as JSON to the KV store";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("put");
                    Name        = "put";
                    Description = "Sets or updates data in the KV store";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--acquire");
                            Name        = "Obtain a lock on the key.";
                            Description = "Obtain a lock on the key.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--base64");
                            Name        = "Treat the data as base 64 encoded.";
                            Description = "Treat the data as base 64 encoded.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--cas");
                            Name        = "Perform a Check-And-Set operation.";
                            Description = "Perform a Check-And-Set operation.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--flags");
                            Name        = "Unsigned integer value to assign to this key-value pair.";
                            Description = "Unsigned integer value to assign to this key-value pair.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--modify-index");
                            Name        = "Unsigned integer representing the ModifyIndex of the key.";
                            Description = "Unsigned integer representing the ModifyIndex of the key.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Forfeit the lock on the key at the given path.";
                            Description = "Forfeit the lock on the key at the given path.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--session");
                            Name        = "User-defined identifer for this session as a string.";
                            Description = "User-defined identifer for this session as a string.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("leave");
            Name        = "leave";
            Description = "Gracefully leaves the Consul cluster and shuts down";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("lock");
            Name        = "lock";
            Description = "Execute a command holding a lock";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--child-exit-code");
                    Name        = "Exit 2 if the child process exited with an error if this is true.";
                    Description = "Exit 2 if the child process exited with an error if this is true.";
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--datacenter");
                    Name        = "Name of the datacenter to query.";
                    Description = "Name of the datacenter to query.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--monitor-retry");
                    Name        = "Number of times to retry if Consul returns a 500 error while monitoring the lock.";
                    Description = "Number of times to retry if Consul returns a 500 error while monitoring the lock.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Optional name to associate with the lock session.";
                    Description = "Optional name to associate with the lock session.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pass-stdin");
                    Name        = "Pass stdin to the child process.";
                    Description = "Pass stdin to the child process.";
                },
                [FlagParameter]@{
                    Keys        = @("--shell");
                    Name        = "Use a shell to run the command.";
                    Description = "Use a shell to run the command.";
                },
                [FlagParameter]@{
                    Keys        = @("--stale");
                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "Maximum amount of time to wait to acquire the lock.";
                    Description = "Maximum amount of time to wait to acquire the lock.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose");
                    Name        = "Enable verbose (debugging) output.";
                    Description = "Enable verbose (debugging) output.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("login");
            Name        = "login";
            Description = "Login to Consul using an auth method";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--bearer-token-file");
                    Name        = "Path to a file containing a secret bearer token to use with this auth method.";
                    Description = "Path to a file containing a secret bearer token to use with this auth method.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--datacenter");
                    Name        = "Name of the datacenter to query.";
                    Description = "Name of the datacenter to query.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--meta");
                    Name        = "Metadata to set on the token, formatted as key=value.";
                    Description = "Metadata to set on the token, formatted as key=value.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--method");
                    Name        = "Name of the auth method to login to.";
                    Description = "Name of the auth method to login to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--namespace");
                    Name        = "Specifies the namespace to query.";
                    Description = "Specifies the namespace to query.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--stale");
                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-sink-file");
                    Name        = "The most recent token's SecretID is kept up to date in this file.";
                    Description = "The most recent token's SecretID is kept up to date in this file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "Type of the auth method to login to.";
                    Description = "Type of the auth method to login to.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logout");
            Name        = "logout";
            Description = "Gracefully leaves the Consul cluster and shuts down";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--datacenter");
                    Name        = "Name of the datacenter to query.";
                    Description = "Name of the datacenter to query.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--stale");
                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("maint");
            Name        = "maint";
            Description = "Controls node or service maintenance mode";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable");
                    Name        = "Disable maintenance mode.";
                    Description = "Disable maintenance mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable");
                    Name        = "Enable maintenance mode.";
                    Description = "Enable maintenance mode.";
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--reason");
                    Name        = "Text describing the maintenance reason.";
                    Description = "Text describing the maintenance reason.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service");
                    Name        = "Control maintenance mode for a specific service ID.";
                    Description = "Control maintenance mode for a specific service ID.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("members");
            Name        = "members";
            Description = "Lists the members of a Consul cluster";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--detailed");
                    Name        = "Provides detailed information about nodes.";
                    Description = "Provides detailed information about nodes.";
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--segment");
                    Name        = "(Enterprise-only) If provided, output is filtered to only nodes inthe given segment.";
                    Description = "(Enterprise-only) If provided, output is filtered to only nodes inthe given segment.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--status");
                    Name        = "If provided, output is filtered to only nodes matching the regular expression for status.";
                    Description = "If provided, output is filtered to only nodes matching the regular expression for status.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--wan");
                    Name        = "If the agent is in server mode, this can be used to return the other peers in the WAN pool.";
                    Description = "If the agent is in server mode, this can be used to return the other peers in the WAN pool.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("monitor");
            Name        = "monitor";
            Description = "Stream logs from a Consul agent";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--log-json");
                    Name        = "Output logs in JSON format.";
                    Description = "Output logs in JSON format.";
                },
                [ValueParameter]@{
                    Keys        = @("--log-level");
                    Name        = "Log level of the agent.";
                    Description = "Log level of the agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("operator");
            Name        = "operator";
            Description = "Provides cluster-level tools for Consul operator";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("autopilot");
                    Name        = "autopilot";
                    Description = "Provides tools for modifying Autopilot configuration";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("get-config");
                            Name        = "get-config";
                            Description = "Display the current Autopilot configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("set-config");
                            Name        = "set-config";
                            Description = "Modify the current Autopilot configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cleanup-dead-servers");
                                    Name        = "Controls whether Consul will automatically remove dead servers when new ones are successfully added.";
                                    Description = "Controls whether Consul will automatically remove dead servers when new ones are successfully added.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--disable-upgrade-migration");
                                    Name        = "(Enterprise-only) Controls whether Consul will avoid promoting new servers until it can perform a migration.";
                                    Description = "(Enterprise-only) Controls whether Consul will avoid promoting new servers until it can perform a migration.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--last-contact-threshold");
                                    Name        = "Controls the maximum amount of time a server can go without contact from the leader before being considered unhealthy.";
                                    Description = "Controls the maximum amount of time a server can go without contact from the leader before being considered unhealthy.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--max-trailing-logs");
                                    Name        = "Controls the maximum number of log entries that a server can trail the leader by before being considered unhealthy.";
                                    Description = "Controls the maximum number of log entries that a server can trail the leader by before being considered unhealthy.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--min-quorum");
                                    Name        = "Sets the minimum number of servers required in a cluster before autopilot is allowed to prune dead servers.";
                                    Description = "Sets the minimum number of servers required in a cluster before autopilot is allowed to prune dead servers.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--redundancy-zone-tag");
                                    Name        = "(Enterprise-only) Controls the node_meta tag name used for separating servers into different redundancy zones.";
                                    Description = "(Enterprise-only) Controls the node_meta tag name used for separating servers into different redundancy zones.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--server-stabilization-time");
                                    Name        = "Controls the minimum amount of time a server must be stable in the 'healthy' state before being added to the cluster.";
                                    Description = "Controls the minimum amount of time a server must be stable in the 'healthy' state before being added to the cluster.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--upgrade-version-tag");
                                    Name        = "(Enterprise-only) The node_meta tag to use for version info when performing upgrade migrations.";
                                    Description = "(Enterprise-only) The node_meta tag to use for version info when performing upgrade migrations.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("state");
                            Name        = "state";
                            Description = "Display the current Autopilot configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--format");
                                    Name        = "Output format";
                                    Description = "Output format";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("raft");
                    Name        = "raft";
                    Description = "Provides cluster-level tools for Consul operators";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("list-peers");
                            Name        = "list-peers";
                            Description = "Display the current Raft peer configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("removePeer");
                            Name        = "removePeer";
                            Description = "Remove a Consul server from the Raft configuration";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--address");
                                    Name        = "The address to remove from the Raft configuration";
                                    Description = "The address to remove from the Raft configuration";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-file");
                                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca-path");
                                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-cert");
                                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--client-key");
                                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--datacenter");
                                    Name        = "Name of the datacenter to query.";
                                    Description = "Name of the datacenter to query.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--http-addr");
                                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                                    Description = "The ``address`` and port of the Consul HTTP agent.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--id");
                                    Name        = "The ID to remove from the Raft configuration";
                                    Description = "The ID to remove from the Raft configuration";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--stale");
                                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--tls-server-name");
                                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                                    Description = "The server name to use as the SNI host when connecting via TLS.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token");
                                    Name        = "ACL token to use in the request.";
                                    Description = "ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--token-file");
                                    Name        = "File containing the ACL token to use in the request.";
                                    Description = "File containing the ACL token to use in the request.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("reload");
            Name        = "reload";
            Description = "Triggers the agent to reload configuration files";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rtt");
            Name        = "rtt";
            Description = "Estimates network round trip time between nodes";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--wan");
                    Name        = "Use WAN coordinates instead of LAN coordinates.";
                    Description = "Use WAN coordinates instead of LAN coordinates.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("services");
            Name        = "services";
            Description = "Interact with services";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("deregister");
                    Name        = "deregister";
                    Description = "Deregister services with the local agent";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--id");
                            Name        = "ID to delete.";
                            Description = "ID to delete.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("register");
                    Name        = "register";
                    Description = "Register services with the local agent";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--address");
                            Name        = "Address of the service to register for arg-based registration.";
                            Description = "Address of the service to register for arg-based registration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--id");
                            Name        = "ID of the service to register for arg-based registration.";
                            Description = "ID of the service to register for arg-based registration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--kind");
                            Name        = "The services 'kind'";
                            Description = "The services 'kind'";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--meta");
                            Name        = "Metadata to set on the service, formatted as key=value.";
                            Description = "Metadata to set on the service, formatted as key=value.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--name");
                            Name        = "Name of the service to register for arg-based registration.";
                            Description = "Name of the service to register for arg-based registration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--namespace");
                            Name        = "Specifies the namespace to query.";
                            Description = "Specifies the namespace to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--port");
                            Name        = "Port of the service to register for arg-based registration.";
                            Description = "Port of the service to register for arg-based registration.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tag");
                            Name        = "Tag to add to the service.";
                            Description = "Tag to add to the service.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tagged-address");
                            Name        = "Tagged address to set on the service, formatted as key=value.";
                            Description = "Tagged address to set on the service, formatted as key=value.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("snapshot");
            Name        = "snapshot";
            Description = "Saves, restores and inspects snapshots of Consul server state";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("inspect");
                    Name        = "inspect";
                    Description = "Displays information about a Consul snapshot file";
                },
                [CommandParameter]@{
                    Keys        = @("restore");
                    Name        = "restore";
                    Description = "Restores snapshot of Consul server state";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("save");
                    Name        = "save";
                    Description = "Saves snapshot of Consul server stat";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--ca-file");
                            Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                            Description = "Path to a CA file to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--ca-path");
                            Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-cert");
                            Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--client-key");
                            Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--datacenter");
                            Name        = "Name of the datacenter to query.";
                            Description = "Name of the datacenter to query.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--http-addr");
                            Name        = "The ``address`` and port of the Consul HTTP agent.";
                            Description = "The ``address`` and port of the Consul HTTP agent.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--stale");
                            Name        = "Permit any Consul server (non-leader) to respond to this request.";
                            Description = "Permit any Consul server (non-leader) to respond to this request.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--tls-server-name");
                            Name        = "The server name to use as the SNI host when connecting via TLS.";
                            Description = "The server name to use as the SNI host when connecting via TLS.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token");
                            Name        = "ACL token to use in the request.";
                            Description = "ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--token-file");
                            Name        = "File containing the ACL token to use in the request.";
                            Description = "File containing the ACL token to use in the request.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("tls");
            Name        = "tls";
            Description = "Builtin helpers for creating CAs and certificates";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("ca");
                    Name        = "ca";
                    Description = "Helpers for CAs";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a new consul CA";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--additional-name-constraint");
                                    Name        = "Add name constraints for the CA.";
                                    Description = "Add name constraints for the CA.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--cluster-id");
                                    Name        = "ClusterID of the consul cluster.";
                                    Description = "ClusterID of the consul cluster.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--common-name");
                                    Name        = "Common Name of CA.";
                                    Description = "Common Name of CA.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--days");
                                    Name        = "Provide number of days the CA is valid for from now on.";
                                    Description = "Provide number of days the CA is valid for from now on.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--domain");
                                    Name        = "Domain of consul cluster.";
                                    Description = "Domain of consul cluster.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--name-constraint");
                                    Name        = "Add name constraints for the CA.";
                                    Description = "Add name constraints for the CA.";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("cert");
                    Name        = "cert";
                    Description = "Helpers for certificates";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("create");
                            Name        = "create";
                            Description = "Create a new certificate";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--additional-dnsname");
                                    Name        = "Provide an additional dnsname for Subject Alternative Names.";
                                    Description = "Provide an additional dnsname for Subject Alternative Names.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--additional-ipaddress");
                                    Name        = "Provide an additional ipaddress for Subject Alternative Names.";
                                    Description = "Provide an additional ipaddress for Subject Alternative Names.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--ca");
                                    Name        = "Provide path to the ca.";
                                    Description = "Provide path to the ca.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--cli");
                                    Name        = "Generate cli certificate.";
                                    Description = "Generate cli certificate.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--client");
                                    Name        = "Generate client certificate.";
                                    Description = "Generate client certificate.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--days");
                                    Name        = "Provide number of days the certificate is valid for from now on.";
                                    Description = "Provide number of days the certificate is valid for from now on.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--dc");
                                    Name        = "Provide the datacenter.";
                                    Description = "Provide the datacenter.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--domain");
                                    Name        = "Provide the domain.";
                                    Description = "Provide the domain.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--key");
                                    Name        = "Provide path to the key.";
                                    Description = "Provide path to the key.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [ValueParameter]@{
                                    Keys        = @("--node");
                                    Name        = "When generating a server cert and this is set an additional dns name is included of the form <node>.server.<datacenter>.<domain>.";
                                    Description = "When generating a server cert and this is set an additional dns name is included of the form <node>.server.<datacenter>.<domain>.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--server");
                                    Name        = "Generate server certificate.";
                                    Description = "Generate server certificate.";
                                }
                            )
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("validate");
            Name        = "validate";
            Description = "Validate config files/directories";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config-format");
                    Name        = "Config files are in this format irrespective of their extension.";
                    Description = "Config files are in this format irrespective of their extension.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet");
                    Name        = "When given, a successful run will produce no output.";
                    Description = "When given, a successful run will produce no output.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Prints the Consul version";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Output format";
                    Description = "Output format";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("watch");
            Name        = "watch";
            Description = "Watch for changes in Consul";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--ca-file");
                    Name        = "Path to a CA file to use for TLS when communicating with Consul.";
                    Description = "Path to a CA file to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ca-path");
                    Name        = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    Description = "Path to a directory of CA certificates to use for TLS when communicating with Consul.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-cert");
                    Name        = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client cert file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--client-key");
                    Name        = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    Description = "Path to a client key file to use for TLS when 'verify_incoming' is enabled.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--datacenter");
                    Name        = "Name of the datacenter to query.";
                    Description = "Name of the datacenter to query.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--http-addr");
                    Name        = "The ``address`` and port of the Consul HTTP agent.";
                    Description = "The ``address`` and port of the Consul HTTP agent.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--key");
                    Name        = "Specifies the key to watch.";
                    Description = "Specifies the key to watch.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "";
                    Description = "";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--passingonly");
                    Name        = "Specifies if only hosts passing all checks are displayed.";
                    Description = "Specifies if only hosts passing all checks are displayed.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--prefix");
                    Name        = "Specifies the key prefix to watch.";
                    Description = "Specifies the key prefix to watch.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service");
                    Name        = "Specifies the service to watch.";
                    Description = "Specifies the service to watch.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--shell");
                    Name        = "Use a shell to run the command.";
                    Description = "Use a shell to run the command.";
                },
                [FlagParameter]@{
                    Keys        = @("--stale");
                    Name        = "Permit any Consul server (non-leader) to respond to this request.";
                    Description = "Permit any Consul server (non-leader) to respond to this request.";
                },
                [ValueParameter]@{
                    Keys        = @("--state");
                    Name        = "Specifies the states to watch.";
                    Description = "Specifies the states to watch.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Specifies the service tag(s) to filter on.";
                    Description = "Specifies the service tag(s) to filter on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tls-server-name");
                    Name        = "The server name to use as the SNI host when connecting via TLS.";
                    Description = "The server name to use as the SNI host when connecting via TLS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "ACL token to use in the request.";
                    Description = "ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token-file");
                    Name        = "File containing the ACL token to use in the request.";
                    Description = "File containing the ACL token to use in the request.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "Specifies the watch type.";
                    Description = "Specifies the watch type.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
