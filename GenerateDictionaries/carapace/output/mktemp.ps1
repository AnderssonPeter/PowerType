# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/mktemp";
    Keys        = @("mktemp");
    Name        = "mktemp";
    Description = "create a temporary file or directory";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--directory", "-d");
            Name        = "create a directory, not a file";
            Description = "create a directory, not a file";
        },
        [FlagParameter]@{
            Keys        = @("--dry-run", "-u");
            Name        = "do not create anything; merely print a name (unsafe)";
            Description = "do not create anything; merely print a name (unsafe)";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "suppress diagnostics about file/dir-creation failure";
            Description = "suppress diagnostics about file/dir-creation failure";
        },
        [ValueParameter]@{
            Keys        = @("--suffix");
            Name        = "append SUFF to TEMPLATE";
            Description = "append SUFF to TEMPLATE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-t");
            Name        = "interpret TEMPLATE as a single file name component";
            Description = "interpret TEMPLATE as a single file name component";
        },
        [ValueParameter]@{
            Keys        = @("--tmpdir", "-p");
            Name        = "interpret TEMPLATE relative to DIR";
            Description = "interpret TEMPLATE relative to DIR";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
