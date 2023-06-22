# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/gulpjs/gulp-cli";
    Keys        = @("gulp");
    Name        = "gulp";
    Description = "Command Line Interface for gulp";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "Set the loglevel.";
            Description = "Set the loglevel.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--color");
            Name        = "Will force gulp and gulp plugins to display colors.";
            Description = "Will force gulp and gulp plugins to display colors.";
        },
        [FlagParameter]@{
            Keys        = @("--compact-tasks");
            Name        = "Reduce the output of task dependency tree.";
            Description = "Reduce the output of task dependency tree.";
        },
        [FlagParameter]@{
            Keys        = @("--continue");
            Name        = "Continue execution of tasks upon failure.";
            Description = "Continue execution of tasks upon failure.";
        },
        [ValueParameter]@{
            Keys        = @("--cwd");
            Name        = "Manually set the CWD.";
            Description = "Manually set the CWD.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--depth");
            Name        = "Specify the depth of the task dependency tree.";
            Description = "Specify the depth of the task dependency tree.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gulpfile", "-f");
            Name        = "Manually set path of gulpfile.";
            Description = "Manually set path of gulpfile.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help.";
            Description = "Show this help.";
        },
        [ValueParameter]@{
            Keys        = @("--log-level");
            Name        = "Set the loglevel.";
            Description = "Set the loglevel.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "Will force gulp and gulp plugins to not display colors.";
            Description = "Will force gulp and gulp plugins to not display colors.";
        },
        [ValueParameter]@{
            Keys        = @("--require");
            Name        = "Will require a module before running the gulpfile.";
            Description = "Will require a module before running the gulpfile.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--series");
            Name        = "Run tasks given on the CLI in series.";
            Description = "Run tasks given on the CLI in series.";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-S");
            Name        = "Suppress all gulp logging.";
            Description = "Suppress all gulp logging.";
        },
        [FlagParameter]@{
            Keys        = @("--sort-tasks");
            Name        = "Will sort top tasks of task dependency tree. ";
            Description = "Will sort top tasks of task dependency tree. ";
        },
        [FlagParameter]@{
            Keys        = @("--tasks", "-T");
            Name        = "Print the task dependency tree for the loaded gulpfile.";
            Description = "Print the task dependency tree for the loaded gulpfile.";
        },
        [ValueParameter]@{
            Keys        = @("--tasks-depth");
            Name        = "Specify the depth of the task dependency tree.";
            Description = "Specify the depth of the task dependency tree.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tasks-json");
            Name        = "Print the task dependency tree, in JSON format.";
            Description = "Print the task dependency tree, in JSON format.";
        },
        [FlagParameter]@{
            Keys        = @("--tasks-simple");
            Name        = "Print a plaintext list of tasks for the loaded gulpfile.";
            Description = "Print a plaintext list of tasks for the loaded gulpfile.";
        },
        [FlagParameter]@{
            Keys        = @("--verify");
            Name        = "Will verify plugins referenced in project's package.json.";
            Description = "Will verify plugins referenced in project's package.json.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print the global and local gulp versions.";
            Description = "Print the global and local gulp versions.";
        }
    )
}
