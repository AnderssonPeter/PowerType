# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/file";
    Keys        = @("file");
    Name        = "file";
    Description = "determine file type";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--apple");
            Name        = "output the Apple CREATOR/TYPE";
            Description = "output the Apple CREATOR/TYPE";
        },
        [FlagParameter]@{
            Keys        = @("--brief", "-b");
            Name        = "do not prepend filenames to output lines";
            Description = "do not prepend filenames to output lines";
        },
        [FlagParameter]@{
            Keys        = @("--checking-printout", "-c");
            Name        = "print the parsed form of the magic file";
            Description = "print the parsed form of the magic file";
        },
        [FlagParameter]@{
            Keys        = @("--compile", "-C");
            Name        = "compile file specified by -m";
            Description = "compile file specified by -m";
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "print debugging messages";
            Description = "print debugging messages";
        },
        [FlagParameter]@{
            Keys        = @("--dereference", "-L");
            Name        = "follow symlinks";
            Description = "follow symlinks";
        },
        [ValueParameter]@{
            Keys        = @("--exclude", "-e");
            Name        = "exclude TEST from the list of test to be performed for file";
            Description = "exclude TEST from the list of test to be performed for file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-quiet");
            Name        = "like exclude, but ignore unknown tests";
            Description = "like exclude, but ignore unknown tests";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--extension");
            Name        = "output a slash-separated list of extensions";
            Description = "output a slash-separated list of extensions";
        },
        [ValueParameter]@{
            Keys        = @("--files-from", "-f");
            Name        = "read the filenames to be examined from FILE";
            Description = "read the filenames to be examined from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--keep-going", "-k");
            Name        = "don't stop at the first match";
            Description = "don't stop at the first match";
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "list magic strength";
            Description = "list magic strength";
        },
        [ValueParameter]@{
            Keys        = @("--magic-file", "-m");
            Name        = "use LIST as a colon-separated list of magic number files";
            Description = "use LIST as a colon-separated list of magic number files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--mime", "-i");
            Name        = "output MIME type strings";
            Description = "output MIME type strings";
        },
        [FlagParameter]@{
            Keys        = @("--mime-encoding");
            Name        = "output the MIME encoding";
            Description = "output the MIME encoding";
        },
        [FlagParameter]@{
            Keys        = @("--mime-type");
            Name        = "output the MIME type";
            Description = "output the MIME type";
        },
        [FlagParameter]@{
            Keys        = @("--no-buffer", "-n");
            Name        = "do not buffer output";
            Description = "do not buffer output";
        },
        [FlagParameter]@{
            Keys        = @("--no-dereference", "-h");
            Name        = "don't follow symlinks (default)";
            Description = "don't follow symlinks (default)";
        },
        [FlagParameter]@{
            Keys        = @("--no-pad", "-N");
            Name        = "do not pad output";
            Description = "do not pad output";
        },
        [FlagParameter]@{
            Keys        = @("--no-sandbox", "-S");
            Name        = "disable system call sandboxing";
            Description = "disable system call sandboxing";
        },
        [FlagParameter]@{
            Keys        = @("--parameter", "-P");
            Name        = "set file engine parameter limits";
            Description = "set file engine parameter limits";
        },
        [FlagParameter]@{
            Keys        = @("--preserve-date", "-p");
            Name        = "preserve access times on files";
            Description = "preserve access times on files";
        },
        [FlagParameter]@{
            Keys        = @("--print0", "-0");
            Name        = "terminate filenames with ASCII NUL";
            Description = "terminate filenames with ASCII NUL";
        },
        [FlagParameter]@{
            Keys        = @("--raw", "-r");
            Name        = "don't translate unprintable chars to \ooo";
            Description = "don't translate unprintable chars to \ooo";
        },
        [ValueParameter]@{
            Keys        = @("--separator", "-F");
            Name        = "use string as separator instead of ``:'";
            Description = "use string as separator instead of ``:'";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--special-files", "-s");
            Name        = "treat special (block/char devices) files as ordinary ones";
            Description = "treat special (block/char devices) files as ordinary ones";
        },
        [FlagParameter]@{
            Keys        = @("--uncompress", "-z");
            Name        = "try to look inside compressed files";
            Description = "try to look inside compressed files";
        },
        [FlagParameter]@{
            Keys        = @("--uncompress-noreport", "-Z");
            Name        = "only print the contents of compressed files";
            Description = "only print the contents of compressed files";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
