# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/Praqma/Helmsman";
    Keys        = @("helmsman");
    Name        = "helmsman";
    Description = "Helmsman is a Helm Charts as Code tool";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--always-upgrade");
            Name        = "upgrade release even if no changes are found";
            Description = "upgrade release even if no changes are found";
        },
        [FlagParameter]@{
            Keys        = @("--apply");
            Name        = "apply the plan directly";
            Description = "apply the plan directly";
        },
        [ValueParameter]@{
            Keys        = @("--context-override");
            Name        = "override releases context defined in release state with this one";
            Description = "override releases context defined in release state with this one";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "show the debug execution logs and actual helm/kubectl commands. This can log secrets and should only be used for debugging purposes.";
            Description = "show the debug execution logs and actual helm/kubectl commands. This can log secrets and should only be used for debugging purposes.";
        },
        [FlagParameter]@{
            Keys        = @("--destroy");
            Name        = "delete all deployed releases.";
            Description = "delete all deployed releases.";
        },
        [ValueParameter]@{
            Keys        = @("--diff-context");
            Name        = "number of lines of context to show around changes in helm diff output";
            Description = "number of lines of context to show around changes in helm diff output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dry-run");
            Name        = "apply the dry-run option for helm commands.";
            Description = "apply the dry-run option for helm commands.";
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "file(s) to load environment variables from (default .env), may be supplied more than once";
            Description = "file(s) to load environment variables from (default .env), may be supplied more than once";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "desired state file name(s), may be supplied more than once to merge state files";
            Description = "desired state file name(s), may be supplied more than once to merge state files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--force-upgrades");
            Name        = "use --force when upgrading helm releases. May cause resources to be recreated.";
            Description = "use --force when upgrading helm releases. May cause resources to be recreated.";
        },
        [ValueParameter]@{
            Keys        = @("--group");
            Name        = "limit execution to specific group of apps.";
            Description = "limit execution to specific group of apps.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--keep-untracked-releases");
            Name        = "keep releases that are managed by Helmsman from the used DSFs in the command, and are no longer tracked in your desired state.";
            Description = "keep releases that are managed by Helmsman from the used DSFs in the command, and are no longer tracked in your desired state.";
        },
        [ValueParameter]@{
            Keys        = @("--kubeconfig");
            Name        = "path to the kubeconfig file to use for CLI requests";
            Description = "path to the kubeconfig file to use for CLI requests";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--kubectl-diff");
            Name        = "use kubectl diff instead of helm diff. Defalts to false if the helm diff plugin is installed.";
            Description = "use kubectl diff instead of helm diff. Defalts to false if the helm diff plugin is installed.";
        },
        [FlagParameter]@{
            Keys        = @("--migrate-context");
            Name        = "updates the context name for all apps defined in the DSF and applies Helmsman labels. Using this flag is required if you want to change context name after it has been set.";
            Description = "updates the context name for all apps defined in the DSF and applies Helmsman labels. Using this flag is required if you want to change context name after it has been set.";
        },
        [FlagParameter]@{
            Keys        = @("--no-banner");
            Name        = "don't show the banner";
            Description = "don't show the banner";
        },
        [FlagParameter]@{
            Keys        = @("--no-cleanup");
            Name        = "keeps any credentials files that has been downloaded on the host where helmsman runs.";
            Description = "keeps any credentials files that has been downloaded on the host where helmsman runs.";
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "don't use colors";
            Description = "don't use colors";
        },
        [FlagParameter]@{
            Keys        = @("--no-env-subst");
            Name        = "turn off environment substitution globally";
            Description = "turn off environment substitution globally";
        },
        [FlagParameter]@{
            Keys        = @("--no-fancy");
            Name        = "don't display the banner and don't use colors";
            Description = "don't display the banner and don't use colors";
        },
        [FlagParameter]@{
            Keys        = @("--no-ns");
            Name        = "don't create namespaces";
            Description = "don't create namespaces";
        },
        [FlagParameter]@{
            Keys        = @("--no-ssm-subst");
            Name        = "turn off SSM parameter substitution globally";
            Description = "turn off SSM parameter substitution globally";
        },
        [FlagParameter]@{
            Keys        = @("--no-update");
            Name        = "skip updating helm repos";
            Description = "skip updating helm repos";
        },
        [ValueParameter]@{
            Keys        = @("--ns-override");
            Name        = "override defined namespaces with this one";
            Description = "override defined namespaces with this one";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "max number of concurrent helm releases to run";
            Description = "max number of concurrent helm releases to run";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--replace-on-rename");
            Name        = "Uninstall the existing release when a chart with a different name is used.";
            Description = "Uninstall the existing release when a chart with a different name is used.";
        },
        [FlagParameter]@{
            Keys        = @("--show-diff");
            Name        = "show helm diff results. Can expose sensitive information.";
            Description = "show helm diff results. Can expose sensitive information.";
        },
        [FlagParameter]@{
            Keys        = @("--skip-validation");
            Name        = "skip desired state validation";
            Description = "skip desired state validation";
        },
        [FlagParameter]@{
            Keys        = @("--subst-env-values");
            Name        = "turn on environment substitution in values files.";
            Description = "turn on environment substitution in values files.";
        },
        [FlagParameter]@{
            Keys        = @("--subst-ssm-values");
            Name        = "turn on SSM parameter substitution in values files.";
            Description = "turn on SSM parameter substitution in values files.";
        },
        [ValueParameter]@{
            Keys        = @("--target");
            Name        = "limit execution to specific app.";
            Description = "limit execution to specific app.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update-deps");
            Name        = "run 'helm dep up' for local charts";
            Description = "run 'helm dep up' for local charts";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "show the version";
            Description = "show the version";
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "show verbose execution logs.";
            Description = "show verbose execution logs.";
        }
    )
}
