# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/sharkdp/fd";
    Keys        = @("fd");
    Name        = "fd";
    Description = "find entries in the filesystem";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--absolute-path", "-a");
            Name        = "Show absolute instead of relative paths";
            Description = "Show absolute instead of relative paths";
        },
        [FlagParameter]@{
            Keys        = @("--case-sensitive", "-s");
            Name        = "Case-sensitive search (default: smart case)";
            Description = "Case-sensitive search (default: smart case)";
        },
        [ValueParameter]@{
            Keys        = @("--changed-before");
            Name        = "Filter by file modification time (older than)";
            Description = "Filter by file modification time (older than)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--changed-within");
            Name        = "Filter by file modification time (newer than)";
            Description = "Filter by file modification time (newer than)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--color", "-c");
            Name        = "When to use colors";
            Description = "When to use colors";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude", "-E");
            Name        = "Exclude entries that match the given glob pattern";
            Description = "Exclude entries that match the given glob pattern";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exec", "-x");
            Name        = "Execute a command for each search result";
            Description = "Execute a command for each search result";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exec-batch", "-X");
            Name        = "Execute a command with all search results at once";
            Description = "Execute a command with all search results at once";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extension", "-e");
            Name        = "Filter by file extension";
            Description = "Filter by file extension";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--follow", "-L");
            Name        = "Follow symbolic links";
            Description = "Follow symbolic links";
        },
        [FlagParameter]@{
            Keys        = @("--full-path", "-p");
            Name        = "Search full path (default: file-/dirname only)";
            Description = "Search full path (default: file-/dirname only)";
        },
        [FlagParameter]@{
            Keys        = @("--glob", "-g");
            Name        = "Glob-based search (default: regular expression)";
            Description = "Glob-based search (default: regular expression)";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [FlagParameter]@{
            Keys        = @("--hidden", "-H");
            Name        = "Search hidden files and directories";
            Description = "Search hidden files and directories";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-i");
            Name        = "Case-insensitive search (default: smart case)";
            Description = "Case-insensitive search (default: smart case)";
        },
        [FlagParameter]@{
            Keys        = @("--list-details", "-l");
            Name        = "Use a long listing format with file metadata";
            Description = "Use a long listing format with file metadata";
        },
        [ValueParameter]@{
            Keys        = @("--max-depth", "-d");
            Name        = "Set maximum search depth (default: none)";
            Description = "Set maximum search depth (default: none)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore", "-I");
            Name        = "Do not respect .(git|fd)ignore files";
            Description = "Do not respect .(git|fd)ignore files";
        },
        [ValueParameter]@{
            Keys        = @("--owner", "-o");
            Name        = "Filter by owning user and/or group";
            Description = "Filter by owning user and/or group";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print0", "-0");
            Name        = "Separate results by the null character";
            Description = "Separate results by the null character";
        },
        [ValueParameter]@{
            Keys        = @("--size", "-S");
            Name        = "Limit results based on the size of files.";
            Description = "Limit results based on the size of files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--type", "-t");
            Name        = "Filter by type";
            Description = "Filter by type";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Prints version information";
            Description = "Prints version information";
        }
    )
}
