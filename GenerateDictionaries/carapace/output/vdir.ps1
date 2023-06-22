# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/vdir";
    Keys        = @("vdir");
    Name        = "vdir";
    Description = "list directory contents";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-1");
            Name        = "list one file per line.  Avoid '
' with -q or -b";
            Description = "list one file per line.  Avoid '
' with -q or -b";
        },
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "list entries by columns";
            Description = "list entries by columns";
        },
        [FlagParameter]@{
            Keys        = @("-S");
            Name        = "sort by file size, largest first";
            Description = "sort by file size, largest first";
        },
        [FlagParameter]@{
            Keys        = @("-U");
            Name        = "do not sort; list entries in directory order";
            Description = "do not sort; list entries in directory order";
        },
        [FlagParameter]@{
            Keys        = @("-X");
            Name        = "sort alphabetically by entry extension";
            Description = "sort alphabetically by entry extension";
        },
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "do not ignore entries starting with .";
            Description = "do not ignore entries starting with .";
        },
        [FlagParameter]@{
            Keys        = @("--almost-all", "-A");
            Name        = "do not list implied . and ..";
            Description = "do not list implied . and ..";
        },
        [FlagParameter]@{
            Keys        = @("--author");
            Name        = "with -l, print the author of each file";
            Description = "with -l, print the author of each file";
        },
        [ValueParameter]@{
            Keys        = @("--block-size");
            Name        = "with -l, scale sizes by SIZE when printing them;";
            Description = "with -l, scale sizes by SIZE when printing them;";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-c");
            Name        = "with -lt: sort by, and show, ctime (time of last";
            Description = "with -lt: sort by, and show, ctime (time of last";
        },
        [FlagParameter]@{
            Keys        = @("--classify", "-F");
            Name        = "append indicator (one of */=>@|) to entries";
            Description = "append indicator (one of */=>@|) to entries";
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "colorize the output; WHEN can be 'always' (default";
            Description = "colorize the output; WHEN can be 'always' (default";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--context", "-Z");
            Name        = "print any security context of each file";
            Description = "print any security context of each file";
        },
        [FlagParameter]@{
            Keys        = @("--dereference", "-L");
            Name        = "when showing file information for a symbolic";
            Description = "when showing file information for a symbolic";
        },
        [FlagParameter]@{
            Keys        = @("--dereference-command-line", "-H");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--dereference-command-line-symlink-to-dir");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--directory", "-d");
            Name        = "list directories themselves, not their contents";
            Description = "list directories themselves, not their contents";
        },
        [FlagParameter]@{
            Keys        = @("--dired", "-D");
            Name        = "generate output designed for Emacs' dired mode";
            Description = "generate output designed for Emacs' dired mode";
        },
        [FlagParameter]@{
            Keys        = @("--escape", "-b");
            Name        = "print C-style escapes for nongraphic characters";
            Description = "print C-style escapes for nongraphic characters";
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "do not sort, enable -aU, disable -ls --color";
            Description = "do not sort, enable -aU, disable -ls --color";
        },
        [FlagParameter]@{
            Keys        = @("--file-type");
            Name        = "likewise, except do not append '*'";
            Description = "likewise, except do not append '*'";
        },
        [ValueParameter]@{
            Keys        = @("--format");
            Name        = "across -x, commas -m, horizontal -x, long -l,";
            Description = "across -x, commas -m, horizontal -x, long -l,";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--full-time");
            Name        = "like -l --time-style=full-iso";
            Description = "like -l --time-style=full-iso";
        },
        [FlagParameter]@{
            Keys        = @("-g");
            Name        = "like -l, but do not list owner";
            Description = "like -l, but do not list owner";
        },
        [FlagParameter]@{
            Keys        = @("--group-directories-first");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--hide");
            Name        = "do not list implied entries matching shell PATTERN";
            Description = "do not list implied entries matching shell PATTERN";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--hide-control-chars", "-q");
            Name        = "print ? instead of nongraphic characters";
            Description = "print ? instead of nongraphic characters";
        },
        [FlagParameter]@{
            Keys        = @("--human-readable", "-h");
            Name        = "with -l and -s, print sizes like 1K 234M 2G etc.";
            Description = "with -l and -s, print sizes like 1K 234M 2G etc.";
        },
        [ValueParameter]@{
            Keys        = @("--hyperlink");
            Name        = "hyperlink file names; WHEN can be 'always'";
            Description = "hyperlink file names; WHEN can be 'always'";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ignore", "-I");
            Name        = "do not list implied entries matching shell PATTERN";
            Description = "do not list implied entries matching shell PATTERN";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-backups", "-B");
            Name        = "do not list implied entries ending with ~";
            Description = "do not list implied entries ending with ~";
        },
        [ValueParameter]@{
            Keys        = @("--indicator-style");
            Name        = "append indicator with style WORD to entry names:";
            Description = "append indicator with style WORD to entry names:";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--inode", "-i");
            Name        = "print the index number of each file";
            Description = "print the index number of each file";
        },
        [FlagParameter]@{
            Keys        = @("--kibibytes", "-k");
            Name        = "default to 1024-byte blocks for disk usage;";
            Description = "default to 1024-byte blocks for disk usage;";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "use a long listing format";
            Description = "use a long listing format";
        },
        [FlagParameter]@{
            Keys        = @("--literal", "-N");
            Name        = "print entry names without quoting";
            Description = "print entry names without quoting";
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "fill width with a comma separated list of entries";
            Description = "fill width with a comma separated list of entries";
        },
        [FlagParameter]@{
            Keys        = @("--no-group", "-G");
            Name        = "in a long listing, don't print group names";
            Description = "in a long listing, don't print group names";
        },
        [FlagParameter]@{
            Keys        = @("--numeric-uid-gid", "-n");
            Name        = "like -l, but list numeric user and group IDs";
            Description = "like -l, but list numeric user and group IDs";
        },
        [FlagParameter]@{
            Keys        = @("-o");
            Name        = "like -l, but do not list group information";
            Description = "like -l, but do not list group information";
        },
        [FlagParameter]@{
            Keys        = @("--quote-name", "-Q");
            Name        = "enclose entry names in double quotes";
            Description = "enclose entry names in double quotes";
        },
        [ValueParameter]@{
            Keys        = @("--quoting-style");
            Name        = "use quoting style WORD for entry names:";
            Description = "use quoting style WORD for entry names:";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-R");
            Name        = "list subdirectories recursively";
            Description = "list subdirectories recursively";
        },
        [FlagParameter]@{
            Keys        = @("--reverse", "-r");
            Name        = "reverse order while sorting";
            Description = "reverse order while sorting";
        },
        [FlagParameter]@{
            Keys        = @("--show-control-chars");
            Name        = "show nongraphic characters as-is (the default,";
            Description = "show nongraphic characters as-is (the default,";
        },
        [FlagParameter]@{
            Keys        = @("--si");
            Name        = "likewise, but use powers of 1000 not 1024";
            Description = "likewise, but use powers of 1000 not 1024";
        },
        [FlagParameter]@{
            Keys        = @("--size", "-s");
            Name        = "print the allocated size of each file, in blocks";
            Description = "print the allocated size of each file, in blocks";
        },
        [ValueParameter]@{
            Keys        = @("--sort");
            Name        = "sort by WORD instead of name: none (-U), size (-S),";
            Description = "sort by WORD instead of name: none (-U), size (-S),";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-t");
            Name        = "sort by time, newest first; see --time";
            Description = "sort by time, newest first; see --time";
        },
        [ValueParameter]@{
            Keys        = @("--tabsize", "-T");
            Name        = "assume tab stops at each COLS instead of 8";
            Description = "assume tab stops at each COLS instead of 8";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time");
            Name        = "change the default of using modification times;";
            Description = "change the default of using modification times;";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--time-style");
            Name        = "time/date format with -l; see TIME_STYLE below";
            Description = "time/date format with -l; see TIME_STYLE below";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "with -lt: sort by, and show, access time;";
            Description = "with -lt: sort by, and show, access time;";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "natural sort of (version) numbers within text";
            Description = "natural sort of (version) numbers within text";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--width", "-w");
            Name        = "set output width to COLS.  0 means no limit";
            Description = "set output width to COLS.  0 means no limit";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "list entries by lines instead of by columns";
            Description = "list entries by lines instead of by columns";
        }
    )
}
