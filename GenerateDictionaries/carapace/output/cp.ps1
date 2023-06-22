# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/cp";
    Keys        = @("cp");
    Name        = "cp";
    Description = "copy files and directories";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-H");
            Name        = "follow command-line symbolic links in SOURCE";
            Description = "follow command-line symbolic links in SOURCE";
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "copy directories recursively";
            Description = "copy directories recursively";
        },
        [FlagParameter]@{
            Keys        = @("-Z");
            Name        = "set SELinux security context of destination file to default type";
            Description = "set SELinux security context of destination file to default type";
        },
        [FlagParameter]@{
            Keys        = @("--archive", "-a");
            Name        = "same as -dR --preserve=all";
            Description = "same as -dR --preserve=all";
        },
        [FlagParameter]@{
            Keys        = @("--attributes-only");
            Name        = "don't copy the file data, just the attributes";
            Description = "don't copy the file data, just the attributes";
        },
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "like --backup but does not accept an argument";
            Description = "like --backup but does not accept an argument";
        },
        [ValueParameter]@{
            Keys        = @("--backup");
            Name        = "make a backup of each existing destination file";
            Description = "make a backup of each existing destination file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--context");
            Name        = "like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX";
            Description = "like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--copy-contents");
            Name        = "copy contents of special files when recursive";
            Description = "copy contents of special files when recursive";
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "same as --no-dereference --preserve=links";
            Description = "same as --no-dereference --preserve=links";
        },
        [FlagParameter]@{
            Keys        = @("--dereference", "-L");
            Name        = "always follow symbolic links in SOURCE";
            Description = "always follow symbolic links in SOURCE";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used)";
            Description = "if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used)";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "prompt before overwrite (overrides a previous -n option)";
            Description = "prompt before overwrite (overrides a previous -n option)";
        },
        [FlagParameter]@{
            Keys        = @("--link", "-l");
            Name        = "hard link files instead of copying";
            Description = "hard link files instead of copying";
        },
        [FlagParameter]@{
            Keys        = @("--no-clobber", "-n");
            Name        = "do not overwrite an existing file (overrides a previous -i option)";
            Description = "do not overwrite an existing file (overrides a previous -i option)";
        },
        [FlagParameter]@{
            Keys        = @("--no-dereference", "-P");
            Name        = "never follow symbolic links in SOURCE";
            Description = "never follow symbolic links in SOURCE";
        },
        [ValueParameter]@{
            Keys        = @("--no-preserve");
            Name        = "don't preserve the specified attributes";
            Description = "don't preserve the specified attributes";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-target-directory", "-T");
            Name        = "treat DEST as a normal file";
            Description = "treat DEST as a normal file";
        },
        [FlagParameter]@{
            Keys        = @("--one-file-system", "-x");
            Name        = "stay on this file system";
            Description = "stay on this file system";
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "same as --preserve=mode,ownership,timestamps";
            Description = "same as --preserve=mode,ownership,timestamps";
        },
        [FlagParameter]@{
            Keys        = @("--parents");
            Name        = "use full source file name under DIRECTORY";
            Description = "use full source file name under DIRECTORY";
        },
        [ValueParameter]@{
            Keys        = @("--preserve");
            Name        = "preserve the specified attributes (default: mode,ownership,timestamps), if possible additional attributes: context, links, xattr, all";
            Description = "preserve the specified attributes (default: mode,ownership,timestamps), if possible additional attributes: context, links, xattr, all";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-r");
            Name        = "copy directories recursively";
            Description = "copy directories recursively";
        },
        [ValueParameter]@{
            Keys        = @("--reflink");
            Name        = "control clone/CoW copies";
            Description = "control clone/CoW copies";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--remove-destination");
            Name        = "remove each existing destination file before attempting to open it (contrast with --force)";
            Description = "remove each existing destination file before attempting to open it (contrast with --force)";
        },
        [ValueParameter]@{
            Keys        = @("--sparse");
            Name        = "control creation of sparse files.";
            Description = "control creation of sparse files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--strip-trailing-slashes");
            Name        = "remove any trailing slashes from each SOURCE argument";
            Description = "remove any trailing slashes from each SOURCE argument";
        },
        [ValueParameter]@{
            Keys        = @("--suffix", "-S");
            Name        = "override the usual backup suffix";
            Description = "override the usual backup suffix";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--symbolic-link", "-s");
            Name        = "make symbolic links instead of copying";
            Description = "make symbolic links instead of copying";
        },
        [ValueParameter]@{
            Keys        = @("--target-directory", "-t");
            Name        = "copy all SOURCE arguments into DIRECTORY";
            Description = "copy all SOURCE arguments into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update", "-u");
            Name        = "copy only when the SOURCE file is newer than the destination file or when the destination file is missing";
            Description = "copy only when the SOURCE file is newer than the destination file or when the destination file is missing";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "explain what is being done";
            Description = "explain what is being done";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
