# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://julialang.org/";
    Keys        = @("julia");
    Name        = "julia";
    Description = "high-level, high-performance dynamic programming language for technical computing";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--banner");
            Name        = "Enable or disable startup banner";
            Description = "Enable or disable startup banner";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bug-report");
            Name        = "Launch a bug report session.";
            Description = "Launch a bug report session.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--check-bounds");
            Name        = "Emit bounds checks always, never, or respect @inbounds declarations";
            Description = "Emit bounds checks always, never, or respect @inbounds declarations";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--code-coverage");
            Name        = "Count executions of source lines";
            Description = "Count executions of source lines";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "Enable or disable color text";
            Description = "Enable or disable color text";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--compiled-modules");
            Name        = "Enable or disable incremental precompilation of modules";
            Description = "Enable or disable incremental precompilation of modules";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--depwarn");
            Name        = "Enable or disable syntax and method deprecation warnings (`"error`" turns warnings into errors)";
            Description = "Enable or disable syntax and method deprecation warnings (`"error`" turns warnings into errors)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--eval", "-e");
            Name        = "Evaluate <expr>";
            Description = "Evaluate <expr>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--handle-signals");
            Name        = "Enable or disable Julia's default signal handlers";
            Description = "Enable or disable Julia's default signal handlers";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this message (--help-hidden for more)";
            Description = "Print this message (--help-hidden for more)";
        },
        [FlagParameter]@{
            Keys        = @("--help-hidden");
            Name        = "Uncommon options not shown by ``-h``";
            Description = "Uncommon options not shown by ``-h``";
        },
        [ValueParameter]@{
            Keys        = @("--history-file");
            Name        = "Load or save history";
            Description = "Load or save history";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--home", "-H");
            Name        = "Set location of ``julia`` executable";
            Description = "Set location of ``julia`` executable";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "Interactive mode; REPL runs and isinteractive() is true";
            Description = "Interactive mode; REPL runs and isinteractive() is true";
        },
        [ValueParameter]@{
            Keys        = @("--inline");
            Name        = "Control whether inlining is permitted, including overriding @inline declarations";
            Description = "Control whether inlining is permitted, including overriding @inline declarations";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--load", "-L");
            Name        = "Load <file> immediately on all processors";
            Description = "Load <file> immediately on all processors";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--machine-file");
            Name        = "Run processes on hosts listed in <file>";
            Description = "Run processes on hosts listed in <file>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--math-mode");
            Name        = "Disallow or enable unsafe floating point optimizations";
            Description = "Disallow or enable unsafe floating point optimizations";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--optimize", "-O");
            Name        = "Set the optimization level";
            Description = "Set the optimization level";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--print", "-E");
            Name        = "Evaluate <expr> and display the result";
            Description = "Evaluate <expr> and display the result";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--procs", "-p");
            Name        = "Integer value N launches N additional local worker processes";
            Description = "Integer value N launches N additional local worker processes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--project");
            Name        = "Set <dir> as the home project/environment";
            Description = "Set <dir> as the home project/environment";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Quiet startup: no banner, suppress REPL warnings";
            Description = "Quiet startup: no banner, suppress REPL warnings";
        },
        [ValueParameter]@{
            Keys        = @("--startup-file");
            Name        = "Load ``~/.julia/config/startup.jl``";
            Description = "Load ``~/.julia/config/startup.jl``";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sysimage", "-J");
            Name        = "Start up with the given system image file";
            Description = "Start up with the given system image file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sysimage-native-code");
            Name        = "Use native code from system image if available";
            Description = "Use native code from system image if available";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--threads", "-t");
            Name        = "Enable N threads";
            Description = "Enable N threads";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--track-allocation");
            Name        = "Count bytes allocated by each source line";
            Description = "Count bytes allocated by each source line";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display version information";
            Description = "Display version information";
        },
        [ValueParameter]@{
            Keys        = @("--warn-overwrite");
            Name        = "Enable or disable method overwrite warnings";
            Description = "Enable or disable method overwrite warnings";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--warn-scope");
            Name        = "Enable or disable warning for ambiguous top-level scope";
            Description = "Enable or disable warning for ambiguous top-level scope";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
