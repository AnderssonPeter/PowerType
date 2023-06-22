# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/google/brotli";
    Keys        = @("brotli");
    Name        = "brotli";
    Description = "compress or decompress files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-0");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-1");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-2");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-3");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-5");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-7");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-8");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("-9");
            Name        = "compression level";
            Description = "compression level";
        },
        [FlagParameter]@{
            Keys        = @("--best", "-Z");
            Name        = "use best compression level (11) (default)";
            Description = "use best compression level (11) (default)";
        },
        [FlagParameter]@{
            Keys        = @("--decompress", "-d");
            Name        = "decompress";
            Description = "decompress";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "force output file overwrite";
            Description = "force output file overwrite";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--keep", "-k");
            Name        = "keep source file(s) (default)";
            Description = "keep source file(s) (default)";
        },
        [ValueParameter]@{
            Keys        = @("--large_window");
            Name        = "use incompatible large-window brotli";
            Description = "use incompatible large-window brotli";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--lgwin", "-w");
            Name        = "set LZ77 window size";
            Description = "set LZ77 window size";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-copy-stat", "-n");
            Name        = "do not copy source file(s) attributes";
            Description = "do not copy source file(s) attributes";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "output file (only if 1 input file)";
            Description = "output file (only if 1 input file)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--quality", "-q");
            Name        = "compression level (0-11)";
            Description = "compression level (0-11)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rm", "-j");
            Name        = "remove source file(s)";
            Description = "remove source file(s)";
        },
        [FlagParameter]@{
            Keys        = @("--stdout", "-c");
            Name        = "write on standard output";
            Description = "write on standard output";
        },
        [ValueParameter]@{
            Keys        = @("--suffix", "-S");
            Name        = "output file suffix (default:'.br')";
            Description = "output file suffix (default:'.br')";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--test", "-t");
            Name        = "test compressed file integrity";
            Description = "test compressed file integrity";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbose mode";
            Description = "verbose mode";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version and exit";
            Description = "display version and exit";
        }
    )
}
