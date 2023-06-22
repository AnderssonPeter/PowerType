# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/find";
    Keys        = @("find");
    Name        = "find";
    Description = "search for files in a directory hierarchy";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("---help");
            Name        = "Print a summary of the command-line usage of find and exit.";
            Description = "Print a summary of the command-line usage of find and exit.";
        },
        [FlagParameter]@{
            Keys        = @("---version");
            Name        = "Print the find version number and exit.";
            Description = "Print the find version number and exit.";
        },
        [ValueParameter]@{
            Keys        = @("--D");
            Name        = "Print diagnostic information";
            Description = "Print diagnostic information";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--H");
            Name        = "Do not follow symbolic links";
            Description = "Do not follow symbolic links";
        },
        [FlagParameter]@{
            Keys        = @("--L");
            Name        = "Follow symbolic links";
            Description = "Follow symbolic links";
        },
        [FlagParameter]@{
            Keys        = @("--O0");
            Name        = "Equivalent to optimisation level 1";
            Description = "Equivalent to optimisation level 1";
        },
        [FlagParameter]@{
            Keys        = @("--O1");
            Name        = "This  is  the default optimisation level and corresponds to the traditional behaviour.";
            Description = "This  is  the default optimisation level and corresponds to the traditional behaviour.";
        },
        [FlagParameter]@{
            Keys        = @("--O2");
            Name        = "Any -type or -xtype tests are performed after any tests based only on the names of files.";
            Description = "Any -type or -xtype tests are performed after any tests based only on the names of files.";
        },
        [FlagParameter]@{
            Keys        = @("--O3");
            Name        = "At  this  optimisation level, the full cost-based query optimiser is enabled.";
            Description = "At  this  optimisation level, the full cost-based query optimiser is enabled.";
        },
        [FlagParameter]@{
            Keys        = @("--P");
            Name        = "Never follow symbolic links";
            Description = "Never follow symbolic links";
        },
        [ValueParameter]@{
            Keys        = @("--amin");
            Name        = "File was last accessed less than, more than or exactly n minutes ago.";
            Description = "File was last accessed less than, more than or exactly n minutes ago.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--anewer");
            Name        = "Time of the last access of the current file is more recent than that  of  the  last  data modification of the reference file.";
            Description = "Time of the last access of the current file is more recent than that  of  the  last  data modification of the reference file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--atime");
            Name        = "File was last accessed less than, more than or exactly n*24 hours ago.";
            Description = "File was last accessed less than, more than or exactly n*24 hours ago.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cmin");
            Name        = "File's status was last changed less than, more than or exactly n minutes ago.";
            Description = "File's status was last changed less than, more than or exactly n minutes ago.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cnewer");
            Name        = "Time  of  the last status change of the current file is more recent than that of the last data modification of the reference file.";
            Description = "Time  of  the last status change of the current file is more recent than that of the last data modification of the reference file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--context");
            Name        = "Security context of the file matches glob pattern.";
            Description = "Security context of the file matches glob pattern.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ctime");
            Name        = "File's status was last changed less than, more than or exactly n*24 hours ago.";
            Description = "File's status was last changed less than, more than or exactly n*24 hours ago.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--daystart");
            Name        = "Measure times from the beginning of today rather than from 24 hours ago.";
            Description = "Measure times from the beginning of today rather than from 24 hours ago.";
        },
        [FlagParameter]@{
            Keys        = @("--delete");
            Name        = "Delete  files.";
            Description = "Delete  files.";
        },
        [FlagParameter]@{
            Keys        = @("--depth");
            Name        = "Process each directory's contents before the directory itself.";
            Description = "Process each directory's contents before the directory itself.";
        },
        [ValueParameter]@{
            Keys        = @("--exec");
            Name        = "Execute command.";
            Description = "Execute command.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--execdir");
            Name        = "Like -exec, but the specified command is run from the subdirectory containing the matched file.";
            Description = "Like -exec, but the specified command is run from the subdirectory containing the matched file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--executable");
            Name        = "Matches files which are executable and directories which are searchable by the current user.";
            Description = "Matches files which are executable and directories which are searchable by the current user.";
        },
        [FlagParameter]@{
            Keys        = @("--false");
            Name        = "Always false.";
            Description = "Always false.";
        },
        [FlagParameter]@{
            Keys        = @("--fls");
            Name        = "Unusual characters are always escaped.";
            Description = "Unusual characters are always escaped.";
        },
        [FlagParameter]@{
            Keys        = @("--fprint");
            Name        = "Quoting is handled in the same way as for -printf and -fprintf.";
            Description = "Quoting is handled in the same way as for -printf and -fprintf.";
        },
        [FlagParameter]@{
            Keys        = @("--fprint0");
            Name        = "Always print the exact filename, unchanged, even if the output is going to a terminal.";
            Description = "Always print the exact filename, unchanged, even if the output is going to a terminal.";
        },
        [FlagParameter]@{
            Keys        = @("--fprintf");
            Name        = "If the output is not going to a terminal, it is printed as-is.";
            Description = "If the output is not going to a terminal, it is printed as-is.";
        },
        [ValueParameter]@{
            Keys        = @("--fstype");
            Name        = "File  is  on  a filesystem of type type.";
            Description = "File  is  on  a filesystem of type type.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gid");
            Name        = "File's numeric group ID is less than, more than or exactly n.";
            Description = "File's numeric group ID is less than, more than or exactly n.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--group");
            Name        = "File belongs to group gname (numeric group ID allowed).";
            Description = "File belongs to group gname (numeric group ID allowed).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Print a summary of the command-line usage of find and exit.";
            Description = "Print a summary of the command-line usage of find and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--ignore_readdir_race");
            Name        = "Do not  emit an error message when find fails to stat a file.";
            Description = "Do not  emit an error message when find fails to stat a file.";
        },
        [ValueParameter]@{
            Keys        = @("--ilname");
            Name        = "Like -lname, but the match is case insensitive.";
            Description = "Like -lname, but the match is case insensitive.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--iname");
            Name        = "Like -name, but the match is case insensitive.";
            Description = "Like -name, but the match is case insensitive.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--inum");
            Name        = "File  has inode number smaller than, greater than or exactly n.";
            Description = "File  has inode number smaller than, greater than or exactly n.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ipath");
            Name        = "Like -path.  but the match is case insensitive.";
            Description = "Like -path.  but the match is case insensitive.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--iregex");
            Name        = "Like -regex, but the match is case insensitive.";
            Description = "Like -regex, but the match is case insensitive.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--iwholename");
            Name        = "See -ipath.  This alternative is less portable than -ipath.";
            Description = "See -ipath.  This alternative is less portable than -ipath.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--links");
            Name        = "File has less than, more than or exactly n hard links.";
            Description = "File has less than, more than or exactly n hard links.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--lname");
            Name        = "File is a symbolic link whose contents match shell pattern pattern.";
            Description = "File is a symbolic link whose contents match shell pattern pattern.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ls");
            Name        = "List current file in ls -dils format on standard output.";
            Description = "List current file in ls -dils format on standard output.";
        },
        [ValueParameter]@{
            Keys        = @("--maxdepth");
            Name        = "Descend at most levels of directories below the startingpoints.";
            Description = "Descend at most levels of directories below the startingpoints.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mindepth");
            Name        = "Do  not  apply  any tests or actions at levels less than levels.";
            Description = "Do  not  apply  any tests or actions at levels less than levels.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mmin");
            Name        = "File's data was last modified less than, more than or exactly n minutes ago.";
            Description = "File's data was last modified less than, more than or exactly n minutes ago.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--mount");
            Name        = "Don't descend directories on other filesystems.";
            Description = "Don't descend directories on other filesystems.";
        },
        [ValueParameter]@{
            Keys        = @("--mtime");
            Name        = "File's data was last modified less than, more than or exactly n*24 hours  ago.";
            Description = "File's data was last modified less than, more than or exactly n*24 hours  ago.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--name");
            Name        = "Base of file name matches  shell  pattern pattern.";
            Description = "Base of file name matches  shell  pattern pattern.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--newer");
            Name        = "Time of the last data modification of the current file is more recent than that of the last data modification of the reference file.";
            Description = "Time of the last data modification of the current file is more recent than that of the last data modification of the reference file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--nogroup");
            Name        = "No group corresponds to file's numeric group ID.";
            Description = "No group corresponds to file's numeric group ID.";
        },
        [FlagParameter]@{
            Keys        = @("--noignore_readdir_race");
            Name        = "Turns off the effect of -ignore_readdir_race.";
            Description = "Turns off the effect of -ignore_readdir_race.";
        },
        [FlagParameter]@{
            Keys        = @("--noleaf");
            Name        = "Do  not  optimize  by assuming that directories contain 2 fewer subdirectories than their hard link count.";
            Description = "Do  not  optimize  by assuming that directories contain 2 fewer subdirectories than their hard link count.";
        },
        [FlagParameter]@{
            Keys        = @("--nouser");
            Name        = "No user corresponds to file's numeric user ID.";
            Description = "No user corresponds to file's numeric user ID.";
        },
        [FlagParameter]@{
            Keys        = @("--nowarn");
            Name        = "Turn  warning  messages  off.";
            Description = "Turn  warning  messages  off.";
        },
        [ValueParameter]@{
            Keys        = @("--ok");
            Name        = "Like  -exec but ask the user first.";
            Description = "Like  -exec but ask the user first.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--okdir");
            Name        = "Like -execdir but ask the user first in the same way as for -ok.";
            Description = "Like -execdir but ask the user first in the same way as for -ok.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--path");
            Name        = "File name matches shell pattern pattern.";
            Description = "File name matches shell pattern pattern.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--perm");
            Name        = "File's permission bits are exactly mode (octal or symbolic).";
            Description = "File's permission bits are exactly mode (octal or symbolic).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print");
            Name        = "Print the full file name on the standard output, followed by a newline.";
            Description = "Print the full file name on the standard output, followed by a newline.";
        },
        [FlagParameter]@{
            Keys        = @("--print0");
            Name        = "Print the full file name on the standard output, followed by a null character.";
            Description = "Print the full file name on the standard output, followed by a null character.";
        },
        [ValueParameter]@{
            Keys        = @("--printf");
            Name        = "Print  format on the standard output, interpreting ``\' escapes and ``%' directives.";
            Description = "Print  format on the standard output, interpreting ``\' escapes and ``%' directives.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--prune");
            Name        = "If the file is a directory, do not descend into it.";
            Description = "If the file is a directory, do not descend into it.";
        },
        [FlagParameter]@{
            Keys        = @("--quit");
            Name        = "Exit immediately.";
            Description = "Exit immediately.";
        },
        [FlagParameter]@{
            Keys        = @("--readable");
            Name        = "Matches  files  which  are  readable by the current user.";
            Description = "Matches  files  which  are  readable by the current user.";
        },
        [ValueParameter]@{
            Keys        = @("--regex");
            Name        = "File  name  matches regular expression pattern.";
            Description = "File  name  matches regular expression pattern.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--regextype");
            Name        = "Changes the regular expression syntax understood by -regex and -iregex tests which  occur later  on the command line.";
            Description = "Changes the regular expression syntax understood by -regex and -iregex tests which  occur later  on the command line.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--samefile");
            Name        = "File  refers  to the same inode as name.";
            Description = "File  refers  to the same inode as name.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--size");
            Name        = "File uses less than, more than or exactly n units of space, rounding up.";
            Description = "File uses less than, more than or exactly n units of space, rounding up.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--true");
            Name        = "Always true.";
            Description = "Always true.";
        },
        [ValueParameter]@{
            Keys        = @("--type");
            Name        = "file type";
            Description = "file type";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--used");
            Name        = "File  was  last accessed less than, more than or exactly n days after its status was last changed.";
            Description = "File  was  last accessed less than, more than or exactly n days after its status was last changed.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user");
            Name        = "File is owned by user uname.";
            Description = "File is owned by user uname.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Print the find version number and exit.";
            Description = "Print the find version number and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--warn");
            Name        = "Turn  warning  messages  on.";
            Description = "Turn  warning  messages  on.";
        },
        [ValueParameter]@{
            Keys        = @("--wholename");
            Name        = "See -path.  This alternative is less portable than -path.";
            Description = "See -path.  This alternative is less portable than -path.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--writable");
            Name        = "Matches files which are writable by the current user.";
            Description = "Matches files which are writable by the current user.";
        },
        [FlagParameter]@{
            Keys        = @("--xdev");
            Name        = "Don't descend directories on other filesystems.";
            Description = "Don't descend directories on other filesystems.";
        },
        [ValueParameter]@{
            Keys        = @("--xtype");
            Name        = "The same as -type unless the file is a symbolic link.";
            Description = "The same as -type unless the file is a symbolic link.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
