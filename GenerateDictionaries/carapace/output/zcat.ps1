# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/zcat";
    Keys        = @("zcat");
    Name        = "zcat";
    Description = "compress or expand files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "force; read compressed data even from a terminal";
            Description = "force; read compressed data even from a terminal";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "list compressed file contents";
            Description = "list compressed file contents";
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
