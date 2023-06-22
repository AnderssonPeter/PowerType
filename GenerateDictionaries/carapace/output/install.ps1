# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/install";
    Keys        = @("install");
    Name        = "install";
    Description = "copy files and set attributes";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-D");
            Name        = "create all leading components of DEST except the last,";
            Description = "create all leading components of DEST except the last,";
        },
        [FlagParameter]@{
            Keys        = @("-Z");
            Name        = "set SELinux security context of destination";
            Description = "set SELinux security context of destination";
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
        [FlagParameter]@{
            Keys        = @("-c");
            Name        = "(ignored)";
            Description = "(ignored)";
        },
        [FlagParameter]@{
            Keys        = @("--compare", "-C");
            Name        = "compare each pair of source and destination files, and";
            Description = "compare each pair of source and destination files, and";
        },
        [ValueParameter]@{
            Keys        = @("--context");
            Name        = "like -Z, or if CTX is specified then set the";
            Description = "like -Z, or if CTX is specified then set the";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--directory", "-d");
            Name        = "treat all arguments as directory names; create all";
            Description = "treat all arguments as directory names; create all";
        },
        [ValueParameter]@{
            Keys        = @("--group", "-g");
            Name        = "set group ownership, instead of process' current group";
            Description = "set group ownership, instead of process' current group";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--mode", "-m");
            Name        = "set permission mode (as in chmod), instead of rwxr-xr-x";
            Description = "set permission mode (as in chmod), instead of rwxr-xr-x";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-target-directory", "-T");
            Name        = "treat DEST as a normal file";
            Description = "treat DEST as a normal file";
        },
        [ValueParameter]@{
            Keys        = @("--owner", "-o");
            Name        = "set ownership (super-user only)";
            Description = "set ownership (super-user only)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--preserve-context");
            Name        = "preserve SELinux security context";
            Description = "preserve SELinux security context";
        },
        [FlagParameter]@{
            Keys        = @("--preserve-timestamps", "-p");
            Name        = "apply access/modification times of SOURCE files";
            Description = "apply access/modification times of SOURCE files";
        },
        [FlagParameter]@{
            Keys        = @("--strip", "-s");
            Name        = "strip symbol tables";
            Description = "strip symbol tables";
        },
        [ValueParameter]@{
            Keys        = @("--strip-program");
            Name        = "program used to strip binaries";
            Description = "program used to strip binaries";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--suffix", "-S");
            Name        = "override the usual backup suffix";
            Description = "override the usual backup suffix";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target-directory", "-t");
            Name        = "copy all SOURCE arguments into DIRECTORY";
            Description = "copy all SOURCE arguments into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "print the name of each directory as it is created";
            Description = "print the name of each directory as it is created";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
