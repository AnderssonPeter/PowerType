# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/gokcehan/lf";
    Keys        = @("lf");
    Name        = "lf";
    Description = "terminal file manager";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--command");
            Name        = "command to execute on client initialization";
            Description = "command to execute on client initialization";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config");
            Name        = "path to the config file";
            Description = "path to the config file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cpuprofile");
            Name        = "path to the file to write the CPU profile";
            Description = "path to the file to write the CPU profile";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--doc");
            Name        = "show documentation";
            Description = "show documentation";
        },
        [ValueParameter]@{
            Keys        = @("--last-dir-path");
            Name        = "path to the file to write the last dir on exit (to use for cd)";
            Description = "path to the file to write the last dir on exit (to use for cd)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--memprofile");
            Name        = "path to the file to write the memory profile";
            Description = "path to the file to write the memory profile";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--remote");
            Name        = "send remote command to server";
            Description = "send remote command to server";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--selection-path");
            Name        = "path to the file to write selected files on open";
            Description = "path to the file to write selected files on open";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--server");
            Name        = "start server (automatic)";
            Description = "start server (automatic)";
        },
        [FlagParameter]@{
            Keys        = @("--single");
            Name        = "start a client without server";
            Description = "start a client without server";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show version";
            Description = "show version";
        }
    )
}
