# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://xon.sh/";
    Keys        = @("xonsh");
    Name        = "xonsh";
    Description = "Python-powered shell";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-D");
            Name        = "Define an environment variable";
            Description = "Define an environment variable";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Run a single command and exit.";
            Description = "Run a single command and exit.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cache-everything");
            Name        = "Use a cache, even for interactive commands.";
            Description = "Use a cache, even for interactive commands.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help and exit.";
            Description = "Show help and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "Force running in interactive mode.";
            Description = "Force running in interactive mode.";
        },
        [FlagParameter]@{
            Keys        = @("--login", "-l");
            Name        = "Run as a login shell.";
            Description = "Run as a login shell.";
        },
        [FlagParameter]@{
            Keys        = @("--no-rc");
            Name        = "Do not load the .xonshrc files.";
            Description = "Do not load the .xonshrc files.";
        },
        [FlagParameter]@{
            Keys        = @("--no-script-cache");
            Name        = "Do not cache scripts as they are run.";
            Description = "Do not cache scripts as they are run.";
        },
        [ValueParameter]@{
            Keys        = @("--rc");
            Name        = "The xonshrc files to load";
            Description = "The xonshrc files to load";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--shell-type");
            Name        = "What kind of shell should be used.";
            Description = "What kind of shell should be used.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--timings");
            Name        = "Prints timing information before the prompt is shown.";
            Description = "Prints timing information before the prompt is shown.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version information and exit.";
            Description = "Show version information and exit.";
        }
    )
}
