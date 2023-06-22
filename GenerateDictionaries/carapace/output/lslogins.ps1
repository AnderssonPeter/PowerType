# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://man7.org/linux/man-pages/man1/lslogins.1.html";
    Keys        = @("lslogins");
    Name        = "lslogins";
    Description = "Display information about known users in the system";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--acc-expiration", "-a");
            Name        = "display info about passwords expiration";
            Description = "display info about passwords expiration";
        },
        [ValueParameter]@{
            Keys        = @("--btmp-file");
            Name        = "set an alternate path for btmp";
            Description = "set an alternate path for btmp";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--colon-separate", "-c");
            Name        = "display data in a format similar to /etc/passwd";
            Description = "display data in a format similar to /etc/passwd";
        },
        [FlagParameter]@{
            Keys        = @("--context", "-Z");
            Name        = "display SELinux contexts";
            Description = "display SELinux contexts";
        },
        [FlagParameter]@{
            Keys        = @("--export", "-e");
            Name        = "display in an export-able output format";
            Description = "display in an export-able output format";
        },
        [FlagParameter]@{
            Keys        = @("--failed", "-f");
            Name        = "display data about the users' last failed logins";
            Description = "display data about the users' last failed logins";
        },
        [ValueParameter]@{
            Keys        = @("--groups", "-g");
            Name        = "display users belonging to a group in <groups>";
            Description = "display users belonging to a group in <groups>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--last", "-L");
            Name        = "show info about the users' last login sessions";
            Description = "show info about the users' last login sessions";
        },
        [ValueParameter]@{
            Keys        = @("--lastlog");
            Name        = "set an alternate path for lastlog";
            Description = "set an alternate path for lastlog";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--logins", "-l");
            Name        = "display only users from <logins>";
            Description = "display only users from <logins>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--newline", "-n");
            Name        = "display each piece of information on a new line";
            Description = "display each piece of information on a new line";
        },
        [FlagParameter]@{
            Keys        = @("--noheadings");
            Name        = "don't print headings";
            Description = "don't print headings";
        },
        [FlagParameter]@{
            Keys        = @("--notruncate");
            Name        = "don't truncate output";
            Description = "don't truncate output";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "define the columns to output";
            Description = "define the columns to output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--output-all");
            Name        = "output all columns";
            Description = "output all columns";
        },
        [FlagParameter]@{
            Keys        = @("--print0", "-z");
            Name        = "delimit user entries with a nul character";
            Description = "delimit user entries with a nul character";
        },
        [FlagParameter]@{
            Keys        = @("--pwd", "-p");
            Name        = "display information related to login by password.";
            Description = "display information related to login by password.";
        },
        [FlagParameter]@{
            Keys        = @("--raw", "-r");
            Name        = "display in raw mode";
            Description = "display in raw mode";
        },
        [FlagParameter]@{
            Keys        = @("--supp-groups", "-G");
            Name        = "display information about groups";
            Description = "display information about groups";
        },
        [FlagParameter]@{
            Keys        = @("--system-accs", "-s");
            Name        = "display system accounts";
            Description = "display system accounts";
        },
        [ValueParameter]@{
            Keys        = @("--time-format");
            Name        = "display dates in short, full or iso format";
            Description = "display dates in short, full or iso format";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--user-accs", "-u");
            Name        = "display user accounts";
            Description = "display user accounts";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        },
        [ValueParameter]@{
            Keys        = @("--wtmp-file");
            Name        = "set an alternate path for wtmp";
            Description = "set an alternate path for wtmp";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
