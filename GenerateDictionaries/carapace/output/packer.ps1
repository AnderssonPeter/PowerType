# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.packer.io/";
    Keys        = @("packer");
    Name        = "packer";
    Description = "Create identical machine images for multiple platforms from a single source configuration.";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--h");
            Name        = "show help";
            Description = "show help";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "show help";
            Description = "show help";
        },
        [FlagParameter]@{
            Keys        = @("--v");
            Name        = "show version";
            Description = "show version";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show version";
            Description = "show version";
        },
        ,
        ,
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "build image(s) from template";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--color");
                    Name        = "Enable color output";
                    Description = "Enable color output";
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Debug mode enabled for builds.";
                    Description = "Debug mode enabled for builds.";
                },
                [ValueParameter]@{
                    Keys        = @("--except");
                    Name        = "Run all builds and post-processors other than these.";
                    Description = "Run all builds and post-processors other than these.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Force a build to continue if artifacts exist, deletes existing artifacts.";
                    Description = "Force a build to continue if artifacts exist, deletes existing artifacts.";
                },
                [FlagParameter]@{
                    Keys        = @("--machine-readable");
                    Name        = "Produce machine-readable output.";
                    Description = "Produce machine-readable output.";
                },
                [ValueParameter]@{
                    Keys        = @("--on-error");
                    Name        = "If the build fails do: clean up (default), abort, ask, or run-cleanup-provisioner.";
                    Description = "If the build fails do: clean up (default), abort, ask, or run-cleanup-provisioner.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--only");
                    Name        = "Build only the specified builds.";
                    Description = "Build only the specified builds.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel-builds");
                    Name        = "Number of builds to run in parallel. 1 disables parallelization. 0 means no limit (Default: 0)";
                    Description = "Number of builds to run in parallel. 1 disables parallelization. 0 means no limit (Default: 0)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--timestamp-ui");
                    Name        = "Enable prefixing of each ui output with an RFC3339 timestamp.";
                    Description = "Enable prefixing of each ui output with an RFC3339 timestamp.";
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable for templates, can be used multiple times.";
                    Description = "Variable for templates, can be used multiple times.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "JSON or HCL2 file containing user variables.";
                    Description = "JSON or HCL2 file containing user variables.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("console");
            Name        = "console";
            Description = "creates a console for testing variable interpolation";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable for templates, can be used multiple times.";
                    Description = "Variable for templates, can be used multiple times.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "JSON or HCL2 file containing user variables.";
                    Description = "JSON or HCL2 file containing user variables.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fix");
            Name        = "fix";
            Description = "fixes templates from old versions of packer";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--validate");
                    Name        = "If true (default), validates the fixed template.";
                    Description = "If true (default), validates the fixed template.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fmt");
            Name        = "fmt";
            Description = "Rewrites HCL2 config files to canonical format";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--check");
                    Name        = "Check if the input is formatted.";
                    Description = "Check if the input is formatted.";
                },
                [FlagParameter]@{
                    Keys        = @("--diff");
                    Name        = "Display diffs of formatting change";
                    Description = "Display diffs of formatting change";
                },
                [FlagParameter]@{
                    Keys        = @("--recursive");
                    Name        = "Also process files in subdirectories.";
                    Description = "Also process files in subdirectories.";
                },
                [FlagParameter]@{
                    Keys        = @("--write");
                    Name        = "Don't write to source files";
                    Description = "Don't write to source files";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("hcl2-upgrade");
            Name        = "hcl2-upgrade";
            Description = "Rewrites HCL2 config files to canonical format";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--output-file");
                    Name        = "Set output file name.";
                    Description = "Set output file name.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--with-annotations");
                    Name        = "Add helper annotation comments to the file to help new HCL2 users understand the template format.";
                    Description = "Add helper annotation comments to the file to help new HCL2 users understand the template format.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Install missing plugins or upgrade plugins";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--upgrade");
                    Name        = "On top of installing missing plugins, update installed plugins to the latest available version";
                    Description = "On top of installing missing plugins, update installed plugins to the latest available version";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("inspect");
            Name        = "inspect";
            Description = "see components of a template";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--machine-readable");
                    Name        = "Machine-readable output";
                    Description = "Machine-readable output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("validate");
            Name        = "validate";
            Description = "check that a template is valid";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--except");
                    Name        = "Validate all builds other than these.";
                    Description = "Validate all builds other than these.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--machine-readable");
                    Name        = "Produce machine-readable output.";
                    Description = "Produce machine-readable output.";
                },
                [ValueParameter]@{
                    Keys        = @("--only");
                    Name        = "Validate only these builds.";
                    Description = "Validate only these builds.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--syntax-only");
                    Name        = "Only check syntax. Do not verify config of the template.";
                    Description = "Only check syntax. Do not verify config of the template.";
                },
                [ValueParameter]@{
                    Keys        = @("--var");
                    Name        = "Variable for templates, can be used multiple times.";
                    Description = "Variable for templates, can be used multiple times.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--var-file");
                    Name        = "JSON or HCL2 file containing user variables.";
                    Description = "JSON or HCL2 file containing user variables.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Prints the Packer version";
        }
    )
}
