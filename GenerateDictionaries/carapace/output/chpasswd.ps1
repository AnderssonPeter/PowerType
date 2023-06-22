# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/chpasswd";
    Keys        = @("chpasswd");
    Name        = "chpasswd";
    Description = "update passwords in batch mode";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--crypt-method", "-c");
            Name        = "the crypt method";
            Description = "the crypt method";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--encrypted", "-e");
            Name        = "supplied passwords are encrypted";
            Description = "supplied passwords are encrypted";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help message and exit";
            Description = "display this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--md5", "-m");
            Name        = "encrypt the clear text password using the MD5 algorithm";
            Description = "encrypt the clear text password using the MD5 algorithm";
        },
        [ValueParameter]@{
            Keys        = @("--root", "-R");
            Name        = "directory to chroot into";
            Description = "directory to chroot into";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sha-rounds", "-s");
            Name        = "number of rounds for the SHA or BCRYPT crypt algorithms";
            Description = "number of rounds for the SHA or BCRYPT crypt algorithms";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
