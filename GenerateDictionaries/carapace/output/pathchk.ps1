# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/pathchk";
    Keys        = @("pathchk");
    Name        = "pathchk";
    Description = "check whether file names are valid or portable";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-P");
            Name        = "check for empty names and leading `"-`"";
            Description = "check for empty names and leading `"-`"";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "check for most POSIX systems";
            Description = "check for most POSIX systems";
        },
        [FlagParameter]@{
            Keys        = @("--portability");
            Name        = "check for all POSIX systems (equivalent to -p -P)";
            Description = "check for all POSIX systems (equivalent to -p -P)";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
