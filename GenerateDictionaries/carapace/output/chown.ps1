# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Chown";
    Keys        = @("chown");
    Name        = "chown";
    Description = "change file owner and group";
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
            Name        = "affect the referent of each symbolic link";
            Description = "affect the referent of each symbolic link";
        },
        [ValueParameter]@{
            Keys        = @("--from");
            Name        = "change the owner and/or group of each file only if its current owner and/or group match those specified here.";
            Description = "change the owner and/or group of each file only if its current owner and/or group match those specified here.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--no-dereference", "-h");
            Name        = "affect symbolic links instead of any referenced file";
            Description = "affect symbolic links instead of any referenced file";
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
            Keys        = @("--recursive", "-R");
            Name        = "operate on files and directories recursively";
            Description = "operate on files and directories recursively";
        },
        [ValueParameter]@{
            Keys        = @("--reference");
            Name        = "use RFILE's owner and group rather than specifying OWNER:GROUP values";
            Description = "use RFILE's owner and group rather than specifying OWNER:GROUP values";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--silent", "-f");
            Name        = "suppress most error messages";
            Description = "suppress most error messages";
            # Source = $?? # todo: Fix or remove this!
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
