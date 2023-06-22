# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://staticcheck.io/";
    Keys        = @("staticcheck");
    Name        = "staticcheck";
    Description = "The advanced Go linter";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--checks");
            Name        = "Comma-separated list of checks to enable";
            Description = "Comma-separated list of checks to enable";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug.cpuprofile");
            Name        = "Write CPU profile to file";
            Description = "Write CPU profile to file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug.measure-analyzers");
            Name        = "Write analysis measurements to file.";
            Description = "Write analysis measurements to file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug.memprofile");
            Name        = "Write memory profile to file";
            Description = "Write memory profile to file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug.no-compile-errors");
            Name        = "Don't print compile errors";
            Description = "Don't print compile errors";
        },
        [ValueParameter]@{
            Keys        = @("--debug.repeat-analyzers");
            Name        = "Run analyzers num times";
            Description = "Run analyzers num times";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug.unused-graph");
            Name        = "Write unused's object graph to file";
            Description = "Write unused's object graph to file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug.version");
            Name        = "Print detailed version information about this program";
            Description = "Print detailed version information about this program";
        },
        [ValueParameter]@{
            Keys        = @("--explain");
            Name        = "Print description of check";
            Description = "Print description of check";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fail");
            Name        = "Comma-separated list of checks that can cause a non-zero exit status.";
            Description = "Comma-separated list of checks that can cause a non-zero exit status.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--go");
            Name        = "Target Go version in the format '1.x' (default 1.15)";
            Description = "Target Go version in the format '1.x' (default 1.15)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-ignored");
            Name        = "Don't filter ignored problems";
            Description = "Don't filter ignored problems";
        },
        [ValueParameter]@{
            Keys        = @("--tags");
            Name        = "List of build tags";
            Description = "List of build tags";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tests");
            Name        = "Include tests";
            Description = "Include tests";
        },
        [FlagParameter]@{
            Keys        = @("--unused.whole-program");
            Name        = "Run unused in whole program mode";
            Description = "Run unused in whole program mode";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Print version and exit";
            Description = "Print version and exit";
        }
    )
}
