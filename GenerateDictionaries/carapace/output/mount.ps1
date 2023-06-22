# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/mount";
    Keys        = @("mount");
    Name        = "mount";
    Description = "mount a filesystem";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "mount all filesystems mentioned in fstab";
            Description = "mount all filesystems mentioned in fstab";
        },
        [FlagParameter]@{
            Keys        = @("--bind", "-B");
            Name        = "mount a subtree somewhere else (same as -o bind)";
            Description = "mount a subtree somewhere else (same as -o bind)";
        },
        [FlagParameter]@{
            Keys        = @("--fake", "-f");
            Name        = "dry run; skip the mount(2) syscall";
            Description = "dry run; skip the mount(2) syscall";
        },
        [FlagParameter]@{
            Keys        = @("--fork", "-F");
            Name        = "fork off for each device (use with -a)";
            Description = "fork off for each device (use with -a)";
        },
        [ValueParameter]@{
            Keys        = @("--fstab", "-T");
            Name        = "alternative file to /etc/fstab";
            Description = "alternative file to /etc/fstab";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--internal-only", "-i");
            Name        = "don't call the mount.<type> helpers";
            Description = "don't call the mount.<type> helpers";
        },
        [ValueParameter]@{
            Keys        = @("--label", "-L");
            Name        = "synonym for LABEL=<label>";
            Description = "synonym for LABEL=<label>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--make-private");
            Name        = "mark a subtree as private";
            Description = "mark a subtree as private";
        },
        [FlagParameter]@{
            Keys        = @("--make-rprivate");
            Name        = "recursively mark a whole subtree as private";
            Description = "recursively mark a whole subtree as private";
        },
        [FlagParameter]@{
            Keys        = @("--make-rshared");
            Name        = "recursively mark a whole subtree as shared";
            Description = "recursively mark a whole subtree as shared";
        },
        [FlagParameter]@{
            Keys        = @("--make-rslave");
            Name        = "recursively mark a whole subtree as slave";
            Description = "recursively mark a whole subtree as slave";
        },
        [FlagParameter]@{
            Keys        = @("--make-runbindable");
            Name        = "recursively mark a whole subtree as unbindable";
            Description = "recursively mark a whole subtree as unbindable";
        },
        [FlagParameter]@{
            Keys        = @("--make-shared");
            Name        = "mark a subtree as shared";
            Description = "mark a subtree as shared";
        },
        [FlagParameter]@{
            Keys        = @("--make-slave");
            Name        = "mark a subtree as slave";
            Description = "mark a subtree as slave";
        },
        [FlagParameter]@{
            Keys        = @("--make-unbindable");
            Name        = "mark a subtree as unbindable";
            Description = "mark a subtree as unbindable";
        },
        [FlagParameter]@{
            Keys        = @("--move", "-M");
            Name        = "move a subtree to some other place";
            Description = "move a subtree to some other place";
        },
        [ValueParameter]@{
            Keys        = @("--namespace", "-N");
            Name        = "perform mount in another namespace";
            Description = "perform mount in another namespace";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-canonicalize", "-c");
            Name        = "don't canonicalize paths";
            Description = "don't canonicalize paths";
        },
        [FlagParameter]@{
            Keys        = @("--no-mtab", "-n");
            Name        = "don't write to /etc/mtab";
            Description = "don't write to /etc/mtab";
        },
        [ValueParameter]@{
            Keys        = @("--options", "-o");
            Name        = "comma-separated list of mount options";
            Description = "comma-separated list of mount options";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--options-mode");
            Name        = "what to do with options loaded from fstab";
            Description = "what to do with options loaded from fstab";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--options-source");
            Name        = "mount options source";
            Description = "mount options source";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--options-source-force");
            Name        = "force use of options from fstab/mtab";
            Description = "force use of options from fstab/mtab";
        },
        [FlagParameter]@{
            Keys        = @("--rbind", "-R");
            Name        = "mount a subtree and all submounts somewhere else";
            Description = "mount a subtree and all submounts somewhere else";
        },
        [FlagParameter]@{
            Keys        = @("--read-only", "-r");
            Name        = "mount the filesystem read-only (same as -o ro)";
            Description = "mount the filesystem read-only (same as -o ro)";
        },
        [ValueParameter]@{
            Keys        = @("--rw", "-w");
            Name        = "mount the filesystem read-write (default)";
            Description = "mount the filesystem read-write (default)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-labels", "-l");
            Name        = "show also filesystem labels";
            Description = "show also filesystem labels";
        },
        [ValueParameter]@{
            Keys        = @("--source");
            Name        = "explicitly specifies source (path, label, uuid)";
            Description = "explicitly specifies source (path, label, uuid)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target");
            Name        = "explicitly specifies mountpoint";
            Description = "explicitly specifies mountpoint";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target-prefix");
            Name        = "specifies path used for all mountpoints";
            Description = "specifies path used for all mountpoints";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--test-opts", "-O");
            Name        = "limit the set of filesystems (use with -a)";
            Description = "limit the set of filesystems (use with -a)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--types", "-t");
            Name        = "limit the set of filesystem types";
            Description = "limit the set of filesystem types";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--uuid", "-U");
            Name        = "synonym for UUID=<uuid>";
            Description = "synonym for UUID=<uuid>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "say what is being done";
            Description = "say what is being done";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
