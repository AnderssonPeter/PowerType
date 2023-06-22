# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://restic.net/";
    Keys        = @("restic");
    Name        = "restic";
    Description = "Backup and restore files";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cacert");
            Name        = "``file`` to load root certificates from (default: use system certificates)";
            Description = "``file`` to load root certificates from (default: use system certificates)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cache-dir");
            Name        = "set the cache ``directory``. (default: use system default cache directory)";
            Description = "set the cache ``directory``. (default: use system default cache directory)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cleanup-cache");
            Name        = "auto remove old cache directories";
            Description = "auto remove old cache directories";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help for restic";
            Description = "help for restic";
        },
        [FlagParameter]@{
            Keys        = @("--insecure-tls");
            Name        = "skip TLS certificate verification when connecting to the repo (insecure)";
            Description = "skip TLS certificate verification when connecting to the repo (insecure)";
        },
        [FlagParameter]@{
            Keys        = @("--json");
            Name        = "set output mode to JSON for commands that support it";
            Description = "set output mode to JSON for commands that support it";
        },
        [ValueParameter]@{
            Keys        = @("--key-hint");
            Name        = "``key`` ID of key to try decrypting first (default: `$RESTIC_KEY_HINT)";
            Description = "``key`` ID of key to try decrypting first (default: `$RESTIC_KEY_HINT)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--limit-download");
            Name        = "limits downloads to a maximum rate in KiB/s. (default: unlimited)";
            Description = "limits downloads to a maximum rate in KiB/s. (default: unlimited)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--limit-upload");
            Name        = "limits uploads to a maximum rate in KiB/s. (default: unlimited)";
            Description = "limits uploads to a maximum rate in KiB/s. (default: unlimited)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-cache");
            Name        = "do not use a local cache";
            Description = "do not use a local cache";
        },
        [FlagParameter]@{
            Keys        = @("--no-lock");
            Name        = "do not lock the repository, this allows some operations on read-only repositories";
            Description = "do not lock the repository, this allows some operations on read-only repositories";
        },
        [ValueParameter]@{
            Keys        = @("--option", "-o");
            Name        = "set extended option (``key=value``, can be specified multiple times)";
            Description = "set extended option (``key=value``, can be specified multiple times)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--password-command");
            Name        = "shell ``command`` to obtain the repository password from (default: `$RESTIC_PASSWORD_COMMAND)";
            Description = "shell ``command`` to obtain the repository password from (default: `$RESTIC_PASSWORD_COMMAND)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--password-file", "-p");
            Name        = "``file`` to read the repository password from (default: `$RESTIC_PASSWORD_FILE)";
            Description = "``file`` to read the repository password from (default: `$RESTIC_PASSWORD_FILE)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "do not output comprehensive progress report";
            Description = "do not output comprehensive progress report";
        },
        [ValueParameter]@{
            Keys        = @("--repo", "-r");
            Name        = "``repository`` to backup to or restore from (default: `$RESTIC_REPOSITORY)";
            Description = "``repository`` to backup to or restore from (default: `$RESTIC_REPOSITORY)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--repository-file");
            Name        = "``file`` to read the repository location from (default: `$RESTIC_REPOSITORY_FILE)";
            Description = "``file`` to read the repository location from (default: `$RESTIC_REPOSITORY_FILE)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tls-client-cert");
            Name        = "path to a ``file`` containing PEM encoded TLS client certificate and private key";
            Description = "path to a ``file`` containing PEM encoded TLS client certificate and private key";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "be verbose (specify multiple times or a level using --verbose=``n``, max level/times is 3)";
            Description = "be verbose (specify multiple times or a level using --verbose=``n``, max level/times is 3)";
            # Source = $?? # todo: Fix or remove this!
        },
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("backup");
            Name        = "backup";
            Description = "Create a new backup of files and/or directories";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-n");
                    Name        = "do not upload or write any data, just show what would be done";
                    Description = "do not upload or write any data, just show what would be done";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude", "-e");
                    Name        = "exclude a ``pattern`` (can be specified multiple times)";
                    Description = "exclude a ``pattern`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--exclude-caches");
                    Name        = "excludes cache directories that are marked with a CACHEDIR.TAG file. See https://bford.info/cachedir/ for the Cache Directory Tagging Standard";
                    Description = "excludes cache directories that are marked with a CACHEDIR.TAG file. See https://bford.info/cachedir/ for the Cache Directory Tagging Standard";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude-file");
                    Name        = "read exclude patterns from a ``file`` (can be specified multiple times)";
                    Description = "read exclude patterns from a ``file`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--exclude-if-present");
                    Name        = "takes ``filename[:header]``, exclude contents of directories containing filename (except filename itself) if header of that file is as provided (can be specified multiple times)";
                    Description = "takes ``filename[:header]``, exclude contents of directories containing filename (except filename itself) if header of that file is as provided (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--exclude-larger-than");
                    Name        = "max ``size`` of the files to be backed up (allowed suffixes: k/K, m/M, g/G, t/T)";
                    Description = "max ``size`` of the files to be backed up (allowed suffixes: k/K, m/M, g/G, t/T)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--files-from");
                    Name        = "read the files to backup from ``file`` (can be combined with file args; can be specified multiple times)";
                    Description = "read the files to backup from ``file`` (can be combined with file args; can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--files-from-raw");
                    Name        = "read the files to backup from ``file`` (can be combined with file args; can be specified multiple times)";
                    Description = "read the files to backup from ``file`` (can be combined with file args; can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--files-from-verbatim");
                    Name        = "read the files to backup from ``file`` (can be combined with file args; can be specified multiple times)";
                    Description = "read the files to backup from ``file`` (can be combined with file args; can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "force re-reading the target files/directories (overrides the `"parent`" flag)";
                    Description = "force re-reading the target files/directories (overrides the `"parent`" flag)";
                },
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "set the ``hostname`` for the snapshot manually. To prevent an expensive rescan use the `"parent`" flag";
                    Description = "set the ``hostname`` for the snapshot manually. To prevent an expensive rescan use the `"parent`" flag";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hostname");
                    Name        = "set the ``hostname`` for the snapshot manually";
                    Description = "set the ``hostname`` for the snapshot manually";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--iexclude");
                    Name        = "same as --exclude ``pattern`` but ignores the casing of filenames";
                    Description = "same as --exclude ``pattern`` but ignores the casing of filenames";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--iexclude-file");
                    Name        = "same as --exclude-file but ignores casing of ``file``names in patterns";
                    Description = "same as --exclude-file but ignores casing of ``file``names in patterns";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-ctime");
                    Name        = "ignore ctime changes when checking for modified files";
                    Description = "ignore ctime changes when checking for modified files";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-inode");
                    Name        = "ignore inode number changes when checking for modified files";
                    Description = "ignore inode number changes when checking for modified files";
                },
                [FlagParameter]@{
                    Keys        = @("--one-file-system", "-x");
                    Name        = "exclude other file systems, don't cross filesystem boundaries and subvolumes";
                    Description = "exclude other file systems, don't cross filesystem boundaries and subvolumes";
                },
                [ValueParameter]@{
                    Keys        = @("--parent");
                    Name        = "use this parent ``snapshot`` (default: last snapshot in the repo that has the same target files/directories)";
                    Description = "use this parent ``snapshot`` (default: last snapshot in the repo that has the same target files/directories)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--stdin");
                    Name        = "read backup from stdin";
                    Description = "read backup from stdin";
                },
                [ValueParameter]@{
                    Keys        = @("--stdin-filename");
                    Name        = "``filename`` to use when reading from stdin";
                    Description = "``filename`` to use when reading from stdin";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "add ``tags`` for the new snapshot in the format ``tag[,tag,...]`` (can be specified multiple times)";
                    Description = "add ``tags`` for the new snapshot in the format ``tag[,tag,...]`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--time");
                    Name        = "``time`` of the backup (ex. '2012-11-01 22:08:41') (default: now)";
                    Description = "``time`` of the backup (ex. '2012-11-01 22:08:41') (default: now)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--with-atime");
                    Name        = "store the atime for all files and directories";
                    Description = "store the atime for all files and directories";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cache");
            Name        = "cache";
            Description = "Operate on local cache directories";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--cleanup");
                    Name        = "remove old cache directories";
                    Description = "remove old cache directories";
                },
                [ValueParameter]@{
                    Keys        = @("--max-age");
                    Name        = "max age in ``days`` for cache directories to be considered old";
                    Description = "max age in ``days`` for cache directories to be considered old";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-size");
                    Name        = "do not output the size of the cache directories";
                    Description = "do not output the size of the cache directories";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cat");
            Name        = "cat";
            Description = "Print internal objects to stdout";
        },
        [CommandParameter]@{
            Keys        = @("check");
            Name        = "check";
            Description = "Check the repository for errors";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--check-unused");
                    Name        = "find unused blobs";
                    Description = "find unused blobs";
                },
                [FlagParameter]@{
                    Keys        = @("--read-data");
                    Name        = "read all data blobs";
                    Description = "read all data blobs";
                },
                [ValueParameter]@{
                    Keys        = @("--read-data-subset");
                    Name        = "read a ``subset`` of data packs, specified as 'n/t' for specific subset or either 'x%' or 'x.y%' for random subset";
                    Description = "read a ``subset`` of data packs, specified as 'n/t' for specific subset or either 'x%' or 'x.y%' for random subset";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--with-cache");
                    Name        = "use the cache";
                    Description = "use the cache";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("copy");
            Name        = "copy";
            Description = "Copy snapshots from one repository to another";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots for this ``host``, when no snapshot ID is given (can be specified multiple times)";
                    Description = "only consider snapshots for this ``host``, when no snapshot ID is given (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--key-hint2");
                    Name        = "key ID of key to try decrypting the destination repository first (default: `$RESTIC_KEY_HINT2)";
                    Description = "key ID of key to try decrypting the destination repository first (default: `$RESTIC_KEY_HINT2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--password-command2");
                    Name        = "shell ``command`` to obtain the destination repository password from (default: `$RESTIC_PASSWORD_COMMAND2)";
                    Description = "shell ``command`` to obtain the destination repository password from (default: `$RESTIC_PASSWORD_COMMAND2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--password-file2");
                    Name        = "``file`` to read the destination repository password from (default: `$RESTIC_PASSWORD_FILE2)";
                    Description = "``file`` to read the destination repository password from (default: `$RESTIC_PASSWORD_FILE2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path``, when no snapshot ID is given";
                    Description = "only consider snapshots which include this (absolute) ``path``, when no snapshot ID is given";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--repo2");
                    Name        = "destination ``repository`` to copy snapshots to (default: `$RESTIC_REPOSITORY2)";
                    Description = "destination ``repository`` to copy snapshots to (default: `$RESTIC_REPOSITORY2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--repository-file2");
                    Name        = "``file`` from which to read the destination repository location to copy snapshots to (default: `$RESTIC_REPOSITORY_FILE2)";
                    Description = "``file`` from which to read the destination repository location to copy snapshots to (default: `$RESTIC_REPOSITORY_FILE2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist``, when no snapshot ID is given";
                    Description = "only consider snapshots which include this ``taglist``, when no snapshot ID is given";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("diff");
            Name        = "diff";
            Description = "Show differences between two snapshots";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--metadata");
                    Name        = "print changes in metadata";
                    Description = "print changes in metadata";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("dump");
            Name        = "dump";
            Description = "Print a backed-up file to stdout";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--archive", "-a");
                    Name        = "set archive ``format`` as `"tar`" or `"zip`"";
                    Description = "set archive ``format`` as `"tar`" or `"zip`"";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots for this host when the snapshot ID is `"latest`" (can be specified multiple times)";
                    Description = "only consider snapshots for this host when the snapshot ID is `"latest`" (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path`` for snapshot ID `"latest`"";
                    Description = "only consider snapshots which include this (absolute) ``path`` for snapshot ID `"latest`"";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist`` for snapshot ID `"latest`"";
                    Description = "only consider snapshots which include this ``taglist`` for snapshot ID `"latest`"";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("find");
            Name        = "find";
            Description = "Find a file, a directory or restic IDs";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--blob");
                    Name        = "pattern is a blob-ID";
                    Description = "pattern is a blob-ID";
                },
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots for this ``host``, when no snapshot ID is given (can be specified multiple times)";
                    Description = "only consider snapshots for this ``host``, when no snapshot ID is given (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-case", "-i");
                    Name        = "ignore case for pattern";
                    Description = "ignore case for pattern";
                },
                [FlagParameter]@{
                    Keys        = @("--long", "-l");
                    Name        = "use a long listing format showing size and mode";
                    Description = "use a long listing format showing size and mode";
                },
                [ValueParameter]@{
                    Keys        = @("--newest", "-N");
                    Name        = "newest modification date/time";
                    Description = "newest modification date/time";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--oldest", "-O");
                    Name        = "oldest modification date/time";
                    Description = "oldest modification date/time";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pack");
                    Name        = "pattern is a pack-ID";
                    Description = "pattern is a pack-ID";
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path``, when no snapshot-ID is given";
                    Description = "only consider snapshots which include this (absolute) ``path``, when no snapshot-ID is given";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--show-pack-id");
                    Name        = "display the pack-ID the blobs belong to (with --blob or --tree)";
                    Description = "display the pack-ID the blobs belong to (with --blob or --tree)";
                },
                [ValueParameter]@{
                    Keys        = @("--snapshot", "-s");
                    Name        = "snapshot ``id`` to search in (can be given multiple times)";
                    Description = "snapshot ``id`` to search in (can be given multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist``, when no snapshot-ID is given";
                    Description = "only consider snapshots which include this ``taglist``, when no snapshot-ID is given";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tree");
                    Name        = "pattern is a tree-ID";
                    Description = "pattern is a tree-ID";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("forget");
            Name        = "forget";
            Description = "Remove snapshots from the repository";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--compact", "-c");
                    Name        = "use compact output format";
                    Description = "use compact output format";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-n");
                    Name        = "do not delete anything, just print what would be done";
                    Description = "do not delete anything, just print what would be done";
                },
                [ValueParameter]@{
                    Keys        = @("--group-by", "-g");
                    Name        = "string for grouping snapshots by host,paths,tags";
                    Description = "string for grouping snapshots by host,paths,tags";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--host");
                    Name        = "only consider snapshots with the given ``host`` (can be specified multiple times)";
                    Description = "only consider snapshots with the given ``host`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--hostname");
                    Name        = "only consider snapshots with the given ``hostname`` (can be specified multiple times)";
                    Description = "only consider snapshots with the given ``hostname`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-daily", "-d");
                    Name        = "keep the last ``n`` daily snapshots";
                    Description = "keep the last ``n`` daily snapshots";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-hourly", "-H");
                    Name        = "keep the last ``n`` hourly snapshots";
                    Description = "keep the last ``n`` hourly snapshots";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-last", "-l");
                    Name        = "keep the last ``n`` snapshots";
                    Description = "keep the last ``n`` snapshots";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-monthly", "-m");
                    Name        = "keep the last ``n`` monthly snapshots";
                    Description = "keep the last ``n`` monthly snapshots";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-tag");
                    Name        = "keep snapshots with this ``taglist`` (can be specified multiple times)";
                    Description = "keep snapshots with this ``taglist`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-weekly", "-w");
                    Name        = "keep the last ``n`` weekly snapshots";
                    Description = "keep the last ``n`` weekly snapshots";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-within");
                    Name        = "keep snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    Description = "keep snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-within-daily");
                    Name        = "keep daily snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    Description = "keep daily snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-within-hourly");
                    Name        = "keep hourly snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    Description = "keep hourly snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-within-monthly");
                    Name        = "keep monthly snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    Description = "keep monthly snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-within-weekly");
                    Name        = "keep weekly snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    Description = "keep weekly snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-within-yearly");
                    Name        = "keep yearly snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    Description = "keep yearly snapshots that are newer than ``duration`` (eg. 1y5m7d2h) relative to the latest snapshot";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keep-yearly", "-y");
                    Name        = "keep the last ``n`` yearly snapshots";
                    Description = "keep the last ``n`` yearly snapshots";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--max-repack-size");
                    Name        = "maximum ``size`` to repack (allowed suffixes: k/K, m/M, g/G, t/T)";
                    Description = "maximum ``size`` to repack (allowed suffixes: k/K, m/M, g/G, t/T)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--max-unused");
                    Name        = "tolerate given ``limit`` of unused data (absolute value in bytes with suffixes k/K, m/M, g/G, t/T, a value in % or the word 'unlimited')";
                    Description = "tolerate given ``limit`` of unused data (absolute value in bytes with suffixes k/K, m/M, g/G, t/T, a value in % or the word 'unlimited')";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path`` (can be specified multiple times)";
                    Description = "only consider snapshots which include this (absolute) ``path`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--prune");
                    Name        = "automatically run the 'prune' command if snapshots have been removed";
                    Description = "automatically run the 'prune' command if snapshots have been removed";
                },
                [FlagParameter]@{
                    Keys        = @("--repack-cacheable-only");
                    Name        = "only repack packs which are cacheable";
                    Description = "only repack packs which are cacheable";
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist`` in the format ``tag[,tag,...]`` (can be specified multiple times)";
                    Description = "only consider snapshots which include this ``taglist`` in the format ``tag[,tag,...]`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("generate");
            Name        = "generate";
            Description = "Generate manual pages and auto-completion files (bash, fish, zsh)";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--bash-completion");
                    Name        = "write bash completion ``file``";
                    Description = "write bash completion ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--fish-completion");
                    Name        = "write fish completion ``file``";
                    Description = "write fish completion ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--man");
                    Name        = "write man pages to ``directory``";
                    Description = "write man pages to ``directory``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--zsh-completion");
                    Name        = "write zsh completion ``file``";
                    Description = "write zsh completion ``file``";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Initialize a new repository";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--copy-chunker-params");
                    Name        = "copy chunker parameters from the secondary repository (useful with the copy command)";
                    Description = "copy chunker parameters from the secondary repository (useful with the copy command)";
                },
                [ValueParameter]@{
                    Keys        = @("--key-hint2");
                    Name        = "key ID of key to try decrypting the secondary repository first (default: `$RESTIC_KEY_HINT2)";
                    Description = "key ID of key to try decrypting the secondary repository first (default: `$RESTIC_KEY_HINT2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--password-command2");
                    Name        = "shell ``command`` to obtain the secondary repository password from (default: `$RESTIC_PASSWORD_COMMAND2)";
                    Description = "shell ``command`` to obtain the secondary repository password from (default: `$RESTIC_PASSWORD_COMMAND2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--password-file2");
                    Name        = "``file`` to read the secondary repository password from (default: `$RESTIC_PASSWORD_FILE2)";
                    Description = "``file`` to read the secondary repository password from (default: `$RESTIC_PASSWORD_FILE2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--repo2");
                    Name        = "secondary ``repository`` to copy chunker parameters from (default: `$RESTIC_REPOSITORY2)";
                    Description = "secondary ``repository`` to copy chunker parameters from (default: `$RESTIC_REPOSITORY2)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--repository-file2");
                    Name        = "``file`` from which to read the secondary repository location to copy chunker parameters from (default: `$RESTIC_REPOSITORY_FILE2)";
                    Description = "``file`` from which to read the secondary repository location to copy chunker parameters from (default: `$RESTIC_REPOSITORY_FILE2)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("key");
            Name        = "key";
            Description = "Manage keys (passwords)";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--host");
                    Name        = "the hostname for new keys";
                    Description = "the hostname for new keys";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--new-password-file");
                    Name        = "``file`` from which to read the new password";
                    Description = "``file`` from which to read the new password";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--user");
                    Name        = "the username for new keys";
                    Description = "the username for new keys";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "List objects in the repository";
        },
        [CommandParameter]@{
            Keys        = @("ls");
            Name        = "ls";
            Description = "List files in a snapshot";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots for this ``host``, when no snapshot ID is given (can be specified multiple times)";
                    Description = "only consider snapshots for this ``host``, when no snapshot ID is given (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--long", "-l");
                    Name        = "use a long listing format showing size and mode";
                    Description = "use a long listing format showing size and mode";
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path``, when no snapshot ID is given";
                    Description = "only consider snapshots which include this (absolute) ``path``, when no snapshot ID is given";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--recursive");
                    Name        = "include files in subfolders of the listed directories";
                    Description = "include files in subfolders of the listed directories";
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist``, when no snapshot ID is given";
                    Description = "only consider snapshots which include this ``taglist``, when no snapshot ID is given";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("migrate");
            Name        = "migrate";
            Description = "Apply migrations";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "apply a migration a second time";
                    Description = "apply a migration a second time";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("mount");
            Name        = "mount";
            Description = "Mount the repository";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-other");
                    Name        = "allow other users to access the data in the mounted directory";
                    Description = "allow other users to access the data in the mounted directory";
                },
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots for this host (can be specified multiple times)";
                    Description = "only consider snapshots for this host (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-permissions");
                    Name        = "for 'allow-other', ignore Unix permissions and allow users to read all snapshot files";
                    Description = "for 'allow-other', ignore Unix permissions and allow users to read all snapshot files";
                },
                [FlagParameter]@{
                    Keys        = @("--owner-root");
                    Name        = "use 'root' as the owner of files and dirs";
                    Description = "use 'root' as the owner of files and dirs";
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path``";
                    Description = "only consider snapshots which include this (absolute) ``path``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--snapshot-template");
                    Name        = "set ``template`` to use for snapshot dirs";
                    Description = "set ``template`` to use for snapshot dirs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist``";
                    Description = "only consider snapshots which include this ``taglist``";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("prune");
            Name        = "prune";
            Description = "Remove unneeded data from the repository";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-n");
                    Name        = "do not modify the repository, just print what would be done";
                    Description = "do not modify the repository, just print what would be done";
                },
                [ValueParameter]@{
                    Keys        = @("--max-repack-size");
                    Name        = "maximum ``size`` to repack (allowed suffixes: k/K, m/M, g/G, t/T)";
                    Description = "maximum ``size`` to repack (allowed suffixes: k/K, m/M, g/G, t/T)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--max-unused");
                    Name        = "tolerate given ``limit`` of unused data (absolute value in bytes with suffixes k/K, m/M, g/G, t/T, a value in % or the word 'unlimited')";
                    Description = "tolerate given ``limit`` of unused data (absolute value in bytes with suffixes k/K, m/M, g/G, t/T, a value in % or the word 'unlimited')";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--repack-cacheable-only");
                    Name        = "only repack packs which are cacheable";
                    Description = "only repack packs which are cacheable";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rebuild-index");
            Name        = "rebuild-index";
            Description = "Build a new index";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--read-all-packs");
                    Name        = "read all pack files to generate new index from scratch";
                    Description = "read all pack files to generate new index from scratch";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("recover");
            Name        = "recover";
            Description = "Recover data from the repository not referenced by snapshots";
        },
        [CommandParameter]@{
            Keys        = @("restore");
            Name        = "restore";
            Description = "Extract the data from a snapshot";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--exclude", "-e");
                    Name        = "exclude a ``pattern`` (can be specified multiple times)";
                    Description = "exclude a ``pattern`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots for this host when the snapshot ID is `"latest`" (can be specified multiple times)";
                    Description = "only consider snapshots for this host when the snapshot ID is `"latest`" (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--iexclude");
                    Name        = "same as ``--exclude`` but ignores the casing of filenames";
                    Description = "same as ``--exclude`` but ignores the casing of filenames";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--iinclude");
                    Name        = "same as ``--include`` but ignores the casing of filenames";
                    Description = "same as ``--include`` but ignores the casing of filenames";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--include", "-i");
                    Name        = "include a ``pattern``, exclude everything else (can be specified multiple times)";
                    Description = "include a ``pattern``, exclude everything else (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path`` for snapshot ID `"latest`"";
                    Description = "only consider snapshots which include this (absolute) ``path`` for snapshot ID `"latest`"";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist`` for snapshot ID `"latest`"";
                    Description = "only consider snapshots which include this ``taglist`` for snapshot ID `"latest`"";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "directory to extract data to";
                    Description = "directory to extract data to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verify");
                    Name        = "verify restored files content";
                    Description = "verify restored files content";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("self-update");
            Name        = "self-update";
            Description = "Update the restic binary";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--output");
                    Name        = "Save the downloaded file as ``filename`` (default: running binary itself)";
                    Description = "Save the downloaded file as ``filename`` (default: running binary itself)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("snapshots");
            Name        = "snapshots";
            Description = "List all snapshots";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--compact", "-c");
                    Name        = "use compact output format";
                    Description = "use compact output format";
                },
                [ValueParameter]@{
                    Keys        = @("--group-by", "-g");
                    Name        = "string for grouping snapshots by host,paths,tags";
                    Description = "string for grouping snapshots by host,paths,tags";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots for this ``host`` (can be specified multiple times)";
                    Description = "only consider snapshots for this ``host`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--last");
                    Name        = "only show the last snapshot for each host and path";
                    Description = "only show the last snapshot for each host and path";
                },
                [ValueParameter]@{
                    Keys        = @("--latest");
                    Name        = "only show the last ``n`` snapshots for each host and path";
                    Description = "only show the last ``n`` snapshots for each host and path";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots for this ``path`` (can be specified multiple times)";
                    Description = "only consider snapshots for this ``path`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist`` in the format ``tag[,tag,...]`` (can be specified multiple times)";
                    Description = "only consider snapshots which include this ``taglist`` in the format ``tag[,tag,...]`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("stats");
            Name        = "stats";
            Description = "Scan the repository and show basic statistics";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots with the given ``host`` (can be specified multiple times)";
                    Description = "only consider snapshots with the given ``host`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--mode");
                    Name        = "counting mode: restore-size (default), files-by-contents, blobs-per-file or raw-data";
                    Description = "counting mode: restore-size (default), files-by-contents, blobs-per-file or raw-data";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path`` (can be specified multiple times)";
                    Description = "only consider snapshots which include this (absolute) ``path`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist`` in the format ``tag[,tag,...]`` (can be specified multiple times)";
                    Description = "only consider snapshots which include this ``taglist`` in the format ``tag[,tag,...]`` (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("tag");
            Name        = "tag";
            Description = "Modify tags on snapshots";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--add");
                    Name        = "``tags`` which will be added to the existing tags in the format ``tag[,tag,...]`` (can be given multiple times)";
                    Description = "``tags`` which will be added to the existing tags in the format ``tag[,tag,...]`` (can be given multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--host", "-H");
                    Name        = "only consider snapshots for this ``host``, when no snapshot ID is given (can be specified multiple times)";
                    Description = "only consider snapshots for this ``host``, when no snapshot ID is given (can be specified multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "only consider snapshots which include this (absolute) ``path``, when no snapshot-ID is given";
                    Description = "only consider snapshots which include this (absolute) ``path``, when no snapshot-ID is given";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--remove");
                    Name        = "``tags`` which will be removed from the existing tags in the format ``tag[,tag,...]`` (can be given multiple times)";
                    Description = "``tags`` which will be removed from the existing tags in the format ``tag[,tag,...]`` (can be given multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--set");
                    Name        = "``tags`` which will replace the existing tags in the format ``tag[,tag,...]`` (can be given multiple times)";
                    Description = "``tags`` which will replace the existing tags in the format ``tag[,tag,...]`` (can be given multiple times)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "only consider snapshots which include this ``taglist``, when no snapshot-ID is given";
                    Description = "only consider snapshots which include this ``taglist``, when no snapshot-ID is given";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("unlock");
            Name        = "unlock";
            Description = "Remove locks other processes created";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--remove-all");
                    Name        = "remove all locks, even non-stale ones";
                    Description = "remove all locks, even non-stale ones";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Print version information";
        }
    )
}
