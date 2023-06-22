# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/groupdel";
    Keys        = @("groupdel");
    Name        = "groupdel";
    Description = "delete a group";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "delete group even if it is the primary group of a user";
            Description = "delete group even if it is the primary group of a user";
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
        [ValueParameter]@{
            Keys        = @("--root", "-R");
            Name        = "directory to chroot into";
            Description = "directory to chroot into";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
