# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/xz";
    Keys        = @("xzcat");
    Name        = "xzcat";
    Description = "Compress or decompress .xz and .lzma files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-0");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-1");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-2");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-3");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-5");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-7");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-8");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("-9");
            Name        = "compression preset";
            Description = "compression preset";
        },
        [FlagParameter]@{
            Keys        = @("--compress", "-z");
            Name        = "force compression";
            Description = "force compression";
        },
        [FlagParameter]@{
            Keys        = @("--decompress", "-d");
            Name        = "force decompression";
            Description = "force decompression";
        },
        [FlagParameter]@{
            Keys        = @("--extreme", "-e");
            Name        = "try to improve compression ratio by using more CPU time;";
            Description = "try to improve compression ratio by using more CPU time;";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "force overwrite of output file and (de)compress links";
            Description = "force overwrite of output file and (de)compress links";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this short help and exit";
            Description = "display this short help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--keep", "-k");
            Name        = "keep (don't delete) input files";
            Description = "keep (don't delete) input files";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "list information about .xz files";
            Description = "list information about .xz files";
        },
        [FlagParameter]@{
            Keys        = @("--long-help", "-H");
            Name        = "display the long help (lists also the advanced options)";
            Description = "display the long help (lists also the advanced options)";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "suppress warnings; specify twice to suppress errors too";
            Description = "suppress warnings; specify twice to suppress errors too";
        },
        [FlagParameter]@{
            Keys        = @("--stdout", "-c");
            Name        = "write to standard output and don't delete input files";
            Description = "write to standard output and don't delete input files";
        },
        [FlagParameter]@{
            Keys        = @("--test", "-t");
            Name        = "test compressed file integrity";
            Description = "test compressed file integrity";
        },
        [ValueParameter]@{
            Keys        = @("--threads", "-T");
            Name        = "use at most NUM threads; the default is 1; set to 0";
            Description = "use at most NUM threads; the default is 1; set to 0";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "be verbose; specify twice for even more verbose";
            Description = "be verbose; specify twice for even more verbose";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display the version number and exit";
            Description = "display the version number and exit";
        }
    )
}
