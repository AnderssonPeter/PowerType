# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/userdel";
    Keys        = @("userdel");
    Name        = "userdel";
    Description = "delete a user account and related files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "force removal of files,";
            Description = "force removal of files,";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--prefix", "-P");
            Name        = "prefix directory where are located the /etc/* files";
            Description = "prefix directory where are located the /etc/* files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--remove", "-r");
            Name        = "remove home directory and mail spool";
            Description = "remove home directory and mail spool";
        },
        [ValueParameter]@{
            Keys        = @("--root", "-R");
            Name        = "directory to chroot into";
            Description = "directory to chroot into";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
