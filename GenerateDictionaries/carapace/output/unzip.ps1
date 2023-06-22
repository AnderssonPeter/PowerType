# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/unzip";
    Keys        = @("unzip");
    Name        = "unzip";
    Description = "list, test and extract compressed files in a ZIP archive";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "match filenames case-insensitively";
            Description = "match filenames case-insensitively";
        },
        [FlagParameter]@{
            Keys        = @("-K");
            Name        = "keep setuid/setgid/tacky permissions";
            Description = "keep setuid/setgid/tacky permissions";
        },
        [FlagParameter]@{
            Keys        = @("-L");
            Name        = "make (some) names lowercase";
            Description = "make (some) names lowercase";
        },
        [FlagParameter]@{
            Keys        = @("-M");
            Name        = "pipe through `"more`" pager";
            Description = "pipe through `"more`" pager";
        },
        [FlagParameter]@{
            Keys        = @("-T");
            Name        = "timestamp archive to latest";
            Description = "timestamp archive to latest";
        },
        [FlagParameter]@{
            Keys        = @("-U");
            Name        = "use escapes for all non-ASCII Unicode";
            Description = "use escapes for all non-ASCII Unicode";
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "retain VMS version numbers";
            Description = "retain VMS version numbers";
        },
        [FlagParameter]@{
            Keys        = @("-X");
            Name        = "restore UID/GID info";
            Description = "restore UID/GID info";
        },
        [FlagParameter]@{
            Keys        = @("-Z");
            Name        = "ZipInfo mode";
            Description = "ZipInfo mode";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "auto-convert any text files";
            Description = "auto-convert any text files";
        },
        [ValueParameter]@{
            Keys        = @("-d");
            Name        = "extract files into exdir";
            Description = "extract files into exdir";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "freshen existing files, create none";
            Description = "freshen existing files, create none";
        },
        [FlagParameter]@{
            Keys        = @("-j");
            Name        = "junk paths (do not make directories)";
            Description = "junk paths (do not make directories)";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "list files (short format)";
            Description = "list files (short format)";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "never overwrite existing files";
            Description = "never overwrite existing files";
        },
        [FlagParameter]@{
            Keys        = @("-o");
            Name        = "overwrite files WITHOUT prompting";
            Description = "overwrite files WITHOUT prompting";
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "extract files to pipe, no messages";
            Description = "extract files to pipe, no messages";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "quiet mode (-qq => quieter)";
            Description = "quiet mode (-qq => quieter)";
        },
        [FlagParameter]@{
            Keys        = @("-t");
            Name        = "test compressed archive data";
            Description = "test compressed archive data";
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "update files, create if necessary";
            Description = "update files, create if necessary";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "list verbosely/show version info";
            Description = "list verbosely/show version info";
        },
        [ValueParameter]@{
            Keys        = @("-x");
            Name        = "exclude files that follow (in xlist)";
            Description = "exclude files that follow (in xlist)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-z");
            Name        = "display archive comment only";
            Description = "display archive comment only";
        }
    )
}
