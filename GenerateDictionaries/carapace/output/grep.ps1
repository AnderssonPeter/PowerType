# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.gnu.org/software/grep/";
    Keys        = @("grep");
    Name        = "grep";
    Description = "print lines that match patterns";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-I");
            Name        = "equivalent to --binary-files=without-match";
            Description = "equivalent to --binary-files=without-match";
        },
        [ValueParameter]@{
            Keys        = @("--after-context", "-A");
            Name        = "print NUM lines of trailing context";
            Description = "print NUM lines of trailing context";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--basic-regexp", "-G");
            Name        = "PATTERNS are basic regular expressions";
            Description = "PATTERNS are basic regular expressions";
        },
        [ValueParameter]@{
            Keys        = @("--before-context", "-B");
            Name        = "print NUM lines of leading context";
            Description = "print NUM lines of leading context";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--binary", "-U");
            Name        = "do not strip CR characters at EOL (MSDOS/Windows)";
            Description = "do not strip CR characters at EOL (MSDOS/Windows)";
        },
        [ValueParameter]@{
            Keys        = @("--binary-files");
            Name        = "assume that binary files are TYPE;";
            Description = "assume that binary files are TYPE;";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--byte-offset", "-b");
            Name        = "print the byte offset with output lines";
            Description = "print the byte offset with output lines";
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--colour");
            Name        = "use markers to highlight the matching strings;";
            Description = "use markers to highlight the matching strings;";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--context", "-C");
            Name        = "print NUM lines of output context";
            Description = "print NUM lines of output context";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--count", "-c");
            Name        = "print only a count of selected lines per FILE";
            Description = "print only a count of selected lines per FILE";
        },
        [FlagParameter]@{
            Keys        = @("--dereference-recursive", "-R");
            Name        = "likewise, but follow all symlinks";
            Description = "likewise, but follow all symlinks";
        },
        [ValueParameter]@{
            Keys        = @("--devices", "-D");
            Name        = "how to handle devices, FIFOs and sockets;";
            Description = "how to handle devices, FIFOs and sockets;";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--directories", "-d");
            Name        = "how to handle directories;";
            Description = "how to handle directories;";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude");
            Name        = "skip files that match GLOB";
            Description = "skip files that match GLOB";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-dir");
            Name        = "skip directories that match GLOB";
            Description = "skip directories that match GLOB";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-from");
            Name        = "skip files that match any file pattern from FILE";
            Description = "skip files that match any file pattern from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--extended-regexp", "-E");
            Name        = "PATTERNS are extended regular expressions";
            Description = "PATTERNS are extended regular expressions";
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "take PATTERNS from FILE";
            Description = "take PATTERNS from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--files-with-matches", "-l");
            Name        = "print only names of FILEs with selected lines";
            Description = "print only names of FILEs with selected lines";
        },
        [FlagParameter]@{
            Keys        = @("--files-without-match", "-L");
            Name        = "print only names of FILEs with no selected lines";
            Description = "print only names of FILEs with no selected lines";
        },
        [FlagParameter]@{
            Keys        = @("--fixed-strings", "-F");
            Name        = "PATTERNS are strings";
            Description = "PATTERNS are strings";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help text and exit";
            Description = "display this help text and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-i");
            Name        = "ignore case distinctions in patterns and data";
            Description = "ignore case distinctions in patterns and data";
        },
        [ValueParameter]@{
            Keys        = @("--include");
            Name        = "search only files that match GLOB (a file pattern)";
            Description = "search only files that match GLOB (a file pattern)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--initial-tab", "-T");
            Name        = "make tabs line up (if needed)";
            Description = "make tabs line up (if needed)";
        },
        [FlagParameter]@{
            Keys        = @("--invert-match", "-v");
            Name        = "select non-matching lines";
            Description = "select non-matching lines";
        },
        [ValueParameter]@{
            Keys        = @("--label");
            Name        = "use LABEL as the standard input file name prefix";
            Description = "use LABEL as the standard input file name prefix";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--line-buffered");
            Name        = "flush output on every line";
            Description = "flush output on every line";
        },
        [FlagParameter]@{
            Keys        = @("--line-number", "-n");
            Name        = "print line number with output lines";
            Description = "print line number with output lines";
        },
        [FlagParameter]@{
            Keys        = @("--line-regexp", "-x");
            Name        = "match only whole lines";
            Description = "match only whole lines";
        },
        [ValueParameter]@{
            Keys        = @("--max-count", "-m");
            Name        = "stop after NUM selected lines";
            Description = "stop after NUM selected lines";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-filename", "-h");
            Name        = "suppress the file name prefix on output";
            Description = "suppress the file name prefix on output";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-case");
            Name        = "do not ignore case distinctions (default)";
            Description = "do not ignore case distinctions (default)";
        },
        [FlagParameter]@{
            Keys        = @("--no-messages", "-s");
            Name        = "suppress error messages";
            Description = "suppress error messages";
        },
        [FlagParameter]@{
            Keys        = @("--null", "-Z");
            Name        = "print 0 byte after FILE name";
            Description = "print 0 byte after FILE name";
        },
        [FlagParameter]@{
            Keys        = @("--null-data", "-z");
            Name        = "a data line ends in 0 byte, not newline";
            Description = "a data line ends in 0 byte, not newline";
        },
        [FlagParameter]@{
            Keys        = @("--only-matching", "-o");
            Name        = "show only nonempty parts of lines that match";
            Description = "show only nonempty parts of lines that match";
        },
        [FlagParameter]@{
            Keys        = @("--perl-regexp", "-P");
            Name        = "PATTERNS are Perl regular expressions";
            Description = "PATTERNS are Perl regular expressions";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "suppress all normal output";
            Description = "suppress all normal output";
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-r");
            Name        = "like --directories=recurse";
            Description = "like --directories=recurse";
        },
        [ValueParameter]@{
            Keys        = @("--regexp", "-e");
            Name        = "use PATTERNS for matching";
            Description = "use PATTERNS for matching";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--silent");
            Name        = "suppress all normal output";
            Description = "suppress all normal output";
        },
        [FlagParameter]@{
            Keys        = @("--text", "-a");
            Name        = "equivalent to --binary-files=text";
            Description = "equivalent to --binary-files=text";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version information and exit";
            Description = "display version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--with-filename", "-H");
            Name        = "print file name with output lines";
            Description = "print file name with output lines";
        },
        [FlagParameter]@{
            Keys        = @("--word-regexp", "-w");
            Name        = "match only whole words";
            Description = "match only whole words";
        }
    )
}
