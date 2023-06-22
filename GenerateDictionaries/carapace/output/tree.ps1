# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/tree";
    Keys        = @("tree");
    Name        = "tree";
    Description = "list contents of directories in a tree-like format";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-A");
            Name        = "Print ANSI lines graphic indentation lines.";
            Description = "Print ANSI lines graphic indentation lines.";
        },
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "Turn colorization on always.";
            Description = "Turn colorization on always.";
        },
        [FlagParameter]@{
            Keys        = @("-D");
            Name        = "Print the date of last modification or (-c) status change.";
            Description = "Print the date of last modification or (-c) status change.";
        },
        [FlagParameter]@{
            Keys        = @("-F");
            Name        = "Appends '/', '=', '*', '@', '|' or '>' as per ls -F.";
            Description = "Appends '/', '=', '*', '@', '|' or '>' as per ls -F.";
        },
        [ValueParameter]@{
            Keys        = @("-H");
            Name        = "Prints out HTML format with baseHREF as top directory.";
            Description = "Prints out HTML format with baseHREF as top directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-I");
            Name        = "Do not list files that match the given pattern.";
            Description = "Do not list files that match the given pattern.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-J");
            Name        = "Prints out an JSON representation of the tree.";
            Description = "Prints out an JSON representation of the tree.";
        },
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "Descend only level directories deep.";
            Description = "Descend only level directories deep.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-N");
            Name        = "Print non-printable characters as is.";
            Description = "Print non-printable characters as is.";
        },
        [ValueParameter]@{
            Keys        = @("-P");
            Name        = "List only those files that match the pattern given.";
            Description = "List only those files that match the pattern given.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-Q");
            Name        = "Quote filenames with double quotes.";
            Description = "Quote filenames with double quotes.";
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "Rerun tree when max dir level reached.";
            Description = "Rerun tree when max dir level reached.";
        },
        [FlagParameter]@{
            Keys        = @("-S");
            Name        = "Print with CP437 (console) graphics indentation lines.";
            Description = "Print with CP437 (console) graphics indentation lines.";
        },
        [ValueParameter]@{
            Keys        = @("-T");
            Name        = "Replace the default HTML title and H1 header with string.";
            Description = "Replace the default HTML title and H1 header with string.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-U");
            Name        = "Leave files unsorted.";
            Description = "Leave files unsorted.";
        },
        [FlagParameter]@{
            Keys        = @("-X");
            Name        = "Prints out an XML representation of the tree.";
            Description = "Prints out an XML representation of the tree.";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "All files are listed.";
            Description = "All files are listed.";
        },
        [FlagParameter]@{
            Keys        = @("-c");
            Name        = "Sort files by last status change time.";
            Description = "Sort files by last status change time.";
        },
        [ValueParameter]@{
            Keys        = @("--charset");
            Name        = "Use charset X for terminal/HTML and indentation line output.";
            Description = "Use charset X for terminal/HTML and indentation line output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "List directories only.";
            Description = "List directories only.";
        },
        [FlagParameter]@{
            Keys        = @("--device");
            Name        = "Print device ID number to which each file belongs.";
            Description = "Print device ID number to which each file belongs.";
        },
        [FlagParameter]@{
            Keys        = @("--dirsfirst");
            Name        = "List directories before files (-U disables).";
            Description = "List directories before files (-U disables).";
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "Print the full path prefix for each file.";
            Description = "Print the full path prefix for each file.";
        },
        [FlagParameter]@{
            Keys        = @("--fromfile");
            Name        = "Reads paths from files (.=stdin)";
            Description = "Reads paths from files (.=stdin)";
        },
        [FlagParameter]@{
            Keys        = @("-g");
            Name        = "Displays file group owner or GID number.";
            Description = "Displays file group owner or GID number.";
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "Print the size in a more human readable way.";
            Description = "Print the size in a more human readable way.";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Print usage and this help message and exit.";
            Description = "Print usage and this help message and exit.";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "Don't print indentation lines.";
            Description = "Don't print indentation lines.";
        },
        [FlagParameter]@{
            Keys        = @("--inodes");
            Name        = "Print inode number of each file.";
            Description = "Print inode number of each file.";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "Follow symbolic links like directories.";
            Description = "Follow symbolic links like directories.";
        },
        [FlagParameter]@{
            Keys        = @("--matchdirs");
            Name        = "Include directory names in -P pattern matching.";
            Description = "Include directory names in -P pattern matching.";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "Turn colorization off always (-C overrides).";
            Description = "Turn colorization off always (-C overrides).";
        },
        [FlagParameter]@{
            Keys        = @("--nolinks");
            Name        = "Turn off hyperlinks in HTML output.";
            Description = "Turn off hyperlinks in HTML output.";
        },
        [FlagParameter]@{
            Keys        = @("--noreport");
            Name        = "Turn off file/directory count at end of tree listing.";
            Description = "Turn off file/directory count at end of tree listing.";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "Output to file instead of stdout.";
            Description = "Output to file instead of stdout.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "Print the protections for each file.";
            Description = "Print the protections for each file.";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "Print non-printable characters as '?'.";
            Description = "Print non-printable characters as '?'.";
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "Reverse the order of the sort.";
            Description = "Reverse the order of the sort.";
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "Print the size in bytes of each file.";
            Description = "Print the size in bytes of each file.";
        },
        [FlagParameter]@{
            Keys        = @("--si");
            Name        = "Like -h, but use in SI units (powers of 1000).";
            Description = "Like -h, but use in SI units (powers of 1000).";
        },
        [ValueParameter]@{
            Keys        = @("--sort");
            Name        = "Select sort: name,version,size,mtime,ctime.";
            Description = "Select sort: name,version,size,mtime,ctime.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-t");
            Name        = "Sort files by last modification time.";
            Description = "Sort files by last modification time.";
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "Displays file owner or UID number.";
            Description = "Displays file owner or UID number.";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Sort files alphanumerically by version.";
            Description = "Sort files alphanumerically by version.";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Print version and exit.";
            Description = "Print version and exit.";
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "Stay on current filesystem only.";
            Description = "Stay on current filesystem only.";
        }
    )
}
