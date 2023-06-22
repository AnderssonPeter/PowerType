# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://fishshell.com/";
    Keys        = @("fish");
    Name        = "fish";
    Description = "the friendly interactive shell";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--command", "-c");
            Name        = "evaluate the specified commands";
            Description = "evaluate the specified commands";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "enables debug output";
            Description = "enables debug output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug-output", "-o");
            Name        = "Specify a file path to receive the debug output";
            Description = "Specify a file path to receive the debug output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug-stack-frames", "-D");
            Name        = "specify  how  many  stack frames to display";
            Description = "specify  how  many  stack frames to display";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--features", "-f");
            Name        = "enables one or more feature flags";
            Description = "enables one or more feature flags";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--init-command", "-C");
            Name        = "evaluate the specified commands after reading  the configuration";
            Description = "evaluate the specified commands after reading  the configuration";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "specify that fish is to run in interactive mode";
            Description = "specify that fish is to run in interactive mode";
        },
        [FlagParameter]@{
            Keys        = @("--login", "-l");
            Name        = "specify that fish is to run as a login shell";
            Description = "specify that fish is to run as a login shell";
        },
        [FlagParameter]@{
            Keys        = @("--no-execute", "-n");
            Name        = "do not execute any commands";
            Description = "do not execute any commands";
        },
        [FlagParameter]@{
            Keys        = @("--print-debug-categories");
            Name        = "outputs the list of debug categories";
            Description = "outputs the list of debug categories";
        },
        [FlagParameter]@{
            Keys        = @("--print-rusage-self");
            Name        = "output stats from getrusage";
            Description = "output stats from getrusage";
        },
        [FlagParameter]@{
            Keys        = @("--private", "-P");
            Name        = "enables private mode";
            Description = "enables private mode";
        },
        [ValueParameter]@{
            Keys        = @("--profile", "-p");
            Name        = "output timing  information to the specified file";
            Description = "output timing  information to the specified file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "display version and exit";
            Description = "display version and exit";
        }
    )
}
