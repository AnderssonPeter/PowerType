# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/denilsonsa/prettyping";
    Keys        = @("prettyping");
    Name        = "prettyping";
    Description = "This script is a wrapper around the system's `"ping`" tool";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "Shortcut for: --pingbin ping6";
            Description = "Shortcut for: --pingbin ping6";
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "Record route mode is not allowed in prettyping.";
            Description = "Record route mode is not allowed in prettyping.";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "Audible ping is not implemented yet.";
            Description = "Audible ping is not implemented yet.";
        },
        [ValueParameter]@{
            Keys        = @("--awkbin");
            Name        = "Override the awk interpreter.";
            Description = "Override the awk interpreter.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--color");
            Name        = "Enable color output.";
            Description = "Enable color output.";
        },
        [ValueParameter]@{
            Keys        = @("--columns");
            Name        = "Override auto-detection of terminal dimensions.";
            Description = "Override auto-detection of terminal dimensions.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "Flood mode is not allowed in prettyping.";
            Description = "Flood mode is not allowed in prettyping.";
        },
        [ValueParameter]@{
            Keys        = @("--last");
            Name        = "Use the last `"n`" pings at the statistics line.";
            Description = "Use the last `"n`" pings at the statistics line.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--legend");
            Name        = "Enable/disable the latency legend.";
            Description = "Enable/disable the latency legend.";
        },
        [ValueParameter]@{
            Keys        = @("--lines");
            Name        = "Override auto-detection of terminal dimensions.";
            Description = "Override auto-detection of terminal dimensions.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--multicolor");
            Name        = "Enable multi-color unicode output.";
            Description = "Enable multi-color unicode output.";
        },
        [FlagParameter]@{
            Keys        = @("--nocolor");
            Name        = "Disable color output.";
            Description = "Disable color output.";
        },
        [FlagParameter]@{
            Keys        = @("--nolegend");
            Name        = "Enable/disable the latency legend.";
            Description = "Enable/disable the latency legend.";
        },
        [FlagParameter]@{
            Keys        = @("--nomulticolor");
            Name        = "Disable multi-color unicode output.";
            Description = "Disable multi-color unicode output.";
        },
        [FlagParameter]@{
            Keys        = @("--noterminal");
            Name        = "Force the output designed to a terminal.";
            Description = "Force the output designed to a terminal.";
        },
        [FlagParameter]@{
            Keys        = @("--nounicode");
            Name        = "Disable unicode characters.";
            Description = "Disable unicode characters.";
        },
        [ValueParameter]@{
            Keys        = @("--pingbin");
            Name        = "Override the ping tool.";
            Description = "Override the ping tool.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "Quiet output is not allowed in prettyping.";
            Description = "Quiet output is not allowed in prettyping.";
        },
        [ValueParameter]@{
            Keys        = @("--rttmax");
            Name        = "Maximum RTT represented in the unicode graph.";
            Description = "Maximum RTT represented in the unicode graph.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--rttmin");
            Name        = "Minimum RTT represented in the unicode graph.";
            Description = "Minimum RTT represented in the unicode graph.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--terminal");
            Name        = "Force the output designed to a terminal.";
            Description = "Force the output designed to a terminal.";
        },
        [FlagParameter]@{
            Keys        = @("--unicode");
            Name        = "Enable unicode characters.";
            Description = "Enable unicode characters.";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Verbose output seems to be the default mode in ping.";
            Description = "Verbose output seems to be the default mode in ping.";
        }
    )
}
