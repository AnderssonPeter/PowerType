# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/ranger/ranger";
    Keys        = @("ranger");
    Name        = "ranger";
    Description = "visual file manager";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cachedir");
            Name        = "change the cache directory.";
            Description = "change the cache directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--choosedir");
            Name        = "Makes ranger act like a directory chooser.";
            Description = "Makes ranger act like a directory chooser.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--choosefile");
            Name        = "Makes ranger act like a file chooser.";
            Description = "Makes ranger act like a file chooser.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--choosefiles");
            Name        = "Makes ranger act like a file chooser for multiple files at once.";
            Description = "Makes ranger act like a file chooser for multiple files at once.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--clean", "-c");
            Name        = "don't touch/require any config files.";
            Description = "don't touch/require any config files.";
        },
        [ValueParameter]@{
            Keys        = @("--cmd");
            Name        = "Execute COMMAND after the configuration has been read.";
            Description = "Execute COMMAND after the configuration has been read.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--copy-config");
            Name        = "copy the default configs to the local config directory.";
            Description = "copy the default configs to the local config directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--datadir");
            Name        = "change the data directory.";
            Description = "change the data directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "activate debug mode";
            Description = "activate debug mode";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--list-tagged-files");
            Name        = "List all files which are tagged with the given tag.";
            Description = "List all files which are tagged with the given tag.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-unused-keys");
            Name        = "List common keys which are not bound to any action.";
            Description = "List common keys which are not bound to any action.";
        },
        [ValueParameter]@{
            Keys        = @("--logfile");
            Name        = "log file to use, '-' for stderr";
            Description = "log file to use, '-' for stderr";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--profile");
            Name        = "Print statistics of CPU usage on exit.";
            Description = "Print statistics of CPU usage on exit.";
        },
        [ValueParameter]@{
            Keys        = @("--selectfile");
            Name        = "Open ranger with supplied file selected.";
            Description = "Open ranger with supplied file selected.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-only-dirs");
            Name        = "Show only directories, no files or links";
            Description = "Show only directories, no files or links";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show program's version number and exit";
            Description = "show program's version number and exit";
        }
    )
}
