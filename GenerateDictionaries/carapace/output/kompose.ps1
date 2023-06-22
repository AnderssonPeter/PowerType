# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://kompose.io/";
    Keys        = @("kompose");
    Name        = "kompose";
    Description = "A tool helping Docker Compose users move to Kubernetes";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--error-on-warning");
            Name        = "Treat any warning as an error";
            Description = "Treat any warning as an error";
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "Specify an alternative compose file";
            Description = "Specify an alternative compose file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for kompose";
            Description = "help for kompose";
        },
        [ValueParameter]@{
            Keys        = @("--provider");
            Name        = "Specify a provider. Kubernetes or OpenShift.";
            Description = "Specify a provider. Kubernetes or OpenShift.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--suppress-warnings");
            Name        = "Suppress all warnings";
            Description = "Suppress all warnings";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbose output";
            Description = "verbose output";
        },
        ,
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Output shell completion code";
        },
        [CommandParameter]@{
            Keys        = @("convert");
            Name        = "convert";
            Description = "Convert a Docker Compose file";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--build");
                    Name        = "Set the type of build (`"local`"|`"build-config`"(OpenShift only)|`"none`")";
                    Description = "Set the type of build (`"local`"|`"build-config`"(OpenShift only)|`"none`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-branch");
                    Name        = "Specify repository branch to use for buildconfig (default master)";
                    Description = "Specify repository branch to use for buildconfig (default master)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-repo");
                    Name        = "Specify source repository for buildconfig (default remote origin)";
                    Description = "Specify source repository for buildconfig (default remote origin)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--chart", "-c");
                    Name        = "Create a Helm chart for converted objects";
                    Description = "Create a Helm chart for converted objects";
                },
                [ValueParameter]@{
                    Keys        = @("--controller");
                    Name        = "Set the output controller (`"deployment`"|`"daemonSet`"|`"replicationController`")";
                    Description = "Set the output controller (`"deployment`"|`"daemonSet`"|`"replicationController`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--daemon-set");
                    Name        = "Generate a Kubernetes daemonset object (deprecated, use --controller instead)";
                    Description = "Generate a Kubernetes daemonset object (deprecated, use --controller instead)";
                },
                [FlagParameter]@{
                    Keys        = @("--deployment", "-d");
                    Name        = "Generate a Kubernetes deployment object (deprecated, use --controller instead)";
                    Description = "Generate a Kubernetes deployment object (deprecated, use --controller instead)";
                },
                [FlagParameter]@{
                    Keys        = @("--deployment-config");
                    Name        = "Generate an OpenShift deploymentconfig object";
                    Description = "Generate an OpenShift deploymentconfig object";
                },
                [FlagParameter]@{
                    Keys        = @("--emptyvols");
                    Name        = "Use Empty Volumes. Do not generate PVCs";
                    Description = "Use Empty Volumes. Do not generate PVCs";
                },
                [ValueParameter]@{
                    Keys        = @("--indent");
                    Name        = "Spaces length to indent generated yaml files";
                    Description = "Spaces length to indent generated yaml files";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--insecure-repository");
                    Name        = "Use an insecure Docker repository for OpenShift ImageStream";
                    Description = "Use an insecure Docker repository for OpenShift ImageStream";
                },
                [FlagParameter]@{
                    Keys        = @("--json", "-j");
                    Name        = "Generate resource files into JSON format";
                    Description = "Generate resource files into JSON format";
                },
                [FlagParameter]@{
                    Keys        = @("--multiple-container-mode");
                    Name        = "Create multiple containers grouped by 'kompose.service.group' label";
                    Description = "Create multiple containers grouped by 'kompose.service.group' label";
                },
                [ValueParameter]@{
                    Keys        = @("--out", "-o");
                    Name        = "Specify a file name or directory to save objects to (if path does not exist, a file will be created)";
                    Description = "Specify a file name or directory to save objects to (if path does not exist, a file will be created)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--push-image");
                    Name        = "If we should push the docker image we built";
                    Description = "If we should push the docker image we built";
                },
                [ValueParameter]@{
                    Keys        = @("--push-image-registry");
                    Name        = "Specify registry for pushing image, which will override registry from image name.";
                    Description = "Specify registry for pushing image, which will override registry from image name.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pvc-request-size");
                    Name        = "Specify the size of pvc storage requests in the generated resource spec";
                    Description = "Specify the size of pvc storage requests in the generated resource spec";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--replicas");
                    Name        = "Specify the number of replicas in the generated resource spec";
                    Description = "Specify the number of replicas in the generated resource spec";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--replication-controller");
                    Name        = "Generate a Kubernetes replication controller object (deprecated, use --controller instead)";
                    Description = "Generate a Kubernetes replication controller object (deprecated, use --controller instead)";
                },
                [ValueParameter]@{
                    Keys        = @("--service-group-mode");
                    Name        = "Group multiple service to create single workload by ``label``(``kompose.service.group``) or ``volume``(shared volumes)";
                    Description = "Group multiple service to create single workload by ``label``(``kompose.service.group``) or ``volume``(shared volumes)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--service-group-name");
                    Name        = "Using with --service-group-mode=volume to specific a final service name for the group";
                    Description = "Using with --service-group-mode=volume to specific a final service name for the group";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--stdout");
                    Name        = "Print converted objects to stdout";
                    Description = "Print converted objects to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--volumes");
                    Name        = "Volumes to be generated (`"persistentVolumeClaim`"|`"emptyDir`"|`"hostPath`" | `"configMap`")";
                    Description = "Volumes to be generated (`"persistentVolumeClaim`"|`"emptyDir`"|`"hostPath`" | `"configMap`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--with-kompose-annotation");
                    Name        = "Add kompose annotations to generated resource";
                    Description = "Add kompose annotations to generated resource";
                },
                [FlagParameter]@{
                    Keys        = @("--yaml", "-y");
                    Name        = "Generate resource files into YAML format";
                    Description = "Generate resource files into YAML format";
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
            Keys        = @("version");
            Name        = "version";
            Description = "Print the version of Kompose";
        }
    )
}
