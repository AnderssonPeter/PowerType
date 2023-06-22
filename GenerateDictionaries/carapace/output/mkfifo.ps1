# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/3/mkfifo";
    Keys        = @("mkfifo");
    Name        = "mkfifo";
    Description = "make FIFOs (named pipes)";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-Z");
            Name        = "set the SELinux security context to default type";
            Description = "set the SELinux security context to default type";
        },
        [ValueParameter]@{
            Keys        = @("--context");
            Name        = "like -Z, or if CTX is specified then set the SELinux";
            Description = "like -Z, or if CTX is specified then set the SELinux";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--mode", "-m");
            Name        = "set file permission bits to MODE, not a=rw - umask";
            Description = "set file permission bits to MODE, not a=rw - umask";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
