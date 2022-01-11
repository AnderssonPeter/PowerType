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

$allBranches = [DynamicSource]@{
    Name = "AllBranches";
    Description = "Local and remote branches";
    CommandExpression = {
        git --no-optional-locks branch -a --no-color  | % { $_.trim(' *$(') } | % { $_.StartsWith("remotes/origin/") ? $_.Substring(15) : $_ } | Where-Object { !$_.StartsWith("HEAD") } | Select -Unique
    };
    Cache = [Cache]@{
        ByCurrentWorkingDirectory = $true;
        ByTime = New-TimeSpan -Seconds 10
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
        ByTime = New-TimeSpan -Seconds 10
    }
}

# Should we remove the Parameter part? CommandParameter -> Command?
[PowerTypeDictionary]@{
    Keys = @("git");
    Name = "git";
    Description = "fast, scalable, distributed revision control system";
    Platforms = [Platforms]::All;
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
                    Keys = @("--signoff", "--no-signoff", "-s");
                    Name = "no-signoff";
                    Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
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
                },
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Suppress commit summary message.";
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
                [FlagParameter]@{
                    Keys = @("--quiet", "-q");
                    Name = "quiet";
                    Description = "Quiet, suppress feedback messages.";
                },
                [FlagParameter]@{
                    Keys = @("--progress", "--no-progress");
                    Name = "progress";
                    Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified. This flag enables progress reporting even if not attached to a terminal, regardless of --quiet.";
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
                [FlagParameter]@{
                    Keys = @("-b");
                    Name = "Create new branch";
                    Description = "Create a new branch named <new_branch> and start it at <start_point>; see git-branch1 for details.";
                    #Condition = Not contains -B
                },
                [FlagParameter]@{
                    Keys = @("-B");
                    Name = "Create new branch";
                    Description = "Creates the branch &lt;new_branch&gt; and start it at &lt;start_point&gt;; if it already exists, then reset it to &lt;start_point&gt;. This is equivalent to running `"git branch`" with `"-f`"; see git-branch1 for details.";
                    #Condition = Not contains -b
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
                    Keys = @("--overwrite-ignore", "--no-overwrite-ignore");
                    Name = "overwrite-ignore";
                    Description = "Silently overwrite ignored files when switching branches. This is the default behavior. Use --no-overwrite-ignore to abort the operation when the new branch contains ignored files.";
                },
                [FlagParameter]@{
                    Keys = @("--recurse-submodules", "--no-recurse-submodules");
                    Name = "recurse-submodules";
                    Description = "Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject. If local modifications in a submodule would be overwritten the checkout will fail unless -f is used. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-submodule1 , this will detach HEAD of the submodule.";
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
                [ValueParameter]@{
                    Name = "Branch to checkout or new_branch or start_point or tree-ish";
                    Description = "Branch to checkout; if it refers to a branch (i.e., a name that, when prepended with `"refs/heads/`", is a valid ref), then that branch is checked out. Otherwise, if it refers to a valid commit, your HEAD becomes `"detached`" and you are no longer on any branch (see below for details).";
                    Source = $allBranches
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
                        #lägg samma på root nivå
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
        }
    )
}