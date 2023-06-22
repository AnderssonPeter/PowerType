# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://elv.sh/";
    Keys        = @("elvish");
    Name        = "elvish";
    Description = "expressive programming language and a versatile interactive shell";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--bin");
            Name        = "path to the elvish binary";
            Description = "path to the elvish binary";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--buildinfo");
            Name        = "show build info and quit";
            Description = "show build info and quit";
        },
        [FlagParameter]@{
            Keys        = @("-c");
            Name        = "take first argument as code to execute";
            Description = "take first argument as code to execute";
        },
        [FlagParameter]@{
            Keys        = @("--compileonly");
            Name        = "Parse/Compile but do not execute";
            Description = "Parse/Compile but do not execute";
        },
        [ValueParameter]@{
            Keys        = @("--cpuprofile");
            Name        = "write cpu profile to file";
            Description = "write cpu profile to file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--daemon");
            Name        = "run daemon instead of shell";
            Description = "run daemon instead of shell";
        },
        [ValueParameter]@{
            Keys        = @("--db");
            Name        = "path to the database";
            Description = "path to the database";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "show usage help and quit";
            Description = "show usage help and quit";
        },
        [FlagParameter]@{
            Keys        = @("--json");
            Name        = "show output in JSON. Useful with --buildinfo.";
            Description = "show output in JSON. Useful with --buildinfo.";
        },
        [ValueParameter]@{
            Keys        = @("--log");
            Name        = "a file to write debug log to";
            Description = "a file to write debug log to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--logprefix");
            Name        = "the prefix for the daemon log file";
            Description = "the prefix for the daemon log file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--norc");
            Name        = "run elvish without invoking rc.elv";
            Description = "run elvish without invoking rc.elv";
        },
        [ValueParameter]@{
            Keys        = @("--port");
            Name        = "the port of the web backend (default 3171)";
            Description = "the port of the web backend (default 3171)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-deprecations");
            Name        = "whether to show deprecations";
            Description = "whether to show deprecations";
        },
        [ValueParameter]@{
            Keys        = @("--sock");
            Name        = "path to the daemon socket";
            Description = "path to the daemon socket";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show version and quit";
            Description = "show version and quit";
        },
        [FlagParameter]@{
            Keys        = @("--web");
            Name        = "run backend of web interface";
            Description = "run backend of web interface";
        }
    )
}
