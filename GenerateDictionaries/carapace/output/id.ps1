# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/id";
    Keys        = @("id");
    Name        = "id";
    Description = "Print user and group information";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "ignore, for compatibility with other versions";
            Description = "ignore, for compatibility with other versions";
        },
        [FlagParameter]@{
            Keys        = @("--context", "-Z");
            Name        = "print only the security context of the process";
            Description = "print only the security context of the process";
        },
        [FlagParameter]@{
            Keys        = @("--group", "-g");
            Name        = "print only the effective group ID";
            Description = "print only the effective group ID";
        },
        [FlagParameter]@{
            Keys        = @("--groups", "-G");
            Name        = "print all group IDs";
            Description = "print all group IDs";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--name", "-n");
            Name        = "print a name instead of a number, for -ugG";
            Description = "print a name instead of a number, for -ugG";
        },
        [FlagParameter]@{
            Keys        = @("--real", "-r");
            Name        = "print the real ID instead of the effective ID, with -ugG";
            Description = "print the real ID instead of the effective ID, with -ugG";
        },
        [FlagParameter]@{
            Keys        = @("--user", "-u");
            Name        = "print only the effective user ID";
            Description = "print only the effective user ID";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--zero", "-z");
            Name        = "delimit entries with NUL characters, not whitespace;";
            Description = "delimit entries with NUL characters, not whitespace;";
        }
    )
}
