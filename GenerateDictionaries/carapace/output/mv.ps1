# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/mv";
    Keys        = @("mv");
    Name        = "mv";
    Description = "move (rename) files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "like --backup but does not accept an argument";
            Description = "like --backup but does not accept an argument";
        },
        [ValueParameter]@{
            Keys        = @("--backup");
            Name        = "make a backup of each existing destination file";
            Description = "make a backup of each existing destination file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--context", "-Z");
            Name        = "set SELinux security context of destination file to default type";
            Description = "set SELinux security context of destination file to default type";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "do not prompt before overwriting";
            Description = "do not prompt before overwriting";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "prompt before overwrite";
            Description = "prompt before overwrite";
        },
        [FlagParameter]@{
            Keys        = @("--no-clobber", "-n");
            Name        = "do not overwrite an existing file";
            Description = "do not overwrite an existing file";
        },
        [FlagParameter]@{
            Keys        = @("--no-target-directory", "-T");
            Name        = "treat DEST as a normal file";
            Description = "treat DEST as a normal file";
        },
        [FlagParameter]@{
            Keys        = @("--strip-trailing-slashes");
            Name        = "remove any trailing slashes from each SOURCE argument";
            Description = "remove any trailing slashes from each SOURCE argument";
        },
        [ValueParameter]@{
            Keys        = @("--suffix", "-S");
            Name        = "override the usual backup suffix";
            Description = "override the usual backup suffix";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target-directory", "-t");
            Name        = "move all SOURCE arguments into DIRECTORY";
            Description = "move all SOURCE arguments into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update", "-u");
            Name        = "move only when the SOURCE file is newer than the destination file or when the destination file is missing";
            Description = "move only when the SOURCE file is newer than the destination file or when the destination file is missing";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "explain what is being done";
            Description = "explain what is being done";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
