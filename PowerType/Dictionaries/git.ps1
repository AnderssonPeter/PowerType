$version = [Version][Regex]::Match((git --version), 'git version (\d+.\d+.\d+)').Groups[1].Value

$cleanupMode = [StaticSource]@{
    Name = "cleanup mode";
    Description = "Determines how the supplied commit messaged should be cleaned up before committing";
    Items = @(
        [SourceItem]@{ 
            Name = "strip";
            Description = "Strip leading and trailing empty lines, trailing whitepace, commentary and collapse consecutive empty lines" 
        },
        [SourceItem]@{
            Name = "whitespace";
            Description = "Same as strip except #commentary is not removed"
        },
        [SourceItem]@{
            Name = "verbatim";
            Description = "Do not change the message at all"
        },
        [SourceItem]@{
            Name = "scissors";
            Description = "Same as whitespace except that everything from (and including) the line found below is truncated"
        },
        [SourceItem]@{
            Name = "default";
            Description = "Same as strip if the message is to be edited. Otherwise whitespace"
        }
    )
}

$recurseSubmodulesMode = [StaticSource]@{
    Name = "recurse-submodules mode";
    Description = "";
    Items = @(
        [SourceItem]@{
            Name = "check";
            Description = ""
        },
        [SourceItem]@{
            Name = "on-demand";
            Description = ""
        },
        [SourceItem]@{
            Name = "only";
            Description = ""
        },
        [SourceItem]@{
            Name = "no";
            Description = ""
        }
    )
}

$executionBit = [StaticSource]@{
    Name = "executable bit";
    Description = "Allow the execution of file";
    Items = @(
        [SourceItem]@{
            Name = "+x";
            Description = "Allow execution"
        },
        [SourceItem]@{
            Name = "-x";
            Description = "Deny execution"
        }
    )
}

$remotes = [DynamicSource]@{
    Name = "remotes";
    Description = "list of git remotes";
    CommandExpression = {
        git --no-optional-locks remote
    };
    Cache = [Cache]@{
        ByCurrentWorkingDirectory = $true;
        ByTime = New-TimeSpan -Seconds 30;
        ByCommand = @("remote")
    }
}

$allBranches = [DynamicSource]@{
    Name = "AllBranches";
    Description = "Local and remote branches";
    CommandExpression = {
        git --no-optional-locks branch -a --no-color  | % { $_.trim(' *$(') } | % { $_.StartsWith("remotes/origin/") ? $_.Substring(15) : $_ } | Where-Object { !$_.StartsWith("HEAD") } | Select -Unique
    };
    Cache = [Cache]@{
        ByCurrentWorkingDirectory = $true;
        ByTime = New-TimeSpan -Seconds 10;
        ByCommand = @("checkout", "fetch", "pull", "switch")
    }
}

$localBranches = [DynamicSource]@{
    Name = "LocalBranches";
    Description = "Local branches";
    CommandExpression = {
        git --no-optional-locks branch --no-color  | % { $_.trim(' *$(') } | % { $_.StartsWith("remotes/origin/") ? $_.Substring(15) : $_ } | Where-Object { !$_.StartsWith("HEAD") } | Select -Unique
    };
    Cache = [Cache]@{
        ByCurrentWorkingDirectory = $true;
        ByTime = New-TimeSpan -Seconds 10;
        ByCommand = @("checkout", "fetch", "pull", "switch")
    }
}

$stashes = [DynamicSource]@{
    Name = "Stashes";
    Description = "Stashes";
    CommandExpression = {
        git --no-optional-locks stash list -a --no-color | Select -Unique
    };
    Cache = [Cache]@{
        ByCurrentWorkingDirectory = $true;
        ByTime = New-TimeSpan -Seconds 10;
        ByCommand = @("stash")
    }
}

$mergeStrategy = [StaticSource]@{
    Name = "Merge strategy";
    Items = @(
        [SourceItem]@{
            Name = "ort"
        },
        [SourceItem]@{
            Name = "recursive"
        },
        [SourceItem]@{
            Name = "resolve"
        },
        [SourceItem]@{
            Name = "octopus"
        },
        [SourceItem]@{
            Name = "ours"
        },
        [SourceItem]@{
            Name = "theirs"
        },
        [SourceItem]@{
            Name = "subtree"
        }
    )
}

$archiveFormats = [DynamicSource]@{
    Name = "archive formats";
    Description = "list of supported git archive formats";
    CommandExpression = {
        git archive --list
    };
    Cache = [Cache]@{
        ByTime = New-TimeSpan -Hours 24
    }
}

