# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/who";
    Keys        = @("who");
    Name        = "who";
    Description = "show who is logged on";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "same as -b -d --login -p -r -t -T -u";
            Description = "same as -b -d --login -p -r -t -T -u";
        },
        [FlagParameter]@{
            Keys        = @("--boot", "-b");
            Name        = "time of last system boot";
            Description = "time of last system boot";
        },
        [FlagParameter]@{
            Keys        = @("--count", "-q");
            Name        = "all login names and number of users logged on";
            Description = "all login names and number of users logged on";
        },
        [FlagParameter]@{
            Keys        = @("--dead", "-d");
            Name        = "print dead processes";
            Description = "print dead processes";
        },
        [FlagParameter]@{
            Keys        = @("--heading", "-H");
            Name        = "print line of column headings";
            Description = "print line of column headings";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--login", "-l");
            Name        = "print system login processes";
            Description = "print system login processes";
        },
        [FlagParameter]@{
            Keys        = @("--lookup");
            Name        = "attempt to canonicalize hostnames via DNS";
            Description = "attempt to canonicalize hostnames via DNS";
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "only hostname and user associated with stdin";
            Description = "only hostname and user associated with stdin";
        },
        [FlagParameter]@{
            Keys        = @("--mesg", "-T");
            Name        = "add user's message status as +, - or ?";
            Description = "add user's message status as +, - or ?";
        },
        [FlagParameter]@{
            Keys        = @("--message");
            Name        = "same as -T";
            Description = "same as -T";
        },
        [FlagParameter]@{
            Keys        = @("--process", "-p");
            Name        = "print active processes spawned by init";
            Description = "print active processes spawned by init";
        },
        [FlagParameter]@{
            Keys        = @("--runlevel", "-r");
            Name        = "print current runlevel";
            Description = "print current runlevel";
        },
        [FlagParameter]@{
            Keys        = @("--short", "-s");
            Name        = "print only name, line, and time (default)";
            Description = "print only name, line, and time (default)";
        },
        [FlagParameter]@{
            Keys        = @("--time", "-t");
            Name        = "print last system clock change";
            Description = "print last system clock change";
        },
        [FlagParameter]@{
            Keys        = @("--users", "-u");
            Name        = "list users logged in";
            Description = "list users logged in";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--writable", "-w");
            Name        = "same as -T";
            Description = "same as -T";
        }
    )
}
