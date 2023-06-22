# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/zip";
    Keys        = @("zip");
    Name        = "zip";
    Description = "package and compress (archive) files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-0");
            Name        = "store only";
            Description = "store only";
        },
        [FlagParameter]@{
            Keys        = @("-1");
            Name        = "compress faster";
            Description = "compress faster";
        },
        [FlagParameter]@{
            Keys        = @("-9");
            Name        = "compress better";
            Description = "compress better";
        },
        [FlagParameter]@{
            Keys        = @("-@");
            Name        = "read names from stdin";
            Description = "read names from stdin";
        },
        [FlagParameter]@{
            Keys        = @("-A");
            Name        = "adjust self-extracting exe";
            Description = "adjust self-extracting exe";
        },
        [FlagParameter]@{
            Keys        = @("-D");
            Name        = "do not add directory entries";
            Description = "do not add directory entries";
        },
        [FlagParameter]@{
            Keys        = @("-F");
            Name        = "fix zipfile (-FF try harder)";
            Description = "fix zipfile (-FF try harder)";
        },
        [FlagParameter]@{
            Keys        = @("-J");
            Name        = "junk zipfile prefix (unzipsfx)";
            Description = "junk zipfile prefix (unzipsfx)";
        },
        [FlagParameter]@{
            Keys        = @("-T");
            Name        = "test zipfile integrity";
            Description = "test zipfile integrity";
        },
        [FlagParameter]@{
            Keys        = @("-X");
            Name        = "eXclude eXtra file attributes";
            Description = "eXclude eXtra file attributes";
        },
        [ValueParameter]@{
            Keys        = @("-b");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-c");
            Name        = "add one-line comments";
            Description = "add one-line comments";
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "delete entries in zipfile";
            Description = "delete entries in zipfile";
        },
        [FlagParameter]@{
            Keys        = @("-e");
            Name        = "encrypt";
            Description = "encrypt";
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "freshen: only changed files";
            Description = "freshen: only changed files";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "include only the following names";
            Description = "include only the following names";
        },
        [FlagParameter]@{
            Keys        = @("-j");
            Name        = "junk (don't record) directory names";
            Description = "junk (don't record) directory names";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "convert LF to CR LF";
            Description = "convert LF to CR LF";
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "move into zipfile (delete OS files)";
            Description = "move into zipfile (delete OS files)";
        },
        [ValueParameter]@{
            Keys        = @("-n");
            Name        = "don't compress these suffixes";
            Description = "don't compress these suffixes";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-o");
            Name        = "make zipfile as old as latest entry";
            Description = "make zipfile as old as latest entry";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "quiet operation";
            Description = "quiet operation";
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "recurse into directories";
            Description = "recurse into directories";
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "update: only changed or new files";
            Description = "update: only changed or new files";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "verbose operation/print version info";
            Description = "verbose operation/print version info";
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "exclude the following names";
            Description = "exclude the following names";
        },
        [FlagParameter]@{
            Keys        = @("-y");
            Name        = "store symbolic links as the link instead of the referenced file";
            Description = "store symbolic links as the link instead of the referenced file";
        },
        [FlagParameter]@{
            Keys        = @("-z");
            Name        = "add zipfile comment";
            Description = "add zipfile comment";
        }
    )
}
