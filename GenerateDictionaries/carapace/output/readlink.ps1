# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/readlink";
    Keys        = @("readlink");
    Name        = "readlink";
    Description = "print resolved symbolic links or canonical file names";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--canonicalize", "-f");
            Name        = "canonicalize by following every symlink in";
            Description = "canonicalize by following every symlink in";
        },
        [FlagParameter]@{
            Keys        = @("--canonicalize-existing", "-e");
            Name        = "canonicalize by following every symlink in";
            Description = "canonicalize by following every symlink in";
        },
        [FlagParameter]@{
            Keys        = @("--canonicalize-missing", "-m");
            Name        = "canonicalize by following every symlink in";
            Description = "canonicalize by following every symlink in";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--no-newline", "-n");
            Name        = "do not output the trailing delimiter";
            Description = "do not output the trailing delimiter";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-s");
            Name        = "suppress most error messages (on by default)";
            Description = "suppress most error messages (on by default)";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "report error messages";
            Description = "report error messages";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--zero", "-z");
            Name        = "end each output line with NUL, not newline";
            Description = "end each output line with NUL, not newline";
        }
    )
}
