# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/BurntSushi/ripgrep";
    Keys        = @("rg");
    Name        = "rg";
    Description = "recursively search current directory for lines matching a pattern";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--after-context", "-A");
            Name        = "Show NUM lines after each match.";
            Description = "Show NUM lines after each match.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--before-context", "-B");
            Name        = "Show NUM lines before each match.  ";
            Description = "Show NUM lines before each match.  ";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--binary");
            Name        = "Enabling this flag will cause ripgrep to search binary files.";
            Description = "Enabling this flag will cause ripgrep to search binary files.";
        },
        [FlagParameter]@{
            Keys        = @("--block-buffered");
            Name        = "When enabled, ripgrep will use block buffering";
            Description = "When enabled, ripgrep will use block buffering";
        },
        [FlagParameter]@{
            Keys        = @("--byte-offset", "-b");
            Name        = "Print the 0-based byte offset within the input file before each line of output.";
            Description = "Print the 0-based byte offset within the input file before each line of output.";
        },
        [FlagParameter]@{
            Keys        = @("--case-sensitive", "-s");
            Name        = "Search case sensitively.";
            Description = "Search case sensitively.";
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "This flag controls when to use colors.";
            Description = "This flag controls when to use colors.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--colors");
            Name        = "This flag specifies color settings for use in the output.";
            Description = "This flag specifies color settings for use in the output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--column");
            Name        = "Show column numbers (1-based).";
            Description = "Show column numbers (1-based).";
        },
        [ValueParameter]@{
            Keys        = @("--context", "-C");
            Name        = "Show NUM lines before and after each match.";
            Description = "Show NUM lines before and after each match.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--context-separator");
            Name        = "The string used to separate non-contiguous context lines in the output.";
            Description = "The string used to separate non-contiguous context lines in the output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--count", "-c");
            Name        = "This flag suppresses normal output and shows the number of lines that match";
            Description = "This flag suppresses normal output and shows the number of lines that match";
        },
        [FlagParameter]@{
            Keys        = @("--count-matches");
            Name        = "This flag suppresses normal output and shows the number of individual";
            Description = "This flag suppresses normal output and shows the number of individual";
        },
        [FlagParameter]@{
            Keys        = @("--crlf");
            Name        = "When enabled, ripgrep will treat CRLF as a line terminator instead";
            Description = "When enabled, ripgrep will treat CRLF as a line terminator instead";
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Show debug messages.";
            Description = "Show debug messages.";
        },
        [ValueParameter]@{
            Keys        = @("--dfa-size-limit");
            Name        = "The upper size limit of the regex DFA. The default limit is 10M.";
            Description = "The upper size limit of the regex DFA. The default limit is 10M.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--encoding", "-E");
            Name        = "Specify the text encoding that ripgrep will use on all files searched.";
            Description = "Specify the text encoding that ripgrep will use on all files searched.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--engine");
            Name        = "Specify which regular expression engine to use.";
            Description = "Specify which regular expression engine to use.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "Search for patterns from the given file, with one pattern per line.";
            Description = "Search for patterns from the given file, with one pattern per line.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--files");
            Name        = "Print each file that would be searched without actually performing the search.";
            Description = "Print each file that would be searched without actually performing the search.";
        },
        [FlagParameter]@{
            Keys        = @("--files-with-matches", "-l");
            Name        = "Only print the paths with at least one match.";
            Description = "Only print the paths with at least one match.";
        },
        [FlagParameter]@{
            Keys        = @("--files-without-match");
            Name        = "Only print the paths that contain zero matches.";
            Description = "Only print the paths that contain zero matches.";
        },
        [FlagParameter]@{
            Keys        = @("--fixed-strings", "-F");
            Name        = "Treat the pattern as a literal string instead of a regular expression.";
            Description = "Treat the pattern as a literal string instead of a regular expression.";
        },
        [FlagParameter]@{
            Keys        = @("--follow", "-L");
            Name        = "When this flag is enabled, ripgrep will follow symbolic links while traversing";
            Description = "When this flag is enabled, ripgrep will follow symbolic links while traversing";
        },
        [ValueParameter]@{
            Keys        = @("--glob", "-g");
            Name        = "Include or exclude files and directories for searching that match the given";
            Description = "Include or exclude files and directories for searching that match the given";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--glob-case-insensitive");
            Name        = "Process glob patterns given with the -g/--glob flag case insensitively.";
            Description = "Process glob patterns given with the -g/--glob flag case insensitively.";
        },
        [FlagParameter]@{
            Keys        = @("--heading");
            Name        = "This flag prints the file path above clusters of matches from each file instead";
            Description = "This flag prints the file path above clusters of matches from each file instead";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information.";
            Description = "Prints help information.";
        },
        [FlagParameter]@{
            Keys        = @("--hidden");
            Name        = "Search hidden files and directories.";
            Description = "Search hidden files and directories.";
        },
        [ValueParameter]@{
            Keys        = @("--iglob");
            Name        = "Include or exclude files and directories for searching that match the given";
            Description = "Include or exclude files and directories for searching that match the given";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-i");
            Name        = "When this flag is provided, the given patterns will be searched case";
            Description = "When this flag is provided, the given patterns will be searched case";
        },
        [ValueParameter]@{
            Keys        = @("--ignore-file");
            Name        = "Specifies a path to one or more .gitignore format rules files.";
            Description = "Specifies a path to one or more .gitignore format rules files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-file-case-insensitive");
            Name        = "Process ignore files (.gitignore, .ignore, etc.) case insensitively.";
            Description = "Process ignore files (.gitignore, .ignore, etc.) case insensitively.";
        },
        [FlagParameter]@{
            Keys        = @("--include-zero");
            Name        = "When used with --count or --count-matches, print the number of matches for";
            Description = "When used with --count or --count-matches, print the number of matches for";
        },
        [FlagParameter]@{
            Keys        = @("--invert-match", "-v");
            Name        = "Show lines that do not match the given patterns.";
            Description = "Show lines that do not match the given patterns.";
        },
        [FlagParameter]@{
            Keys        = @("--json");
            Name        = "Enable printing results in a JSON Lines format.";
            Description = "Enable printing results in a JSON Lines format.";
        },
        [FlagParameter]@{
            Keys        = @("--line-buffered");
            Name        = "When enabled, ripgrep will use line buffering.";
            Description = "When enabled, ripgrep will use line buffering.";
        },
        [FlagParameter]@{
            Keys        = @("--line-number", "-n");
            Name        = "Show line numbers (1-based).";
            Description = "Show line numbers (1-based).";
        },
        [FlagParameter]@{
            Keys        = @("--line-regexp", "-x");
            Name        = "Only show matches surrounded by line boundaries.";
            Description = "Only show matches surrounded by line boundaries.";
        },
        [ValueParameter]@{
            Keys        = @("--max-columns", "-M");
            Name        = "Don't print lines longer than this limit in bytes.";
            Description = "Don't print lines longer than this limit in bytes.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--max-columns-preview");
            Name        = "When the '--max-columns' flag is used, ripgrep will by default completely";
            Description = "When the '--max-columns' flag is used, ripgrep will by default completely";
        },
        [ValueParameter]@{
            Keys        = @("--max-count", "-m");
            Name        = "Limit the number of matching lines per file searched to NUM.";
            Description = "Limit the number of matching lines per file searched to NUM.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-depth");
            Name        = "Limit the depth of directory traversal to NUM levels beyond the paths given.";
            Description = "Limit the depth of directory traversal to NUM levels beyond the paths given.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-filesize");
            Name        = "Ignore files larger than NUM in size. This does not apply to directories.";
            Description = "Ignore files larger than NUM in size. This does not apply to directories.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--mmap");
            Name        = "Search using memory maps when possible.";
            Description = "Search using memory maps when possible.";
        },
        [FlagParameter]@{
            Keys        = @("--multiline", "-U");
            Name        = "Enable matching across multiple lines.";
            Description = "Enable matching across multiple lines.";
        },
        [FlagParameter]@{
            Keys        = @("--multiline-dotall");
            Name        = "This flag enables `"dot all`" in your regex pattern, which causes '.' to match";
            Description = "This flag enables `"dot all`" in your regex pattern, which causes '.' to match";
        },
        [FlagParameter]@{
            Keys        = @("--no-config");
            Name        = "Never read configuration files.";
            Description = "Never read configuration files.";
        },
        [FlagParameter]@{
            Keys        = @("--no-filename", "-I");
            Name        = "Never print the file path with the matched lines.";
            Description = "Never print the file path with the matched lines.";
        },
        [FlagParameter]@{
            Keys        = @("--no-heading");
            Name        = "Don't group matches by each file.";
            Description = "Don't group matches by each file.";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore");
            Name        = "Don't respect ignore files (.gitignore, .ignore, etc.).";
            Description = "Don't respect ignore files (.gitignore, .ignore, etc.).";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-dot");
            Name        = "Don't respect .ignore files.";
            Description = "Don't respect .ignore files.";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-exclude");
            Name        = "Don't respect ignore files that are manually configured for the repository";
            Description = "Don't respect ignore files that are manually configured for the repository";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-files");
            Name        = "When set, any --ignore-file flags, even ones that come after this flag, are";
            Description = "When set, any --ignore-file flags, even ones that come after this flag, are";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-global");
            Name        = "Don't respect ignore files that come from `"global`" sources such as git's";
            Description = "Don't respect ignore files that come from `"global`" sources such as git's";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-messages");
            Name        = "Suppresses all error messages related to parsing ignore files such as .ignore";
            Description = "Suppresses all error messages related to parsing ignore files such as .ignore";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-parent");
            Name        = "Don't respect ignore files (.gitignore, .ignore, etc.) in parent directories.";
            Description = "Don't respect ignore files (.gitignore, .ignore, etc.) in parent directories.";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-vcs");
            Name        = "Don't respect version control ignore files (.gitignore, etc.).";
            Description = "Don't respect version control ignore files (.gitignore, etc.).";
        },
        [FlagParameter]@{
            Keys        = @("--no-line-number", "-N");
            Name        = "Suppress line numbers. This is enabled by default when not searching in a";
            Description = "Suppress line numbers. This is enabled by default when not searching in a";
        },
        [FlagParameter]@{
            Keys        = @("--no-messages");
            Name        = "Suppress all error messages related to opening and reading files.";
            Description = "Suppress all error messages related to opening and reading files.";
        },
        [FlagParameter]@{
            Keys        = @("--no-mmap");
            Name        = "Never use memory maps, even when they might be faster.";
            Description = "Never use memory maps, even when they might be faster.";
        },
        [FlagParameter]@{
            Keys        = @("--no-pcre2-unicode");
            Name        = "DEPRECATED. Use --no-unicode instead.";
            Description = "DEPRECATED. Use --no-unicode instead.";
        },
        [FlagParameter]@{
            Keys        = @("--no-require-git");
            Name        = "By default, ripgrep will only respect global gitignore rules, .gitignore rules";
            Description = "By default, ripgrep will only respect global gitignore rules, .gitignore rules";
        },
        [FlagParameter]@{
            Keys        = @("--no-unicode");
            Name        = "By default, ripgrep will enable `"Unicode mode`" in all of its regexes.";
            Description = "By default, ripgrep will enable `"Unicode mode`" in all of its regexes.";
        },
        [FlagParameter]@{
            Keys        = @("--null", "-0");
            Name        = "Whenever a file path is printed, follow it with a NUL byte.";
            Description = "Whenever a file path is printed, follow it with a NUL byte.";
        },
        [FlagParameter]@{
            Keys        = @("--null-data");
            Name        = "Enabling this option causes ripgrep to use NUL as a line terminator instead of";
            Description = "Enabling this option causes ripgrep to use NUL as a line terminator instead of";
        },
        [FlagParameter]@{
            Keys        = @("--one-file-system");
            Name        = "When enabled, ripgrep will not cross file system boundaries relative to where";
            Description = "When enabled, ripgrep will not cross file system boundaries relative to where";
        },
        [FlagParameter]@{
            Keys        = @("--only-matching", "-o");
            Name        = "Print only the matched (non-empty) parts of a matching line, with each such";
            Description = "Print only the matched (non-empty) parts of a matching line, with each such";
        },
        [FlagParameter]@{
            Keys        = @("--passthru");
            Name        = "Print both matching and non-matching lines.";
            Description = "Print both matching and non-matching lines.";
        },
        [ValueParameter]@{
            Keys        = @("--path-separator");
            Name        = "Set the path separator to use when printing file paths.";
            Description = "Set the path separator to use when printing file paths.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--pcre2", "-P");
            Name        = "When this flag is present, ripgrep will use the PCRE2 regex engine instead of";
            Description = "When this flag is present, ripgrep will use the PCRE2 regex engine instead of";
        },
        [FlagParameter]@{
            Keys        = @("--pcre2-version");
            Name        = "When this flag is present, ripgrep will print the version of PCRE2 in use,";
            Description = "When this flag is present, ripgrep will print the version of PCRE2 in use,";
        },
        [ValueParameter]@{
            Keys        = @("--pre");
            Name        = "For each input FILE, search the standard output of COMMAND FILE rather than the";
            Description = "For each input FILE, search the standard output of COMMAND FILE rather than the";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pre-glob");
            Name        = "This flag works in conjunction with the --pre flag.";
            Description = "This flag works in conjunction with the --pre flag.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--pretty", "-p");
            Name        = "This is a convenience alias for '--color always --heading --line-number'.";
            Description = "This is a convenience alias for '--color always --heading --line-number'.";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Do not print anything to stdout.";
            Description = "Do not print anything to stdout.";
        },
        [ValueParameter]@{
            Keys        = @("--regex-size-limit");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--regexp", "-e");
            Name        = "A pattern to search for.";
            Description = "A pattern to search for.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--replace", "-r");
            Name        = "Replace every match with the text given when printing results.";
            Description = "Replace every match with the text given when printing results.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--search-zip", "-z");
            Name        = "Search in compressed files.";
            Description = "Search in compressed files.";
        },
        [FlagParameter]@{
            Keys        = @("--smart-case", "-S");
            Name        = "Searches case insensitively if the pattern is all lowercase.";
            Description = "Searches case insensitively if the pattern is all lowercase.";
        },
        [ValueParameter]@{
            Keys        = @("--sort");
            Name        = "This flag enables sorting of results in ascending order.";
            Description = "This flag enables sorting of results in ascending order.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sortr");
            Name        = "This flag enables sorting of results in descending order.";
            Description = "This flag enables sorting of results in descending order.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stats");
            Name        = "Print aggregate statistics about this ripgrep search.";
            Description = "Print aggregate statistics about this ripgrep search.";
        },
        [FlagParameter]@{
            Keys        = @("--text", "-a");
            Name        = "Search binary files as if they were text.";
            Description = "Search binary files as if they were text.";
        },
        [ValueParameter]@{
            Keys        = @("--threads", "-j");
            Name        = "The approximate number of threads to use.";
            Description = "The approximate number of threads to use.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--trim");
            Name        = "When set, all ASCII whitespace at the beginning of each line printed will be";
            Description = "When set, all ASCII whitespace at the beginning of each line printed will be";
        },
        [ValueParameter]@{
            Keys        = @("--type", "-t");
            Name        = "Only search files matching TYPE.";
            Description = "Only search files matching TYPE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--type-add");
            Name        = "Add a new glob for a particular file type.";
            Description = "Add a new glob for a particular file type.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--type-clear");
            Name        = "Clear the file type globs previously defined for TYPE.";
            Description = "Clear the file type globs previously defined for TYPE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--type-list");
            Name        = "Show all supported file types and their corresponding globs.";
            Description = "Show all supported file types and their corresponding globs.";
        },
        [ValueParameter]@{
            Keys        = @("--type-not", "-T");
            Name        = "Do not search files matching TYPE.";
            Description = "Do not search files matching TYPE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unrestricted", "-u");
            Name        = "Reduce the level of smart searching.";
            Description = "Reduce the level of smart searching.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Prints version information";
            Description = "Prints version information";
        },
        [FlagParameter]@{
            Keys        = @("--vimgrep");
            Name        = "Show results with every match on its own line, including line numbers and";
            Description = "Show results with every match on its own line, including line numbers and";
        },
        [FlagParameter]@{
            Keys        = @("--with-filename", "-H");
            Name        = "Display the file path for matches.";
            Description = "Display the file path for matches.";
        },
        [FlagParameter]@{
            Keys        = @("--word-regexp", "-w");
            Name        = "Only show matches surrounded by word boundaries.";
            Description = "Only show matches surrounded by word boundaries.";
        }
    )
}
