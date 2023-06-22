# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/ln";
    Keys        = @("ln");
    Name        = "ln";
    Description = "make links between files";
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
            Keys        = @("--directory", "-d");
            Name        = "allow the superuser to attempt to hard link directories";
            Description = "allow the superuser to attempt to hard link directories";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "remove existing destination files";
            Description = "remove existing destination files";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "prompt whether to remove destinations";
            Description = "prompt whether to remove destinations";
        },
        [FlagParameter]@{
            Keys        = @("--logical", "-L");
            Name        = "dereference TARGETs that are symbolic links";
            Description = "dereference TARGETs that are symbolic links";
        },
        [FlagParameter]@{
            Keys        = @("--no-dereference", "-n");
            Name        = "treat LINK_NAME as a normal file if it is a symbolic link to a directory";
            Description = "treat LINK_NAME as a normal file if it is a symbolic link to a directory";
        },
        [FlagParameter]@{
            Keys        = @("--no-target-directory", "-T");
            Name        = "treat LINK_NAME as a normal file always";
            Description = "treat LINK_NAME as a normal file always";
        },
        [FlagParameter]@{
            Keys        = @("--physical", "-P");
            Name        = "make hard links directly to symbolic links";
            Description = "make hard links directly to symbolic links";
        },
        [FlagParameter]@{
            Keys        = @("--relative", "-r");
            Name        = "create symbolic links relative to link location";
            Description = "create symbolic links relative to link location";
        },
        [ValueParameter]@{
            Keys        = @("--suffix", "-S");
            Name        = "override the usual backup suffix";
            Description = "override the usual backup suffix";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--symbolic", "-s");
            Name        = "make symbolic links instead of hard links";
            Description = "make symbolic links instead of hard links";
        },
        [ValueParameter]@{
            Keys        = @("--target-directory", "-t");
            Name        = "specify the DIRECTORY in which to create the links";
            Description = "specify the DIRECTORY in which to create the links";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "print name of each linked file";
            Description = "print name of each linked file";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