# Should we remove the Parameter part? CommandParameter -> Command?
[PowerTypeDictionary]@{
    Keys        = @("git");
    Name        = "git";
    Description = "fast, scalable, distributed revision control system";
    Platforms   = [Platforms]::All;
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Generated from manual with some manual fine tuning";
    Url         = "https://git-scm.com/";
    Version     = [Version]::Parse("2.34.1");
    Parameters = @(
        [CommandParameter]@{
            Keys = @("add");
            Name = "add";
            Description = "Add file contents to the index";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--dry-run", "-n");
                    Name = "dry-run";
                    Description = "Don’t actually add the file(s), just show if they exist and/or will be ignored.";
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Be verbose.";
                },
                [FlagParameter]@{
                    Keys = @("--force", "-f");
                    Name = "force";
                    Description = "Allow adding otherwise ignored files.";
                },
                [FlagParameter]@{
                    Keys = @("--sparse");
                    Name = "sparse";
                    Description = "Allow updating index entries outside of the sparse-checkout cone. Normally, git add refuses to update index entries whose paths do not fit within the sparse-checkout cone, since those files might be removed from the working tree without warning. See git-sparse-checkout1 for more details.";
                    Condition = [LargerOrEqualCondition]::new($version, [Version]'2.34.0')
                },
                [FlagParameter]@{
                    Keys = @("--interactive", "-i");
                    Name = "interactive";
                    Description = "Add modified contents in the working tree interactively to the index. Optional path arguments may be supplied to limit operation to a subset of the working tree. See `“Interactive mode`” for details.";
                },
                [FlagParameter]@{
                    Keys = @("--patch", "-p");
                    Name = "patch";
                    Description = "Interactively choose hunks of patch between the index and the work tree and add them to the index. This gives the user a chance to review the difference before adding modified contents to the index.";
                },
                [FlagParameter]@{
                    Keys = @("--edit", "-e");
                    Name = "edit";
                    Description = "Open the diff vs. the index in an editor and let the user edit it. After the editor was closed, adjust the hunk headers and apply the patch to the index.";
                },
                [FlagParameter]@{
                    Keys = @("--update", "-u");
                    Name = "update";
                    Description = "Update the index just where it already has an entry matching <pathspec>. This removes as well as modifies index entries to match the working tree, but adds no new files.";
                },
                [FlagParameter]@{
                    Keys = @("--all", "-A", "--no-ignore-removal");
                    Name = "no-ignore-removal";
                    Description = "Update the index not only where the working tree has a file matching <pathspec> but also where the index already has an entry. This adds, modifies, and removes index entries to match the working tree.";
                    Condition = [ExclusiveParameterCondition]::new("ignore-removal")
                },
                [FlagParameter]@{
                    Keys = @("--ignore-removal", "--no-all");
                    Name = "ignore-removal";
                    Description = "Update the index by adding new files that are unknown to the index and files modified in the working tree, but ignore files that have been removed from the working tree. This option is a no-op when no <pathspec> is used.";
                    Condition = [ExclusiveParameterCondition]::new("no-ignore-removal")
                },
                [FlagParameter]@{
                    Keys = @("--intent-to-add", "-N");
                    Name = "intent-to-add";
                    Description = "Record only the fact that the path will be added later. An entry for the path is placed in the index with no content. This is useful for, among other things, showing the unstaged content of such files with git diff and committing them with git commit -a.";
                },
                [FlagParameter]@{
                    Keys = @("--refresh");
                    Name = "refresh";
                    Description = "Don’t add the file(s), but only refresh their stat() information in the index.";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-errors");
                    Name = "ignore-errors";
                    Description = "If some files could not be added because of errors indexing them, do not abort the operation, but continue adding the others. The command shall still exit with non-zero status. The configuration variable add.ignoreErrors can be set to true to make this the default behaviour.";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-missing");
                    Name = "ignore-missing";
                    Description = "This option can only be used together with --dry-run. By using this option the user can check if any of the given files would be ignored, no matter if they are already present in the work tree or not.";
                },
                [FlagParameter]@{
                    Keys = @("--no-warn-embedded-repo");
                    Name = "no-warn-embedded-repo";
                    Description = "By default, git add will warn when adding an embedded repository to the index without using git submodule add to create an entry in .gitmodules. This option will suppress the warning (e.g., if you are manually performing operations on submodules).";
                },
                [FlagParameter]@{
                    Keys = @("--renormalize");
                    Name = "renormalize";
                    Description = "Apply the `"clean`" process freshly to all tracked files to forcibly add them again to the index. This is useful after changing core.autocrlf configuration or the text attribute in order to correct files added with wrong CRLF/LF line endings. This option implies -u.";
                },
                [ValueParameter]@{
                    Keys = @("--chmod");
                    Name = "chmod";
                    Description = "Override the executable bit of the added files. The executable bit is only changed in the index, the files on disk are left unchanged.";
                    Source = $executionBit
                },
                [ValueParameter]@{
                    Keys = @("--pathspec-from-file");
                    Name = "pathspec-from-file";
                    Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1 ). See also --pathspec-file-nul and global --literal-pathspecs.";
                    #Source = File;
                },
                [FlagParameter]@{
                    Keys = @("--pathspec-file-nul");
                    Name = "pathspec-file-nul";
                    Description = "Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).";
                },
                [FlagParameter]@{
                    Keys = @("--");
                    Name = "seperator";
                    Description = "This option can be used to separate command-line options from the list of files, (useful when filenames might be mistaken for command-line options).";
                },
                [ValueParameter]@{
                    Name = "pathspec";
                    Description = "Files to add content from. Fileglobs (e.g. *.c) can be given to add all matching files. Also a leading directory name (e.g. dir to add dir/file1 and dir/file2) can be given to update the index to match the current state of the directory as a whole (e.g. specifying dir will record not just a file dir/file1 modified in the working tree, a file dir/file2 added to the working tree, but also a file dir/file3 removed from the working tree). Note that older versions of Git used to ignore removed files; use --no-all option if you want to add modified or new files but ignore removed ones.";
                    #Source = FileGlob Or File Or Directory
                }
            )
        },
        [CommandParameter]@{
            Keys = @("commit");
            Name = "commit";
            Description = "Record changes to the repository";
            Parameters = @(
                [ValueParameter]@{
                    Keys = @("--message", "-m");
                    Name = "message";
                    Description = "Use the given <msg> as the commit message. If multiple -m options are given, their values are concatenated as separate paragraphs.";
                },
                [FlagParameter]@{
                    Keys = @("--all", "-a");
                    Name = "all";
                    Description = "Tell the command to automatically stage files that have been modified and deleted, but new files you have not told Git about are not affected.";
                },
                [FlagParameter]@{
                    Keys = @("--patch", "-p");
                    Name = "patch";
                    Description = "Use the interactive patch selection interface to choose which changes to commit. See git-add1 for details.";
                },
                [ValueParameter]@{
                    Keys = @("--reuse-message", "-C");
                    Name = "reuse-message";
                    Description = "Take an existing commit object, and reuse the log message and the authorship information (including the timestamp) when creating the commit.";
                },
                [ValueParameter]@{
                    Keys = @("--reedit-message", "-c");
                    Name = "reedit-message";
                    Description = "Like -C, but with -c the editor is invoked, so that the user can further edit the commit message.";
                },
                [ValueParameter]@{
                    Keys = @("--fixup");
                    Name = "fixup";
                    Description = "Create a new commit which `"fixes up`" &lt;commit&gt; when applied with git rebase --autosquash. Plain --fixup=&lt;commit&gt; creates a `"fixup!`" commit which changes the content of &lt;commit&gt; but leaves its log message untouched. --fixup=amend:&lt;commit&gt; is similar but creates an `"amend!`" commit which also replaces the log message of &lt;commit&gt; with the log message of the `"amend!`" commit. --fixup=reword:&lt;commit&gt; creates an `"amend!`" commit which replaces the log message of <commit> with its own log message but makes no changes to the content of <commit>.";
                    Source = [StaticSource]@{
                        Name = "fixup mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "";
                                Description = "creates a commit which changes the content of the commit but leaves its log message untouched."
                            },
                            [SourceItem]@{
                                Name = "amend:";
                                Description = "is similar but creates an amend commit which also replaces the log message of the commit with the log message of the amend commit."
                            },
                            [SourceItem]@{
                                Name = "reword:";
                                Description = "creates an amend commit which replaces the log message of the commit with its own log message but makes no changes to the content of the commit"
                            }
                        )
                    }
                },
                [ValueParameter]@{
                    Keys = @("--squash");
                    Name = "squash";
                    Description = "Construct a commit message for use with rebase --autosquash. The commit message subject line is taken from the specified commit with a prefix of `"squash! `". Can be used with additional commit message options (-m/-c/-C/-F). See git-rebase1 for details.";
                },
                [FlagParameter]@{
                    Keys = @("--reset-author");
                    Name = "reset-author";
                    Description = "When used with -C/-c/--amend options, or when committing after a conflicting cherry-pick, declare that the authorship of the resulting commit now belongs to the committer. This also renews the author timestamp.";
                },
                [FlagParameter]@{
                    Keys = @("--short");
                    Name = "short";
                    Description = "When doing a dry-run, give the output in the short-format. See git-status1 for details. Implies --dry-run.";
                },
                [FlagParameter]@{
                    Keys = @("--branch");
                    Name = "branch";
                    Description = "Show the branch and tracking info even in short-format.";
                },
                [FlagParameter]@{
                    Keys = @("--porcelain");
                    Name = "porcelain";
                    Description = "When doing a dry-run, give the output in a porcelain-ready format. See git-status1 for details. Implies --dry-run.";
                },
                [FlagParameter]@{
                    Keys = @("--long");
                    Name = "long";
                    Description = "When doing a dry-run, give the output in the long-format. Implies --dry-run.";
                },
                [FlagParameter]@{
                    Keys = @("--null", "-z");
                    Name = "null";
                    Description = "When showing short or porcelain status output, print the filename verbatim and terminate the entries with NUL, instead of LF. If no format is given, implies the --porcelain output format. Without the -z option, filenames with `"unusual`" characters are quoted as explained for the configuration variable core.quotePath (see git-config1 ).";
                },
                [ValueParameter]@{
                    Keys = @("--file", "-F");
                    Name = "file";
                    Description = "Take the commit message from the given file. Use - to read the message from the standard input.";
                    #Source = File;
                },
                [ValueParameter]@{
                    Keys = @("--author");
                    Name = "author";
                    Description = "Override the commit author. Specify an explicit author using the standard A U Thor <author@example.com> format. Otherwise <author> is assumed to be a pattern and is used to search for an existing commit by that author (i.e. rev-list --all -i --author=<author>); the commit author is then copied from the first such commit found.";
                },
                [ValueParameter]@{
                    Keys = @("--date");
                    Name = "date";
                    Description = "Override the author date used in the commit.";
                },
                [ValueParameter]@{
                    Keys = @("--template", "-t");
                    Name = "template";
                    Description = "When editing the commit message, start the editor with the contents in the given file. The commit.template configuration variable is often used to give this option implicitly to the command. This mechanism can be used by projects that want to guide participants with some hints on what to write in the message in what order. If the user exits the editor without editing the message, the commit is aborted. This has no effect when a message is given by other means, e.g. with the -m or -F options.";
                    #Source = File;
                },
                [FlagParameter]@{
                    Keys = @("--signoff", "-s");
                    Name = "signoff";
                    Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
                    Condition = [ExclusiveParameterCondition]::new("no-signoff")
                },
                [FlagParameter]@{
                    Keys = @("--no-signoff");
                    Name = "no-signoff";
                    Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
                    Condition = [ExclusiveParameterCondition]::new("signoff")
                },
                [ValueParameter]@{
                    Keys = @("--trailer");
                    Name = "trailer";
                    Description = "Specify a (<token>, <value>) pair that should be applied as a trailer. (e.g. git commit --trailer `"Signed-off-by:C O Mitter \ <committer@example.com>`" --trailer `"Helped-by:C O Mitter \ &lt;committer@example.com&gt;`" will add the `"Signed-off-by`" trailer and the `"Helped-by`" trailer to the commit message.) The trailer.* configuration variables ( git-interpret-trailers1 ) can be used to define if a duplicated trailer is omitted, where in the run of trailers each trailer would appear, and other details.";
                    Condition = [LargerOrEqualCondition]::new($version, [Version]'2.32.0')
                },
                [FlagParameter]@{
                    Keys = @("--verify");
                    Name = "verify";
                    Description = "By default, the pre-commit and commit-msg hooks are run. When any of --no-verify or -n is given, these are bypassed. See also githooks.";
                    Condition = [ExclusiveParameterCondition]::new("no verify")
                },
                [FlagParameter]@{
                    Keys = @("--no-verify", "-n");
                    Name = "no verify";
                    Description = "By default, the pre-commit and commit-msg hooks are run. When any of --no-verify or -n is given, these are bypassed. See also githooks.";
                    Condition = [ExclusiveParameterCondition]::new("verify")
                },
                [FlagParameter]@{
                    Keys = @("--allow-empty");
                    Name = "allow-empty";
                    Description = "Usually recording a commit that has the exact same tree as its sole parent commit is a mistake, and the command prevents you from making such a commit. This option bypasses the safety, and is primarily for use by foreign SCM interface scripts.";
                },
                [FlagParameter]@{
                    Keys = @("--allow-empty-message");
                    Name = "allow-empty-message";
                    Description = "Like --allow-empty this command is primarily for use by foreign SCM interface scripts. It allows you to create a commit with an empty commit message without using plumbing commands like git-commit-tree1 .";
                },
                [ValueParameter]@{
                    Keys = @("--cleanup");
                    Name = "cleanup";
                    Description = "This option determines how the supplied commit message should be cleaned up before committing. The <mode> can be strip, whitespace, verbatim, scissors or default.";
                    Source = $cleanupMode;
                },
                [FlagParameter]@{
                    Keys = @("--edit", "-e");
                    Name = "edit";
                    Description = "The message taken from file with -F, command line with -m, and from commit object with -C are usually used as the commit log message unmodified. This option lets you further edit the message taken from these sources.";
                    Condition = [ExclusiveParameterCondition]::new("no-edit")
                },
                [FlagParameter]@{
                    Keys = @("--no-edit");
                    Name = "no-edit";
                    Description = "Use the selected commit message without launching an editor. For example, git commit --amend --no-edit amends a commit without changing its commit message.";
                    Condition = [ExclusiveParameterCondition]::new("edit")
                },
                [FlagParameter]@{
                    Keys = @("--amend");
                    Name = "amend";
                    Description = "Replace the tip of the current branch by creating a new commit. The recorded tree is prepared as usual (including the effect of the -i and -o options and explicit pathspec), and the message from the original commit is used as the starting point, instead of an empty message, when no other message is specified from the command line via options such as -m, -F, -c, etc. The new commit has the same parents and author as the current one (the --reset-author option can countermand this).";
                },
                [FlagParameter]@{
                    Keys = @("--no-post-rewrite");
                    Name = "no-post-rewrite";
                    Description = "Bypass the post-rewrite hook.";
                },
                [FlagParameter]@{
                    Keys = @("--include", "-i");
                    Name = "include";
                    Description = "Before making a commit out of staged contents so far, stage the contents of paths given on the command line as well. This is usually not what you want unless you are concluding a conflicted merge.";
                },
                [FlagParameter]@{
                    Keys = @("--only", "-o");
                    Name = "only";
                    Description = "Make a commit by taking the updated working tree contents of the paths specified on the command line, disregarding any contents that have been staged for other paths. This is the default mode of operation of git commit if any paths are given on the command line, in which case this option can be omitted. If this option is specified together with --amend, then no paths need to be specified, which can be used to amend the last commit without committing changes that have already been staged. If used together with --allow-empty paths are also not required, and an empty commit will be created.";
                },
                [ValueParameter]@{
                    Keys = @("--pathspec-from-file");
                    Name = "pathspec-from-file";
                    Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1 ). See also --pathspec-file-nul and global --literal-pathspecs.";
                    #Source = File;
                },
                [FlagParameter]@{
                    Keys = @("--pathspec-file-nul");
                    Name = "pathspec-file-nul";
                    Description = "Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).";
                },
                [ValueParameter]@{
                    Keys = @("--untracked-files", "-u");
                    Name = "untracked-files";
                    Description = "Show untracked files.";
                    Source = [StaticSource]@{
                        Name = "Untracked files handeling";
                        Items = @(
                            [SourceItem]@{
                                Name = "no";
                                Description = "Show no untracked files"
                            },
                            [SourceItem]@{
                                Name = "normal";
                                Description = "Shows untracked files and directories"
                            },
                            [SourceItem]@{
                                Name = "all";
                                Description = "Also shows individual files in untracked directories."
                            }
                        )
                    }
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Show unified diff between the HEAD commit and what would be committed at the bottom of the commit message template to help the user describe the commit by reminding what changes the commit has. Note that this diff output doesn’t have its lines prefixed with #. This diff will not be a part of the commit message. See the commit.verbose configuration variable in git-config1 .";
                    Condition = [ExclusiveParameterCondition]::new("quiet")
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Suppress commit summary message.";
                    Condition = [ExclusiveParameterCondition]::new("verbose")
                },
                [FlagParameter]@{
                    Keys = @("--dry-run");
                    Name = "dry-run";
                    Description = "Do not create a commit, but show a list of paths that are to be committed, paths with local changes that will be left uncommitted and paths that are untracked.";
                },
                [FlagParameter]@{
                    Keys = @("--status");
                    Name = "status";
                    Description = "Include the output of git-status1 in the commit message template when using an editor to prepare the commit message. Defaults to on, but can be used to override configuration variable commit.status.";
                    Condition = [ExclusiveParameterCondition]::new("no-status")
                },
                [FlagParameter]@{
                    Keys = @("--no-status");
                    Name = "no-status";
                    Description = "Do not include the output of git-status1 in the commit message template when using an editor to prepare the default commit message.";
                    Condition = [ExclusiveParameterCondition]::new("status")
                },
                [ValueParameter]@{
                    Keys = @("--gpg-sign", "-S");
                    Name = "gpg-sign";
                    Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                    Condition = [ExclusiveParameterCondition]::new("no-gpg-sign")
                },
                [FlagParameter]@{
                    Keys = @("--no-gpg-sign");
                    Name = "no-gpg-sign";
                    Description = "Don't gpg sign";
                    Condition = [ExclusiveParameterCondition]::new("gpg-sign")
                },
                [FlagParameter]@{
                    Keys = @("--");
                    Name = "Seperator";
                    Description = "Do not interpret any more arguments as options.";
                },
                [ValueParameter]@{
                    Name = "pathspec";
                    Description = "When pathspec is given on the command line, commit the contents of the files that match the pathspec without recording the changes already added to the index. The contents of these files are also staged for the next commit on top of what have been staged before.";
                    #Source = Not 100% sure but file glob?
                }
            )
        },
        [CommandParameter]@{
            Keys = @("checkout");
            Name = "checkout";
            Description = "Switch branches or restore working tree files";
            Parameters = @(                
                [ValueParameter]@{
                    Name = "Branch to checkout or new_branch or start_point or tree-ish";
                    Description = "Branch to checkout; if it refers to a branch (i.e., a name that, when prepended with `"refs/heads/`", is a valid ref), then that branch is checked out. Otherwise, if it refers to a valid commit, your HEAD becomes `"detached`" and you are no longer on any branch (see below for details).";
                    Source = $allBranches
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Quiet, suppress feedback messages.";
                },
                [FlagParameter]@{
                    Keys = @("--progress");
                    Name = "progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified. This flag enables progress reporting even if not attached to a terminal, regardless of --quiet.";
                    Condition = [ExclusiveParameterCondition]::new("no-progress");
                },
                [FlagParameter]@{
                    Keys = @("--no-progress");
                    Name = "no-progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified. This flag enables progress reporting even if not attached to a terminal, regardless of --quiet.";
                    Condition = [ExclusiveParameterCondition]::new("progress");
                },
                [FlagParameter]@{
                    Keys = @("--force", "-f");
                    Name = "force";
                    Description = "When switching branches, proceed even if the index or the working tree differs from HEAD, and even if there are untracked files in the way. This is used to throw away local changes and any untracked files or directories that are in the way.";
                },
                [FlagParameter]@{
                    Keys = @("--ours", "--theirs");
                    Name = "ours";
                    Description = "When checking out paths from the index, check out stage #2 (ours) or #3 (theirs) for unmerged paths.";
                },
                [ValueParameter]@{
                    Keys = @("-b");
                    Name = "Create new branch";
                    Description = "Create a new branch named <new_branch> and start it at <start_point>; see git-branch1 for details.";
                    Condition = [ExclusiveParameterCondition]::new("Create new or reset branch");
                },
                [ValueParameter]@{
                    Keys = @("-B");
                    Name = "Create new or reset branch";
                    Description = "Creates the branch <new_branch> and start it at <start_point>; if it already exists, then reset it to <start_point>. This is equivalent to running `"git branch`" with `"-f`"; see git-branch1 for details.";
                    Condition = [ExclusiveParameterCondition]::new("Create new branch");
                },
                [FlagParameter]@{
                    Keys = @("--track", "-t");
                    Name = "track";
                    Description = "When creating a new branch, set up `"upstream`" configuration. See `"--track`" in git-branch1 for details.";
                    Condition = [ExclusiveParameterCondition]::new("no-track")
                },
                [FlagParameter]@{
                    Keys = @("--no-track");
                    Name = "no-track";
                    Description = "Do not set up `"upstream`" configuration, even if the branch.autoSetupMerge configuration variable is true.";
                    Condition = [ExclusiveParameterCondition]::new("track")
                },
                [FlagParameter]@{
                    Keys = @("--guess");
                    Name = "guess";
                    Description = "If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to";
                    Condition = [ExclusiveParameterCondition]::new("no-guess")
                },
                [FlagParameter]@{
                    Keys = @("--no-guess");
                    Name = "no-guess";
                    Description = "If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to";
                    Condition = [ExclusiveParameterCondition]::new("guess")
                },
                [FlagParameter]@{
                    Keys = @("-l");
                    Name = "new branch";
                    Description = "Create the new branch’s reflog; see git-branch1 for details.";
                },
                [FlagParameter]@{
                    Keys = @("--detach", "-d");
                    Name = "detach";
                    Description = "Rather than checking out a branch to work on it, check out a commit for inspection and discardable experiments. This is the default behavior of git checkout &lt;commit&gt; when &lt;commit&gt; is not a branch name. See the `"DETACHED HEAD`" section below for details.";
                },
                [ValueParameter]@{
                    Keys = @("--orphan");
                    Name = "orphan";
                    Description = "Create a new orphan branch, named <new_branch>, started from <start_point> and switch to it. The first commit made on this new branch will have no parents and it will be the root of a new history totally disconnected from all the other branches and commits.";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-skip-worktree-bits");
                    Name = "ignore-skip-worktree-bits";
                    Description = "In sparse checkout mode, git checkout -- <paths> would update only entries matched by <paths> and sparse patterns in $GIT_DIR/info/sparse-checkout. This option ignores the sparse patterns and adds back any files in <paths>.";
                },
                [FlagParameter]@{
                    Keys = @("--merge", "-m");
                    Name = "merge";
                    Description = "When switching branches, if you have local modifications to one or more files that are different between the current branch and the branch to which you are switching, the command refuses to switch branches in order to preserve your modifications in context. However, with this option, a three-way merge between the current branch, your working tree contents, and the new branch is done, and you will be on the new branch.";
                },
                [ValueParameter]@{
                    Keys = @("--conflict");
                    Name = "conflict";
                    Description = "The same as --merge option above, but changes the way the conflicting hunks are presented, overriding the merge.conflictStyle configuration variable. Possible values are `"merge`" (default) and `"diff3`" (in addition to what is shown by `"merge`" style, shows the original contents).";
                    Source = [StaticSource]@{
                        Name = "Conflict hunks presentation mode";
                        Items = @(
                            [SourceItem]@{
                                Name = "merge"
                            },
                            [SourceItem]@{
                                Name = "diff3"
                            }
                        )
                    }
                },
                [FlagParameter]@{
                    Keys = @("--patch", "-p");
                    Name = "patch";
                    Description = "Interactively select hunks in the difference between the <tree-ish> (or the index, if unspecified) and the working tree. The chosen hunks are then applied in reverse to the working tree (and if a <tree-ish> was specified, the index).";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-other-worktrees");
                    Name = "ignore-other-worktrees";
                    Description = "git checkout refuses when the wanted ref is already checked out by another worktree. This option makes it check the ref out anyway. In other words, the ref can be held by more than one worktree.";
                },
                [FlagParameter]@{
                    Keys = @("--overwrite-ignore");
                    Name = "overwrite-ignore";
                    Description = "Silently overwrite ignored files when switching branches. This is the default behavior. Use --no-overwrite-ignore to abort the operation when the new branch contains ignored files.";
                    Condition = [ExclusiveParameterCondition]::new("no-overwrite-ignore");
                },
                [FlagParameter]@{
                    Keys = @("--no-overwrite-ignore");
                    Name = "no-overwrite-ignore";
                    Description = "Silently overwrite ignored files when switching branches. This is the default behavior. Use --no-overwrite-ignore to abort the operation when the new branch contains ignored files.";
                    Condition = [ExclusiveParameterCondition]::new("overwrite-ignore");
                },

                [FlagParameter]@{
                    Keys = @("--recurse-submodules");
                    Name = "recurse-submodules";
                    Description = "Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject. If local modifications in a submodule would be overwritten the checkout will fail unless -f is used. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-submodule1 , this will detach HEAD of the submodule.";
                Condition = [ExclusiveParameterCondition]::new("no-recurse-submodules");
                },
                [FlagParameter]@{
                    Keys = @("--no-recurse-submodules");
                    Name = "no-recurse-submodules";
                    Description = "Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject. If local modifications in a submodule would be overwritten the checkout will fail unless -f is used. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-submodule1, this will detach HEAD of the submodule.";
                    Condition = [ExclusiveParameterCondition]::new("recurse-submodules");
                },
                [FlagParameter]@{
                    Keys = @("--overlay");
                    Name = "overlay";
                    Description = "In the default overlay mode, git checkout never removes files from the index or the working tree. When specifying --no-overlay, files that appear in the index and working tree, but not in <tree-ish> are removed, to make them match <tree-ish> exactly.";
                    Condition = [ExclusiveParameterCondition]::new("no-overlay")
                },
                [FlagParameter]@{
                    Keys = @("--no-overlay");
                    Name = "no-overlay";
                    Description = "In the default overlay mode, git checkout never removes files from the index or the working tree. When specifying --no-overlay, files that appear in the index and working tree, but not in <tree-ish> are removed, to make them match <tree-ish> exactly.";
                    Condition = [ExclusiveParameterCondition]::new("overlay")
                },
                [ValueParameter]@{
                    Keys = @("--pathspec-from-file");
                    Name = "pathspec-from-file";
                    Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1 ). See also --pathspec-file-nul and global --literal-pathspecs.";
                    #Source = File;
                },
                [FlagParameter]@{
                    Keys = @("--pathspec-file-nul");
                    Name = "pathspec-file-nul";
                    Description = "Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).";
                },
                [FlagParameter]@{
                    Keys = @("--");
                    Name = "Seperator";
                    Description = "Do not interpret any more arguments as options.";
                },
                [ValueParameter]@{
                    Name = "pathspec";
                    Description = "Limits the paths affected by the operation.";
                    #Source = Not 100% sure file glob?
                }
            )
        },
        [CommandParameter]@{
            Keys = @("stash");
            Name = "stash";
            Description = "Stash the changes in a dirty working directory away";
            Parameters = @(
                [CommandParameter]@{
                    Keys = @("list");
                    Name = "list";
                    Parameters = @()
                },
                [CommandParameter]@{
                    Keys = @("show");
                    Name = "show";
                    Parameters = @(
                        [FlagParameter]@{
                            Keys = @("--include-untracked", "-u");
                            Name = "include-untracked";
                            Description = "All untracked files are also stashed and then cleaned up with git clean.";
                            Condition = [ExclusiveParameterCondition]::new("no-include-untracked")
                        },
                        [FlagParameter]@{
                            Keys = @("--no-include-untracked");
                            Name = "no-include-untracked";
                            Description = "No untracked files are stashed and then cleaned up with git clean.";
                            Condition = [ExclusiveParameterCondition]::new("include-untracked")
                        },
                        [ValueParameter]@{
                            Name = "stash";
                            Source = $stashes
                        }
                    )
                },
                [CommandParameter]@{
                    Keys = @("drop");
                    Name = "drop";
                    Parameters = @(
                        [FlagParameter]@{
                            Keys = @("--quiet", "-q");
                            Name = "quiet";
                        },
                        [ValueParameter]@{
                            Name = "stash";
                            Source = $stashes
                        }
                    )
                },
                [CommandParameter]@{
                    Keys = @("pop", "apply");
                    Name = "pop";
                    Parameters = @(
                        [FlagParameter]@{
                            Keys = @("--index");
                            Name = "index";
                        },
                        [FlagParameter]@{
                            Keys = @("--quiet", "-q");
                            Name = "quiet";
                        },
                        [ValueParameter]@{
                            Name = "stash";
                            Source = $stashes
                        }
                    )
                },
                [CommandParameter]@{
                    Keys = @("branch");
                    Name = "branch";
                    Parameters = @(
                        [ValueParameter]@{
                            Name = "branch";
                            Source = $allBranches
                        },
                        [ValueParameter]@{
                            Name = "stash";
                            Source = $stashes
                        }
                    )
                },
                [CommandParameter]@{
                    Keys = @("push");
                    Name = "push";
                    Parameters = @(
                        [FlagParameter]@{
                            Keys = @("--patch", "-p");
                            Name = "patch";
                        },
                        [FlagParameter]@{
                            Keys = @("--keep-index", "-k");
                            Name = "keep-index";
                            Description = "All changes already added to the index are left intact.";
                            Condition = [ExclusiveParameterCondition]::new("no-keep-index")
                        },
                        [FlagParameter]@{
                            Keys = @("--no-keep-index");
                            Name = "no-keep-index";
                            Condition = [ExclusiveParameterCondition]::new("keep-index")
                        },
                        [FlagParameter]@{
                            Keys = @("--include-untracked", "-u");
                            Name = "include-untracked";
                            Description = "All untracked files are also stashed and then cleaned up with git clean.";
                            Condition = [ExclusiveParameterCondition]::new("no-include-untracked")
                        },
                        [FlagParameter]@{
                            Keys = @("--no-include-untracked");
                            Name = "no-include-untracked";
                            Description = "No untracked files are stashed and then cleaned up with git clean.";
                            Condition = [ExclusiveParameterCondition]::new("include-untracked")
                        },
                        [FlagParameter]@{
                            Keys = @("--all", "-a");
                            Name = "all";
                        },
                        [FlagParameter]@{
                            Keys = @("--quiet", "-q");
                            Name = "quiet";
                            Description = "This option is only valid for apply, drop, pop, push, save, store commands.";
                        },
                        [ValueParameter]@{
                            Keys = @("--message", "-m");
                            Name = "message";
                        },
                        [ValueParameter]@{
                            Keys = @("--pathspec-from-file");
                            Name = "pathspec-from-file";
                            # Source = #File glob?;
                        }
                    )
                },
                [CommandParameter]@{
                    Keys = @("clear");
                    Name = "clear";
                    Parameters = @()
                },
                [CommandParameter]@{
                    Keys = @("create");
                    Name = "create";
                    Parameters = @(
                        [ValueParameter]@{
                            Name = "message";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys = @("store");
                    Name = "store";
                    Parameters = @(
                        [ValueParameter]@{
                            Keys = @("--message", "-m");
                            Name = "message";
                        },
                        [FlagParameter]@{
                            Keys = @("--quiet", "-q");
                            Name = "quiet";
                        },
                        [ValueParameter]@{
                            Name = "commit";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys = @("merge");
            Name = "merge";
            Description = "Join two or more development histories together";
            Parameters = @(
                [ValueParameter]@{
                    Name = "local-branch";
                    Source = $localBranches
                },
                [FlagParameter]@{
                    Keys = @("--commit");
                    Name = "commit";
                    Description = "Perform the merge and commit the result. This option can be used to override --no-commit.";
                    Condition = [ExclusiveParameterCondition]::new("no-commit")
                },
                [FlagParameter]@{
                    Keys = @("--no-commit");
                    Name = "no-commit";
                    Description = "Perform the merge and commit the result. This option can be used to override --no-commit.";
                    Condition = [ExclusiveParameterCondition]::new("commit")
                },
                [FlagParameter]@{
                    Keys = @("--edit", "-e");
                    Name = "edit";
                    Description = "Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge. The --no-edit option can be used to accept the auto-generated message (this is generally discouraged). The --edit (or -e) option is still useful if you are giving a draft message with the -m option from the command line and want to edit it in the editor.";
                    Condition = [ExclusiveParameterCondition]::new("no-edit")
                },
                [FlagParameter]@{
                    Keys = @("--no-edit");
                    Name = "no-edit";
                    Description = "Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge. The --no-edit option can be used to accept the auto-generated message (this is generally discouraged). The --edit (or -e) option is still useful if you are giving a draft message with the -m option from the command line and want to edit it in the editor.";
                    Condition = [ExclusiveParameterCondition]::new("edit")
                },
                [ValueParameter]@{
                    Keys = @("--cleanup");
                    Name = "cleanup";
                    Description = "This option determines how the merge message will be cleaned up before committing. See git-commit1 for more details. In addition, if the <mode> is given a value of scissors, scissors will be appended to MERGE_MSG before being passed on to the commit machinery in the case of a merge conflict.";
                    Source = $cleanupMode
                },
                [FlagParameter]@{
                    Keys = @("--ff", "--ff-only");
                    Name = "ff-only";
                    Description = "Specifies how a merge is handled when the merged-in history is already a descendant of the current history. --ff is the default unless merging an annotated (and possibly signed) tag that is not stored in its natural place in the refs/tags/ hierarchy, in which case --no-ff is assumed.";
                    Condition = [ExclusiveParameterCondition]::new("no-ff")
                },
                [FlagParameter]@{
                    Keys = @("--no-ff");
                    Name = "no-ff";
                    Description = "Specifies how a merge is handled when the merged-in history is already a descendant of the current history. --ff is the default unless merging an annotated (and possibly signed) tag that is not stored in its natural place in the refs/tags/ hierarchy, in which case --no-ff is assumed.";
                    Condition = [ExclusiveParameterCondition]::new("ff-only")
                },
                [ValueParameter]@{
                    Keys = @("--gpg-sign", "-S");
                    Name = "gpg-sign";
                    Description = "GPG-sign the resulting merge commit. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                    Condition = [ExclusiveParameterCondition]::new("no-pg-sign")
                },
                [FlagParameter]@{
                    Keys = @("--no-gpg-sign");
                    Name = "no-gpg-sign";
                    Condition = [ExclusiveParameterCondition]::new("gpg-sign")
                },
                [ValueParameter]@{
                    Keys = @("--log");
                    Name = "log";
                    Description = "In addition to branch names, populate the log message with one-line descriptions from at most <n> actual commits that are being merged. See also git-fmt-merge-msg1.";
                    Condition = [ExclusiveParameterCondition]::new("no-log")
                },
                [FlagParameter]@{
                    Keys = @("--no-log");
                    Name = "no-log";
                    Description = "In addition to branch names, populate the log message with one-line descriptions from at most <n> actual commits that are being merged. See also git-fmt-merge-msg1.";
                    Condition = [ExclusiveParameterCondition]::new("log")
                },
                [FlagParameter]@{
                    Keys = @("--signoff");
                    Name = "signoff";
                    Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
                    Condition = [ExclusiveParameterCondition]::new("no-signoff")
                },
                [FlagParameter]@{
                    Keys = @("--no-signoff");
                    Name = "no-signoff";
                    Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
                    Condition = [ExclusiveParameterCondition]::new("signoff")
                },
                [FlagParameter]@{
                    Keys = @("--stat");
                    Name = "stat";
                    Description = "Show a diffstat at the end of the merge. The diffstat is also controlled by the configuration option merge.stat.";
                    Condition = [ExclusiveParameterCondition]::new("no-stat")
                },
                [FlagParameter]@{
                    Keys = @("--no-stat", "-n");
                    Name = "no-stat";
                    Description = "Show a diffstat at the end of the merge. The diffstat is also controlled by the configuration option merge.stat.";
                    Condition = [ExclusiveParameterCondition]::new("stat")
                },
                [FlagParameter]@{
                    Keys = @("--squash");
                    Name = "squash";
                    Description = 'Produce the working tree and index state as if a real merge happened (except for the merge information), but do not actually make a commit, move the HEAD, or record $GIT_DIR/MERGE_HEAD (to cause the next git commit command to create a merge commit). This allows you to create a single commit on top of the current branch whose effect is the same as merging another branch (or more in case of an octopus).';
                    Condition = [ExclusiveParameterCondition]::new("no-squash")
                },
                [FlagParameter]@{
                    Keys = @("--no-squash");
                    Name = "no-squash";
                    Description = "Produce the working tree and index state as if a real merge happened (except for the merge information), but do not actually make a commit, move the HEAD, or record $GIT_DIR/MERGE_HEAD (to cause the next git commit command to create a merge commit). This allows you to create a single commit on top of the current branch whose effect is the same as merging another branch (or more in case of an octopus).";
                    Condition = [ExclusiveParameterCondition]::new("squash")
                },
                [FlagParameter]@{
                    Keys = @("--verify");
                    Name = "verify";
                    Description = "By default, the pre-merge and commit-msg hooks are run. When --no-verify is given, these are bypassed. See also githooks5 .";
                    Condition = [ExclusiveParameterCondition]::new("no-verify")
                },
                [FlagParameter]@{
                    Keys = @("--no-verify");
                    Name = "no-verify";
                    Description = "By default, the pre-merge and commit-msg hooks are run. When --no-verify is given, these are bypassed. See also githooks5 .";
                    Condition = [ExclusiveParameterCondition]::new("verify")
                },
                [ValueParameter]@{
                    Keys = @("--strategy", "-s");
                    Name = "strategy";
                    Description = "Use the given merge strategy; can be supplied more than once to specify them in the order they should be tried. If there is no -s option, a built-in list of strategies is used instead (ort when merging a single head, octopus otherwise).";
                    Source = $mergeStrategy;
                },
                [ValueParameter]@{
                    Keys = @("--strategy-option", "-X");
                    Name = "strategy-option";
                    Description = "Pass merge strategy specific option through to the merge strategy.";
                    Condition = [NotCondition]::new([ExclusiveParameterCondition]::new("strategy")) # Only display this if strategy was used
                    # Source = $???; # todo: Implement this later
                },
                [FlagParameter]@{
                    Keys = @("--verify-signatures");
                    Name = "verify-signatures";
                    Description = "Verify that the tip commit of the side branch being merged is signed with a valid key, i.e. a key that has a valid uid: in the default trust model, this means the signing key has been signed by a trusted key. If the tip commit of the side branch is not signed with a valid key, the merge is aborted.";
                    Condition = [ExclusiveParameterCondition]::new("no-verify-signatures")
                },
                [FlagParameter]@{
                    Keys = @("--no-verify-signatures");
                    Name = "no-verify-signatures";
                    Description = "Verify that the tip commit of the side branch being merged is signed with a valid key, i.e. a key that has a valid uid: in the default trust model, this means the signing key has been signed by a trusted key. If the tip commit of the side branch is not signed with a valid key, the merge is aborted.";
                    Condition = [ExclusiveParameterCondition]::new("verify-signatures")
                },
                [FlagParameter]@{
                    Keys = @("--summary");
                    Name = "summary";
                    Description = "Synonyms to --stat and --no-stat; these are deprecated and will be removed in the future.";
                    Condition = [ExclusiveParameterCondition]::new("no-summary");
                },
                [FlagParameter]@{
                    Keys = @("--no-summary");
                    Name = "no-summary";
                    Description = "Synonyms to --stat and --no-stat; these are deprecated and will be removed in the future.";
                    Condition = [ExclusiveParameterCondition]::new("summary");
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Operate quietly. Implies --no-progress.";
                    Condition = [ExclusiveParameterCondition]::new("verbose")
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Be verbose.";
                    Condition = [ExclusiveParameterCondition]::new("quiet")
                },
                [FlagParameter]@{
                    Keys = @("--progress");
                    Name = "progress";
                    Description = "Turn progress on/off explicitly. If neither is specified, progress is shown if standard error is connected to a terminal. Note that not all merge strategies may support progress reporting.";
                    Condition = [ExclusiveParameterCondition]::new("no-progress")
                },
                [FlagParameter]@{
                    Keys = @("--no-progress");
                    Name = "no-progress";
                    Description = "Turn progress on/off explicitly. If neither is specified, progress is shown if standard error is connected to a terminal. Note that not all merge strategies may support progress reporting.";
                    Condition = [ExclusiveParameterCondition]::new("progress")
                },
                [FlagParameter]@{
                    Keys = @("--autostash");
                    Name = "autostash";
                    Description = "Automatically create a temporary stash entry before the operation begins, record it in the special ref MERGE_AUTOSTASH and apply it after the operation ends. This means that you can run the operation on a dirty worktree. However, use with care: the final stash application after a successful merge might result in non-trivial conflicts.";
                    Condition = [ExclusiveParameterCondition]::new("no-autostash")
                },
                [FlagParameter]@{
                    Keys = @("--no-autostash");
                    Name = "no-autostash";
                    Description = "Automatically create a temporary stash entry before the operation begins, record it in the special ref MERGE_AUTOSTASH and apply it after the operation ends. This means that you can run the operation on a dirty worktree. However, use with care: the final stash application after a successful merge might result in non-trivial conflicts.";
                    Condition = [ExclusiveParameterCondition]::new("autostash")
                },
                [FlagParameter]@{
                    Keys = @("--allow-unrelated-histories");
                    Name = "allow-unrelated-histories";
                    Description = "By default, git merge command refuses to merge histories that do not share a common ancestor. This option can be used to override this safety when merging histories of two projects that started their lives independently. As that is a very rare occasion, no configuration variable to enable this by default exists and will not be added.";
                },
                [ValueParameter]@{
                    Keys = @("-m");
                    Name = "message";
                    Description = "Set the commit message to be used for the merge commit (in case one is created).";
                },
                [ValueParameter]@{
                    Keys = @("--file", "-F");
                    Name = "file";
                    Description = "Read the commit message to be used for the merge commit (in case one is created).";
                    #Source = File;
                },
                [FlagParameter]@{
                    Keys = @("--rerere-autoupdate");
                    Name = "rerere-autoupdate";
                    Description = "Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.";
                    Condition = [ExclusiveParameterCondition]::new("no-rerere-autoupdate")
                },
                [FlagParameter]@{
                    Keys = @("--no-rerere-autoupdate");
                    Name = "no-rerere-autoupdate";
                    Description = "Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.";
                    Condition = [ExclusiveParameterCondition]::new("rerere-autoupdate")
                },
                [FlagParameter]@{
                    Keys = @("--overwrite-ignore");
                    Name = "overwrite-ignore";
                    Description = "Silently overwrite ignored files from the merge result. This is the default behavior. Use --no-overwrite-ignore to abort.";
                    Condition = [ExclusiveParameterCondition]::new("no-overwrite-ignore")
                },
                [FlagParameter]@{
                    Keys = @("--no-overwrite-ignore");
                    Name = "no-overwrite-ignore";
                Description = "Silently overwrite ignored files from the merge result. This is the default behavior. Use --no-overwrite-ignore to abort.";
                    Condition = [ExclusiveParameterCondition]::new("overwrite-ignore")
                },
                [FlagParameter]@{
                    Keys = @("--abort");
                    Name = "abort";
                    Description = "Abort the current conflict resolution process, and try to reconstruct the pre-merge state. If an autostash entry is present, apply it to the worktree.";
                },
                [FlagParameter]@{
                    Keys = @("--quit");
                    Name = "quit";
                    Description = "Forget about the current merge in progress. Leave the index and the working tree as-is. If MERGE_AUTOSTASH is present, the stash entry will be saved to the stash list.";
                },
                [FlagParameter]@{
                    Keys = @("--continue");
                    Name = "continue";
                    Description = "After a git merge stops due to conflicts you can conclude the merge by running git merge --continue (see `"HOW TO RESOLVE CONFLICTS`" section below).";
                },
                [ValueParameter]@{
                    Name = "commit hash";
                    Description = "Commits, usually other branch heads, to merge into our branch. Specifying more than one commit will create a merge with more than two parents (affectionately called an Octopus merge).";
                }
            )
        },
        [CommandParameter]@{
            Keys = @("clone");
            Name = "clone";
            Description = "Clone a repository into a new directory";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--local", "-l");
                    Name = "local";
                    Description = "When the repository to clone from is on a local machine, this flag bypasses the normal `"Git aware`" transport mechanism and clones the repository by making a copy of HEAD and everything under objects and refs directories. The files under .git/objects/ directory are hardlinked to save space when possible.";
                },
                [FlagParameter]@{
                    Keys = @("--no-hardlinks");
                    Name = "no-hardlinks";
                    Description = "Force the cloning process from a repository on a local filesystem to copy the files under the .git/objects directory instead of using hardlinks. This may be desirable if you are trying to make a back-up of your repository.";
                },
                [FlagParameter]@{
                    Keys = @("--shared", "-s");
                    Name = "shared";
                    Description = "When the repository to clone is on the local machine, instead of using hard links, automatically setup .git/objects/info/alternates to share the objects with the source repository. The resulting repository starts out without any object of its own.";
                },
                [ValueParameter]@{
                    Keys = @("--reference", "--reference-if-able");
                    Name = "reference";
                    Description = "If the reference repository is on the local machine, automatically setup .git/objects/info/alternates to obtain objects from the reference repository. Using an already existing repository as an alternate will require fewer objects to be copied from the repository being cloned, reducing network and local storage costs. When using the --reference-if-able, a non existing directory is skipped with a warning instead of aborting the clone.";
                },
                [FlagParameter]@{
                    Keys = @("--dissociate");
                    Name = "dissociate";
                    Description = "Borrow the objects from reference repositories specified with the --reference options only to reduce network transfer, and stop borrowing from them after a clone is made by making necessary local copies of borrowed objects. This option can also be used when cloning locally from a repository that already borrows objects from another repository—the new repository will borrow objects from the same repository, and this option can be used to stop the borrowing.";
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Operate quietly. Progress is not reported to the standard error stream.";
                    Condition = [ExclusiveParameterCondition]::new("verbose");
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Run verbosely. Does not affect the reporting of progress status to the standard error stream.";
                    Condition = [ExclusiveParameterCondition]::new("quiet");
                },
                [FlagParameter]@{
                    Keys = @("--progress");
                    Name = "progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified. This flag forces progress status even if the standard error stream is not directed to a terminal.";
                },
                [ValueParameter]@{
                    Keys = @("--server-option");
                    Name = "server-option";
                    Description = "Transmit the given string to the server when communicating using protocol version 2. The given string must not contain a NUL or LF character. The server’s handling of server options, including unknown ones, is server-specific. When multiple --server-option=<option> are given, they are all sent to the other side in the order listed on the command line.";
                },
                [FlagParameter]@{
                    Keys = @("--no-checkout", "-n");
                    Name = "no-checkout";
                    Description = "No checkout of HEAD is performed after the clone is complete.";
                },
                [FlagParameter]@{
                    Keys = @("--reject-shallow");
                    Name = "reject-shallow";
                    Description = "Fail if the source repository is a shallow repository. The clone.rejectShallow configuration variable can be used to specify the default.";
                    Condition = [ExclusiveParameterCondition]::new("no-reject-shallow")
                },
                [FlagParameter]@{
                    Keys = @("--no-reject-shallow");
                    Name = "no-reject-shallow";
                    Description = "Fail if the source repository is a shallow repository. The clone.rejectShallow configuration variable can be used to specify the default.";
                    Condition = [ExclusiveParameterCondition]::new("reject-shallow")
                },
                [FlagParameter]@{
                    Keys = @("--bare");
                    Name = "bare";
                    Description = "Make a bare Git repository. That is, instead of creating <directory> and placing the administrative files in <directory>/.git, make the <directory> itself the $GIT_DIR. This obviously implies the --no-checkout because there is nowhere to check out the working tree. Also the branch heads at the remote are copied directly to corresponding local branch heads, without mapping them to refs/remotes/origin/. When this option is used, neither remote-tracking branches nor the related configuration variables are created.";
                },
                [FlagParameter]@{
                    Keys = @("--sparse");
                    Name = "sparse";
                    Description = "Initialize the sparse-checkout file so the working directory starts with only the files in the root of the repository. The sparse-checkout file can be modified to grow the working directory as needed.";
                },
                [ValueParameter]@{
                    Keys = @("--filter");
                    Name = "filter";
                    Description = "Use the partial clone feature and request that the server sends a subset of reachable objects according to a given object filter. When using --filter, the supplied <filter-spec> is used for the partial clone filter. For example, --filter=blob:none will filter out all blobs (file contents) until needed by Git. Also, --filter=blob:limit=<size> will filter out all blobs of size at least <size>. For more details on filter specifications, see the --filter option in git-rev-list1 .";
                },
                [FlagParameter]@{
                    Keys = @("--mirror");
                    Name = "mirror";
                    Description = "Set up a mirror of the source repository. This implies --bare. Compared to --bare, --mirror not only maps local branches of the source to local branches of the target, it maps all refs (including remote-tracking branches, notes etc.) and sets up a refspec configuration such that all these refs are overwritten by a git remote update in the target repository.";
                },
                [ValueParameter]@{
                    Keys = @("--origin", "-o");
                    Name = "origin";
                    Description = "Instead of using the remote name origin to keep track of the upstream repository, use <name>. Overrides clone.defaultRemoteName from the config.";
                },
                [ValueParameter]@{
                    Keys = @("--branch", "-b");
                    Name = "branch";
                    Description = "Instead of pointing the newly created HEAD to the branch pointed to by the cloned repository’s HEAD, point to <name> branch instead. In a non-bare repository, this is the branch that will be checked out. --branch can also take tags and detaches the HEAD at that commit in the resulting repository.";
                },
                [ValueParameter]@{
                    Keys = @("--upload-pack", "-u");
                    Name = "upload-pack";
                    Description = "When given, and the repository to clone from is accessed via ssh, this specifies a non-default path for the command run on the other end.";
                },
                [ValueParameter]@{
                    Keys = @("--template");
                    Name = "template";
                    Description = "Specify the directory from which templates will be used; (See the `"TEMPLATE DIRECTORY`" section of git-init1 .)";
                    # Source = Directory;
                },
                #todo we dont know how to handle --config key=value
                #[ValueParameter]@{
                #    Keys = @("--config <key>", "-c <key>");
                #    Name = "config <key>";
                #    Description = "Set a configuration variable in the newly-created repository; this takes effect immediately after the repository is initialized, but before the remote history is fetched or any files checked out. The key is in the same format as expected by git-config1 (e.g., core.eol=true). If multiple values are given for the same key, each value will be written to the config file. This makes it safe, for example, to add additional fetch refspecs to the origin remote.";
                #    Source = $???;
                #},
                [ValueParameter]@{
                    Keys = @("--depth");
                    Name = "depth";
                    Description = "Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.";
                },
                [ValueParameter]@{
                    Keys = @("--shallow-since");
                    Name = "shallow-since";
                    Description = "Create a shallow clone with a history after the specified time.";
                },
                [ValueParameter]@{
                    Keys = @("--shallow-exclude");
                    Name = "shallow-exclude";
                    Description = "Create a shallow clone with a history, excluding commits reachable from a specified remote branch or tag. This option can be specified multiple times.";
                },
                [FlagParameter]@{
                    Keys = @("--single-branch");
                    Name = "single-branch";
                    Description = "Clone only the history leading to the tip of a single branch, either specified by the --branch option or the primary branch remote’s HEAD points at. Further fetches into the resulting repository will only update the remote-tracking branch for the branch this option was used for the initial cloning. If the HEAD at the remote did not point at any branch when --single-branch clone was made, no remote-tracking branch is created.";
                    Condition = [ExclusiveParameterCondition]::new("no-single-branch");
                },
                [FlagParameter]@{
                    Keys = @("--no-single-branch");
                    Name = "no-single-branch";
                    Description = "Clone only the history leading to the tip of a single branch, either specified by the --branch option or the primary branch remote’s HEAD points at. Further fetches into the resulting repository will only update the remote-tracking branch for the branch this option was used for the initial cloning. If the HEAD at the remote did not point at any branch when --single-branch clone was made, no remote-tracking branch is created.";
                    Condition = [ExclusiveParameterCondition]::new("single-branch");
                },
                [FlagParameter]@{
                    Keys = @("--no-tags");
                    Name = "no-tags";
                    Description = "Don’t clone any tags, and set remote.<remote>.tagOpt=--no-tags in the config, ensuring that future git pull and git fetch operations won’t follow any tags. Subsequent explicit tag fetches will still work, (see git-fetch1 ).";
                },
                [ValueParameter]@{
                    Keys = @("--recurse-submodules");
                    Name = "recurse-submodules";
                    Description = "After the clone is created, initialize and clone submodules within based on the provided pathspec. If no pathspec is provided, all submodules are initialized and cloned. This option can be given multiple times for pathspecs consisting of multiple entries. The resulting clone has submodule.active set to the provided pathspec, or `".`" (meaning all submodules) if no pathspec is provided.";
                },
                [FlagParameter]@{
                    Keys = @("--shallow-submodules");
                    Name = "shallow-submodules";
                    Description = "All submodules which are cloned will be shallow with a depth of 1.";
                    Condition = [ExclusiveParameterCondition]::new("no-shallow-submodules");
                },
                [FlagParameter]@{
                    Keys = @("--no-shallow-submodules");
                    Name = "no-shallow-submodules";
                    Description = "All submodules which are cloned will be shallow with a depth of 1.";
                    Condition = [ExclusiveParameterCondition]::new("shallow-submodules");
                },
                [FlagParameter]@{
                    Keys = @("--remote-submodules");
                    Name = "remote-submodules";
                    Description = "All submodules which are cloned will use the status of the submodule’s remote-tracking branch to update the submodule, rather than the superproject’s recorded SHA-1. Equivalent to passing --remote to git submodule update.";
                    Condition = [ExclusiveParameterCondition]::new("no-remote-submodules");
                },
                [FlagParameter]@{
                    Keys = @("--no-remote-submodules");
                    Name = "no-remote-submodules";
                    Description = "All submodules which are cloned will use the status of the submodule’s remote-tracking branch to update the submodule, rather than the superproject’s recorded SHA-1. Equivalent to passing --remote to git submodule update.";
                    Condition = [ExclusiveParameterCondition]::new("remote-submodules");
                },
                [ValueParameter]@{
                    Keys = @("--separate-git-dir");
                    Name = "separate-git-dir";
                    Description = "Instead of placing the cloned repository where it is supposed to be, place the cloned repository at the specified directory, then make a filesystem-agnostic Git symbolic link to there. The result is Git repository can be separated from working tree.";
                    # Source = Directory;
                },
                [ValueParameter]@{
                    Keys = @("--jobs", "-j");
                    Name = "jobs";
                    Description = "The number of submodules fetched at the same time. Defaults to the submodule.fetchJobs option.";
                },
                [ValueParameter]@{
                    Keys = @("repository");
                    Name = "repository";
                    Description = "The (possibly remote) repository to clone from. See the GIT URLS section below for more information on specifying repositories.";
                },
                [ValueParameter]@{
                    Keys = @("directory");
                    Name = "directory";
                    Description = "The name of a new directory to clone into. The `"humanish`" part of the source repository is used if no directory is explicitly given (repo for /path/to/repo.git and foo for host.xz:foo/.git). Cloning into an existing directory is only allowed if the directory is empty.";
                    # Source = Directory
                }
            )
        },
        [CommandParameter]@{
            Keys = @("rebase");
            Name = "rebase";
            Description = "Reapply commits on top of another base tip";
            Parameters = @(
                [ValueParameter]@{
                    Keys = @("--onto");
                    Name = "onto";
                    Description = "Starting point at which to create the new commits. If the --onto option is not specified, the starting point is <upstream>. May be any valid commit, and not just an existing branch name.";
                },
                [FlagParameter]@{
                    Keys = @("--keep-base");
                    Name = "keep-base";
                    Description = "Set the starting point at which to create the new commits to the merge base of <upstream> <branch>. Running git rebase --keep-base <upstream> <branch> is equivalent to running git rebase --onto <upstream>… <upstream>.";
                },
                [ValueParameter]@{
                    Keys = @("upstream");
                    Name = "upstream";
                    Description = "Upstream branch to compare against. May be any valid commit, not just an existing branch name. Defaults to the configured upstream for the current branch.";
                },
                [ValueParameter]@{
                    Keys = @("branch");
                    Name = "branch";
                    Description = "Working branch; defaults to HEAD.";
                    Source = $allBranches
                },
                [FlagParameter]@{
                    Keys = @("--continue");
                    Name = "continue";
                    Description = "Restart the rebasing process after having resolved a merge conflict.";
                },
                [FlagParameter]@{
                    Keys = @("--abort");
                    Name = "abort";
                    Description = "Abort the rebase operation and reset HEAD to the original branch. If <branch> was provided when the rebase operation was started, then HEAD will be reset to <branch>. Otherwise HEAD will be reset to where it was when the rebase operation was started.";
                },
                [FlagParameter]@{
                    Keys = @("--quit");
                    Name = "quit";
                    Description = "Abort the rebase operation but HEAD is not reset back to the original branch. The index and working tree are also left unchanged as a result. If a temporary stash entry was created using --autostash, it will be saved to the stash list.";
                },
                [FlagParameter]@{
                    Keys = @("--apply");
                    Name = "apply";
                    Description = "Use applying strategies to rebase (calling git-am internally). This option may become a no-op in the future once the merge backend handles everything the apply one does.";
                },
                [ValueParameter]@{
                    Keys = @("--empty");
                    Name = "empty";
                    Description = "How to handle commits that are not empty to start and are not clean cherry-picks of any upstream commit, but which become empty after rebasing (because they contain a subset of already upstream changes). With drop (the default), commits that become empty are dropped. With keep, such commits are kept. With ask (implied by --interactive), the rebase will halt when an empty commit is applied allowing you to choose whether to drop it, edit files more, or just commit the empty changes. Other options, like --exec, will use the default of drop unless -i/--interactive is explicitly specified.";
                    Source = [StaticSource]@{
                        Name = "empty mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{ 
                                Name = "drop";
                                Description = "commits that become empty are dropped"
                            },
                            [SourceItem]@{
                                Name = "keep";
                                Description = "commits that become empty are kept"
                            },
                            [SourceItem]@{
                                Name = "ask";
                                Description = ""
                            }
                        )
                    }
                },
                [FlagParameter]@{
                    Keys = @("--keep-empty");
                    Name = "keep-empty";
                    Description = "Do not keep commits that start empty before the rebase (i.e. that do not change anything from its parent) in the result. The default is to keep commits which start empty, since creating such commits requires passing the --allow-empty override flag to git commit, signifying that a user is very intentionally creating such a commit and thus wants to keep it.";
                    Condition = [ExclusiveParameterCondition]::new("no-keep-empty");
                },
                [FlagParameter]@{
                    Keys = @("--no-keep-empty");
                    Name = "no-keep-empty";
                    Description = "Do not keep commits that start empty before the rebase (i.e. that do not change anything from its parent) in the result. The default is to keep commits which start empty, since creating such commits requires passing the --allow-empty override flag to git commit, signifying that a user is very intentionally creating such a commit and thus wants to keep it.";
                    Condition = [ExclusiveParameterCondition]::new("keep-empty");
                },
                [FlagParameter]@{
                    Keys = @("--reapply-cherry-picks");
                    Name = "reapply-cherry-picks";
                    Description = "Reapply all clean cherry-picks of any upstream commit instead of preemptively dropping them. (If these commits then become empty after rebasing, because they contain a subset of already upstream changes, the behavior towards them is controlled by the --empty flag.)";
                    Condition = [ExclusiveParameterCondition]::new("no-reapply-cherry-picks");
                },
                [FlagParameter]@{
                    Keys = @("--no-reapply-cherry-picks");
                    Name = "no-reapply-cherry-picks";
                    Description = "Reapply all clean cherry-picks of any upstream commit instead of preemptively dropping them. (If these commits then become empty after rebasing, because they contain a subset of already upstream changes, the behavior towards them is controlled by the --empty flag.)";
                    Condition = [ExclusiveParameterCondition]::new("reapply-cherry-picks");
                },
                [FlagParameter]@{
                    Keys = @("--allow-empty-message");
                    Name = "allow-empty-message";
                    Description = "No-op. Rebasing commits with an empty message used to fail and this option would override that behavior, allowing commits with empty messages to be rebased. Now commits with an empty message do not cause rebasing to halt.";
                },
                [FlagParameter]@{
                    Keys = @("--skip");
                    Name = "skip";
                    Description = "Restart the rebasing process by skipping the current patch.";
                },
                [FlagParameter]@{
                    Keys = @("--edit-todo");
                    Name = "edit-todo";
                    Description = "Edit the todo list during an interactive rebase.";
                },
                [FlagParameter]@{
                    Keys = @("--show-current-patch");
                    Name = "show-current-patch";
                    Description = "Show the current patch in an interactive rebase or when rebase is stopped because of conflicts. This is the equivalent of git show REBASE_HEAD.";
                },
                [FlagParameter]@{
                    Keys = @("--merge", "-m");
                    Name = "merge";
                    Description = "Using merging strategies to rebase (default).";
                },
                [ValueParameter]@{
                    Keys = @("--strategy", "-s");
                    Name = "strategy";
                    Description = "Use the given merge strategy, instead of the default ort. This implies --merge.";
                    Source = $mergeStrategy;
                },
                [ValueParameter]@{
                    Keys = @("--strategy-option", "-X");
                    Name = "strategy-option";
                    Description = "Pass the <strategy-option> through to the merge strategy. This implies --merge and, if no strategy has been specified, -s ort. Note the reversal of ours and theirs as noted above for the -m option.";
                    # Source = $???;
                    Condition = [NotCondition]::new([ExclusiveParameterCondition]::new("strategy"));
                },
                [FlagParameter]@{
                    Keys = @("--rerere-autoupdate");
                    Name = "rerere-autoupdate";
                    Description = "Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.";
                    Condition = [ExclusiveParameterCondition]::new("no-rerere-autoupdate");
                },
                [FlagParameter]@{
                    Keys = @("--no-rerere-autoupdate");
                    Name = "no-rerere-autoupdate";
                    Description = "Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.";
                    Condition = [ExclusiveParameterCondition]::new("rerere-autoupdate");
                },
                [ValueParameter]@{
                    Keys = @("--gpg-sign", "-S");
                    Name = "gpg-sign";
                    Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                    Condition = [ExclusiveParameterCondition]::new("no-gpg-sign");
                },
                [FlagParameter]@{
                    Keys = @("--no-gpg-sign");
                    Name = "no-gpg-sign";
                    Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                    Condition = [ExclusiveParameterCondition]::new("gpg-sign");
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Be quiet. Implies --no-stat.";
                    Condition = [ExclusiveParameterCondition]::new("verbose");
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Be verbose. Implies --stat.";
                    Condition = [ExclusiveParameterCondition]::new("quiet");
                },
                [FlagParameter]@{
                    Keys = @("--stat");
                    Name = "stat";
                    Description = "Show a diffstat of what changed upstream since the last rebase. The diffstat is also controlled by the configuration option rebase.stat.";
                    Condition = [ExclusiveParameterCondition]::new("no-stat");
                },
                [FlagParameter]@{
                    Keys = @("--no-stat", "-n");
                    Name = "no-stat";
                    Description = "Do not show a diffstat as part of the rebase process.";
                    Condition = [ExclusiveParameterCondition]::new("stat");
                },
                [FlagParameter]@{
                    Keys = @("--no-verify");
                    Name = "no-verify";
                    Description = "This option bypasses the pre-rebase hook. See also githooks5 .";
                    Condition = [ExclusiveParameterCondition]::new("verify");
                },
                [FlagParameter]@{
                    Keys = @("--verify");
                    Name = "verify";
                    Description = "Allows the pre-rebase hook to run, which is the default. This option can be used to override --no-verify. See also githooks5 .";
                    Condition = [ExclusiveParameterCondition]::new("no-verify");
                },
                [ValueParameter]@{
                    Keys = @("-C");
                    Name = "ensure lines";
                    Description = "Ensure at least <n> lines of surrounding context match before and after each change. When fewer lines of surrounding context exist they all must match. By default no context is ever ignored. Implies --apply.";
                },
                [FlagParameter]@{
                    Keys = @("--no-ff", "--force-rebase", "-f");
                    Name = "force-rebase";
                    Description = "Individually replay all rebased commits instead of fast-forwarding over the unchanged ones. This ensures that the entire history of the rebased branch is composed of new commits.";
                },
                [FlagParameter]@{
                    Keys = @("--fork-point");
                    Name = "fork-point";
                    Description = "Use reflog to find a better common ancestor between <upstream> and <branch> when calculating which commits have been introduced by <branch>.";
                    Condition = [ExclusiveParameterCondition]::new("no-fork-point");
                },
                [FlagParameter]@{
                    Keys = @("--no-fork-point");
                    Name = "no-fork-point";
                    Description = "Use reflog to find a better common ancestor between <upstream> and <branch> when calculating which commits have been introduced by <branch>.";
                    Condition = [ExclusiveParameterCondition]::new("fork-point");
                },
                [FlagParameter]@{
                    Keys = @("--ignore-whitespace");
                    Name = "ignore-whitespace";
                    Description = "Ignore whitespace differences when trying to reconcile differences. Currently, each backend implements an approximation of this behavior:";
                },
                [ValueParameter]@{
                    Keys = @("--whitespace");
                    Name = "whitespace";
                    Description = "This flag is passed to the git apply program (see git-apply1 ) that applies the patch. Implies --apply.";
                    # Source = $???;
                },
                [FlagParameter]@{
                    Keys = @("--committer-date-is-author-date");
                    Name = "committer-date-is-author-date";
                    Description = "Instead of using the current time as the committer date, use the author date of the commit being rebased as the committer date. This option implies --force-rebase.";
                },
                [FlagParameter]@{
                    Keys = @("--reset-author-date", "--ignore-date");
                    Name = "reset-author-date";
                    Description = "Instead of using the author date of the original commit, use the current time as the author date of the rebased commit. This option implies --force-rebase.";
                },
                [FlagParameter]@{
                    Keys = @("--signoff");
                    Name = "signoff";
                    Description = "Add a Signed-off-by trailer to all the rebased commits. Note that if --interactive is given then only commits marked to be picked, edited or reworded will have the trailer added.";
                },
                [FlagParameter]@{
                    Keys = @("--interactive", "-i");
                    Name = "interactive";
                    Description = "Make a list of the commits which are about to be rebased. Let the user edit that list before rebasing. This mode can also be used to split commits (see SPLITTING COMMITS below).";
                },
                [ValueParameter]@{
                    Keys = @("--rebase-merges", "-r");
                    Name = "rebase-merges";
                    Description = "By default, a rebase will simply drop merge commits from the todo list, and put the rebased commits into a single, linear branch. With --rebase-merges, the rebase will instead try to preserve the branching structure within the commits that are to be rebased, by recreating the merge commits. Any resolved merge conflicts or manual amendments in these merge commits will have to be resolved/re-applied manually.";
                    Source = [StaticSource]@{
                        Name = "rebase-merges mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "rebase-cousins";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "no-rebase-cousins";
                                Description = ""
                            }
                        )
                    }
                },
                [ValueParameter]@{
                    Keys = @("--exec", "-x");
                    Name = "exec";
                    Description = "Append `"exec <cmd>`" after each line creating a commit in the final history. <cmd> will be interpreted as one or more shell commands. Any command that fails will interrupt the rebase, with exit code 1.";
                },
                [FlagParameter]@{
                    Keys = @("--root");
                    Name = "root";
                    Description = "Rebase all commits reachable from <branch>, instead of limiting them with an <upstream>. This allows you to rebase the root commit(s) on a branch. When used with --onto, it will skip changes already contained in <newbase> (instead of <upstream>) whereas without --onto it will operate on every change.";
                },
                [FlagParameter]@{
                    Keys = @("--autosquash");
                    Name = "autosquash";
                    Description = "When the commit log message begins with `"squash! …`" or `"fixup! …`" or `"amend! …`", and there is already a commit in the todo list that matches the same ..., automatically modify the todo list of rebase -i, so that the commit marked for squashing comes right after the commit to be modified, and change the action of the moved commit from pick to squash or fixup or fixup -C respectively. A commit matches the ... if the commit subject matches, or if the ... refers to the commit’s hash. As a fall-back, partial matches of the commit subject work, too. The recommended way to create fixup/amend/squash commits is by using the --fixup, --fixup=amend: or --fixup=reword: and --squash options respectively of git-commit1 .";
                    Condition = [ExclusiveParameterCondition]::new("no-autosquash");
                },
                [FlagParameter]@{
                    Keys = @("--no-autosquash");
                    Name = "no-autosquash";
                    Description = "When the commit log message begins with `"squash! …`" or `"fixup! …`" or `"amend! …`", and there is already a commit in the todo list that matches the same ..., automatically modify the todo list of rebase -i, so that the commit marked for squashing comes right after the commit to be modified, and change the action of the moved commit from pick to squash or fixup or fixup -C respectively. A commit matches the ... if the commit subject matches, or if the ... refers to the commit’s hash. As a fall-back, partial matches of the commit subject work, too. The recommended way to create fixup/amend/squash commits is by using the --fixup, --fixup=amend: or --fixup=reword: and --squash options respectively of git-commit1 .";
                    Condition = [ExclusiveParameterCondition]::new("autosquash");
                },
                [FlagParameter]@{
                    Keys = @("--autostash");
                    Name = "autostash";
                    Description = "Automatically create a temporary stash entry before the operation begins, and apply it after the operation ends. This means that you can run rebase on a dirty worktree. However, use with care: the final stash application after a successful rebase might result in non-trivial conflicts.";
                    Condition = [ExclusiveParameterCondition]::new("no-autostash");
                },
                [FlagParameter]@{
                    Keys = @("--no-autostash");
                    Name = "no-autostash";
                    Description = "Automatically create a temporary stash entry before the operation begins, and apply it after the operation ends. This means that you can run rebase on a dirty worktree. However, use with care: the final stash application after a successful rebase might result in non-trivial conflicts.";
                    Condition = [ExclusiveParameterCondition]::new("autostash");
                },
                [FlagParameter]@{
                    Keys = @("--reschedule-failed-exec");
                    Name = "reschedule-failed-exec";
                    Description = "Automatically reschedule exec commands that failed. This only makes sense in interactive mode (or when an --exec option was provided).";
                    Condition = [ExclusiveParameterCondition]::new("no-reschedule-failed-exec");
                },
                [FlagParameter]@{
                    Keys = @("--no-reschedule-failed-exec");
                    Name = "no-reschedule-failed-exec";
                    Description = "Automatically reschedule exec commands that failed. This only makes sense in interactive mode (or when an --exec option was provided).";
                    Condition = [ExclusiveParameterCondition]::new("reschedule-failed-exec");
                }
            )
        },
        [CommandParameter]@{
            Keys = @("status");
            Name = "status";
            Description = "Show the working tree status";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--short", "-s");
                    Name = "short";
                    Description = "Give the output in the short-format.";
                },
                [FlagParameter]@{
                    Keys = @("--branch", "-b");
                    Name = "branch";
                    Description = "Show the branch and tracking info even in short-format.";
                },
                [FlagParameter]@{
                    Keys = @("--show-stash");
                    Name = "show-stash";
                    Description = "Show the number of entries currently stashed away.";
                },
                [ValueParameter]@{
                    Keys = @("--porcelain");
                    Name = "porcelain";
                    Description = "Give the output in an easy-to-parse format for scripts. This is similar to the short output, but will remain stable across Git versions and regardless of user configuration. See below for details.";
                },
                [FlagParameter]@{
                    Keys = @("--long");
                    Name = "long";
                    Description = "Give the output in the long-format. This is the default.";
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "In addition to the names of files that have been changed, also show the textual changes that are staged to be committed (i.e., like the output of git diff --cached). If -v is specified twice, then also show the changes in the working tree that have not yet been staged (i.e., like the output of git diff).";
                },
                [ValueParameter]@{
                    Keys = @("--untracked-files", "-u");
                    Name = "untracked-files";
                    Description = "Show untracked files.";
                    Source = [StaticSource]@{
                        Name = "untracked-files mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "no";
                                Description = "Show no untracked files."
                            },
                            [SourceItem]@{
                                Name = "normal";
                                Description = "Shows untracked files and directories"
                            },
                            [SourceItem]@{
                                Name = "all";
                                Description = "Also shows individual files in untracked directories"
                            }
                        )
                    }
                },
                [ValueParameter]@{
                    Keys = @("--ignore-submodules");
                    Name = "ignore-submodules";
                    Description = "Ignore changes to submodules when looking for changes. &lt;when&gt; can be either `"none`", `"untracked`", `"dirty`" or `"all`", which is the default. Using `"none`" will consider the submodule modified when it either contains untracked or modified files or its HEAD differs from the commit recorded in the superproject and can be used to override any settings of the ignore option in git-config1 or gitmodules5 . When `"untracked`" is used submodules are not considered dirty when they only contain untracked content (but they are still scanned for modified content). Using `"dirty`" ignores all changes to the work tree of submodules, only changes to the commits stored in the superproject are shown (this was the behavior before 1.7.0). Using `"all`" hides all changes to submodules (and suppresses the output of submodule summaries when the config option status.submoduleSummary is set).";
                },
                [ValueParameter]@{
                    Keys = @("--ignored");
                    Name = "ignored";
                    Description = "Show ignored files as well.";
                    Source = [StaticSource]@{
                        Name = "ignored mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "traditional";
                                Description = "Shows ignored files and directories, unless --untracked-files=all is specified, in which case individual files in ignored directories are displayed."
                            },
                            [SourceItem]@{
                                Name = "no";
                                Description = "Show no ignored files."
                            },
                            [SourceItem]@{
                                Name = "matching";
                                Description = "Shows ignored files and directories matching an ignore pattern."
                            }
                        )
                    }
                },
                [FlagParameter]@{
                    Keys = @("-z");
                    Name = "nul termination";
                    Description = "Terminate entries with NUL, instead of LF. This implies the --porcelain=v1 output format if no other format is given.";
                },
                [ValueParameter]@{
                    Keys = @("--column");
                    Name = "column";
                    Description = "Display untracked files in columns. See configuration variable column.status for option syntax. --column and --no-column without options are equivalent to always and never respectively.";
                    Condition = [ExclusiveParameterCondition]::new("no-column");
                },
                [FlagParameter]@{
                    Keys = @("--no-column");
                    Name = "no-column";
                    Description = "Display untracked files in columns. See configuration variable column.status for option syntax. --column and --no-column without options are equivalent to always and never respectively.";
                    Condition = [ExclusiveParameterCondition]::new("column");
                },
                [FlagParameter]@{
                    Keys = @("--ahead-behind");
                    Name = "ahead-behind";
                    Description = "Display or do not display detailed ahead/behind counts for the branch relative to its upstream branch. Defaults to true.";
                    Condition = [ExclusiveParameterCondition]::new("no-ahead-behind");
                },
                [FlagParameter]@{
                    Keys = @("--no-ahead-behind");
                    Name = "no-ahead-behind";
                    Description = "Display or do not display detailed ahead/behind counts for the branch relative to its upstream branch. Defaults to true.";
                    Condition = [ExclusiveParameterCondition]::new("ahead-behind");
                },
                [FlagParameter]@{
                    Keys = @("--renames");
                    Name = "renames";
                    Description = "Turn on/off rename detection regardless of user configuration. See also git-diff1 --no-renames.";
                    Condition = [ExclusiveParameterCondition]::new("no-renames");
                },
                [FlagParameter]@{
                    Keys = @("--no-renames");
                    Name = "no-renames";
                    Description = "Turn on/off rename detection regardless of user configuration. See also git-diff1 --no-renames.";
                    Condition = [ExclusiveParameterCondition]::new("renames");
                },
                [ValueParameter]@{
                    Keys = @("--find-renames");
                    Name = "find-renames";
                    Description = "Turn on rename detection, optionally setting the similarity threshold. See also git-diff1 --find-renames.";
                },
                [ValueParameter]@{
                    Name = "pathspec";
                    Description = "See the pathspec entry in gitglossary7 .";
                    # Source = FilePattern
                }
            )
        },
        [CommandParameter]@{
            Keys = @("push");
            Name = "push";
            Description = "Update remote refs along with associated objects";
            Parameters = @(
                [ValueParameter]@{
                    Name = "remote";
                    Source = $remotes
                },
                [ValueParameter]@{
                    Name = "branch";
                    Source = $allBranches
                },
                [FlagParameter]@{
                    Keys = @("--all");
                    Name = "all";
                    Description = "Push all branches (i.e. refs under refs/heads/); cannot be used with other <refspec>.";
                },
                [FlagParameter]@{
                    Keys = @("--prune");
                    Name = "prune";
                    Description = "Remove remote branches that don’t have a local counterpart. For example a remote branch tmp will be removed if a local branch with the same name doesn’t exist any more";
                },
                [FlagParameter]@{
                    Keys = @("--mirror");
                    Name = "mirror";
                    Description = "Instead of naming each ref to push, specifies that all refs under refs/ (which includes but is not limited to refs/heads/, refs/remotes/, and refs/tags/) ";
                },
                [FlagParameter]@{
                    Keys = @("--dry-run", "-n");
                    Name = "dry-run";
                    Description = "Do everything except actually send the updates.";
                },
                [FlagParameter]@{
                    Keys = @("--porcelain");
                    Name = "porcelain";
                    Description = "Produce machine-readable output. The output status line for each ref will be tab-separated and sent to stdout instead of stderr. The full symbolic names of the refs will be given.";
                },
                [FlagParameter]@{
                    Keys = @("--delete", "-d");
                    Name = "delete";
                    Description = "All listed refs are deleted from the remote repository. This is the same as prefixing all refs with a colon.";
                },
                [FlagParameter]@{
                    Keys = @("--tags");
                    Name = "tags";
                    Description = "All refs under refs/tags are pushed, in addition to refspecs explicitly listed on the command line.";
                },
                [FlagParameter]@{
                    Keys = @("--follow-tags");
                    Name = "follow-tags";
                    Description = "Push all the refs that would be pushed without this option, and also push annotated tags in refs/tags that are missing from the remote but are pointing at commit-ish that are reachable from the refs being pushed.";
                },
                [ValueParameter]@{
                    Keys = @("--signed");
                    Name = "signed";
                    Description = "";
                    Condition = [ExclusiveParameterCondition]::new("no-signed");
                    Source = [StaticSource]@{
                        Name = "signed mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "true";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "false";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "if-asked";
                                Description = ""
                            }
                        )
                    }
                },
                [FlagParameter]@{
                    Keys = @("--no-signed");
                    Name = "no-signed";
                    Description = "";
                    Condition = [ExclusiveParameterCondition]::new("signed");
                },
                [FlagParameter]@{
                    Keys = @("--atomic");
                    Name = "atomic";
                    Description = "Use an atomic transaction on the remote side if available. Either all refs are updated, or on error, no refs are updated. If the server does not support atomic pushes the push will fail.";
                    Condition = [ExclusiveParameterCondition]::new("no-atomic");
                },
                [FlagParameter]@{
                    Keys = @("--no-atomic");
                    Name = "no-atomic";
                    Description = "Use an atomic transaction on the remote side if available. Either all refs are updated, or on error, no refs are updated. If the server does not support atomic pushes the push will fail.";
                    Condition = [ExclusiveParameterCondition]::new("atomic");
                },
                [ValueParameter]@{
                    Keys = @("--push-option", "-o");
                    Name = "push-option";
                    Description = "Transmit the given string to the server, which passes them to the pre-receive as well as the post-receive hook. The given string must not contain a NUL or LF character. When multiple --push-option=<option> are given, they are all sent to the other side in the order listed on the command line. When no --push-option=<option> is given from the command line, the values of configuration variable push.pushOption are used instead.";
                },
                [ValueParameter]@{
                    Keys = @("--receive-pack", "--exec");
                    Name = "receive-pack";
                    Description = "Path to the git-receive-pack program on the remote end. Sometimes useful when pushing to a remote repository over ssh, and you do not have the program in a directory on the default $PATH.";
                },
                [ValueParameter]@{
                    Keys = @("--force-with-lease");
                    Name = "force-with-lease";
                    Description = "Usually, `"git push`" refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it.";
                    Condition = [ExclusiveParameterCondition]::new("no-force-with-lease");
                },
                [FlagParameter]@{
                    Keys = @("--no-force-with-lease");
                    Name = "no-force-with-lease";
                    Description = "Usually, `"git push`" refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it.";
                    Condition = [ExclusiveParameterCondition]::new("force-with-lease");
                },
                [FlagParameter]@{
                    Keys = @("--force", "-f");
                    Name = "force";
                    Description = "Usually, the command refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it. Also, when --force-with-lease option is used, the command refuses to update a remote ref whose current value does not match what is expected.";
                },
                [FlagParameter]@{
                    Keys = @("--force-if-includes");
                    Name = "force-if-includes";
                    Description = "Force an update only if the tip of the remote-tracking ref has been integrated locally.";
                    Condition = [ExclusiveParameterCondition]::new("no-force-if-includes");
                },
                [FlagParameter]@{
                    Keys = @("--no-force-if-includes");
                    Name = "no-force-if-includes";
                    Description = "Force an update only if the tip of the remote-tracking ref has been integrated locally.";
                    Condition = [ExclusiveParameterCondition]::new("force-if-includes");
                },
                [ValueParameter]@{
                    Keys = @("--repo");
                    Name = "repo";
                    Description = "This option is equivalent to the <repository> argument. If both are specified, the command-line argument takes precedence.";
                },
                [ValueParameter]@{
                    Keys = @("--set-upstream", "-u");
                    Name = "set-upstream";
                    Description = "For every branch that is up to date or successfully pushed, add upstream (tracking) reference, used by argument-less git-pull[1] and other commands. For more information, see branch.<name>.merge in git-config[1].";
                },
                [FlagParameter]@{
                    Keys = @("--thin");
                    Name = "thin";
                    Description = "These options are passed to git-send-pack[1]. A thin transfer significantly reduces the amount of sent data when the sender and receiver share many of the same objects in common. The default is --thin.";
                    Condition = [ExclusiveParameterCondition]::new("no-thin");
                },
                [FlagParameter]@{
                    Keys = @("no-thin");
                    Name = "no-thin";
                    Description = "These options are passed to git-send-pack[1]. A thin transfer significantly reduces the amount of sent data when the sender and receiver share many of the same objects in common. The default is --thin.";
                    Condition = [ExclusiveParameterCondition]::new("thin");
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Run verbosely.";
                    Condition = [ExclusiveParameterCondition]::new("quiet")
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Suppress all output, including the listing of updated refs, unless an error occurs. Progress is not reported to the standard error stream.";
                    Condition = [ExclusiveParameterCondition]::new("verbose")
                },
                [FlagParameter]@{
                    Keys = @("--progress");
                    Name = "progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless -q is specified. This flag forces progress status even if the standard error stream is not directed to a terminal.";
                },
                [ValueParameter]@{
                    Keys = @("--recurse-submodules");
                    Name = "recurse-submodules";
                    Description = "May be used to make sure all submodule commits used by the revisions to be pushed are available on a remote-tracking branch.";
                    Condition = [ExclusiveParameterCondition]::new("no-recurse-submodules");
                    Source = $recurseSubmodulesMode
                },
                [FlagParameter]@{
                    Keys = @("--no-recurse-submodules");
                    Name = "no-recurse-submodules";
                    Description = "May be used to make sure all submodule commits used by the revisions to be pushed are available on a remote-tracking branch.";
                    Condition = [ExclusiveParameterCondition]::new("recurse-submodules");
                },
                [FlagParameter]@{
                    Keys = @("--verify");
                    Name = "verify";
                    Description = "Toggle the pre-push hook (see githooks[5]). The default is --verify, giving the hook a chance to prevent the push. With --no-verify, the hook is bypassed completely.";
                    Condition = [ExclusiveParameterCondition]::new("no-verify");
                },
                [FlagParameter]@{
                    Keys = @("--no-verify");
                    Name = "no-verify";
                    Description = "Toggle the pre-push hook (see githooks[5]). The default is --verify, giving the hook a chance to prevent the push. With --no-verify, the hook is bypassed completely.";
                    Condition = [ExclusiveParameterCondition]::new("verify");
                },
                [FlagParameter]@{
                    Keys = @("--ipv4", "-4");
                    Name = "ipv4";
                    Description = "Use IPv4 addresses only, ignoring IPv6 addresses.";
                    Condition = [ExclusiveParameterCondition]::new("ipv6");
                },
                [FlagParameter]@{
                    Keys = @("--ipv6", "-6");
                    Name = "ipv6";
                    Description = "Use IPv6 addresses only, ignoring IPv4 addresses.";
                    Condition = [ExclusiveParameterCondition]::new("ipv4");
                }
                [ValueParameter]@{
                    Name = "repository";
                    Description = "The `"remote`" repository that is destination of a push operation. This parameter can be either a URL (see the section GIT URLS below) or the name of a remote (see the section REMOTES below).";
                }
                [ValueParameter]@{
                    Name = "refspec";
                    Description = "Specify what destination ref to update with what source object. The format of a <refspec> parameter is an optional plus +, followed by the source object <src>, followed by a colon :, followed by the destination ref <dst>.";
                }
            )
        },
        [CommandParameter]@{
            Keys = @("fetch");
            Name = "fetch";
            Description = "Download objects and refs from another repository";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--all");
                    Name = "all";
                    Description = "Fetch all remotes.";
                },
                [FlagParameter]@{
                    Keys = @("--append", "-a");
                    Name = "append";
                    Description = "Append ref names and object names of fetched refs to the existing contents of .git/FETCH_HEAD. Without this option old data in .git/FETCH_HEAD will be overwritten.";
                },
                [FlagParameter]@{
                    Keys = @("--atomic");
                    Name = "atomic";
                    Description = "Use an atomic transaction to update local refs. Either all refs are updated, or on error, no refs are updated.";
                },
                [ValueParameter]@{
                    Keys = @("--depth");
                    Name = "depth";
                    Description = "Limit fetching to the specified number of commits from the tip of each remote branch history. If fetching to a shallow repository created by git clone with --depth=<depth> option (see git-clone1 ), deepen or shorten the history to the specified number of commits. Tags for the deepened commits are not fetched.";
                },
                [ValueParameter]@{
                    Keys = @("--deepen");
                    Name = "deepen";
                    Description = "Similar to --depth, except it specifies the number of commits from the current shallow boundary instead of from the tip of each remote branch history.";
                },
                [ValueParameter]@{
                    Keys = @("--shallow-since");
                    Name = "shallow-since";
                    Description = "Deepen or shorten the history of a shallow repository to include all reachable commits after <date>.";
                    # Source = timestamp
                },
                [ValueParameter]@{
                    Keys = @("--shallow-exclude");
                    Name = "shallow-exclude";
                    Description = "Deepen or shorten the history of a shallow repository to exclude commits reachable from a specified remote branch or tag. This option can be specified multiple times.";
                    # Source = revision?;
                    #Repleatable = $true
                },
                [FlagParameter]@{
                    Keys = @("--unshallow");
                    Name = "unshallow";
                    Description = "If the source repository is complete, convert a shallow repository to a complete one, removing all the limitations imposed by shallow repositories.";
                },
                [FlagParameter]@{
                    Keys = @("--update-shallow");
                    Name = "update-shallow";
                    Description = "By default when fetching from a shallow repository, git fetch refuses refs that require updating .git/shallow. This option updates .git/shallow and accept such refs.";
                },
                [ValueParameter]@{
                    Keys = @("--negotiation-tip");
                    Name = "negotiation-tip";
                    Description = "By default, Git will report, to the server, commits reachable from all local refs to find common commits in an attempt to reduce the size of the to-be-received packfile. If specified, Git will only report commits reachable from the given tips. This is useful to speed up fetches when the user knows which local ref is likely to have commits in common with the upstream ref being fetched.";
                    Source = [StaticSource]@{
                        Name = "negotiation mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "commit";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "glob";
                                Description = ""
                            }
                        )
                    }
                },
                [FlagParameter]@{
                    Keys = @("--negotiate-only");
                    Name = "negotiate-only";
                    Description = "Do not fetch anything from the server, and instead print the ancestors of the provided --negotiation-tip=* arguments, which we have in common with the server.";
                },
                [FlagParameter]@{
                    Keys = @("--dry-run");
                    Name = "dry-run";
                    Description = "Show what would be done, without making any changes.";
                },
                [FlagParameter]@{
                    Keys = @("--write-fetch-head");
                    Name = "write-fetch-head";
                    Description = "Write the list of remote refs fetched in the FETCH_HEAD file directly under $GIT_DIR. This is the default. Passing --no-write-fetch-head from the command line tells Git not to write the file. Under --dry-run option, the file is never written.";
                    Condition = [ExclusiveParameterCondition]::new("no-write-fetch-head");
                },
                [FlagParameter]@{
                    Keys = @("--no-write-fetch-head");
                    Name = "no-write-fetch-head";
                    Description = "Write the list of remote refs fetched in the FETCH_HEAD file directly under $GIT_DIR. This is the default. Passing --no-write-fetch-head from the command line tells Git not to write the file. Under --dry-run option, the file is never written.";
                    Condition = [ExclusiveParameterCondition]::new("write-fetch-head");
                },
                [FlagParameter]@{
                    Keys = @("--force", "-f");
                    Name = "force";
                    Description = "When git fetch is used with <src>:<dst> refspec it may refuse to update the local branch as discussed in the <refspec> part below. This option overrides that check.";
                },
                [FlagParameter]@{
                    Keys = @("--keep", "-k");
                    Name = "keep";
                    Description = "Keep downloaded pack.";
                },
                [FlagParameter]@{
                    Keys = @("--multiple");
                    Name = "multiple";
                    Description = "Allow several <repository> and <group> arguments to be specified. No <refspec>s may be specified.";
                },
                [FlagParameter]@{
                    Keys = @("--auto-maintenance", "--auto-gc");
                    Name = "auto-maintenance";
                    Description = "Run git maintenance run --auto at the end to perform automatic repository maintenance if needed. (--[no-]auto-gc is a synonym.) This is enabled by default.";
                    Condition = [ExclusiveParameterCondition]::new("no-auto-maintenance");
                },
                [FlagParameter]@{
                    Keys = @("--no-auto-maintenance", "--no-auto-gc");
                    Name = "no-auto-maintenance";
                    Description = "Run git maintenance run --auto at the end to perform automatic repository maintenance if needed. (--[no-]auto-gc is a synonym.) This is enabled by default.";
                    Condition = [ExclusiveParameterCondition]::new("auto-maintenance");
                },
                [FlagParameter]@{
                    Keys = @("--write-commit-graph");
                    Name = "write-commit-graph";
                    Description = "Write a commit-graph after fetching. This overrides the config setting fetch.writeCommitGraph.";
                    Condition = [ExclusiveParameterCondition]::new("no-write-commit-graph");
                },
                [FlagParameter]@{
                    Keys = @("--no-write-commit-graph");
                    Name = "no-write-commit-graph";
                    Description = "Write a commit-graph after fetching. This overrides the config setting fetch.writeCommitGraph.";
                    Condition = [ExclusiveParameterCondition]::new("write-commit-graph");
                },
                [FlagParameter]@{
                    Keys = @("--prefetch");
                    Name = "prefetch";
                    Description = "Modify the configured refspec to place all refs into the refs/prefetch/ namespace. See the prefetch task in git-maintenance1 .";
                },
                [FlagParameter]@{
                    Keys = @("--prune", "-p");
                    Name = "prune";
                    Description = "Before fetching, remove any remote-tracking references that no longer exist on the remote. Tags are not subject to pruning if they are fetched only because of the default tag auto-following or due to a --tags option. However, if tags are fetched due to an explicit refspec (either on the command line or in the remote configuration, for example if the remote was cloned with the --mirror option), then they are also subject to pruning. Supplying --prune-tags is a shorthand for providing the tag refspec.";
                },
                [FlagParameter]@{
                    Keys = @("--prune-tags", "-P");
                    Name = "prune-tags";
                    Description = "Before fetching, remove any local tags that no longer exist on the remote if --prune is enabled. This option should be used more carefully, unlike --prune it will remove any local references (local tags) that have been created. This option is a shorthand for providing the explicit tag refspec along with --prune, see the discussion about that in its documentation.";
                },
                [FlagParameter]@{
                    Keys = @("--no-tags", "-n");
                    Name = "no-tags";
                    Description = "By default, tags that point at objects that are downloaded from the remote repository are fetched and stored locally. This option disables this automatic tag following. The default behavior for a remote may be specified with the remote.<name>.tagOpt setting. See git-config1 .";
                    Condition = [ExclusiveParameterCondition]::new("tags");
                },
                [ValueParameter]@{
                    Keys = @("--refmap");
                    Name = "refmap";
                    Description = "When fetching refs listed on the command line, use the specified refspec (can be given more than once) to map the refs to remote-tracking branches, instead of the values of remote.*.fetch configuration variables for the remote repository. Providing an empty &lt;refspec&gt; to the --refmap option causes Git to ignore the configured refspecs and rely entirely on the refspecs supplied as command-line arguments. See section on `"Configured Remote-tracking Branches`" for details.";
                    # Source = $???;
                },
                [FlagParameter]@{
                    Keys = @("--tags", "-t");
                    Name = "tags";
                    Description = "Fetch all tags from the remote (i.e., fetch remote tags refs/tags/* into local tags with the same name), in addition to whatever else would otherwise be fetched. Using this option alone does not subject tags to pruning, even if --prune is used (though tags may be pruned anyway if they are also the destination of an explicit refspec; see --prune).";
                    Condition = [ExclusiveParameterCondition]::new("no-tags");
                },
                [ValueParameter]@{
                    Keys = @("--recurse-submodules");
                    Name = "recurse-submodules";
                    Description = "This option controls if and under what conditions new commits of populated submodules should be fetched too. It can be used as a boolean option to completely disable recursion when set to no or to unconditionally recurse into all populated submodules when set to yes, which is the default when this option is used without any value. Use on-demand to only recurse into a populated submodule when the superproject retrieves a commit that updates the submodule’s reference to a commit that isn’t already in the local submodule clone. By default, on-demand is used, unless fetch.recurseSubmodules is set (see git-config1 ).";
                    Source = $recurseSubmodulesMode;
                    Condition = [ExclusiveParameterCondition]::new("no-recurse-submodules");
                },
                [ValueParameter]@{
                    Keys = @("--jobs", "-j");
                    Name = "jobs";
                    Description = "Number of parallel children to be used for all forms of fetching.";
                },
                [FlagParameter]@{
                    Keys = @("--no-recurse-submodules");
                    Name = "no-recurse-submodules";
                    Description = "Disable recursive fetching of submodules (this has the same effect as using the --recurse-submodules=no option).";
                    Condition = [ExclusiveParameterCondition]::new("recurse-submodules");
                },
                [FlagParameter]@{
                    Keys = @("--set-upstream");
                    Name = "set-upstream";
                    Description = "If the remote is fetched successfully, add upstream (tracking) reference, used by argument-less git-pull1 and other commands. For more information, see branch.<name>.merge and branch.<name>.remote in git-config1 .";
                },
                [ValueParameter]@{
                    Keys = @("--submodule-prefix");
                    Name = "submodule-prefix";
                    Description = "Prepend <path> to paths printed in informative messages such as `"Fetching submodule foo`". This option is used internally when recursing over submodules.";
                },
                [ValueParameter]@{
                    Keys = @("--recurse-submodules-default");
                    Name = "recurse-submodules-default";
                    Description = "This option is used internally to temporarily provide a non-negative default value for the --recurse-submodules option. All other methods of configuring fetch’s submodule recursion (such as settings in gitmodules5 and git-config1 ) override this option, as does specifying --[no-]recurse-submodules directly.";
                    Source = $recurseSubmodulesMode;
                },
                [FlagParameter]@{
                    Keys = @("--update-head-ok", "-u");
                    Name = "update-head-ok";
                    Description = "By default git fetch refuses to update the head which corresponds to the current branch. This flag disables the check. This is purely for the internal use for git pull to communicate with git fetch, and unless you are implementing your own Porcelain you are not supposed to use it.";
                },
                [ValueParameter]@{
                    Keys = @("--upload-pack");
                    Name = "upload-pack";
                    Description = "When given, and the repository to fetch from is handled by git fetch-pack, --exec=<upload-pack> is passed to the command to specify non-default path for the command run on the other end.";
                },				
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Be verbose.";
                    Condition = [ExclusiveParameterCondition]::new("quiet")
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Pass --quiet to git-fetch-pack and silence any other internally used git commands. Progress is not reported to the standard error stream.";
                    Condition = [ExclusiveParameterCondition]::new("verbose")
                },
                [FlagParameter]@{
                    Keys = @("--progress");
                    Name = "progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless -q is specified. This flag forces progress status even if the standard error stream is not directed to a terminal.";
                },
                [ValueParameter]@{
                    Keys = @("--server-option", "-o");
                    Name = "server-option";
                    Description = "Transmit the given string to the server when communicating using protocol version 2. The given string must not contain a NUL or LF character. The server’s handling of server options, including unknown ones, is server-specific. When multiple --server-option=<option> are given, they are all sent to the other side in the order listed on the command line.";
                },
                [FlagParameter]@{
                    Keys = @("--show-forced-updates");
                    Name = "show-forced-updates";
                    Description = "By default, git checks if a branch is force-updated during fetch. This can be disabled through fetch.showForcedUpdates, but the --show-forced-updates option guarantees this check occurs. See git-config1 .";
                    Condition = [ExclusiveParameterCondition]::new("no-show-forced-updates")
                },
                [FlagParameter]@{
                    Keys = @("--no-show-forced-updates");
                    Name = "no-show-forced-updates";
                    Description = "By default, git checks if a branch is force-updated during fetch. Pass --no-show-forced-updates or set fetch.showForcedUpdates to false to skip this check for performance reasons. If used during git-pull the --ff-only option will still check for forced updates before attempting a fast-forward update. See git-config1 .";
                    Condition = [ExclusiveParameterCondition]::new("show-forced-updates")
                },
                [FlagParameter]@{
                    Keys = @("--ipv4", "-4");
                    Name = "ipv4";
                    Description = "Use IPv4 addresses only, ignoring IPv6 addresses.";
                    Condition = [ExclusiveParameterCondition]::new("ipv6")
                },
                [FlagParameter]@{
                    Keys = @("--ipv6", "-6");
                    Name = "ipv6";
                    Description = "Use IPv6 addresses only, ignoring IPv4 addresses.";
                    Condition = [ExclusiveParameterCondition]::new("ipv4")
                },
                [ValueParameter]@{
                    Name = "repository";
                    Description = "The `"remote`" repository that is the source of a fetch or pull operation. This parameter can be either a URL (see the section GIT URLS below) or the name of a remote (see the section REMOTES below).";
                },
                [ValueParameter]@{
                    Name = "group";
                    Description = "A name referring to a list of repositories as the value of remotes.<group> in the configuration file. (See git-config1 ).";
                },
                [ValueParameter]@{
                    Name = "refspec";
                    Description = "Specifies which refs to fetch and which local refs to update. When no <refspec>s appear on the command line, the refs to fetch are read from remote.<repository>.fetch variables instead (see CONFIGURED REMOTE-TRACKING BRANCHES below).";
                },
                [FlagParameter]@{
                    Keys = @("--stdin");
                    Name = "stdin";
                    Description = "Read refspecs, one per line, from stdin in addition to those provided as arguments. The `"tag &lt;name&gt;`" format is not supported.";
                }
            )
        },
        [CommandParameter]@{
            Keys = @("log");
            Name = "log";
            Description = "Show commit logs";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--follow");
                    Name = "follow";
                    Description = "Continue listing the history of a file beyond renames (works only for a single file).";
                },
                [ValueParameter]@{
                    Keys = @("--decorate");
                    Name = "decorate";
                    Description = "Print out the ref names of any commits that are shown. If short is specified, the ref name prefixes refs/heads/, refs/tags/ and refs/remotes/ will not be printed. If full is specified, the full ref name (including prefix) will be printed. If auto is specified, then if the output is going to a terminal, the ref names are shown as if short were given, otherwise no ref names are shown. The option --decorate is short-hand for --decorate=short. Default to configuration value of log.decorate if configured, otherwise, auto.";
                    Source = [StaticSource]@{
                        Name = "decorate mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "short";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "full";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "auto";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "no";
                                Description = ""
                            }
                        )
                    };
                    Condition = [ExclusiveParameterCondition]::new("no-decorate");
                },
                [FlagParameter]@{
                    Keys = @("--no-decorate");
                    Name = "no-decorate";
                    Description = "Print out the ref names of any commits that are shown. If short is specified, the ref name prefixes refs/heads/, refs/tags/ and refs/remotes/ will not be printed. If full is specified, the full ref name (including prefix) will be printed. If auto is specified, then if the output is going to a terminal, the ref names are shown as if short were given, otherwise no ref names are shown. The option --decorate is short-hand for --decorate=short. Default to configuration value of log.decorate if configured, otherwise, auto.";
                    Condition = [ExclusiveParameterCondition]::new("decorate");
                },
                [ValueParameter]@{
                    Keys = @("--decorate-refs-exclude", "--decorate-refs");
                    Name = "decorate-refs-exclude";
                    Description = "If no --decorate-refs is given, pretend as if all refs were included. For each candidate, do not use it for decoration if it matches any patterns given to --decorate-refs-exclude or if it doesn’t match any of the patterns given to --decorate-refs. The log.excludeDecoration config option allows excluding refs from the decorations, but an explicit --decorate-refs pattern will override a match in log.excludeDecoration.";
                    # Source = pattern?;
                },
                [FlagParameter]@{
                    Keys = @("--source");
                    Name = "source";
                    Description = "Print out the ref name given on the command line by which each commit was reached.";
                },
                [FlagParameter]@{
                    Keys = @("--mailmap", "--use-mailmap");
                    Name = "mailmap";
                    Description = "Use mailmap file to map author and committer names and email addresses to canonical real names and email addresses. See git-shortlog1.";
                    Condition = [ExclusiveParameterCondition]::new("no-mailmap");
                },
                [FlagParameter]@{
                    Keys = @("--no-mailmap", "--no-use-mailmap");
                    Name = "no-mailmap";
                    Description = "Use mailmap file to map author and committer names and email addresses to canonical real names and email addresses. See git-shortlog1.";
                    Condition = [ExclusiveParameterCondition]::new("mailmap");
                },
                [FlagParameter]@{
                    Keys = @("--full-diff");
                    Name = "full-diff";
                    Description = "Without this flag, git log -p &lt;path&gt;... shows commits that touch the specified paths, and diffs about the same specified paths. With this, the full diff is shown for commits that touch the specified paths; this means that `"&lt;path&gt;…`" limits only commits, and doesn’t limit diff for those commits.";
                },
                [FlagParameter]@{
                    Keys = @("--log-size");
                    Name = "log-size";
                    Description = "Include a line `“log size <number>`” in the output for each commit, where <number> is the length of that commit’s message in bytes. Intended to speed up tools that read log messages from git log output by allowing them to allocate space in advance.";
                }
                # we can't handle this currently
                #[ValueParameter]@{
                #	Keys = @("-L:", "-L");
                #	Name = "L:";
                #	Description = "Trace the evolution of the line range given by <start>,<end>, or by the function name regex <funcname>, within the <file>. You may not give any pathspec limiters. This is currently limited to a walk starting from a single revision, i.e., you may only give zero or one positive revision arguments, and <start> and <end> (or <funcname>) must exist in the starting revision. You can specify this option more than once. Implies --patch. Patch output can be suppressed using --no-patch, but other diff formats (namely --raw, --numstat, --shortstat, --dirstat, --summary, --name-only, --name-status, --check) are not currently implemented.";
                #	Source = $???;
                #}
            )
        },
        [CommandParameter]@{
            Keys = @("diff");
            Name = "diff";
            Description = "Show changes between commits, commit and working tree, etc";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--patch", "-u", "-p");
                    Name = "patch";
                    Description = "Generate patch (see section on generating patches). This is the default.";
                    Condition = [ExclusiveParameterCondition]::new("no-patch");
                },
                [FlagParameter]@{
                    Keys = @("--no-patch", "-s");
                    Name = "no-patch";
                    Description = "Suppress diff output. Useful for commands like git show that show the patch by default, or to cancel the effect of --patch.";
                    Condition = [ExclusiveParameterCondition]::new("patch");
                },
                [ValueParameter]@{
                    Keys = @("--unified", "-U");
                    Name = "unified";
                    Description = "Generate diffs with <n> lines of context instead of the usual three. Implies --patch.";
                },
                [ValueParameter]@{
                    Keys = @("--output");
                    Name = "output";
                    Description = "Output to a specific file instead of stdout.";
                    #Source = File
                },
                [ValueParameter]@{
                    Keys = @("--output-indicator-context", "--output-indicator-old", "--output-indicator-new");
                    Name = "output-indicator-context";
                    Description = "Specify the character used to indicate new, old or context lines in the generated patch. Normally they are +, - and ' ' respectively.";
                    #Source = $???;
                },
                [FlagParameter]@{
                    Keys = @("--raw");
                    Name = "raw";
                    Description = "Generate the diff in raw format.";
                },
                [FlagParameter]@{
                    Keys = @("--patch-with-raw");
                    Name = "patch-with-raw";
                    Description = "Synonym for -p --raw.";
                },
                [FlagParameter]@{
                    Keys = @("--indent-heuristic");
                    Name = "indent-heuristic";
                    Description = "Enable the heuristic that shifts diff hunk boundaries to make patches easier to read. This is the default.";
                    Condition = [ExclusiveParameterCondition]::new("no-indent-heuristic");
                },
                [FlagParameter]@{
                    Keys = @("--no-indent-heuristic");
                    Name = "no-indent-heuristic";
                    Description = "Disable the indent heuristic.";
                    Condition = [ExclusiveParameterCondition]::new("indent-heuristic");
                },
                [FlagParameter]@{
                    Keys = @("--minimal");
                    Name = "minimal";
                    Description = "Spend extra time to make sure the smallest possible diff is produced.";
                },
                [FlagParameter]@{
                    Keys = @("--patience");
                    Name = "patience";
                    Description = "Generate a diff using the `"patience diff`" algorithm.";
                },
                [FlagParameter]@{
                    Keys = @("--histogram");
                    Name = "histogram";
                    Description = "Generate a diff using the `"histogram diff`" algorithm.";
                },
                [ValueParameter]@{
                    Keys = @("--anchored");
                    Name = "anchored";
                    Description = "Generate a diff using the `"anchored diff`" algorithm.";
                },
                [ValueParameter]@{
                    Keys = @("--diff-algorithm");
                    Name = "diff-algorithm";
                    Description = "Choose a diff algorithm. The variants are as follows:";
                    Source = [StaticSource]@{
                        Name = "diff-algorithm mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "patience";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "minimal";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "histogram";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "myers";
                                Description = ""
                            }
                        )
                    };
                },
                #We cant handle this correctly currently
                #[ValueParameter]@{
                #    Keys = @("--stat");
                #    Name = "stat";
                #    Description = "Generate a diffstat. By default, as much space as necessary will be used for the filename part, and the rest for the graph part. Maximum width defaults to terminal width, or 80 columns if not connected to a terminal, and can be overridden by <width>. The width of the filename part can be limited by giving another width <name-width> after a comma. The width of the graph part can be limited by using --stat-graph-width=<width> (affects all commands generating a stat graph) or by setting diff.statGraphWidth=<width> (does not affect git format-patch). By giving a third parameter <count>, you can limit the output to the first <count> lines, followed by ... if there are more.";
                #    Source = $???;
                #},
                [FlagParameter]@{
                    Keys = @("--compact-summary");
                    Name = "compact-summary";
                    Description = "Output a condensed summary of extended header information such as file creations or deletions (`"new`" or `"gone`", optionally `"+l`" if it’s a symlink) and mode changes (`"+x`" or `"-x`" for adding or removing executable bit respectively) in diffstat. The information is put between the filename part and the graph part. Implies --stat.";
                },
                [FlagParameter]@{
                    Keys = @("--numstat");
                    Name = "numstat";
                    Description = "Similar to --stat, but shows number of added and deleted lines in decimal notation and pathname without abbreviation, to make it more machine friendly. For binary files, outputs two - instead of saying 0 0.";
                },
                [FlagParameter]@{
                    Keys = @("--shortstat");
                    Name = "shortstat";
                    Description = "Output only the last line of the --stat format containing total number of modified files, as well as number of added and deleted lines.";
                },
                [ValueParameter]@{
                    Keys = @("--dirstat", "-X");
                    Name = "dirstat";
                    Description = "Output the distribution of relative amount of changes for each sub-directory. The behavior of --dirstat can be customized by passing it a comma separated list of parameters. The defaults are controlled by the diff.dirstat configuration variable (see git-config1). The following parameters are available:";
                    #Source = $???;
                },
                [FlagParameter]@{
                    Keys = @("--cumulative");
                    Name = "cumulative";
                    Description = "Synonym for --dirstat=cumulative";
                },
                [ValueParameter]@{
                    Keys = @("--dirstat-by-file");
                    Name = "dirstat-by-file";
                    Description = "Synonym for --dirstat=files,param1,param2…";
                    #Source = $???;
                },
                [FlagParameter]@{
                    Keys = @("--summary");
                    Name = "summary";
                    Description = "Output a condensed summary of extended header information such as creations, renames and mode changes.";
                },
                [FlagParameter]@{
                    Keys = @("--patch-with-stat");
                    Name = "patch-with-stat";
                    Description = "Synonym for -p --stat.";
                },
                [FlagParameter]@{
                    Keys = @("-z");
                    Name = "z";
                    Description = "When --raw, --numstat, --name-only or --name-status has been given, do not munge pathnames and use NULs as output field terminators.";
                },
                [FlagParameter]@{
                    Keys = @("--name-only");
                    Name = "name-only";
                    Description = "Show only names of changed files. The file names are often encoded in UTF-8. For more information see the discussion about encoding in the git-log1 manual page.";
                },
                [FlagParameter]@{
                    Keys = @("--name-status");
                    Name = "name-status";
                    Description = "Show only names and status of changed files. See the description of the --diff-filter option on what the status letters mean. Just like --name-only the file names are often encoded in UTF-8.";
                },
                [ValueParameter]@{
                    Keys = @("--submodule");
                    Name = "submodule";
                    Description = "Specify how differences in submodules are shown. When specifying --submodule=short the short format is used. This format just shows the names of the commits at the beginning and end of the range. When --submodule or --submodule=log is specified, the log format is used. This format lists the commits in the range like git-submodule1summary does. When --submodule=diff is specified, the diff format is used. This format shows an inline diff of the changes in the submodule contents between the commit range. Defaults to diff.submodule or the short format if the config option is unset.";
                    #Source = $???;
                },
                [ValueParameter]@{
                    Keys = @("--color");
                    Name = "color";
                    Description = "Show colored diff. --color (i.e. without =<when>) is the same as --color=always. <when> can be one of always, never, or auto. It can be changed by the color.ui and color.diff configuration settings.";
                    #Source = $???;
                    Condition = [ExclusiveParameterCondition]::new("no-color");
                },
                [FlagParameter]@{
                    Keys = @("--no-color");
                    Name = "no-color";
                    Description = "Turn off colored diff. This can be used to override configuration settings. It is the same as --color=never.";
                    Condition = [ExclusiveParameterCondition]::new("color");
                },
                [ValueParameter]@{
                    Keys = @("--color-moved");
                    Name = "color-moved";
                    Description = "Moved lines of code are colored differently. It can be changed by the diff.colorMoved configuration setting. The <mode> defaults to no if the option is not given and to zebra if the option with no mode is given. The mode must be one of:";
                    #Source = $???;
                    Condition = [ExclusiveParameterCondition]::new("no-color-moved");
                },
                [FlagParameter]@{
                    Keys = @("--no-color-moved");
                    Name = "no-color-moved";
                    Description = "Turn off move detection. This can be used to override configuration settings. It is the same as --color-moved=no.";
                    Condition = [ExclusiveParameterCondition]::new("color-moved");
                },
                [ValueParameter]@{
                    Keys = @("--color-moved-ws");
                    Name = "color-moved-ws";
                    Description = "This configures how whitespace is ignored when performing the move detection for --color-moved. It can be set by the diff.colorMovedWS configuration setting. These modes can be given as a comma separated list:";
                    #Source = $???;
                    Condition = [ExclusiveParameterCondition]::new("no-color-moved-ws");
                },
                [FlagParameter]@{
                    Keys = @("--no-color-moved-ws");
                    Name = "no-color-moved-ws";
                    Description = "Do not ignore whitespace when performing move detection. This can be used to override configuration settings. It is the same as --color-moved-ws=no.";
                    Condition = [ExclusiveParameterCondition]::new("color-moved-ws");
                },
                [ValueParameter]@{
                    Keys = @("--word-diff");
                    Name = "word-diff";
                    Description = "Show a word diff, using the <mode> to delimit changed words. By default, words are delimited by whitespace; see --word-diff-regex below. The <mode> defaults to plain, and must be one of:";
                    Source = [StaticSource]@{
                        Name = "word-diff mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "color";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "plain";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "porcelain";
                                Description = ""
                            },
                            [SourceItem]@{
                                Name = "none";
                                Description = ""
                            }
                        )
                    };
                },
                [ValueParameter]@{
                    Keys = @("--word-diff-regex");
                    Name = "word-diff-regex";
                    Description = "Use <regex> to decide what a word is, instead of considering runs of non-whitespace to be a word. Also implies --word-diff unless it was already enabled.";
                    #Source = regex;
                },
                [ValueParameter]@{
                    Keys = @("--color-words");
                    Name = "color-words";
                    Description = "Equivalent to --word-diff=color plus (if a regex was specified) --word-diff-regex=<regex>.";
                    #Source = regex;
                },
                [FlagParameter]@{
                    Keys = @("--no-renames");
                    Name = "no-renames";
                    Description = "Turn off rename detection, even when the configuration file gives the default to do so.";
                },
                [FlagParameter]@{
                    Keys = @("--rename-empty");
                    Name = "rename-empty";
                    Description = "Whether to use empty blobs as rename source.";
                    Condition = [ExclusiveParameterCondition]::new("no-rename-empty");
                },
                [FlagParameter]@{
                    Keys = @("--no-rename-empty");
                    Name = "no-rename-empty";
                    Description = "Whether to use empty blobs as rename source.";
                    Condition = [ExclusiveParameterCondition]::new("rename-empty");
                },
                [FlagParameter]@{
                    Keys = @("--check");
                    Name = "check";
                    Description = "Warn if changes introduce conflict markers or whitespace errors. What are considered whitespace errors is controlled by core.whitespace configuration. By default, trailing whitespaces (including lines that consist solely of whitespaces) and a space character that is immediately followed by a tab character inside the initial indent of the line are considered whitespace errors. Exits with non-zero status if problems are found. Not compatible with --exit-code.";
                },
                [ValueParameter]@{
                    Keys = @("--ws-error-highlight");
                    Name = "ws-error-highlight";
                    Description = "Highlight whitespace errors in the context, old or new lines of the diff. Multiple values are separated by comma, none resets previous values, default reset the list to new and all is a shorthand for old,new,context. When this option is not given, and the configuration variable diff.wsErrorHighlight is not set, only whitespace errors in new lines are highlighted. The whitespace errors are colored with color.diff.whitespace.";
                },
                [FlagParameter]@{
                    Keys = @("--full-index");
                    Name = "full-index";
                    Description = "Instead of the first handful of characters, show the full pre- and post-image blob object names on the `"index`" line when generating patch format output.";
                },
                [FlagParameter]@{
                    Keys = @("--binary");
                    Name = "binary";
                    Description = "In addition to --full-index, output a binary diff that can be applied with git-apply. Implies --patch.";
                },
                [ValueParameter]@{
                    Keys = @("--abbrev");
                    Name = "abbrev";
                    Description = "Instead of showing the full 40-byte hexadecimal object name in diff-raw format output and diff-tree header lines, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object. In diff-patch output format, --full-index takes higher precedence, i.e. if --full-index is specified, full blob names will be shown regardless of --abbrev. Non default number of digits can be specified with --abbrev=<n>.";
                },
                [ValueParameter]@{
                    Keys = @("--break-rewrites", "-B");
                    Name = "break-rewrites";
                    Description = "Break complete rewrite changes into pairs of delete and create. This serves two purposes:";
                },
                [ValueParameter]@{
                    Keys = @("--find-renames", "-M");
                    Name = "find-renames";
                    Description = "Detect renames. If n is specified, it is a threshold on the similarity index (i.e. amount of addition/deletions compared to the file’s size). For example, -M90% means Git should consider a delete/add pair to be a rename if more than 90% of the file hasn’t changed. Without a % sign, the number is to be read as a fraction, with a decimal point before it. I.e., -M5 becomes 0.5, and is thus the same as -M50%. Similarly, -M05 is the same as -M5%. To limit detection to exact renames, use -M100%. The default similarity index is 50%.";
                },
                [ValueParameter]@{
                    Keys = @("--find-copies", "-C");
                    Name = "find-copies";
                    Description = "Detect copies as well as renames. See also --find-copies-harder. If n is specified, it has the same meaning as for -M<n>.";
                },
                [FlagParameter]@{
                    Keys = @("--find-copies-harder");
                    Name = "find-copies-harder";
                    Description = "For performance reasons, by default, -C option finds copies only if the original file of the copy was modified in the same changeset. This flag makes the command inspect unmodified files as candidates for the source of copy. This is a very expensive operation for large projects, so use it with caution. Giving more than one -C option has the same effect.";
                },
                [FlagParameter]@{
                    Keys = @("--irreversible-delete", "-D");
                    Name = "irreversible-delete";
                    Description = "Omit the preimage for deletes, i.e. print only the header but not the diff between the preimage and /dev/null. The resulting patch is not meant to be applied with patch or git apply; this is solely for people who want to just concentrate on reviewing the text after the change. In addition, the output obviously lacks enough information to apply such a patch in reverse, even manually, hence the name of the option.";
                },
                [ValueParameter]@{
                    Keys = @("-l");
                    Name = "l";
                    Description = "The -M and -C options involve some preliminary steps that can detect subsets of renames/copies cheaply, followed by an exhaustive fallback portion that compares all remaining unpaired destinations to all relevant sources. (For renames, only remaining unpaired sources are relevant; for copies, all original sources are relevant.) For N sources and destinations, this exhaustive check is O(N^2). This option prevents the exhaustive portion of rename/copy detection from running if the number of source/destination files involved exceeds the specified number. Defaults to diff.renameLimit. Note that a value of 0 is treated as unlimited.";
                },
                [ValueParameter]@{
                    Keys = @("--diff-filter");
                    Name = "diff-filter";
                    Description = "Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e. regular file, symlink, submodule, …) changed (T), are Unmerged (U), are Unknown (X), or have had their pairing Broken (B). Any combination of the filter characters (including none) can be used. When * (All-or-none) is added to the combination, all paths are selected if there is any file that matches other criteria in the comparison; if there is no file that matches other criteria, nothing is selected.";
                },
                [ValueParameter]@{
                    Keys = @("-S");
                    Name = "S";
                    Description = "Look for differences that change the number of occurrences of the specified string (i.e. addition/deletion) in a file. Intended for the scripter’s use.";
                },
                [ValueParameter]@{
                    Keys = @("-G");
                    Name = "G";
                    Description = "Look for differences whose patch text contains added/removed lines that match <regex>.";
                    #Source = regex;
                },
                [ValueParameter]@{
                    Keys = @("--find-object");
                    Name = "find-object";
                    Description = "Look for differences that change the number of occurrences of the specified object. Similar to -S, just the argument is different in that it doesn’t search for a specific string but for a specific object id.";
                },
                [FlagParameter]@{
                    Keys = @("--pickaxe-all");
                    Name = "pickaxe-all";
                    Description = "When -S or -G finds a change, show all the changes in that changeset, not just the files that contain the change in <string>.";
                },
                [FlagParameter]@{
                    Keys = @("--pickaxe-regex");
                    Name = "pickaxe-regex";
                    Description = "Treat the <string> given to -S as an extended POSIX regular expression to match.";
                },
                [ValueParameter]@{
                    Keys = @("-O");
                    Name = "O";
                    Description = "Control the order in which files appear in the output. This overrides the diff.orderFile configuration variable (see git-config1). To cancel diff.orderFile, use -O/dev/null.";
                    #Source = File ?;
                },
                [ValueParameter]@{
                    Keys = @("--rotate-to", "--skip-to");
                    Name = "rotate-to";
                    Description = "Discard the files before the named <file> from the output (i.e. skip to), or move them to the end of the output (i.e. rotate to). These were invented primarily for use of the git difftool command, and may not be very useful otherwise.";
                    #Source = File ?;
                },
                [FlagParameter]@{
                    Keys = @("-R");
                    Name = "R";
                    Description = "Swap two inputs; that is, show differences from index or on-disk file to tree contents.";
                },
                [ValueParameter]@{
                    Keys = @("--relative");
                    Name = "relative";
                    Description = "When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option. When you are not in a subdirectory (e.g. in a bare repository), you can name which subdirectory to make the output relative to by giving a <path> as an argument. --no-relative can be used to countermand both diff.relative config option and previous --relative.";
                    #Source = Path;
                    Condition = [ExclusiveParameterCondition]::new("no-relative");
                },
                [FlagParameter]@{
                    Keys = @("--no-relative");
                    Name = "no-relative";
                    Description = "When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option. When you are not in a subdirectory (e.g. in a bare repository), you can name which subdirectory to make the output relative to by giving a <path> as an argument. --no-relative can be used to countermand both diff.relative config option and previous --relative.";
                    Condition = [ExclusiveParameterCondition]::new("relative");
                },
                [FlagParameter]@{
                    Keys = @("--text", "-a");
                    Name = "text";
                    Description = "Treat all files as text.";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-cr-at-eol");
                    Name = "ignore-cr-at-eol";
                    Description = "Ignore carriage-return at the end of line when doing a comparison.";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-space-at-eol");
                    Name = "ignore-space-at-eol";
                    Description = "Ignore changes in whitespace at EOL.";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-space-change", "-b");
                    Name = "ignore-space-change";
                    Description = "Ignore changes in amount of whitespace. This ignores whitespace at line end, and considers all other sequences of one or more whitespace characters to be equivalent.";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-all-space", "-w");
                    Name = "ignore-all-space";
                    Description = "Ignore whitespace when comparing lines. This ignores differences even if one line has whitespace where the other line has none.";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-blank-lines");
                    Name = "ignore-blank-lines";
                    Description = "Ignore changes whose lines are all blank.";
                },
                [ValueParameter]@{
                    Keys = @("--ignore-matching-lines", "-I");
                    Name = "ignore-matching-lines";
                    Description = "Ignore changes whose all lines match <regex>. This option may be specified more than once.";
                    #Source = regex;
                },
                [ValueParameter]@{
                    Keys = @("--inter-hunk-context");
                    Name = "inter-hunk-context";
                    Description = "Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other. Defaults to diff.interHunkContext or 0 if the config option is unset.";
                },
                [FlagParameter]@{
                    Keys = @("--function-context", "-W");
                    Name = "function-context";
                    Description = "Show whole function as context lines for each change. The function names are determined in the same way as git diff works out patch hunk headers (see Defining a custom hunk-header in gitattributes5).";
                },
                [FlagParameter]@{
                    Keys = @("--exit-code");
                    Name = "exit-code";
                    Description = "Make the program exit with codes similar to diff(1). That is, it exits with 1 if there were differences and 0 means no differences.";
                },
                [FlagParameter]@{
                    Keys = @("--quiet");
                    Name = "quiet";
                    Description = "Disable all output of the program. Implies --exit-code.";
                },
                [FlagParameter]@{
                    Keys = @("--ext-diff");
                    Name = "ext-diff";
                    Description = "Allow an external diff helper to be executed. If you set an external diff driver with gitattributes5, you need to use this option with git-log1 and friends.";
                    Condition = [ExclusiveParameterCondition]::new("no-ext-diff");
                },
                [FlagParameter]@{
                    Keys = @("--no-ext-diff");
                    Name = "no-ext-diff";
                    Description = "Disallow external diff drivers.";
                    Condition = [ExclusiveParameterCondition]::new("ext-diff");
                },
                [FlagParameter]@{
                    Keys = @("--textconv");
                    Name = "textconv";
                    Description = "Allow (or disallow) external text conversion filters to be run when comparing binary files. See gitattributes5 for details. Because textconv filters are typically a one-way conversion, the resulting diff is suitable for human consumption, but cannot be applied. For this reason, textconv filters are enabled by default only for git-diff1 and git-log1, but not for git-format-patch1 or diff plumbing commands.";
                    Condition = [ExclusiveParameterCondition]::new("no-textconv");
                },
                [FlagParameter]@{
                    Keys = @("--no-textconv");
                    Name = "no-textconv";
                    Description = "Allow (or disallow) external text conversion filters to be run when comparing binary files. See gitattributes5 for details. Because textconv filters are typically a one-way conversion, the resulting diff is suitable for human consumption, but cannot be applied. For this reason, textconv filters are enabled by default only for git-diff1 and git-log1, but not for git-format-patch1 or diff plumbing commands.";
                    Condition = [ExclusiveParameterCondition]::new("textconv");
                },
                [ValueParameter]@{
                    Keys = @("--ignore-submodules");
                    Name = "ignore-submodules";
                    Description = "Ignore changes to submodules in the diff generation. &lt;when&gt; can be either `"none`", `"untracked`", `"dirty`" or `"all`", which is the default. Using `"none`" will consider the submodule modified when it either contains untracked or modified files or its HEAD differs from the commit recorded in the superproject and can be used to override any settings of the ignore option in git-config1 or gitmodules5. When `"untracked`" is used submodules are not considered dirty when they only contain untracked content (but they are still scanned for modified content). Using `"dirty`" ignores all changes to the work tree of submodules, only changes to the commits stored in the superproject are shown (this was the behavior until 1.7.0). Using `"all`" hides all changes to submodules.";
                },
                [ValueParameter]@{
                    Keys = @("--src-prefix");
                    Name = "src-prefix";
                    Description = "Show the given source prefix instead of `"a/`".";
                },
                [ValueParameter]@{
                    Keys = @("--dst-prefix");
                    Name = "dst-prefix";
                    Description = "Show the given destination prefix instead of `"b/`".";
                },
                [FlagParameter]@{
                    Keys = @("--no-prefix");
                    Name = "no-prefix";
                    Description = "Do not show any source or destination prefix.";
                },
                [ValueParameter]@{
                    Keys = @("--line-prefix");
                    Name = "line-prefix";
                    Description = "Prepend an additional prefix to every line of output.";
                },
                [FlagParameter]@{
                    Keys = @("--ita-invisible-in-index");
                    Name = "ita-invisible-in-index";
                    Description = "By default entries added by `"git add -N`" appear as an existing empty file in `"git diff`" and a new file in `"git diff --cached`". This option makes the entry appear as a new file in `"git diff`" and non-existent in `"git diff --cached`". This option could be reverted with --ita-visible-in-index. Both options are experimental and could be removed in future.";
                },
                [FlagParameter]@{
                    Keys = @("-0");
                    Name = "0";
                    Description = "Omit diff output for unmerged entries and just show `"Unmerged`". Can be used only when comparing the working tree with the index.";
                },
                [ValueParameter]@{
                    Name = "path";
                    Description = "The <paths> parameters, when given, are used to limit the diff to the named paths (you can give directory names and get diff for all files under them).";
                    #Source = Path;
                }
            )
        },
        [CommandParameter]@{
            Keys = @("branch");
            Name = "branch";
            Description = "List, create, or delete branches";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--delete", "-d");
                    Name = "delete";
                    Description = "Delete a branch. The branch must be fully merged in its upstream branch, or in HEAD if no upstream was set with --track or --set-upstream-to.";
                },
                [FlagParameter]@{
                    Keys = @("-D");
                    Name = "D";
                    Description = "Shortcut for --delete --force.";
                },
                [FlagParameter]@{
                    Keys = @("--create-reflog");
                    Name = "create-reflog";
                    Description = "Create the branch’s reflog. This activates recording of all changes made to the branch ref, enabling use of date based sha1 expressions such as `"&lt;branchname&gt;@{yesterday}`". Note that in non-bare repositories, reflogs are usually enabled by default by the core.logAllRefUpdates config option. The negated form --no-create-reflog only overrides an earlier --create-reflog, but currently does not negate the setting of core.logAllRefUpdates.";
                },
                [FlagParameter]@{
                    Keys = @("--force", "-f");
                    Name = "force";
                    Description = "Reset <branchname> to <startpoint>, even if <branchname> exists already. Without -f, git branch refuses to change an existing branch. In combination with -d (or --delete), allow deleting the branch irrespective of its merged status, or whether it even points to a valid commit. In combination with -m (or --move), allow renaming the branch even if the new branch name already exists, the same applies for -c (or --copy).";
                },
                [FlagParameter]@{
                    Keys = @("--move", "-m");
                    Name = "move";
                    Description = "Move/rename a branch, together with its config and reflog.";
                },
                [FlagParameter]@{
                    Keys = @("-M");
                    Name = "M";
                    Description = "Shortcut for --move --force.";
                },
                [FlagParameter]@{
                    Keys = @("--copy", "-c");
                    Name = "copy";
                    Description = "Copy a branch, together with its config and reflog.";
                },
                [FlagParameter]@{
                    Keys = @("-C");
                    Name = "C";
                    Description = "Shortcut for --copy --force.";
                },
                [ValueParameter]@{
                    Keys = @("--color");
                    Name = "color";
                    Description = "Color branches to highlight current, local, and remote-tracking branches. The value must be always (the default), never, or auto.";
                    Condition = [ExclusiveParameterCondition]::new("no-color");
                },
                [FlagParameter]@{
                    Keys = @("--no-color");
                    Name = "no-color";
                    Description = "Turn off branch colors, even when the configuration file gives the default to color output. Same as --color=never.";
                    Condition = [ExclusiveParameterCondition]::new("color");
                },
                [FlagParameter]@{
                    Keys = @("--ignore-case", "-i");
                    Name = "ignore-case";
                    Description = "Sorting and filtering branches are case insensitive.";
                },
                [ValueParameter]@{
                    Keys = @("--column");
                    Name = "column";
                    Description = "Display branch listing in columns. See configuration variable column.branch for option syntax. --column and --no-column without options are equivalent to always and never respectively.";
                    Condition = [ExclusiveParameterCondition]::new("no-column");
                },
                [FlagParameter]@{
                    Keys = @("--no-column");
                    Name = "no-column";
                    Description = "Display branch listing in columns. See configuration variable column.branch for option syntax. --column and --no-column without options are equivalent to always and never respectively.";
                    Condition = [ExclusiveParameterCondition]::new("column");
                },
                [FlagParameter]@{
                    Keys = @("--remotes", "-r");
                    Name = "remotes";
                    Description = "List or delete (if used with -d) the remote-tracking branches. Combine with --list to match the optional pattern(s).";
                },
                [FlagParameter]@{
                    Keys = @("--all", "-a");
                    Name = "all";
                    Description = "List both remote-tracking branches and local branches. Combine with --list to match optional pattern(s).";
                },
                [FlagParameter]@{
                    Keys = @("--list", "-l");
                    Name = "list";
                    Description = "List branches. With optional <pattern>..., e.g. git branch --list 'maint-*', list only the branches that match the pattern(s).";
                },
                [FlagParameter]@{
                    Keys = @("--show-current");
                    Name = "show-current";
                    Description = "Print the name of the current branch. In detached HEAD state, nothing is printed.";
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-vv", "-v");
                    Name = "verbose";
                    Description = "When in list mode, show sha1 and commit subject line for each head, along with relationship to upstream branch (if any). If given twice, print the path of the linked worktree (if any) and the name of the upstream branch, as well (see also git remote show <remote>). Note that the current worktree’s HEAD will not have its path printed (it will always be your current directory).";
                    Condition = [ExclusiveParameterCondition]::new("quiet");
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Be more quiet when creating or deleting a branch, suppressing non-error messages.";
                    Condition = [ExclusiveParameterCondition]::new("verbose");
                },
                [ValueParameter]@{
                    Keys = @("--abbrev");
                    Name = "abbrev";
                    Description = "In the verbose listing that show the commit object name, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object. The default value is 7 and can be overridden by the core.abbrev config option.";
                    Condition = [ExclusiveParameterCondition]::new("no-abbrev");
                },
                [FlagParameter]@{
                    Keys = @("--no-abbrev");
                    Name = "no-abbrev";
                    Description = "Display the full sha1s in the output listing rather than abbreviating them.";
                    Condition = [ExclusiveParameterCondition]::new("abbrev");
                },
                [FlagParameter]@{
                    Keys = @("--track", "-t");
                    Name = "track";
                    Description = "When creating a new branch, set up branch.&lt;name&gt;.remote and branch.&lt;name&gt;.merge configuration entries to mark the start-point branch as `"upstream`" from the new branch. This configuration will tell git to show the relationship between the two branches in git status and git branch -v. Furthermore, it directs git pull without arguments to pull from the upstream when the new branch is checked out.";
                    Condition = [ExclusiveParameterCondition]::new("no-track");
                },
                [FlagParameter]@{
                    Keys = @("--no-track");
                    Name = "no-track";
                    Description = "Do not set up `"upstream`" configuration, even if the branch.autoSetupMerge configuration variable is true.";
                    Condition = [ExclusiveParameterCondition]::new("track");
                },
                [FlagParameter]@{
                    Keys = @("--set-upstream");
                    Name = "set-upstream";
                    Description = "As this option had confusing syntax, it is no longer supported. Please use --track or --set-upstream-to instead.";
                },
                [ValueParameter]@{
                    Keys = @("--set-upstream-to", "-u");
                    Name = "set-upstream-to";
                    Description = "Set up <branchname>'s tracking information so <upstream> is considered <branchname>'s upstream branch. If no <branchname> is specified, then it defaults to the current branch.";
                },
                [FlagParameter]@{
                    Keys = @("--unset-upstream");
                    Name = "unset-upstream";
                    Description = "Remove the upstream information for <branchname>. If no branch is specified it defaults to the current branch.";
                },
                [FlagParameter]@{
                    Keys = @("--edit-description");
                    Name = "edit-description";
                    Description = "Open an editor and edit the text to explain what the branch is for, to be used by various other commands (e.g. format-patch, request-pull, and merge (if enabled)). Multi-line explanations may be used.";
                },
                [ValueParameter]@{
                    Keys = @("--contains");
                    Name = "contains";
                    Description = "Only list branches which contain the specified commit (HEAD if not specified). Implies --list.";
                    Condition = [ExclusiveParameterCondition]::new("no-contains");
                },
                [ValueParameter]@{
                    Keys = @("--no-contains");
                    Name = "no-contains";
                    Description = "Only list branches which don’t contain the specified commit (HEAD if not specified). Implies --list.";
                    Condition = [ExclusiveParameterCondition]::new("contains");
                },
                [ValueParameter]@{
                    Keys = @("--merged");
                    Name = "merged";
                    Description = "Only list branches whose tips are reachable from the specified commit (HEAD if not specified). Implies --list.";
                    Condition = [ExclusiveParameterCondition]::new("no-merged");
                },
                [ValueParameter]@{
                    Keys = @("--no-merged");
                    Name = "no-merged";
                    Description = "Only list branches whose tips are not reachable from the specified commit (HEAD if not specified). Implies --list.";
                    Condition = [ExclusiveParameterCondition]::new("merged");
                },
                [ValueParameter]@{
                    Name = "branchname";
                    Description = "The name of the branch to create or delete. The new branch name must pass all checks defined by git-check-ref-format1. Some of these checks may restrict the characters allowed in a branch name.";
                    Source = $allBranches;
                },
                [ValueParameter]@{
                    Keys = @("--sort");
                    Name = "sort";
                    Description = "Sort based on the key given. Prefix - to sort in descending order of the value. You may use the --sort=<key> option multiple times, in which case the last key becomes the primary key. The keys supported are the same as those in git for-each-ref. Sort order defaults to the value configured for the branch.sort variable if exists, or to sorting based on the full refname (including refs/... prefix). This lists detached HEAD (if present) first, then local branches and finally remote-tracking branches. See git-config1.";
                },
                [ValueParameter]@{
                    Keys = @("--points-at");
                    Name = "points-at";
                    Description = "Only list branches of the given object.";
                },
                [ValueParameter]@{
                    Keys = @("--format");
                    Name = "format";
                    Description = "A string that interpolates %(fieldname) from a branch ref being shown and the object it points at. The format is the same as that of git-for-each-ref1.";
                }
            )
        },
        [CommandParameter]@{
            Keys = @("blame");
            Name = "blame";
            Description = "Show what revision and author last modified each line of a file";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("-b");
                    Name = "show-blank";
                    Description = "Show blank SHA-1 for boundary commits. This can also be controlled via the blame.blankBoundary config option.";
                },
                [FlagParameter]@{
                    Keys = @("--root");
                    Name = "root";
                    Description = "Do not treat root commits as boundaries. This can also be controlled via the blame.showRoot config option.";
                },
                [FlagParameter]@{
                    Keys = @("--show-stats");
                    Name = "show-stats";
                    Description = "Include additional statistics at the end of blame output.";
                },
                [ValueParameter]@{
                    Keys = @("-L");
                    Name = "annotate";
                    Description = "Annotate only the line range given by <start>,<end>, or by the function name regex <funcname>. May be specified multiple times. Overlapping ranges are allowed.";
                },
                [FlagParameter]@{
                    Keys = @("-l");
                    Name = "Show long rev";
                    Description = "Show long rev (Default: off).";
                },
                [FlagParameter]@{
                    Keys = @("-t");
                    Name = "Show raw timestamp";
                    Description = "Show raw timestamp (Default: off).";
                },
                [ValueParameter]@{
                    Keys = @("-S");
                    Name = "S";
                    Description = "Use revisions from revs-file instead of calling git-rev-list1.";
                    #Source = file;
                },
                [ValueParameter]@{
                    Keys = @("--reverse");
                    Name = "reverse";
                    Description = "Walk history forward instead of backward. Instead of showing the revision in which a line appeared, this shows the last revision in which a line has existed. This requires a range of revision like START..END where the path to blame exists in START. git blame --reverse START is taken as git blame --reverse START..HEAD for convenience.";
                },
                [FlagParameter]@{
                    Keys = @("--first-parent");
                    Name = "first-parent";
                    Description = "Follow only the first parent commit upon seeing a merge commit. This option can be used to determine when a line was introduced to a particular integration branch, rather than when it was introduced to the history overall.";
                },
                [FlagParameter]@{
                    Keys = @("--porcelain", "-p");
                    Name = "porcelain";
                    Description = "Show in a format designed for machine consumption.";
                },
                [FlagParameter]@{
                    Keys = @("--line-porcelain");
                    Name = "line-porcelain";
                    Description = "Show the porcelain format, but output commit information for each line, not just the first time a commit is referenced. Implies --porcelain.";
                },
                [FlagParameter]@{
                    Keys = @("--incremental");
                    Name = "incremental";
                    Description = "Show the result incrementally in a format designed for machine consumption.";
                },
                [ValueParameter]@{
                    Keys = @("--encoding");
                    Name = "encoding";
                    Description = "Specifies the encoding used to output author names and commit summaries. Setting it to none makes blame output unconverted data. For more information see the discussion about encoding in the git-log1 manual page.";
                },
                [ValueParameter]@{
                    Keys = @("--contents");
                    Name = "contents";
                    Description = "When <rev> is not specified, the command annotates the changes starting backwards from the working tree copy. This flag makes the command pretend as if the working tree copy has the contents of the named file (specify - to make the command read from the standard input).";
                    #Source = file;
                },
                [ValueParameter]@{
                    Keys = @("--date");
                    Name = "date";
                    Description = "Specifies the format used to output dates. If --date is not provided, the value of the blame.date config variable is used. If the blame.date config variable is also not set, the iso format is used. For supported values, see the discussion of the --date option at git-log1.";
                },
                [FlagParameter]@{
                    Keys = @("--progress");
                    Name = "progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal. This flag enables progress reporting even if not attached to a terminal. Can’t use --progress together with --porcelain or --incremental.";
                    Condition = [ExclusiveParameterCondition]::new("no-progress");
                },
                [FlagParameter]@{
                    Keys = @("--no-progress");
                    Name = "no-progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal. This flag enables progress reporting even if not attached to a terminal. Can’t use --progress together with --porcelain or --incremental.";
                    Condition = [ExclusiveParameterCondition]::new("progress");
                },
                [ValueParameter]@{
                    Keys = @("-M");
                    Name = "M";
                    Description = "Detect moved or copied lines within a file. When a commit moves or copies a block of lines (e.g. the original file has A and then B, and the commit changes it to B and then A), the traditional blame algorithm notices only half of the movement and typically blames the lines that were moved up (i.e. B) to the parent and assigns blame to the lines that were moved down (i.e. A) to the child commit. With this option, both groups of lines are blamed on the parent by running extra passes of inspection.";
                },
                [ValueParameter]@{
                    Keys = @("-C");
                    Name = "C";
                    Description = "In addition to -M, detect lines moved or copied from other files that were modified in the same commit. This is useful when you reorganize your program and move code around across files. When this option is given twice, the command additionally looks for copies from other files in the commit that creates the file. When this option is given three times, the command additionally looks for copies from other files in any commit.";
                },
                [ValueParameter]@{
                    Keys = @("--ignore-rev");
                    Name = "ignore-rev";
                    Description = "Ignore changes made by the revision when assigning blame, as if the change never happened. Lines that were changed or added by an ignored commit will be blamed on the previous commit that changed that line or nearby lines. This option may be specified multiple times to ignore more than one revision. If the blame.markIgnoredLines config option is set, then lines that were changed by an ignored commit and attributed to another commit will be marked with a ? in the blame output. If the blame.markUnblamableLines config option is set, then those lines touched by an ignored commit that we could not attribute to another revision are marked with a *.";
                },
                [ValueParameter]@{
                    Keys = @("--ignore-revs-file");
                    Name = "ignore-revs-file";
                    Description = "Ignore revisions listed in file, which must be in the same format as an fsck.skipList. This option may be repeated, and these files will be processed after any files specified with the blame.ignoreRevsFile config option. An empty file name, `"`", will clear the list of revs from previously processed files.";
                    # Source = file;
                },
                [FlagParameter]@{
                    Keys = @("--color-lines");
                    Name = "color-lines";
                    Description = "Color line annotations in the default format differently if they come from the same commit as the preceding line. This makes it easier to distinguish code blocks introduced by different commits. The color defaults to cyan and can be adjusted using the color.blame.repeatedLines config option.";
                },
                [FlagParameter]@{
                    Keys = @("--color-by-age");
                    Name = "color-by-age";
                    Description = "Color line annotations depending on the age of the line in the default format. The color.blame.highlightRecent config option controls what color is used for each range of age.";
                },
                [FlagParameter]@{
                    Keys = @("-h");
                    Name = "h";
                    Description = "Show help message.";
                },
                [FlagParameter]@{
                    Keys = @("-c");
                    Name = "c";
                    Description = "Use the same output mode as git-annotate1 (Default: off).";
                },
                [FlagParameter]@{
                    Keys = @("--score-debug");
                    Name = "score-debug";
                    Description = "Include debugging information related to the movement of lines between files (see -C) and lines moved within a file (see -M). The first number listed is the score. This is the number of alphanumeric characters detected as having been moved between or within files. This must be above a certain threshold for git blame to consider those lines of code to have been moved.";
                },
                [FlagParameter]@{
                    Keys = @("--show-name", "-f");
                    Name = "show-name";
                    Description = "Show the filename in the original commit. By default the filename is shown if there is any line that came from a file with a different name, due to rename detection.";
                },
                [FlagParameter]@{
                    Keys = @("--show-number", "-n");
                    Name = "show-number";
                    Description = "Show the line number in the original commit (Default: off).";
                },
                [FlagParameter]@{
                    Keys = @("-s");
                    Name = "s";
                    Description = "Suppress the author name and timestamp from the output.";
                },
                [FlagParameter]@{
                    Keys = @("--show-email", "-e");
                    Name = "show-email";
                    Description = "Show the author email instead of author name (Default: off). This can also be controlled via the blame.showEmail config option.";
                },
                [FlagParameter]@{
                    Keys = @("-w");
                    Name = "w";
                    Description = "Ignore whitespace when comparing the parent’s version and the child’s to find where the lines came from.";
                },
                [ValueParameter]@{
                    Keys = @("--abbrev");
                    Name = "abbrev";
                    Description = "Instead of using the default 7+1 hexadecimal digits as the abbreviated object name, use <m>+1 digits, where <m> is at least <n> but ensures the commit object names are unique. Note that 1 column is used for a caret to mark the boundary commit.";
                }
            )
        },
        [CommandParameter]@{
            Keys = @("cherry-pick");
            Name = "cherry-pick";
            Description = "Apply the changes introduced by some existing commits";
            Parameters = @(
                [ValueParameter]@{
                    Name = "commit";
                    Description = "Commits to cherry-pick. For a more complete list of ways to spell commits, see gitrevisions7. Sets of commits can be passed but no traversal is done by default, as if the --no-walk option was specified, see git-rev-list1. Note that specifying a range will feed all <commit>… arguments to a single revision walk (see a later example that uses maint master..next).";
                },
                [FlagParameter]@{
                    Keys = @("--edit", "-e");
                    Name = "edit";
                    Description = "With this option, git cherry-pick will let you edit the commit message prior to committing.";
                },
                [ValueParameter]@{
                    Keys = @("--cleanup");
                    Name = "cleanup";
                    Description = "This option determines how the commit message will be cleaned up before being passed on to the commit machinery. See git-commit1 for more details. In particular, if the <mode> is given a value of scissors, scissors will be appended to MERGE_MSG before being passed on in the case of a conflict.";
                    Source = $cleanupMode
                },
                [FlagParameter]@{
                    Keys = @("-x");
                    Name = "x";
                    Description = "When recording the commit, append a line that says `"(cherry picked from commit …)`" to the original commit message in order to indicate which commit this change was cherry-picked from. This is done only for cherry picks without conflicts. Do not use this option if you are cherry-picking from your private branch because the information is useless to the recipient. If on the other hand you are cherry-picking between two publicly visible branches (e.g. backporting a fix to a maintenance branch for an older release from a development branch), adding this information can be useful.";
                },
                [FlagParameter]@{
                    Keys = @("-r");
                    Name = "r";
                    Description = "It used to be that the command defaulted to do -x described above, and -r was to disable it. Now the default is not to do -x so this option is a no-op.";
                },
                [ValueParameter]@{
                    Keys = @("--mainline", "-m");
                    Name = "mainline parent-number";
                    Description = "Usually you cannot cherry-pick a merge because you do not know which side of the merge should be considered the mainline. This option specifies the parent number (starting from 1) of the mainline and allows cherry-pick to replay the change relative to the specified parent.";
                },
                [FlagParameter]@{
                    Keys = @("--no-commit", "-n");
                    Name = "no-commit";
                    Description = "Usually the command automatically creates a sequence of commits. This flag applies the changes necessary to cherry-pick each named commit to your working tree and the index, without making any commit. In addition, when this option is used, your index does not have to match the HEAD commit. The cherry-pick is done against the beginning state of your index.";
                },
                [FlagParameter]@{
                    Keys = @("--signoff", "-s");
                    Name = "signoff";
                    Description = "Add a Signed-off-by trailer at the end of the commit message. See the signoff option in git-commit1 for more information.";
                },
                [ValueParameter]@{
                    Keys = @("--gpg-sign", "-S");
                    Name = "gpg-sign";
                    Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                    Condition = [ExclusiveParameterCondition]::new("no-gpg-sign");
                },
                [FlagParameter]@{
                    Keys = @("--no-gpg-sign");
                    Name = "no-gpg-sign";
                    Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                    Condition = [ExclusiveParameterCondition]::new("gpg-sign");
                },
                [FlagParameter]@{
                    Keys = @("--ff");
                    Name = "ff";
                    Description = "If the current HEAD is the same as the parent of the cherry-pick’ed commit, then a fast forward to this commit will be performed.";
                },
                [FlagParameter]@{
                    Keys = @("--allow-empty");
                    Name = "allow-empty";
                    Description = "By default, cherry-picking an empty commit will fail, indicating that an explicit invocation of git commit --allow-empty is required. This option overrides that behavior, allowing empty commits to be preserved automatically in a cherry-pick. Note that when `"--ff`" is in effect, empty commits that meet the `"fast-forward`" requirement will be kept even without this option. Note also, that use of this option only keeps commits that were initially empty (i.e. the commit recorded the same tree as its parent). Commits which are made empty due to a previous commit are dropped. To force the inclusion of those commits use --keep-redundant-commits.";
                },
                [FlagParameter]@{
                    Keys = @("--allow-empty-message");
                    Name = "allow-empty-message";
                    Description = "By default, cherry-picking a commit with an empty message will fail. This option overrides that behavior, allowing commits with empty messages to be cherry picked.";
                },
                [FlagParameter]@{
                    Keys = @("--keep-redundant-commits");
                    Name = "keep-redundant-commits";
                    Description = "If a commit being cherry picked duplicates a commit already in the current history, it will become empty. By default these redundant commits cause cherry-pick to stop so the user can examine the commit. This option overrides that behavior and creates an empty commit object. Implies --allow-empty.";
                },
                [ValueParameter]@{
                    Keys = @("--strategy");
                    Name = "strategy";
                    Description = "Use the given merge strategy. Should only be used once. See the MERGE STRATEGIES section in git-merge1 for details.";
                    Source = $mergeStrategy;
                },
                [ValueParameter]@{
                    Keys = @("--strategy-option", "-X");
                    Name = "strategy-option";
                    Description = "Pass the merge strategy-specific option through to the merge strategy. See git-merge1 for details.";
                },
                [FlagParameter]@{
                    Keys = @("--rerere-autoupdate");
                    Name = "rerere-autoupdate";
                    Description = "Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.";
                    Condition = [ExclusiveParameterCondition]::new("no-rerere-autoupdate");
                },
                [FlagParameter]@{
                    Keys = @("--no-rerere-autoupdate");
                    Name = "no-rerere-autoupdate";
                    Description = "Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.";
                    Condition = [ExclusiveParameterCondition]::new("rerere-autoupdate");
                }
            )
        },
        [CommandParameter]@{
            Keys = @("revert");
            Name = "revert";
            Description = "Revert some existing commits";
            Parameters = @(
                [ValueParameter]@{
                    Name = "commit";
                    Description = "Commits to revert. For a more complete list of ways to spell commit names, see gitrevisions7. Sets of commits can also be given but no traversal is done by default, see git-rev-list1 and its --no-walk option.";
                },
                [FlagParameter]@{
                    Keys = @("--edit", "-e");
                    Name = "edit";
                    Description = "With this option, git revert will let you edit the commit message prior to committing the revert. This is the default if you run the command from a terminal.";
                    Condition = [ExclusiveParameterCondition]::new("no-edit");
                },
                [ValueParameter]@{
                    Keys = @("--mainline", "-m");
                    Name = "mainline";
                    Description = "Usually you cannot revert a merge because you do not know which side of the merge should be considered the mainline. This option specifies the parent number (starting from 1) of the mainline and allows revert to reverse the change relative to the specified parent.";
                },
                [FlagParameter]@{
                    Keys = @("--no-edit");
                    Name = "no-edit";
                    Description = "With this option, git revert will not start the commit message editor.";
                    Condition = [ExclusiveParameterCondition]::new("edit");
                },
                [ValueParameter]@{
                    Keys = @("--cleanup");
                    Name = "cleanup";
                    Description = "This option determines how the commit message will be cleaned up before being passed on to the commit machinery. See git-commit1 for more details. In particular, if the <mode> is given a value of scissors, scissors will be appended to MERGE_MSG before being passed on in the case of a conflict.";
                    Source = $cleanupMode;
                },
                [FlagParameter]@{
                    Keys = @("--no-commit", "-n");
                    Name = "no-commit";
                    Description = "Usually the command automatically creates some commits with commit log messages stating which commits were reverted. This flag applies the changes necessary to revert the named commits to your working tree and the index, but does not make the commits. In addition, when this option is used, your index does not have to match the HEAD commit. The revert is done against the beginning state of your index.";
                },
                [ValueParameter]@{
                    Keys = @("--gpg-sign", "-S");
                    Name = "gpg-sign";
                    Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                    Condition = [ExclusiveParameterCondition]::new("no-gpg-sign");
                },
                [FlagParameter]@{
                    Keys = @("--no-gpg-sign");
                    Name = "no-gpg-sign";
                    Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                    Condition = [ExclusiveParameterCondition]::new("gpg-sign");
                },
                [FlagParameter]@{
                    Keys = @("--signoff", "-s");
                    Name = "signoff";
                    Description = "Add a Signed-off-by trailer at the end of the commit message. See the signoff option in git-commit1 for more information.";
                },
                [ValueParameter]@{
                    Keys = @("--strategy");
                    Name = "strategy";
                    Description = "Use the given merge strategy. Should only be used once. See the MERGE STRATEGIES section in git-merge1 for details.";
                    Source = $mergeStrategy;
                },
                [ValueParameter]@{
                    Keys = @("--strategy-option", "-X");
                    Name = "strategy-option";
                    Description = "Pass the merge strategy-specific option through to the merge strategy. See git-merge1 for details.";
                },
                [FlagParameter]@{
                    Keys = @("--rerere-autoupdate");
                    Name = "rerere-autoupdate";
                    Description = "Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.";
                    Condition = [ExclusiveParameterCondition]::new("no-rerere-autoupdate");
                },
                [FlagParameter]@{
                    Keys = @("--no-rerere-autoupdate");
                    Name = "no-rerere-autoupdate";
                    Description = "Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.";
                    Condition = [ExclusiveParameterCondition]::new("rerere-autoupdate");
                }
            )
        },
        [CommandParameter]@{
            Keys = @("tag");
            Name = "tag";
            Description = "Create, list, delete or verify a tag object signed with GPG";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--annotate", "-a");
                    Name = "annotate";
                    Description = "Make an unsigned, annotated tag object";
                },
                [FlagParameter]@{
                    Keys = @("--sign", "-s");
                    Name = "sign";
                    Description = "Make a GPG-signed tag, using the default e-mail address’s key. The default behavior of tag GPG-signing is controlled by tag.gpgSign configuration variable if it exists, or disabled otherwise. See git-config1.";
                    Condition = [ExclusiveParameterCondition]::new("no-sign");
                },
                [FlagParameter]@{
                    Keys = @("--no-sign");
                    Name = "no-sign";
                    Description = "Override tag.gpgSign configuration variable that is set to force each and every tag to be signed.";
                    Condition = [ExclusiveParameterCondition]::new("sign");
                },
                [ValueParameter]@{
                    Keys = @("--local-user", "-u");
                    Name = "local-user";
                    Description = "Make a GPG-signed tag, using the given key.";
                },
                [FlagParameter]@{
                    Keys = @("--force", "-f");
                    Name = "force";
                    Description = "Replace an existing tag with the given name (instead of failing)";
                },
                [FlagParameter]@{
                    Keys = @("--delete", "-d");
                    Name = "delete";
                    Description = "Delete existing tags with the given names.";
                },
                [FlagParameter]@{
                    Keys = @("--verify", "-v");
                    Name = "verify";
                    Description = "Verify the GPG signature of the given tag names.";
                },
                [ValueParameter]@{
                    Keys = @("-n");
                    Name = "n";
                    Description = "<num> specifies how many lines from the annotation, if any, are printed when using -l. Implies --list.";
                },
                [FlagParameter]@{
                    Keys = @("--list", "-l");
                    Name = "list";
                    Description = "List tags. With optional <pattern>..., e.g. git tag --list 'v-*', list only the tags that match the pattern(s).";
                },
                [ValueParameter]@{
                    Keys = @("--sort");
                    Name = "sort";
                    Description = "Sort based on the key given. Prefix - to sort in descending order of the value. You may use the --sort=&lt;key&gt; option multiple times, in which case the last key becomes the primary key. Also supports `"version:refname`" or `"v:refname`" (tag names are treated as versions). The `"version:refname`" sort order can also be affected by the `"versionsort.suffix`" configuration variable. The keys supported are the same as those in git for-each-ref. Sort order defaults to the value configured for the tag.sort variable if it exists, or lexicographic order otherwise. See git-config1.";
                },
                [ValueParameter]@{
                    Keys = @("--color");
                    Name = "color";
                    Description = "Respect any colors specified in the --format option. The <when> field must be one of always, never, or auto (if <when> is absent, behave as if always was given).";
                },
                [FlagParameter]@{
                    Keys = @("--ignore-case", "-i");
                    Name = "ignore-case";
                    Description = "Sorting and filtering tags are case insensitive.";
                },
                [ValueParameter]@{
                    Keys = @("--column");
                    Name = "column";
                    Description = "Display tag listing in columns. See configuration variable column.tag for option syntax. --column and --no-column without options are equivalent to always and never respectively.";
                    Condition = [ExclusiveParameterCondition]::new("no-column");
                },
                [FlagParameter]@{
                    Keys = @("--no-column");
                    Name = "no-column";
                    Description = "Display tag listing in columns. See configuration variable column.tag for option syntax. --column and --no-column without options are equivalent to always and never respectively.";
                    Condition = [ExclusiveParameterCondition]::new("column");
                },
                [ValueParameter]@{
                    Keys = @("--contains");
                    Name = "contains";
                    Description = "Only list tags which contain the specified commit (HEAD if not specified). Implies --list.";
                    # Source = commit
                    Condition = [ExclusiveParameterCondition]::new("no-contains");
                },
                [ValueParameter]@{
                    Keys = @("--no-contains");
                    Name = "no-contains";
                    Description = "Only list tags which don’t contain the specified commit (HEAD if not specified). Implies --list.";
                    # Source = commit
                    Condition = [ExclusiveParameterCondition]::new("contains");
                },
                [ValueParameter]@{
                    Keys = @("--merged");
                    Name = "merged";
                    Description = "Only list tags whose commits are reachable from the specified commit (HEAD if not specified).";
                    # Source = commit
                    Condition = [ExclusiveParameterCondition]::new("no-merged");
                },
                [ValueParameter]@{
                    Keys = @("--no-merged");
                    Name = "no-merged";
                    Description = "Only list tags whose commits are not reachable from the specified commit (HEAD if not specified).";
                    # Source = commit
                    Condition = [ExclusiveParameterCondition]::new("merged");
                },
                [ValueParameter]@{
                    Keys = @("--points-at");
                    Name = "points-at";
                    Description = "Only list tags of the given object (HEAD if not specified). Implies --list.";
                },
                [ValueParameter]@{
                    Keys = @("--message", "-m");
                    Name = "message";
                    Description = "Use the given tag message (instead of prompting). If multiple -m options are given, their values are concatenated as separate paragraphs. Implies -a if none of -a, -s, or -u <keyid> is given.";
                },
                [ValueParameter]@{
                    Keys = @("--file", "-F");
                    Name = "file";
                    Description = "Take the tag message from the given file. Use - to read the message from the standard input. Implies -a if none of -a, -s, or -u <keyid> is given.";
                    # Source = file;
                },
                [FlagParameter]@{
                    Keys = @("--edit", "-e");
                    Name = "edit";
                    Description = "The message taken from file with -F and command line with -m are usually used as the tag message unmodified. This option lets you further edit the message taken from these sources.";
                },
                [ValueParameter]@{
                    Keys = @("--cleanup");
                    Name = "cleanup";
                    Description = "This option sets how the tag message is cleaned up. The <mode> can be one of verbatim, whitespace and strip. The strip mode is default. The verbatim mode does not change message at all, whitespace removes just leading/trailing whitespace lines and strip removes both whitespace and commentary.";
                    Source = $cleanupMode;
                },
                [FlagParameter]@{
                    Keys = @("--create-reflog");
                    Name = "create-reflog";
                    Description = "Create a reflog for the tag. To globally enable reflogs for tags, see core.logAllRefUpdates in git-config1. The negated form --no-create-reflog only overrides an earlier --create-reflog, but currently does not negate the setting of core.logAllRefUpdates.";
                },
                [ValueParameter]@{
                    Keys = @("--format");
                    Name = "format";
                    Description = "A string that interpolates %(fieldname) from a tag ref being shown and the object it points at. The format is the same as that of git-for-each-ref1. When unspecified, defaults to %(refname:strip=2).";
                },
                [ValueParameter]@{
                    Name = "tag-name";
                    Description = "The name of the tag to create, delete, or describe. The new tag name must pass all checks defined by git-check-ref-format1. Some of these checks may restrict the characters allowed in a tag name.";
                },
                [ValueParameter]@{
                    Name = "commit";
                    Description = "The object that the new tag will refer to, usually a commit. Defaults to HEAD.";
                    # Source = commit;
                }
            )
        },
        [CommandParameter]@{
            Keys = @("annotate");
            Name = "annotate";
            Description = "Annotate file lines with commit information";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("-b");
                    Name = "b";
                    Description = "Show blank SHA-1 for boundary commits. This can also be controlled via the blame.blankBoundary config option.";
                },
                [FlagParameter]@{
                    Keys = @("--root");
                    Name = "root";
                    Description = "Do not treat root commits as boundaries. This can also be controlled via the blame.showRoot config option.";
                },
                [FlagParameter]@{
                    Keys = @("--show-stats");
                    Name = "show-stats";
                    Description = "Include additional statistics at the end of blame output.";
                },
                [ValueParameter]@{
                    Keys = @("-L");
                    Name = "L :";
                    Description = "Annotate only the line range given by <start>,<end>, or by the function name regex <funcname>. May be specified multiple times. Overlapping ranges are allowed.";
                },
                [FlagParameter]@{
                    Keys = @("-l");
                    Name = "l";
                    Description = "Show long rev (Default: off).";
                },
                [FlagParameter]@{
                    Keys = @("-t");
                    Name = "t";
                    Description = "Show raw timestamp (Default: off).";
                },
                [ValueParameter]@{
                    Keys = @("-S");
                    Name = "S";
                    Description = "Use revisions from revs-file instead of calling git-rev-list1.";
                    # Source = $file;
                },
                [ValueParameter]@{
                    Keys = @("--reverse");
                    Name = "reverse";
                    Description = "Walk history forward instead of backward. Instead of showing the revision in which a line appeared, this shows the last revision in which a line has existed. This requires a range of revision like START..END where the path to blame exists in START. git blame --reverse START is taken as git blame --reverse START..HEAD for convenience.";
                },
                [FlagParameter]@{
                    Keys = @("--first-parent");
                    Name = "first-parent";
                    Description = "Follow only the first parent commit upon seeing a merge commit. This option can be used to determine when a line was introduced to a particular integration branch, rather than when it was introduced to the history overall.";
                },
                [FlagParameter]@{
                    Keys = @("--porcelain", "-p");
                    Name = "porcelain";
                    Description = "Show in a format designed for machine consumption.";
                },
                [FlagParameter]@{
                    Keys = @("--line-porcelain");
                    Name = "line-porcelain";
                    Description = "Show the porcelain format, but output commit information for each line, not just the first time a commit is referenced. Implies --porcelain.";
                },
                [FlagParameter]@{
                    Keys = @("--incremental");
                    Name = "incremental";
                    Description = "Show the result incrementally in a format designed for machine consumption.";
                },
                [ValueParameter]@{
                    Keys = @("--encoding");
                    Name = "encoding";
                    Description = "Specifies the encoding used to output author names and commit summaries. Setting it to none makes blame output unconverted data. For more information see the discussion about encoding in the git-log1 manual page.";
                },
                [ValueParameter]@{
                    Keys = @("--contents");
                    Name = "contents";
                    Description = "When <rev> is not specified, the command annotates the changes starting backwards from the working tree copy. This flag makes the command pretend as if the working tree copy has the contents of the named file (specify - to make the command read from the standard input).";
                    # Source = $???; file
                },
                [ValueParameter]@{
                    Keys = @("--date");
                    Name = "date";
                    Description = "Specifies the format used to output dates. If --date is not provided, the value of the blame.date config variable is used. If the blame.date config variable is also not set, the iso format is used. For supported values, see the discussion of the --date option at git-log1.";
                },
                [FlagParameter]@{
                    Keys = @("--progress");
                    Name = "progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal. This flag enables progress reporting even if not attached to a terminal. Can’t use --progress together with --porcelain or --incremental.";
                    Condition = [ExclusiveParameterCondition]::new("no-progress");
                },
                [FlagParameter]@{
                    Keys = @("--no-progress");
                    Name = "no-progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal. This flag enables progress reporting even if not attached to a terminal. Can’t use --progress together with --porcelain or --incremental.";
                    Condition = [ExclusiveParameterCondition]::new("progress");
                },
                [ValueParameter]@{
                    Keys = @("-M");
                    Name = "M";
                    Description = "Detect moved or copied lines within a file. When a commit moves or copies a block of lines (e.g. the original file has A and then B, and the commit changes it to B and then A), the traditional blame algorithm notices only half of the movement and typically blames the lines that were moved up (i.e. B) to the parent and assigns blame to the lines that were moved down (i.e. A) to the child commit. With this option, both groups of lines are blamed on the parent by running extra passes of inspection.";
                },
                [ValueParameter]@{
                    Keys = @("-C");
                    Name = "C";
                    Description = "In addition to -M, detect lines moved or copied from other files that were modified in the same commit. This is useful when you reorganize your program and move code around across files. When this option is given twice, the command additionally looks for copies from other files in the commit that creates the file. When this option is given three times, the command additionally looks for copies from other files in any commit.";
                },
                [ValueParameter]@{
                    Keys = @("--ignore-rev");
                    Name = "ignore-rev";
                    Description = "Ignore changes made by the revision when assigning blame, as if the change never happened. Lines that were changed or added by an ignored commit will be blamed on the previous commit that changed that line or nearby lines. This option may be specified multiple times to ignore more than one revision. If the blame.markIgnoredLines config option is set, then lines that were changed by an ignored commit and attributed to another commit will be marked with a ? in the blame output. If the blame.markUnblamableLines config option is set, then those lines touched by an ignored commit that we could not attribute to another revision are marked with a *.";
                },
                [ValueParameter]@{
                    Keys = @("--ignore-revs-file");
                    Name = "ignore-revs-file";
                    Description = "Ignore revisions listed in file, which must be in the same format as an fsck.skipList. This option may be repeated, and these files will be processed after any files specified with the blame.ignoreRevsFile config option. An empty file name, `"`", will clear the list of revs from previously processed files.";
                    #Source = $???; file
                },
                [FlagParameter]@{
                    Keys = @("--color-lines");
                    Name = "color-lines";
                    Description = "Color line annotations in the default format differently if they come from the same commit as the preceding line. This makes it easier to distinguish code blocks introduced by different commits. The color defaults to cyan and can be adjusted using the color.blame.repeatedLines config option.";
                },
                [FlagParameter]@{
                    Keys = @("--color-by-age");
                    Name = "color-by-age";
                    Description = "Color line annotations depending on the age of the line in the default format. The color.blame.highlightRecent config option controls what color is used for each range of age.";
                },
                [FlagParameter]@{
                    Keys = @("-h");
                    Name = "h";
                    Description = "Show help message.";
                }
            )
        },
        [CommandParameter]@{
            Keys = @("apply");
            Name = "apply";
            Description = "Apply a patch to files and/or to the index";
            Parameters = @(
                [ValueParameter]@{
                    Name = "files";
                    Description = "The files to read the patch from. - can be used to read from the standard input.";
                    #Source = fileglob;
                },
                [FlagParameter]@{
                    Keys = @("--stat");
                    Name = "stat";
                    Description = "Instead of applying the patch, output diffstat for the input. Turns off `"apply`".";
                },
                [FlagParameter]@{
                    Keys = @("--numstat");
                    Name = "numstat";
                    Description = "Similar to --stat, but shows the number of added and deleted lines in decimal notation and the pathname without abbreviation, to make it more machine friendly. For binary files, outputs two - instead of saying 0 0. Turns off `"apply`".";
                },
                [FlagParameter]@{
                    Keys = @("--summary");
                    Name = "summary";
                    Description = "Instead of applying the patch, output a condensed summary of information obtained from git diff extended headers, such as creations, renames and mode changes. Turns off `"apply`".";
                },
                [FlagParameter]@{
                    Keys = @("--check");
                    Name = "check";
                    Description = "Instead of applying the patch, see if the patch is applicable to the current working tree and/or the index file and detects errors. Turns off `"apply`".";
                },
                [FlagParameter]@{
                    Keys = @("--index");
                    Name = "index";
                    Description = "Apply the patch to both the index and the working tree (or merely check that it would apply cleanly to both if --check is in effect). Note that --index expects index entries and working tree copies for relevant paths to be identical (their contents and metadata such as file mode must match), and will raise an error if they are not, even if the patch would apply cleanly to both the index and the working tree in isolation.";
                },
                [FlagParameter]@{
                    Keys = @("--cached");
                    Name = "cached";
                    Description = "Apply the patch to just the index, without touching the working tree. If --check is in effect, merely check that it would apply cleanly to the index entry.";
                },
                [FlagParameter]@{
                    Keys = @("--intent-to-add");
                    Name = "intent-to-add";
                    Description = "When applying the patch only to the working tree, mark new files to be added to the index later (see --intent-to-add option in git-add1). This option is ignored unless running in a Git repository and --index is not specified. Note that --index could be implied by other options such as --cached or --3way.";
                },
                [FlagParameter]@{
                    Keys = @("--3way", "-3");
                    Name = "3way";
                    Description = "Attempt 3-way merge if the patch records the identity of blobs it is supposed to apply to and we have those blobs available locally, possibly leaving the conflict markers in the files in the working tree for the user to resolve. This option implies the --index option unless the --cached option is used, and is incompatible with the --reject option. When used with the --cached option, any conflicts are left at higher stages in the cache.";
                },
                [ValueParameter]@{
                    Keys = @("--build-fake-ancestor");
                    Name = "build-fake-ancestor";
                    Description = "Newer git diff output has embedded index information for each blob to help identify the original version that the patch applies to. When this flag is given, and if the original versions of the blobs are available locally, builds a temporary index containing those blobs.";
                    # Source = file;
                },
                [FlagParameter]@{
                    Keys = @("--reverse", "-R");
                    Name = "reverse";
                    Description = "Apply the patch in reverse.";
                },
                [FlagParameter]@{
                    Keys = @("--reject");
                    Name = "reject";
                    Description = "For atomicity, git apply by default fails the whole patch and does not touch the working tree when some of the hunks do not apply. This option makes it apply the parts of the patch that are applicable, and leave the rejected hunks in corresponding *.rej files.";
                },
                [FlagParameter]@{
                    Keys = @("-z");
                    Name = "z";
                    Description = "When --numstat has been given, do not munge pathnames, but use a NUL-terminated machine-readable format.";
                },
                [ValueParameter]@{
                    Keys = @("-p");
                    Name = "p";
                    Description = "Remove <n> leading path components (separated by slashes) from traditional diff paths. E.g., with -p2, a patch against a/dir/file will be applied directly to file. The default is 1.";
                },
                [ValueParameter]@{
                    Keys = @("-C");
                    Name = "C";
                    Description = "Ensure at least <n> lines of surrounding context match before and after each change. When fewer lines of surrounding context exist they all must match. By default no context is ever ignored.";
                },
                [FlagParameter]@{
                    Keys = @("--unidiff-zero");
                    Name = "unidiff-zero";
                    Description = "By default, git apply expects that the patch being applied is a unified diff with at least one line of context. This provides good safety measures, but breaks down when applying a diff generated with --unified=0. To bypass these checks use --unidiff-zero.";
                },
                [FlagParameter]@{
                    Keys = @("--apply");
                    Name = "apply";
                    Description = "If you use any of the options marked `"Turns off apply`" above, git apply reads and outputs the requested information without actually applying the patch. Give this flag after those flags to also apply the patch.";
                },
                [FlagParameter]@{
                    Keys = @("--no-add");
                    Name = "no-add";
                    Description = "When applying a patch, ignore additions made by the patch. This can be used to extract the common part between two files by first running diff on them and applying the result with this option, which would apply the deletion part but not the addition part.";
                },
                [FlagParameter]@{
                    Keys = @("--binary", "--allow-binary-replacement");
                    Name = "binary";
                    Description = "Historically we did not allow binary patch applied without an explicit permission from the user, and this flag was the way to do so. Currently we always allow binary patch application, so this is a no-op.";
                },
                [ValueParameter]@{
                    Keys = @("--exclude");
                    Name = "exclude";
                    Description = "Don’t apply changes to files matching the given path pattern. This can be useful when importing patchsets, where you want to exclude certain files or directories.";
                    #Source = pathglob
                },
                [ValueParameter]@{
                    Keys = @("--include");
                    Name = "include";
                    Description = "Apply changes to files matching the given path pattern. This can be useful when importing patchsets, where you want to include certain files or directories.";
                    #Source = pathglob
                },
                [FlagParameter]@{
                    Keys = @("--ignore-whitespace", "--ignore-space-change");
                    Name = "ignore-whitespace";
                    Description = "When applying a patch, ignore changes in whitespace in context lines if necessary. Context lines will preserve their whitespace, and they will not undergo whitespace fixing regardless of the value of the --whitespace option. New lines will still be fixed, though.";
                },
                [ValueParameter]@{
                    Keys = @("--whitespace");
                    Name = "whitespace";
                    Description = "When applying a patch, detect a new or modified line that has whitespace errors. What are considered whitespace errors is controlled by core.whitespace configuration. By default, trailing whitespaces (including lines that solely consist of whitespaces) and a space character that is immediately followed by a tab character inside the initial indent of the line are considered whitespace errors.";
                    Source = [StaticSource]@{
                        Name = "whitespace mode";
                        Description = "";
                        Items = @(
                            [SourceItem]@{
                                Name = "nowarn";
                                Description = "turns off the trailing whitespace warning."
                            },
                            [SourceItem]@{
                                Name = "warn";
                                Description = " outputs warnings for a few such errors, but applies the patch as-is (default)."
                            },
                            [SourceItem]@{
                                Name = "fix";
                                Description = "outputs warnings for a few such errors, and applies the patch after fixing them (strip is a synonym --- the tool used to consider only trailing whitespace characters as errors, and the fix involved stripping them, but modern Gits do more)."
                            },
                            [SourceItem]@{
                                Name = "error";
                                Description = "outputs warnings for a few such errors, and refuses to apply the patch."
                            },
                            [SourceItem]@{
                                Name = "error-all";
                                Description = "is similar to error but shows all errors."
                            }
                        )
                    };
                },
                [FlagParameter]@{
                    Keys = @("--inaccurate-eof");
                    Name = "inaccurate-eof";
                    Description = "Under certain circumstances, some versions of diff do not correctly detect a missing new-line at the end of the file. As a result, patches created by such diff programs do not record incomplete lines correctly. This option adds support for applying such patches by working around this bug.";
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Report progress to stderr. By default, only a message about the current patch being applied will be printed. This option will cause additional information to be reported.";
                },
                [FlagParameter]@{
                    Keys = @("--recount");
                    Name = "recount";
                    Description = "Do not trust the line counts in the hunk headers, but infer them by inspecting the patch (e.g. after editing the patch without adjusting the hunk headers appropriately).";
                },
                [ValueParameter]@{
                    Keys = @("--directory");
                    Name = "directory";
                    Description = "Prepend &lt;root&gt; to all filenames. If a `"-p`" argument was also passed, it is applied before prepending the new root.";
                    # Source = directory;
                },
                [FlagParameter]@{
                    Keys = @("--unsafe-paths");
                    Name = "unsafe-paths";
                    Description = "By default, a patch that affects outside the working area (either a Git controlled working tree, or the current working directory when `"git apply`" is used as a replacement of GNU patch) is rejected as a mistake (or a mischief).";
                }
            )
        },
        [CommandParameter]@{
            Keys = @("archive");
            Name = "archive";
            Description = "Create an archive of files from a named tree";
            Parameters = @(
                [ValueParameter]@{
                    Keys = @("--format");
                    Name = "format";
                    Description = "Format of the resulting archive: tar or zip. If this option is not given, and the output file is specified, the format is inferred from the filename if possible (e.g. writing to `"foo.zip`" makes the output to be in the zip format). Otherwise the output format is tar.";
                    Source = $archiveFormats;
                },
                [FlagParameter]@{
                    Keys = @("--list", "-l");
                    Name = "list";
                    Description = "Show all available formats.";
                },
                [FlagParameter]@{
                    Keys = @("--verbose", "-v");
                    Name = "verbose";
                    Description = "Report progress to stderr.";
                },
                [ValueParameter]@{
                    Keys = @("--prefix");
                    Name = "prefix";
                    Description = "Prepend <prefix>/ to each filename in the archive.";
                },
                [ValueParameter]@{
                    Keys = @("--output", "-o");
                    Name = "output";
                    Description = "Write the archive to <file> instead of stdout.";
                    #Source = file;
                },
                [ValueParameter]@{
                    Keys = @("--add-file");
                    Name = "add-file";
                    Description = "Add a non-tracked file to the archive. Can be repeated to add multiple files. The path of the file in the archive is built by concatenating the value for --prefix (if any) and the basename of <file>.";
                    #Source = file;
                },
                [FlagParameter]@{
                    Keys = @("--worktree-attributes");
                    Name = "worktree-attributes";
                    Description = "Look for attributes in .gitattributes files in the working tree as well (see ).";
                },
                [ValueParameter]@{
                    Name = "extra";
                    Description = "This can be any options that the archiver backend understands. See next section.";
                },
                [ValueParameter]@{
                    Keys = @("--remote");
                    Name = "remote";
                    Description = "Instead of making a tar archive from the local repository, retrieve a tar archive from a remote repository. Note that the remote repository may place restrictions on which sha1 expressions may be allowed in <tree-ish>. See git-upload-archive1 for details.";
                },
                [ValueParameter]@{
                    Keys = @("--exec");
                    Name = "exec";
                    Description = "Used with --remote to specify the path to the git-upload-archive on the remote side.";
                },
                [ValueParameter]@{
                    Name = "tree-ish";
                    Description = "The tree or commit to produce an archive for.";
                    #Source = $commit;
                },
                [ValueParameter]@{
                    Name = "path";
                    Description = "Without an optional path parameter, all files and subdirectories of the current working directory are included in the archive. If one or more paths are specified, only these are included.";
                    #Source = fileglob?;
                }
            )
        },
        [CommandParameter]@{
            Keys = @("bisect");
            Name = "bisect";
            Description = "Use binary search to find the commit that introduced a bug";
            Parameters = @(
                [FlagParameter]@{
                    Keys = @("--no-checkout");
                    Name = "no-checkout";
                    Description = "Do not checkout the new working tree at each iteration of the bisection process. Instead just update a special reference named BISECT_HEAD to make it point to the commit that should be tested.";
                },
                [FlagParameter]@{
                    Keys = @("--first-parent");
                    Name = "first-parent";
                    Description = "Follow only the first parent commit upon seeing a merge commit.";
                }
            )
        }
    )
}
