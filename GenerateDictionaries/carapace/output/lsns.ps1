# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://man7.org/linux/man-pages/man8/lsns.8.html";
    Keys        = @("lsns");
    Name        = "lsns";
    Description = "List system namespaces";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--json", "-J");
            Name        = "use JSON output format";
            Description = "use JSON output format";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "use list format output";
            Description = "use list format output";
        },
        [FlagParameter]@{
            Keys        = @("--noheadings", "-n");
            Name        = "don't print headings";
            Description = "don't print headings";
        },
        [FlagParameter]@{
            Keys        = @("--notruncate", "-u");
            Name        = "don't truncate text in columns";
            Description = "don't truncate text in columns";
        },
        [FlagParameter]@{
            Keys        = @("--nowrap", "-W");
            Name        = "don't use multi-line representation";
            Description = "don't use multi-line representation";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "define which output columns to use";
            Description = "define which output columns to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--output-all");
            Name        = "output all columns";
            Description = "output all columns";
        },
        [FlagParameter]@{
            Keys        = @("--raw", "-r");
            Name        = "use the raw output format";
            Description = "use the raw output format";
        },
        [ValueParameter]@{
            Keys        = @("--task", "-p");
            Name        = "print process namespaces";
            Description = "print process namespaces";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--type", "-t");
            Name        = "namespace type (mnt, net, ipc, user, pid, uts, cgroup, time)";
            Description = "namespace type (mnt, net, ipc, user, pid, uts, cgroup, time)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
