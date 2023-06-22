# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/tar";
    Keys        = @("tar");
    Name        = "tar";
    Description = "tar - an archiving utility";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--absolute-names", "-P");
            Name        = "don't strip leading '/'s from file names";
            Description = "don't strip leading '/'s from file names";
        },
        [FlagParameter]@{
            Keys        = @("--acls");
            Name        = "Enable the POSIX ACLs support";
            Description = "Enable the POSIX ACLs support";
        },
        [ValueParameter]@{
            Keys        = @("--add-file");
            Name        = "add given FILE to the archive";
            Description = "add given FILE to the archive";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--after-date");
            Name        = "only store files older than DATE-OR-FILE";
            Description = "only store files older than DATE-OR-FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--anchored");
            Name        = "patterns match file name start";
            Description = "patterns match file name start";
        },
        [FlagParameter]@{
            Keys        = @("--append", "-r");
            Name        = "append files to the end of an archive";
            Description = "append files to the end of an archive";
        },
        [ValueParameter]@{
            Keys        = @("--atime-preserve");
            Name        = "preserve access times on dumped files";
            Description = "preserve access times on dumped files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--auto-compress", "-a");
            Name        = "use archive suffix to determine the compression program";
            Description = "use archive suffix to determine the compression program";
        },
        [ValueParameter]@{
            Keys        = @("--backup");
            Name        = "backup before removal";
            Description = "backup before removal";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--block-number", "-R");
            Name        = "show block number within archive with each message";
            Description = "show block number within archive with each message";
        },
        [ValueParameter]@{
            Keys        = @("--blocking-factor", "-b");
            Name        = "BLOCKS x 512 bytes per record";
            Description = "BLOCKS x 512 bytes per record";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--bzip2", "-j");
            Name        = "filter the archive through bzip2";
            Description = "filter the archive through bzip2";
        },
        [FlagParameter]@{
            Keys        = @("--catenate", "-A");
            Name        = "append tar files to an archive";
            Description = "append tar files to an archive";
        },
        [FlagParameter]@{
            Keys        = @("--check-device");
            Name        = "check device numbers when creating incremental archives";
            Description = "check device numbers when creating incremental archives";
        },
        [FlagParameter]@{
            Keys        = @("--check-links", "-l");
            Name        = "print a message if not all links are dumped";
            Description = "print a message if not all links are dumped";
        },
        [ValueParameter]@{
            Keys        = @("--checkpoint");
            Name        = "display progress messages every NUMBERth record";
            Description = "display progress messages every NUMBERth record";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--checkpoint-action");
            Name        = "execute ACTION on each checkpoint";
            Description = "execute ACTION on each checkpoint";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--clamp-mtime");
            Name        = "only set time when the file is more recent than what was given with --mtime";
            Description = "only set time when the file is more recent than what was given with --mtime";
        },
        [FlagParameter]@{
            Keys        = @("--compare");
            Name        = "find differences between archive and file system";
            Description = "find differences between archive and file system";
        },
        [FlagParameter]@{
            Keys        = @("--compress", "-Z");
            Name        = "filter the archive through compress";
            Description = "filter the archive through compress";
        },
        [FlagParameter]@{
            Keys        = @("--concatenate");
            Name        = "append tar files to an archive";
            Description = "append tar files to an archive";
        },
        [FlagParameter]@{
            Keys        = @("--confirmation");
            Name        = "ask for confirmation for every action";
            Description = "ask for confirmation for every action";
        },
        [FlagParameter]@{
            Keys        = @("--create", "-c");
            Name        = "create a new archive";
            Description = "create a new archive";
        },
        [FlagParameter]@{
            Keys        = @("--delay-directory-restore");
            Name        = "delay setting modification times and permissions until the end of extraction";
            Description = "delay setting modification times and permissions until the end of extraction";
        },
        [FlagParameter]@{
            Keys        = @("--delete");
            Name        = "delete from the archive (not on mag tapes!)";
            Description = "delete from the archive (not on mag tapes!)";
        },
        [FlagParameter]@{
            Keys        = @("--dereference", "-h");
            Name        = "follow symlinks";
            Description = "follow symlinks";
        },
        [FlagParameter]@{
            Keys        = @("--diff", "-d");
            Name        = "find differences between archive and file system";
            Description = "find differences between archive and file system";
        },
        [ValueParameter]@{
            Keys        = @("--directory", "-C");
            Name        = "change to directory DIR";
            Description = "change to directory DIR";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude");
            Name        = "exclude files, given as a PATTERN";
            Description = "exclude files, given as a PATTERN";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--exclude-backups");
            Name        = "exclude backup and lock files";
            Description = "exclude backup and lock files";
        },
        [FlagParameter]@{
            Keys        = @("--exclude-caches");
            Name        = "exclude contents of directories containing CACHEDIR.TAG";
            Description = "exclude contents of directories containing CACHEDIR.TAG";
        },
        [FlagParameter]@{
            Keys        = @("--exclude-caches-all");
            Name        = "exclude directories containing CACHEDIR.TAG";
            Description = "exclude directories containing CACHEDIR.TAG";
        },
        [FlagParameter]@{
            Keys        = @("--exclude-caches-under");
            Name        = "exclude everything under directories containing CACHEDIR.TAG";
            Description = "exclude everything under directories containing CACHEDIR.TAG";
        },
        [ValueParameter]@{
            Keys        = @("--exclude-from", "-X");
            Name        = "exclude patterns listed in FILE";
            Description = "exclude patterns listed in FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-ignore");
            Name        = "read exclude patterns for each directory from FILE";
            Description = "read exclude patterns for each directory from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-ignore-recursive");
            Name        = "read exclude patterns for each directory and its subdirectories from FILE";
            Description = "read exclude patterns for each directory and its subdirectories from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-tag");
            Name        = "exclude contents of directories containing FILE";
            Description = "exclude contents of directories containing FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-tag-all");
            Name        = "exclude directories containing FILE";
            Description = "exclude directories containing FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-tag-under");
            Name        = "exclude everything under directories containing FILE";
            Description = "exclude everything under directories containing FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--exclude-vcs");
            Name        = "exclude version control system directories";
            Description = "exclude version control system directories";
        },
        [FlagParameter]@{
            Keys        = @("--exclude-vcs-ignores");
            Name        = "read exclude patterns from the VCS ignore files";
            Description = "read exclude patterns from the VCS ignore files";
        },
        [FlagParameter]@{
            Keys        = @("--extract", "-x");
            Name        = "extract files from an archive";
            Description = "extract files from an archive";
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "use archive file or device ARCHIVE";
            Description = "use archive file or device ARCHIVE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--files-from", "-T");
            Name        = "get names to extract or create from FILE";
            Description = "get names to extract or create from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--force-local");
            Name        = "archive file is local even if it has a colon";
            Description = "archive file is local even if it has a colon";
        },
        [ValueParameter]@{
            Keys        = @("--format", "-H");
            Name        = "create archive of the given format";
            Description = "create archive of the given format";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--full-time");
            Name        = "print file time to its full resolution";
            Description = "print file time to its full resolution";
        },
        [FlagParameter]@{
            Keys        = @("--get");
            Name        = "extract files from an archive";
            Description = "extract files from an archive";
        },
        [ValueParameter]@{
            Keys        = @("--group");
            Name        = "force NAME as group for added files";
            Description = "force NAME as group for added files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--group-map");
            Name        = "use FILE to map file owner GIDs and names";
            Description = "use FILE to map file owner GIDs and names";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--gunzip");
            Name        = "filter the archive through gzip";
            Description = "filter the archive through gzip";
        },
        [FlagParameter]@{
            Keys        = @("--gzip", "-z");
            Name        = "filter the archive through gzip";
            Description = "filter the archive through gzip";
        },
        [FlagParameter]@{
            Keys        = @("--hard-dereference");
            Name        = "follow hard links";
            Description = "follow hard links";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "give this help list";
            Description = "give this help list";
        },
        [ValueParameter]@{
            Keys        = @("--hole-detection");
            Name        = "technique to detect holes";
            Description = "technique to detect holes";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case");
            Name        = "ignore case";
            Description = "ignore case";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-command-error");
            Name        = "ignore exit codes of children";
            Description = "ignore exit codes of children";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-failed-read");
            Name        = "do not exit with nonzero on unreadable files";
            Description = "do not exit with nonzero on unreadable files";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-zeros", "-i");
            Name        = "ignore zeroed blocks in archive (means EOF)";
            Description = "ignore zeroed blocks in archive (means EOF)";
        },
        [FlagParameter]@{
            Keys        = @("--incremental", "-G");
            Name        = "handle old GNU-format incremental backup";
            Description = "handle old GNU-format incremental backup";
        },
        [ValueParameter]@{
            Keys        = @("--index-file");
            Name        = "send verbose output to FILE";
            Description = "send verbose output to FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--info-script", "-F");
            Name        = "run script at end of each tape";
            Description = "run script at end of each tape";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-w");
            Name        = "ask for confirmation for every action";
            Description = "ask for confirmation for every action";
        },
        [FlagParameter]@{
            Keys        = @("--keep-directory-symlink");
            Name        = "preserve existing symlinks to directories when extracting";
            Description = "preserve existing symlinks to directories when extracting";
        },
        [FlagParameter]@{
            Keys        = @("--keep-newer-files");
            Name        = "don't replace existing files that are newer than their archive copies";
            Description = "don't replace existing files that are newer than their archive copies";
        },
        [FlagParameter]@{
            Keys        = @("--keep-old-files", "-k");
            Name        = "don't replace existing files when extracting, treat them as errors";
            Description = "don't replace existing files when extracting, treat them as errors";
        },
        [ValueParameter]@{
            Keys        = @("--label", "-V");
            Name        = "create archive with volume name TEXT";
            Description = "create archive with volume name TEXT";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--level");
            Name        = "dump level for created listed-incremental archive";
            Description = "dump level for created listed-incremental archive";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list", "-t");
            Name        = "list the contents of an archive";
            Description = "list the contents of an archive";
        },
        [ValueParameter]@{
            Keys        = @("--listed-incremental", "-g");
            Name        = "handle new GNU-format incremental backup";
            Description = "handle new GNU-format incremental backup";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--lzip");
            Name        = "filter the archive through lzip";
            Description = "filter the archive through lzip";
        },
        [FlagParameter]@{
            Keys        = @("--lzma");
            Name        = "filter the archive through lzma";
            Description = "filter the archive through lzma";
        },
        [FlagParameter]@{
            Keys        = @("--lzop");
            Name        = "filter the archive through lzop";
            Description = "filter the archive through lzop";
        },
        [ValueParameter]@{
            Keys        = @("--mode");
            Name        = "force (symbolic) mode CHANGES for added files";
            Description = "force (symbolic) mode CHANGES for added files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mtime");
            Name        = "set mtime for added files from DATE-OR-FILE";
            Description = "set mtime for added files from DATE-OR-FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--multi-volume", "-M");
            Name        = "create/list/extract multi-volume archive";
            Description = "create/list/extract multi-volume archive";
        },
        [ValueParameter]@{
            Keys        = @("--new-volume-script");
            Name        = "run script at end of each tape";
            Description = "run script at end of each tape";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--newer", "-N");
            Name        = "only store files newer than DATE-OR-FILE";
            Description = "only store files newer than DATE-OR-FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--newer-mtime");
            Name        = "compare date and time when data changed only";
            Description = "compare date and time when data changed only";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-acls");
            Name        = "Disable the POSIX ACLs support";
            Description = "Disable the POSIX ACLs support";
        },
        [FlagParameter]@{
            Keys        = @("--no-anchored");
            Name        = "patterns match after any '/'";
            Description = "patterns match after any '/'";
        },
        [FlagParameter]@{
            Keys        = @("--no-auto-compress");
            Name        = "do not use archive suffix to determine the compression program";
            Description = "do not use archive suffix to determine the compression program";
        },
        [FlagParameter]@{
            Keys        = @("--no-check-device");
            Name        = "do not check device numbers when creating";
            Description = "do not check device numbers when creating";
        },
        [FlagParameter]@{
            Keys        = @("--no-delay-directory-restore");
            Name        = "cancel the effect of --delay-directory-restore option";
            Description = "cancel the effect of --delay-directory-restore option";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-case");
            Name        = "case sensitive matching (default)";
            Description = "case sensitive matching (default)";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-command-error");
            Name        = "treat non-zero exit codes of children as error";
            Description = "treat non-zero exit codes of children as error";
        },
        [FlagParameter]@{
            Keys        = @("--no-null");
            Name        = "disable the effect of the previous --null option";
            Description = "disable the effect of the previous --null option";
        },
        [FlagParameter]@{
            Keys        = @("--no-overwrite-dir");
            Name        = "preserve metadata of existing directories";
            Description = "preserve metadata of existing directories";
        },
        [ValueParameter]@{
            Keys        = @("--no-quote-chars");
            Name        = "disable quoting for characters from STRING";
            Description = "disable quoting for characters from STRING";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-recursion");
            Name        = "avoid descending automatically in directories";
            Description = "avoid descending automatically in directories";
        },
        [FlagParameter]@{
            Keys        = @("--no-same-owner");
            Name        = "extract files as yourself";
            Description = "extract files as yourself";
        },
        [FlagParameter]@{
            Keys        = @("--no-same-permissions");
            Name        = "apply the user's umask when extracting permissions from the archive";
            Description = "apply the user's umask when extracting permissions from the archive";
        },
        [FlagParameter]@{
            Keys        = @("--no-seek");
            Name        = "archive is not seekable";
            Description = "archive is not seekable";
        },
        [FlagParameter]@{
            Keys        = @("--no-selinux");
            Name        = "Disable the SELinux context support";
            Description = "Disable the SELinux context support";
        },
        [FlagParameter]@{
            Keys        = @("--no-unquote");
            Name        = "do not unquote input file or member names";
            Description = "do not unquote input file or member names";
        },
        [FlagParameter]@{
            Keys        = @("--no-verbatim-files-from");
            Name        = "treats file names starting with dash as options";
            Description = "treats file names starting with dash as options";
        },
        [FlagParameter]@{
            Keys        = @("--no-wildcards");
            Name        = "verbatim string matching";
            Description = "verbatim string matching";
        },
        [FlagParameter]@{
            Keys        = @("--no-wildcards-match-slash");
            Name        = "wildcards do not match '/'";
            Description = "wildcards do not match '/'";
        },
        [FlagParameter]@{
            Keys        = @("--no-xattrs");
            Name        = "Disable extended attributes support";
            Description = "Disable extended attributes support";
        },
        [FlagParameter]@{
            Keys        = @("--null");
            Name        = "reads null-terminated names; implies";
            Description = "reads null-terminated names; implies";
        },
        [FlagParameter]@{
            Keys        = @("--numeric-owner");
            Name        = "always use numbers for user/group names";
            Description = "always use numbers for user/group names";
        },
        [FlagParameter]@{
            Keys        = @("-o");
            Name        = "when creating, same as --old-archive; when extracting, same as --no-same-owner";
            Description = "when creating, same as --old-archive; when extracting, same as --no-same-owner";
        },
        [ValueParameter]@{
            Keys        = @("--occurrence");
            Name        = "process only the NUMBERth occurrence of each file in the archive";
            Description = "process only the NUMBERth occurrence of each file in the archive";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--old-archive");
            Name        = "same as --format=v7";
            Description = "same as --format=v7";
        },
        [FlagParameter]@{
            Keys        = @("--one-file-system");
            Name        = "stay in local file system when creating archive";
            Description = "stay in local file system when creating archive";
        },
        [ValueParameter]@{
            Keys        = @("--one-top-level");
            Name        = "create a subdirectory to avoid having loose files extracted";
            Description = "create a subdirectory to avoid having loose files extracted";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--overwrite");
            Name        = "overwrite existing files when extracting";
            Description = "overwrite existing files when extracting";
        },
        [FlagParameter]@{
            Keys        = @("--overwrite-dir");
            Name        = "overwrite metadata of existing directories when extracting";
            Description = "overwrite metadata of existing directories when extracting";
        },
        [ValueParameter]@{
            Keys        = @("--owner");
            Name        = "force NAME as owner for added files";
            Description = "force NAME as owner for added files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--owner-map");
            Name        = "use FILE to map file owner UIDs and names";
            Description = "use FILE to map file owner UIDs and names";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pax-option");
            Name        = "control pax keywords";
            Description = "control pax keywords";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--portability");
            Name        = "same as --format=v7";
            Description = "same as --format=v7";
        },
        [FlagParameter]@{
            Keys        = @("--posix");
            Name        = "same as --format=posix";
            Description = "same as --format=posix";
        },
        [FlagParameter]@{
            Keys        = @("--preserve-order", "-s");
            Name        = "member arguments are listed in the same order";
            Description = "member arguments are listed in the same order";
        },
        [FlagParameter]@{
            Keys        = @("--preserve-permissions", "-p");
            Name        = "extract information about file permissions";
            Description = "extract information about file permissions";
        },
        [ValueParameter]@{
            Keys        = @("--quote-chars");
            Name        = "additionally quote characters from STRING";
            Description = "additionally quote characters from STRING";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--quoting-style");
            Name        = "set name quoting style";
            Description = "set name quoting style";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--read-full-records", "-B");
            Name        = "reblock as we read (for 4.2BSD pipes)";
            Description = "reblock as we read (for 4.2BSD pipes)";
        },
        [ValueParameter]@{
            Keys        = @("--record-size");
            Name        = "NUMBER of bytes per record, multiple of 512";
            Description = "NUMBER of bytes per record, multiple of 512";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--recursion");
            Name        = "recurse into directories (default)";
            Description = "recurse into directories (default)";
        },
        [FlagParameter]@{
            Keys        = @("--recursive-unlink");
            Name        = "empty hierarchies prior to extracting directory";
            Description = "empty hierarchies prior to extracting directory";
        },
        [FlagParameter]@{
            Keys        = @("--remove-files");
            Name        = "remove files after adding them to the archive";
            Description = "remove files after adding them to the archive";
        },
        [FlagParameter]@{
            Keys        = @("--restrict");
            Name        = "disable use of some potentially harmful options";
            Description = "disable use of some potentially harmful options";
        },
        [ValueParameter]@{
            Keys        = @("--rmt-command");
            Name        = "use given rmt COMMAND instead of rmt";
            Description = "use given rmt COMMAND instead of rmt";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--rsh-command");
            Name        = "use remote COMMAND instead of rsh";
            Description = "use remote COMMAND instead of rsh";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--same-order");
            Name        = "member arguments are listed in the same order";
            Description = "member arguments are listed in the same order";
        },
        [FlagParameter]@{
            Keys        = @("--same-owner");
            Name        = "try extracting files with the same ownership";
            Description = "try extracting files with the same ownership";
        },
        [FlagParameter]@{
            Keys        = @("--same-permissions");
            Name        = "extract information about file permissions";
            Description = "extract information about file permissions";
        },
        [FlagParameter]@{
            Keys        = @("--seek", "-n");
            Name        = "archive is seekable";
            Description = "archive is seekable";
        },
        [FlagParameter]@{
            Keys        = @("--selinux");
            Name        = "Enable the SELinux context support";
            Description = "Enable the SELinux context support";
        },
        [FlagParameter]@{
            Keys        = @("--show-defaults");
            Name        = "show tar defaults";
            Description = "show tar defaults";
        },
        [FlagParameter]@{
            Keys        = @("--show-omitted-dirs");
            Name        = "list each directory that does not match search criteria";
            Description = "list each directory that does not match search criteria";
        },
        [FlagParameter]@{
            Keys        = @("--show-snapshot-field-ranges");
            Name        = "show valid ranges for snapshot-file fields";
            Description = "show valid ranges for snapshot-file fields";
        },
        [FlagParameter]@{
            Keys        = @("--show-stored-names");
            Name        = "show file or archive names after transformation";
            Description = "show file or archive names after transformation";
        },
        [FlagParameter]@{
            Keys        = @("--show-transformed-names");
            Name        = "show file or archive names after transformation";
            Description = "show file or archive names after transformation";
        },
        [FlagParameter]@{
            Keys        = @("--skip-old-files");
            Name        = "don't replace existing files when extracting";
            Description = "don't replace existing files when extracting";
        },
        [ValueParameter]@{
            Keys        = @("--sort");
            Name        = "directory sorting order";
            Description = "directory sorting order";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sparse", "-S");
            Name        = "handle sparse files efficiently";
            Description = "handle sparse files efficiently";
        },
        [ValueParameter]@{
            Keys        = @("--sparse-version");
            Name        = "set version of the sparse format to use";
            Description = "set version of the sparse format to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--starting-file", "-K");
            Name        = "begin at member MEMBER-NAME when reading the archive";
            Description = "begin at member MEMBER-NAME when reading the archive";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--strip-components");
            Name        = "strip NUMBER leading components from file names on extraction";
            Description = "strip NUMBER leading components from file names on extraction";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--suffix");
            Name        = "backup before removal";
            Description = "backup before removal";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tape-length", "-L");
            Name        = "change tape after writing NUMBER x 1024 bytes";
            Description = "change tape after writing NUMBER x 1024 bytes";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--test-label");
            Name        = "test the archive volume label and exit";
            Description = "test the archive volume label and exit";
        },
        [ValueParameter]@{
            Keys        = @("--to-command");
            Name        = "pipe extracted files to another program";
            Description = "pipe extracted files to another program";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--to-stdout", "-O");
            Name        = "extract files to standard output";
            Description = "extract files to standard output";
        },
        [ValueParameter]@{
            Keys        = @("--totals");
            Name        = "print total bytes after processing the archive";
            Description = "print total bytes after processing the archive";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--touch", "-m");
            Name        = "don't extract file modified time";
            Description = "don't extract file modified time";
        },
        [ValueParameter]@{
            Keys        = @("--transform");
            Name        = "use sed replace EXPRESSION to transform file names";
            Description = "use sed replace EXPRESSION to transform file names";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--uncompress");
            Name        = "filter the archive through compress";
            Description = "filter the archive through compress";
        },
        [FlagParameter]@{
            Keys        = @("--ungzip");
            Name        = "filter the archive through gzip";
            Description = "filter the archive through gzip";
        },
        [FlagParameter]@{
            Keys        = @("--unlink-first", "-U");
            Name        = "remove each file prior to extracting over it";
            Description = "remove each file prior to extracting over it";
        },
        [FlagParameter]@{
            Keys        = @("--unquote");
            Name        = "unquote input file or member names (default)";
            Description = "unquote input file or member names (default)";
        },
        [FlagParameter]@{
            Keys        = @("--update", "-u");
            Name        = "only append files newer than copy in archive";
            Description = "only append files newer than copy in archive";
        },
        [FlagParameter]@{
            Keys        = @("--usage");
            Name        = "give a short usage message";
            Description = "give a short usage message";
        },
        [ValueParameter]@{
            Keys        = @("--use-compress-program", "-I");
            Name        = "filter through PROG (must accept -d)";
            Description = "filter through PROG (must accept -d)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--utc");
            Name        = "print file modification times in UTC";
            Description = "print file modification times in UTC";
        },
        [FlagParameter]@{
            Keys        = @("--verbatim-files-from");
            Name        = "reads file names verbatim";
            Description = "reads file names verbatim";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbosely list files processed";
            Description = "verbosely list files processed";
        },
        [FlagParameter]@{
            Keys        = @("--verify", "-W");
            Name        = "attempt to verify the archive after writing it";
            Description = "attempt to verify the archive after writing it";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "print program version";
            Description = "print program version";
        },
        [ValueParameter]@{
            Keys        = @("--volno-file");
            Name        = "use/update the volume number in FILE";
            Description = "use/update the volume number in FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--warning");
            Name        = "warning control";
            Description = "warning control";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--wildcards");
            Name        = "use wildcards (default for exclusion)";
            Description = "use wildcards (default for exclusion)";
        },
        [FlagParameter]@{
            Keys        = @("--wildcards-match-slash");
            Name        = "wildcards match '/' (default for exclusion)";
            Description = "wildcards match '/' (default for exclusion)";
        },
        [FlagParameter]@{
            Keys        = @("--xattrs");
            Name        = "Enable extended attributes support";
            Description = "Enable extended attributes support";
        },
        [ValueParameter]@{
            Keys        = @("--xattrs-exclude");
            Name        = "specify the exclude pattern for xattr keys";
            Description = "specify the exclude pattern for xattr keys";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--xattrs-include");
            Name        = "specify the include pattern for xattr keys";
            Description = "specify the include pattern for xattr keys";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--xform");
            Name        = "use sed replace EXPRESSION to transform file names";
            Description = "use sed replace EXPRESSION to transform file names";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--xz", "-J");
            Name        = "filter the archive through xz";
            Description = "filter the archive through xz";
        },
        [FlagParameter]@{
            Keys        = @("--zstd");
            Name        = "filter the archive through zstd";
            Description = "filter the archive through zstd";
        }
    )
}
