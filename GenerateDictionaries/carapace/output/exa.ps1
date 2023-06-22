# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://the.exa.website/";
    Keys        = @("exa");
    Name        = "exa";
    Description = "a modern replacement for ls";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--accessed", "-u");
            Name        = "use the accessed timestamp field";
            Description = "use the accessed timestamp field";
        },
        [FlagParameter]@{
            Keys        = @("--across", "-x");
            Name        = "sort the grid across, rather than downwards";
            Description = "sort the grid across, rather than downwards";
        },
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "show hidden and 'dot' files";
            Description = "show hidden and 'dot' files";
        },
        [FlagParameter]@{
            Keys        = @("--binary", "-b");
            Name        = "list file sizes with binary prefixes";
            Description = "list file sizes with binary prefixes";
        },
        [FlagParameter]@{
            Keys        = @("--blocks", "-S");
            Name        = "show number of file system blocks";
            Description = "show number of file system blocks";
        },
        [FlagParameter]@{
            Keys        = @("--bytes", "-B");
            Name        = "list file sizes in bytes, without any prefixes";
            Description = "list file sizes in bytes, without any prefixes";
        },
        [FlagParameter]@{
            Keys        = @("--classify", "-F");
            Name        = "display type indicator by file names";
            Description = "display type indicator by file names";
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "when to use terminal colours (always, auto, never)";
            Description = "when to use terminal colours (always, auto, never)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--color-scale");
            Name        = "highlight levels of file sizes distinctly";
            Description = "highlight levels of file sizes distinctly";
        },
        [ValueParameter]@{
            Keys        = @("--colour");
            Name        = "when to use terminal colours (always, auto, never)";
            Description = "when to use terminal colours (always, auto, never)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--colour-scale");
            Name        = "highlight levels of file sizes distinctly";
            Description = "highlight levels of file sizes distinctly";
        },
        [FlagParameter]@{
            Keys        = @("--created", "-U");
            Name        = "use the created timestamp field";
            Description = "use the created timestamp field";
        },
        [FlagParameter]@{
            Keys        = @("--extended", "-@");
            Name        = "list each file's extended attributes and sizes";
            Description = "list each file's extended attributes and sizes";
        },
        [FlagParameter]@{
            Keys        = @("--git");
            Name        = "list each file's Git status, if tracked or ignored";
            Description = "list each file's Git status, if tracked or ignored";
        },
        [FlagParameter]@{
            Keys        = @("--git-ignore");
            Name        = "Ignore files mentioned in '.gitignore'";
            Description = "Ignore files mentioned in '.gitignore'";
        },
        [FlagParameter]@{
            Keys        = @("--grid", "-G");
            Name        = "display entries as a grid (default)";
            Description = "display entries as a grid (default)";
        },
        [FlagParameter]@{
            Keys        = @("--group", "-g");
            Name        = "list each file's group";
            Description = "list each file's group";
        },
        [FlagParameter]@{
            Keys        = @("--group-directories-first");
            Name        = "list directories before other files";
            Description = "list directories before other files";
        },
        [FlagParameter]@{
            Keys        = @("--header", "-h");
            Name        = "add a header row to each column";
            Description = "add a header row to each column";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "show list of command-line options";
            Description = "show list of command-line options";
        },
        [ValueParameter]@{
            Keys        = @("--ignore-glob", "-I");
            Name        = "glob patterns (pipe-separated) of files to ignore";
            Description = "glob patterns (pipe-separated) of files to ignore";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--inode", "-i");
            Name        = "list each file's inode number";
            Description = "list each file's inode number";
        },
        [ValueParameter]@{
            Keys        = @("--level", "-L");
            Name        = "limit the depth of recursion";
            Description = "limit the depth of recursion";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--links", "-H");
            Name        = "list each file's number of hard links";
            Description = "list each file's number of hard links";
        },
        [FlagParameter]@{
            Keys        = @("--list-dirs", "-d");
            Name        = "list directories like regular files";
            Description = "list directories like regular files";
        },
        [FlagParameter]@{
            Keys        = @("--long", "-l");
            Name        = "display extended file metadata as a table";
            Description = "display extended file metadata as a table";
        },
        [FlagParameter]@{
            Keys        = @("--modified", "-m");
            Name        = "use the modified timestamp field";
            Description = "use the modified timestamp field";
        },
        [FlagParameter]@{
            Keys        = @("--oneline", "-1");
            Name        = "display one entry per line";
            Description = "display one entry per line";
        },
        [FlagParameter]@{
            Keys        = @("--only-dirs", "-D");
            Name        = "list only directories";
            Description = "list only directories";
        },
        [FlagParameter]@{
            Keys        = @("--recurse", "-R");
            Name        = "recurse into directories";
            Description = "recurse into directories";
        },
        [FlagParameter]@{
            Keys        = @("--reverse", "-r");
            Name        = "reverse the sort order";
            Description = "reverse the sort order";
        },
        [ValueParameter]@{
            Keys        = @("--sort", "-s");
            Name        = "which field to sort by";
            Description = "which field to sort by";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time", "-t");
            Name        = "which timestamp field to list (modified, accessed, created)";
            Description = "which timestamp field to list (modified, accessed, created)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time-style");
            Name        = "how to format timestamps (default, iso, long-iso, full-iso)";
            Description = "how to format timestamps (default, iso, long-iso, full-iso)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tree", "-T");
            Name        = "recurse into directories as a tree";
            Description = "recurse into directories as a tree";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "show version of exa";
            Description = "show version of exa";
        }
    )
}
