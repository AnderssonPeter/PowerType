# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/shred";
    Keys        = @("shred");
    Name        = "shred";
    Description = "overwrite a file to hide its contents, and optionally delete it";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--exact", "-x");
            Name        = "do not round file sizes up to the next full block;";
            Description = "do not round file sizes up to the next full block;";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "change permissions to allow writing if necessary";
            Description = "change permissions to allow writing if necessary";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--iterations", "-n");
            Name        = "overwrite N times instead of the default (3)";
            Description = "overwrite N times instead of the default (3)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--random-source");
            Name        = "get random bytes from FILE";
            Description = "get random bytes from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--remove");
            Name        = "like -u but give control on HOW to delete;  See below";
            Description = "like -u but give control on HOW to delete;  See below";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--size", "-s");
            Name        = "shred this many bytes (suffixes like K, M, G accepted)";
            Description = "shred this many bytes (suffixes like K, M, G accepted)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "deallocate and remove file after overwriting";
            Description = "deallocate and remove file after overwriting";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "show progress";
            Description = "show progress";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--zero", "-z");
            Name        = "add a final overwrite with zeros to hide shredding";
            Description = "add a final overwrite with zeros to hide shredding";
        }
    )
}
