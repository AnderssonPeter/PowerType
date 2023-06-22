# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamonacc");
    Name        = "clamonacc";
    Description = "an anti-virus on-access scanning daemon and clamd client";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--allmatch", "-z");
            Name        = "Continue scanning within file after finding a match.";
            Description = "Continue scanning within file after finding a match.";
        },
        [ValueParameter]@{
            Keys        = @("--config-file", "-c");
            Name        = "Read configuration from FILE";
            Description = "Read configuration from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--copy");
            Name        = "Copy infected files into DIRECTORY";
            Description = "Copy infected files into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-list", "-e");
            Name        = "Exclude directories from FILE";
            Description = "Exclude directories from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fdpass");
            Name        = "Pass filedescriptor to clamd (useful if clamd is running as a different user)";
            Description = "Pass filedescriptor to clamd (useful if clamd is running as a different user)";
        },
        [FlagParameter]@{
            Keys        = @("--foreground", "-F");
            Name        = "Output to foreground and do not daemonize";
            Description = "Output to foreground and do not daemonize";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [ValueParameter]@{
            Keys        = @("--log", "-l");
            Name        = "Save scanning output to FILE";
            Description = "Save scanning output to FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--move");
            Name        = "Move infected files into DIRECTORY";
            Description = "Move infected files into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ping", "-p");
            Name        = "]    Ping clamd up to [A] times at optional interval [I] until it responds.";
            Description = "]    Ping clamd up to [A] times at optional interval [I] until it responds.";
        },
        [FlagParameter]@{
            Keys        = @("--remove");
            Name        = "Remove infected files. Be careful!";
            Description = "Remove infected files. Be careful!";
        },
        [FlagParameter]@{
            Keys        = @("--stream");
            Name        = "Force streaming files to clamd (for debugging and unit testing)";
            Description = "Force streaming files to clamd (for debugging and unit testing)";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Be verbose";
            Description = "Be verbose";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print version number and exit";
            Description = "Print version number and exit";
        },
        [FlagParameter]@{
            Keys        = @("--wait", "-w");
            Name        = "Wait up to 30 seconds for clamd to start. Optionally use alongside --ping to set attempts [A] and interval [I] to check clamd.";
            Description = "Wait up to 30 seconds for clamd to start. Optionally use alongside --ping to set attempts [A] and interval [I] to check clamd.";
        },
        [ValueParameter]@{
            Keys        = @("--watch-list", "-W");
            Name        = "Watch directories from FILE";
            Description = "Watch directories from FILE";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
