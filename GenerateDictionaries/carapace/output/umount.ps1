# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/umount";
    Keys        = @("umount");
    Name        = "umount";
    Description = "Unmount filesystems";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "unmount all filesystems";
            Description = "unmount all filesystems";
        },
        [FlagParameter]@{
            Keys        = @("--all-targets", "-A");
            Name        = "unmount all mountpoints for the given device in the current namespace";
            Description = "unmount all mountpoints for the given device in the current namespace";
        },
        [FlagParameter]@{
            Keys        = @("--detach-loop", "-d");
            Name        = "if mounted loop device, also free this loop device";
            Description = "if mounted loop device, also free this loop device";
        },
        [FlagParameter]@{
            Keys        = @("--fake");
            Name        = "dry run; skip the umount(2) syscall";
            Description = "dry run; skip the umount(2) syscall";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "force unmount (in case of an unreachable NFS system)";
            Description = "force unmount (in case of an unreachable NFS system)";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--internal-only", "-i");
            Name        = "don't call the umount.<type> helpers";
            Description = "don't call the umount.<type> helpers";
        },
        [FlagParameter]@{
            Keys        = @("--lazy", "-l");
            Name        = "detach the filesystem now, clean up things later";
            Description = "detach the filesystem now, clean up things later";
        },
        [ValueParameter]@{
            Keys        = @("--namespace", "-N");
            Name        = "perform umount in another namespace";
            Description = "perform umount in another namespace";
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
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "suppress 'not mounted' error messages";
            Description = "suppress 'not mounted' error messages";
        },
        [FlagParameter]@{
            Keys        = @("--read-only", "-r");
            Name        = "in case unmounting fails, try to remount read-only";
            Description = "in case unmounting fails, try to remount read-only";
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-R");
            Name        = "recursively unmount a target with all its children";
            Description = "recursively unmount a target with all its children";
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
