# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clambc");
    Name        = "clambc";
    Description = "Bytecode Analysis and Testing Tool";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Show debug";
            Description = "Show debug";
        },
        [FlagParameter]@{
            Keys        = @("--force-interpreter", "-f");
            Name        = "Force using the interpreter instead of the JIT";
            Description = "Force using the interpreter instead of the JIT";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [FlagParameter]@{
            Keys        = @("--info", "-i");
            Name        = "Print information about bytecode";
            Description = "Print information about bytecode";
        },
        [FlagParameter]@{
            Keys        = @("--input", "-r");
            Name        = "Input file to run the bytecode on";
            Description = "Input file to run the bytecode on";
        },
        [FlagParameter]@{
            Keys        = @("--no-trace-showsource", "-s");
            Name        = "Don't show source line during tracing";
            Description = "Don't show source line during tracing";
        },
        [FlagParameter]@{
            Keys        = @("--printbcir", "-c");
            Name        = "Print IR of bytecode signature";
            Description = "Print IR of bytecode signature";
        },
        [FlagParameter]@{
            Keys        = @("--printsrc", "-p");
            Name        = "Print bytecode source";
            Description = "Print bytecode source";
        },
        [ValueParameter]@{
            Keys        = @("--statistics");
            Name        = "Collect and print bytecode execution statistics";
            Description = "Collect and print bytecode execution statistics";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--trace", "-T");
            Name        = "Set bytecode trace level 0..7 (default 7)";
            Description = "Set bytecode trace level 0..7 (default 7)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--trust-bytecode", "-t");
            Name        = "Trust loaded bytecode (default yes)";
            Description = "Trust loaded bytecode (default yes)";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version";
            Description = "Show version";
        }
    )
}
