# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://goreleaser.com/";
    Keys        = @("goreleaser");
    Name        = "goreleaser";
    Description = "Deliver Go binaries as fast and easily as possible";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Enable debug mode";
            Description = "Enable debug mode";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for goreleaser";
            Description = "help for goreleaser";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "version for goreleaser";
            Description = "version for goreleaser";
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Builds the current project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config", "-f");
                    Name        = "Load configuration from file";
                    Description = "Load configuration from file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Enable debug mode";
                    Description = "Enable debug mode";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "help for build";
                    Description = "help for build";
                },
                [ValueParameter]@{
                    Keys        = @("--parallelism", "-p");
                    Name        = "Amount tasks to run concurrently (default 4)";
                    Description = "Amount tasks to run concurrently (default 4)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--rm-dist");
                    Name        = "Remove the dist folder before building";
                    Description = "Remove the dist folder before building";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-post-hooks");
                    Name        = "Skips all post-build hooks";
                    Description = "Skips all post-build hooks";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-validate");
                    Name        = "Skips several sanity checks";
                    Description = "Skips several sanity checks";
                },
                [FlagParameter]@{
                    Keys        = @("--snapshot");
                    Name        = "Generate an unversioned snapshot build, skipping all validations and without publishing any artifacts";
                    Description = "Generate an unversioned snapshot build, skipping all validations and without publishing any artifacts";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "Timeout to the entire build process (default 30m0s)";
                    Description = "Timeout to the entire build process (default 30m0s)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("check");
            Name        = "check";
            Description = "Checks if configuration is valid";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config", "-f");
                    Name        = "Configuration file to check";
                    Description = "Configuration file to check";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Enable debug mode";
                    Description = "Enable debug mode";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "help for check";
                    Description = "help for check";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Print shell autocompletion scripts for goreleaser";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Enable debug mode";
                    Description = "Enable debug mode";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "help for completion";
                    Description = "help for completion";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Enable debug mode";
                    Description = "Enable debug mode";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "help for help";
                    Description = "help for help";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Generates a .goreleaser.yml file";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config", "-f");
                    Name        = "Load configuration from file (default `".goreleaser.yml`")";
                    Description = "Load configuration from file (default `".goreleaser.yml`")";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Enable debug mode";
                    Description = "Enable debug mode";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "help for init";
                    Description = "help for init";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("release");
            Name        = "release";
            Description = "Releases the current project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config", "-f");
                    Name        = "Load configuration from file";
                    Description = "Load configuration from file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Enable debug mode";
                    Description = "Enable debug mode";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "help for release";
                    Description = "help for release";
                },
                [ValueParameter]@{
                    Keys        = @("--parallelism", "-p");
                    Name        = "Amount tasks to run concurrently (default 4)";
                    Description = "Amount tasks to run concurrently (default 4)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--release-footer");
                    Name        = "Load custom release notes footer from a markdown file";
                    Description = "Load custom release notes footer from a markdown file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--release-header");
                    Name        = "Load custom release notes header from a markdown file";
                    Description = "Load custom release notes header from a markdown file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--release-notes");
                    Name        = "Load custom release notes from a markdown file";
                    Description = "Load custom release notes from a markdown file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--rm-dist");
                    Name        = "Remove the dist folder before building";
                    Description = "Remove the dist folder before building";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-publish");
                    Name        = "Skips publishing artifacts";
                    Description = "Skips publishing artifacts";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-sign");
                    Name        = "Skips signing the artifacts";
                    Description = "Skips signing the artifacts";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-validate");
                    Name        = "Skips several sanity checks";
                    Description = "Skips several sanity checks";
                },
                [FlagParameter]@{
                    Keys        = @("--snapshot");
                    Name        = "Generate an unversioned snapshot release, skipping all validations and without publishing any artifacts";
                    Description = "Generate an unversioned snapshot release, skipping all validations and without publishing any artifacts";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "Timeout to the entire release process (default 30m0s)";
                    Description = "Timeout to the entire release process (default 30m0s)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
