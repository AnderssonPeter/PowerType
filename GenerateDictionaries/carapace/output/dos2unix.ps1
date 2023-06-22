# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Unix2dos";
    Keys        = @("dos2unix");
    Name        = "dos2unix";
    Description = "DOS/Mac to Unix and vice versa text file format converter";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-7");
            Name        = "convert 8 bit characters to 7 bit space";
            Description = "convert 8 bit characters to 7 bit space";
        },
        [FlagParameter]@{
            Keys        = @("--add-bom", "-m");
            Name        = "add Byte Order Mark (default UTF-8)";
            Description = "add Byte Order Mark (default UTF-8)";
        },
        [FlagParameter]@{
            Keys        = @("--allow-chown");
            Name        = "allow file ownership change";
            Description = "allow file ownership change";
        },
        [ValueParameter]@{
            Keys        = @("--convmode", "-c");
            Name        = "conversion mode";
            Description = "conversion mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--display-enc", "-D");
            Name        = "Set encoding of displayed text.";
            Description = "Set encoding of displayed text.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--follow-symlink", "-F");
            Name        = "follow symbolic links and convert the targets";
            Description = "follow symbolic links and convert the targets";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "force conversion of binary files";
            Description = "force conversion of binary files";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help text";
            Description = "display this help text";
        },
        [ValueParameter]@{
            Keys        = @("--info", "-i");
            Name        = "display file information";
            Description = "display file information";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--keep-bom", "-b");
            Name        = "keep Byte Order Mark";
            Description = "keep Byte Order Mark";
        },
        [FlagParameter]@{
            Keys        = @("--keep-utf16", "-u");
            Name        = "keep UTF-16 encoding";
            Description = "keep UTF-16 encoding";
        },
        [FlagParameter]@{
            Keys        = @("--keepdate", "-k");
            Name        = "keep output file date";
            Description = "keep output file date";
        },
        [FlagParameter]@{
            Keys        = @("--license", "-L");
            Name        = "display software license";
            Description = "display software license";
        },
        [FlagParameter]@{
            Keys        = @("--newfile", "-n");
            Name        = "write to new file";
            Description = "write to new file";
        },
        [FlagParameter]@{
            Keys        = @("--newline", "-l");
            Name        = "add additional newline";
            Description = "add additional newline";
        },
        [FlagParameter]@{
            Keys        = @("--no-allow-chown");
            Name        = "don't allow file ownership change (default)";
            Description = "don't allow file ownership change (default)";
        },
        [FlagParameter]@{
            Keys        = @("--oldfile", "-o");
            Name        = "write to old file (default)";
            Description = "write to old file (default)";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "quiet mode, suppress all warnings";
            Description = "quiet mode, suppress all warnings";
        },
        [FlagParameter]@{
            Keys        = @("--remove-bom", "-r");
            Name        = "remove Byte Order Mark (default)";
            Description = "remove Byte Order Mark (default)";
        },
        [FlagParameter]@{
            Keys        = @("--safe", "-s");
            Name        = "skip binary files (default)";
            Description = "skip binary files (default)";
        },
        [FlagParameter]@{
            Keys        = @("--skip-symlink", "-S");
            Name        = "keep symbolic links and targets unchanged (default)";
            Description = "keep symbolic links and targets unchanged (default)";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbose operation";
            Description = "verbose operation";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version number";
            Description = "display version number";
        }
    )
}
