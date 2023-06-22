# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamdscan");
    Name        = "clamdscan";
    Description = "scan files and directories for viruses using Clam AntiVirus Daemon";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--allmatch", "-z");
            Name        = "Continue scanning within file after finding a match.";
            Description = "Continue scanning within file after finding a match.";
        },
        [ValueParameter]@{
            Keys        = @("--config-file");
            Name        = "Read configuration from FILE.";
            Description = "Read configuration from FILE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--copy");
            Name        = "Copy infected files into DIRECTORY";
            Description = "Copy infected files into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fdpass");
            Name        = "Pass filedescriptor to clamd (useful if clamd is running as a different user)";
            Description = "Pass filedescriptor to clamd (useful if clamd is running as a different user)";
        },
        [ValueParameter]@{
            Keys        = @("--file-list", "-f");
            Name        = "Scan files from FILE";
            Description = "Scan files from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [FlagParameter]@{
            Keys        = @("--infected", "-i");
            Name        = "Only print infected files";
            Description = "Only print infected files";
        },
        [ValueParameter]@{
            Keys        = @("--log", "-l");
            Name        = "Save scan report in FILE";
            Description = "Save scan report in FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--move");
            Name        = "Move infected files into DIRECTORY";
            Description = "Move infected files into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--multiscan", "-m");
            Name        = "Force MULTISCAN mode";
            Description = "Force MULTISCAN mode";
        },
        [FlagParameter]@{
            Keys        = @("--no-summary");
            Name        = "Disable summary at end of scanning";
            Description = "Disable summary at end of scanning";
        },
        [ValueParameter]@{
            Keys        = @("--ping", "-p");
            Name        = "Ping clamd up to [A] times at optional interval [I] until it responds.";
            Description = "Ping clamd up to [A] times at optional interval [I] until it responds.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "Be quiet, only output error messages";
            Description = "Be quiet, only output error messages";
        },
        [FlagParameter]@{
            Keys        = @("--reload");
            Name        = "Request clamd to reload virus database";
            Description = "Request clamd to reload virus database";
        },
        [FlagParameter]@{
            Keys        = @("--remove");
            Name        = "Remove infected files. Be careful!";
            Description = "Remove infected files. Be careful!";
        },
        [FlagParameter]@{
            Keys        = @("--stdout");
            Name        = "Write to stdout instead of stderr. Does not affect 'debug' messages.";
            Description = "Write to stdout instead of stderr. Does not affect 'debug' messages.";
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
        }
    )
}
