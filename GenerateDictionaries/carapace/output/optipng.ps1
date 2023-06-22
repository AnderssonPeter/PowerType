# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://optipng.sourceforge.net/";
    Keys        = @("optipng");
    Name        = "optipng";
    Description = "Optimize Portable Network Graphics files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--backup");
            Name        = "keep a backup of the modified files";
            Description = "keep a backup of the modified files";
        },
        [FlagParameter]@{
            Keys        = @("--clobber");
            Name        = "overwrite existing files";
            Description = "overwrite existing files";
        },
        [ValueParameter]@{
            Keys        = @("--dir");
            Name        = "write output file(s) to <directory>";
            Description = "write output file(s) to <directory>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--f");
            Name        = "PNG delta filters (0-5)";
            Description = "PNG delta filters (0-5)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fix");
            Name        = "enable error recovery";
            Description = "enable error recovery";
        },
        [FlagParameter]@{
            Keys        = @("--force");
            Name        = "enforce writing of a new output file";
            Description = "enforce writing of a new output file";
        },
        [FlagParameter]@{
            Keys        = @("--full");
            Name        = "produce a full report on IDAT (might reduce speed)";
            Description = "produce a full report on IDAT (might reduce speed)";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "show help";
            Description = "show help";
        },
        [ValueParameter]@{
            Keys        = @("--i");
            Name        = "PNG interlace type (0-1)";
            Description = "PNG interlace type (0-1)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--keep");
            Name        = "keep a backup of the modified files";
            Description = "keep a backup of the modified files";
        },
        [ValueParameter]@{
            Keys        = @("--log");
            Name        = "log messages to <file>";
            Description = "log messages to <file>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--nb");
            Name        = "no bit depth reduction";
            Description = "no bit depth reduction";
        },
        [FlagParameter]@{
            Keys        = @("--nc");
            Name        = "no color type reduction";
            Description = "no color type reduction";
        },
        [FlagParameter]@{
            Keys        = @("--np");
            Name        = "no palette reduction";
            Description = "no palette reduction";
        },
        [FlagParameter]@{
            Keys        = @("--nx");
            Name        = "no reductions";
            Description = "no reductions";
        },
        [FlagParameter]@{
            Keys        = @("--nz");
            Name        = "no IDAT recoding";
            Description = "no IDAT recoding";
        },
        [ValueParameter]@{
            Keys        = @("--o");
            Name        = "optimization level (0-7)";
            Description = "optimization level (0-7)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--out");
            Name        = "write output file to <file>";
            Description = "write output file to <file>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--preserve");
            Name        = "preserve file attributes if possible";
            Description = "preserve file attributes if possible";
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "run in quiet mode";
            Description = "run in quiet mode";
        },
        [FlagParameter]@{
            Keys        = @("--silent");
            Name        = "run in quiet mode";
            Description = "run in quiet mode";
        },
        [FlagParameter]@{
            Keys        = @("--simulate");
            Name        = "run in simulation mode";
            Description = "run in simulation mode";
        },
        [FlagParameter]@{
            Keys        = @("--snip");
            Name        = "cut one image out of multi-image or animation files";
            Description = "cut one image out of multi-image or animation files";
        },
        [ValueParameter]@{
            Keys        = @("--strip");
            Name        = "strip metadata objects (e.g. `"all`")";
            Description = "strip metadata objects (e.g. `"all`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--zc");
            Name        = "zlib compression levels (1-9)";
            Description = "zlib compression levels (1-9)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--zm");
            Name        = "zlib memory levels (1-9)";
            Description = "zlib memory levels (1-9)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--zs");
            Name        = "zlib compression strategies (0-3)";
            Description = "zlib compression strategies (0-3)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--zw");
            Name        = "zlib window size (256,512,1k,2k,4k,8k,16k,32k)";
            Description = "zlib window size (256,512,1k,2k,4k,8k,16k,32k)";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
