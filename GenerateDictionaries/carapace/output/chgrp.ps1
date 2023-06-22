# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Chgrp";
    Keys        = @("chgrp");
    Name        = "chgrp";
    Description = "change group ownership";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-H");
            Name        = "if a command line argument is a symbolic link to a directory, traverse it";
            Description = "if a command line argument is a symbolic link to a directory, traverse it";
        },
        [FlagParameter]@{
            Keys        = @("-L");
            Name        = "traverse every symbolic link to a directory encountered";
            Description = "traverse every symbolic link to a directory encountered";
        },
        [FlagParameter]@{
            Keys        = @("-P");
            Name        = "do not traverse any symbolic links (default)";
            Description = "do not traverse any symbolic links (default)";
        },
        [FlagParameter]@{
            Keys        = @("--changes", "-c");
            Name        = "like verbose but report only when a change is made";
            Description = "like verbose but report only when a change is made";
        },
        [FlagParameter]@{
            Keys        = @("--dereference");
            Name        = "affect the referent of each symbolic link (this is the default), rather than the symbolic link itself";
            Description = "affect the referent of each symbolic link (this is the default), rather than the symbolic link itself";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--no-dereference", "-h");
            Name        = "affect symbolic links instead of any referenced file (useful only on systems that can change the ownership of a symlink)";
            Description = "affect symbolic links instead of any referenced file (useful only on systems that can change the ownership of a symlink)";
        },
        [FlagParameter]@{
            Keys        = @("--no-preserve-root");
            Name        = "do not treat '/' specially (the default)";
            Description = "do not treat '/' specially (the default)";
        },
        [FlagParameter]@{
            Keys        = @("--preserve-root");
            Name        = "fail to operate recursively on '/'";
            Description = "fail to operate recursively on '/'";
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "suppress most error messages";
            Description = "suppress most error messages";
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-R");
            Name        = "operate on files and directories recursively";
            Description = "operate on files and directories recursively";
        },
        [ValueParameter]@{
            Keys        = @("--reference");
            Name        = "use RFILE's group rather than specifying a GROUP value";
            Description = "use RFILE's group rather than specifying a GROUP value";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-f");
            Name        = "suppress most error messages";
            Description = "suppress most error messages";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "output a diagnostic for every file processed";
            Description = "output a diagnostic for every file processed";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
