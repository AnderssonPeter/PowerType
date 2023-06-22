# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/gunzip";
    Keys        = @("gunzip");
    Name        = "gunzip";
    Description = "Uncompress files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "force overwrite of output file and compress links";
            Description = "force overwrite of output file and compress links";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--keep", "-k");
            Name        = "keep (don't delete) input files";
            Description = "keep (don't delete) input files";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "list compressed file contents";
            Description = "list compressed file contents";
        },
        [FlagParameter]@{
            Keys        = @("--name", "-N");
            Name        = "save or restore the original name and timestamp";
            Description = "save or restore the original name and timestamp";
        },
        [FlagParameter]@{
            Keys        = @("--no-name", "-n");
            Name        = "do not save or restore the original name and timestamp";
            Description = "do not save or restore the original name and timestamp";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "suppress all warnings";
            Description = "suppress all warnings";
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-r");
            Name        = "operate recursively on directories";
            Description = "operate recursively on directories";
        },
        [FlagParameter]@{
            Keys        = @("--stdout", "-c");
            Name        = "write on standard output, keep original files unchanged";
            Description = "write on standard output, keep original files unchanged";
        },
        [ValueParameter]@{
            Keys        = @("--suffix", "-S");
            Name        = "use suffix SUF on compressed files";
            Description = "use suffix SUF on compressed files";
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
            Keys        = @("--version");
            Name        = "display version information and exit";
            Description = "display version information and exit";
        }
    )
}
