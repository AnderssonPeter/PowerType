    [CommandParameter]@{
        Keys = @("add");
        Name = "add";
        Description = "Add file contents to the index";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Files to add content from. Fileglobs (e.g. *.c) can be given to add all matching files. Also a leading directory name (e.g. dir to add dir/file1 and dir/file2) can be given to update the index to match the current state of the directory as a whole (e.g. specifying dir will record not just a file dir/file1 modified in the working tree, a file dir/file2 added to the working tree, but also a file dir/file3 removed from the working tree). Note that older versions of Git used to ignore removed files; use --no-all option if you want to add modified or new files but ignore removed ones.";
                Source = $???;
            },
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
            },
            [FlagParameter]@{
                Keys = @("--interactive", "-i");
                Name = "interactive";
                Description = "Add modified contents in the working tree interactively to the index. Optional path arguments may be supplied to limit operation to a subset of the working tree. See “Interactive mode” for details.";
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
                Keys = @("--no-ignore-removal", "--all", "-A");
                Name = "no-ignore-removal";
                Description = "Update the index not only where the working tree has a file matching <pathspec> but also where the index already has an entry. This adds, modifies, and removes index entries to match the working tree.";
                Condition = [ExclusiveParameterCondition]::new("ignore-removal");
            },
            [FlagParameter]@{
                Keys = @("--ignore-removal", "--no-all");
                Name = "ignore-removal";
                Description = "Update the index by adding new files that are unknown to the index and files modified in the working tree, but ignore files that have been removed from the working tree. This option is a no-op when no <pathspec> is used.";
                Condition = [ExclusiveParameterCondition]::new("no-ignore-removal");
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--pathspec-from-file");
                Name = "pathspec-from-file";
                Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1). See also --pathspec-file-nul and global --literal-pathspecs.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--pathspec-file-nul");
                Name = "pathspec-file-nul";
                Description = "Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "This option can be used to separate command-line options from the list of files, (useful when filenames might be mistaken for command-line options).";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("commit");
        Name = "commit";
        Description = "Record changes to the repository";
        Parameters = @(
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--reedit-message", "-c");
                Name = "reedit-message";
                Description = "Like -C, but with -c the editor is invoked, so that the user can further edit the commit message.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--fixup");
                Name = "fixup";
                Description = "Create a new commit which `"fixes up`" &lt;commit&gt; when applied with git rebase --autosquash. Plain --fixup=&lt;commit&gt; creates a `"fixup!`" commit which changes the content of &lt;commit&gt; but leaves its log message untouched. --fixup=amend:&lt;commit&gt; is similar but creates an `"amend!`" commit which also replaces the log message of &lt;commit&gt; with the log message of the `"amend!`" commit. --fixup=reword:&lt;commit&gt; creates an `"amend!`" commit which replaces the log message of <commit> with its own log message but makes no changes to the content of <commit>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--squash");
                Name = "squash";
                Description = "Construct a commit message for use with rebase --autosquash. The commit message subject line is taken from the specified commit with a prefix of `"squash! `". Can be used with additional commit message options (-m/-c/-C/-F). See git-rebase1 for details.";
                Source = $???;
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
                Description = "When showing short or porcelain status output, print the filename verbatim and terminate the entries with NUL, instead of LF. If no format is given, implies the --porcelain output format. Without the -z option, filenames with `"unusual`" characters are quoted as explained for the configuration variable core.quotePath (see git-config1).";
            },
            [ValueParameter]@{
                Keys = @("--file", "-F");
                Name = "file";
                Description = "Take the commit message from the given file. Use - to read the message from the standard input.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--author");
                Name = "author";
                Description = "Override the commit author. Specify an explicit author using the standard A U Thor <author@example.com> format. Otherwise <author> is assumed to be a pattern and is used to search for an existing commit by that author (i.e. rev-list --all -i --author=<author>); the commit author is then copied from the first such commit found.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--date");
                Name = "date";
                Description = "Override the author date used in the commit.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--message", "-m");
                Name = "message";
                Description = "Use the given <msg> as the commit message. If multiple -m options are given, their values are concatenated as separate paragraphs.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--template", "-t");
                Name = "template";
                Description = "When editing the commit message, start the editor with the contents in the given file. The commit.template configuration variable is often used to give this option implicitly to the command. This mechanism can be used by projects that want to guide participants with some hints on what to write in the message in what order. If the user exits the editor without editing the message, the commit is aborted. This has no effect when a message is given by other means, e.g. with the -m or -F options.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--signoff", "-s");
                Name = "signoff";
                Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
                Condition = [ExclusiveParameterCondition]::new("no-signoff");
            },
            [FlagParameter]@{
                Keys = @("--no-signoff");
                Name = "no-signoff";
                Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
                Condition = [ExclusiveParameterCondition]::new("signoff");
            },
            [ValueParameter]@{
                Keys = @("--trailer");
                Name = "trailer";
                Description = "Specify a (&lt;token&gt;, &lt;value&gt;) pair that should be applied as a trailer. (e.g. git commit --trailer `"Signed-off-by:C O Mitter \ &lt;committer@example.com&gt;`" --trailer `"Helped-by:C O Mitter \ &lt;committer@example.com&gt;`" will add the `"Signed-off-by`" trailer and the `"Helped-by`" trailer to the commit message.) The trailer.* configuration variables (git-interpret-trailers1) can be used to define if a duplicated trailer is omitted, where in the run of trailers each trailer would appear, and other details.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--verify");
                Name = "verify";
                Description = "By default, the pre-commit and commit-msg hooks are run. When any of --no-verify or -n is given, these are bypassed. See also githooks5.";
                Condition = [ExclusiveParameterCondition]::new("no-verify");
            },
            [FlagParameter]@{
                Keys = @("--no-verify", "-n");
                Name = "no-verify";
                Description = "By default, the pre-commit and commit-msg hooks are run. When any of --no-verify or -n is given, these are bypassed. See also githooks5.";
                Condition = [ExclusiveParameterCondition]::new("verify");
            },
            [FlagParameter]@{
                Keys = @("--allow-empty");
                Name = "allow-empty";
                Description = "Usually recording a commit that has the exact same tree as its sole parent commit is a mistake, and the command prevents you from making such a commit. This option bypasses the safety, and is primarily for use by foreign SCM interface scripts.";
            },
            [FlagParameter]@{
                Keys = @("--allow-empty-message");
                Name = "allow-empty-message";
                Description = "Like --allow-empty this command is primarily for use by foreign SCM interface scripts. It allows you to create a commit with an empty commit message without using plumbing commands like git-commit-tree1.";
            },
            [ValueParameter]@{
                Keys = @("--cleanup");
                Name = "cleanup";
                Description = "This option determines how the supplied commit message should be cleaned up before committing. The <mode> can be strip, whitespace, verbatim, scissors or default.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--edit", "-e");
                Name = "edit";
                Description = "The message taken from file with -F, command line with -m, and from commit object with -C are usually used as the commit log message unmodified. This option lets you further edit the message taken from these sources.";
                Condition = [ExclusiveParameterCondition]::new("no-edit");
            },
            [FlagParameter]@{
                Keys = @("--no-edit");
                Name = "no-edit";
                Description = "Use the selected commit message without launching an editor. For example, git commit --amend --no-edit amends a commit without changing its commit message.";
                Condition = [ExclusiveParameterCondition]::new("edit");
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
                Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1). See also --pathspec-file-nul and global --literal-pathspecs.";
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Show unified diff between the HEAD commit and what would be committed at the bottom of the commit message template to help the user describe the commit by reminding what changes the commit has. Note that this diff output doesn’t have its lines prefixed with #. This diff will not be a part of the commit message. See the commit.verbose configuration variable in git-config1.";
                Condition = [ExclusiveParameterCondition]::new("quiet");
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Suppress commit summary message.";
                Condition = [ExclusiveParameterCondition]::new("verbose");
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
                Condition = [ExclusiveParameterCondition]::new("no-status");
            },
            [FlagParameter]@{
                Keys = @("--no-status");
                Name = "no-status";
                Description = "Do not include the output of git-status1 in the commit message template when using an editor to prepare the default commit message.";
                Condition = [ExclusiveParameterCondition]::new("status");
            },
            [ValueParameter]@{
                Keys = @("--gpg-sign", "-S");
                Name = "gpg-sign";
                Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-gpg-sign");
            },
            [FlagParameter]@{
                Keys = @("--no-gpg-sign");
                Name = "no-gpg-sign";
                Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                Condition = [ExclusiveParameterCondition]::new("gpg-sign");
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "When pathspec is given on the command line, commit the contents of the files that match the pathspec without recording the changes already added to the index. The contents of these files are also staged for the next commit on top of what have been staged before.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
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
                Keys = @("--theirs", "--ours");
                Name = "theirs";
                Description = "When checking out paths from the index, check out stage #2 (ours) or #3 (theirs) for unmerged paths.";
            },
            [ValueParameter]@{
                Keys = @("-b");
                Name = "b";
                Description = "Create a new branch named <new_branch> and start it at <start_point>; see git-branch1 for details.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-B");
                Name = "B";
                Description = "Creates the branch &lt;new_branch&gt; and start it at &lt;start_point&gt;; if it already exists, then reset it to &lt;start_point&gt;. This is equivalent to running `"git branch`" with `"-f`"; see git-branch1 for details.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--track", "-t");
                Name = "track";
                Description = "When creating a new branch, set up `"upstream`" configuration. See `"--track`" in git-branch1 for details.";
                Condition = [ExclusiveParameterCondition]::new("no-track");
            },
            [FlagParameter]@{
                Keys = @("--no-track");
                Name = "no-track";
                Description = "Do not set up `"upstream`" configuration, even if the branch.autoSetupMerge configuration variable is true.";
                Condition = [ExclusiveParameterCondition]::new("track");
            },
            [FlagParameter]@{
                Keys = @("--guess");
                Name = "guess";
                Description = "If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to";
                Condition = [ExclusiveParameterCondition]::new("no-guess");
            },
            [FlagParameter]@{
                Keys = @("--no-guess");
                Name = "no-guess";
                Description = "If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to";
                Condition = [ExclusiveParameterCondition]::new("guess");
            },
            [FlagParameter]@{
                Keys = @("-l");
                Name = "l";
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
                Source = $???;
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
                Source = $???;
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
                Description = "Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject. If local modifications in a submodule would be overwritten the checkout will fail unless -f is used. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-submodule1, this will detach HEAD of the submodule.";
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
                Condition = [ExclusiveParameterCondition]::new("no-overlay");
            },
            [FlagParameter]@{
                Keys = @("--no-overlay");
                Name = "no-overlay";
                Description = "In the default overlay mode, git checkout never removes files from the index or the working tree. When specifying --no-overlay, files that appear in the index and working tree, but not in <tree-ish> are removed, to make them match <tree-ish> exactly.";
                Condition = [ExclusiveParameterCondition]::new("overlay");
            },
            [ValueParameter]@{
                Keys = @("--pathspec-from-file");
                Name = "pathspec-from-file";
                Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1). See also --pathspec-file-nul and global --literal-pathspecs.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--pathspec-file-nul");
                Name = "pathspec-file-nul";
                Description = "Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Branch to checkout; if it refers to a branch (i.e., a name that, when prepended with `"refs/heads/`", is a valid ref), then that branch is checked out. Otherwise, if it refers to a valid commit, your HEAD becomes `"detached`" and you are no longer on any branch (see below for details).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Name for the new branch.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The name of a commit at which to start the new branch; see git-branch1 for details. Defaults to HEAD.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Tree to checkout from (when paths are given). If not specified, the index will be used.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Limits the paths affected by the operation.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("stash");
        Name = "stash";
        Description = "Stash the changes in a dirty working directory away";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--all", "-a");
                Name = "all";
                Description = "This option is only valid for push and save commands.";
            },
            [FlagParameter]@{
                Keys = @("--include-untracked", "-u");
                Name = "include-untracked";
                Description = "When used with the push and save commands, all untracked files are also stashed and then cleaned up with git clean.";
                Condition = [ExclusiveParameterCondition]::new("no-include-untracked");
            },
            [FlagParameter]@{
                Keys = @("--no-include-untracked");
                Name = "no-include-untracked";
                Description = "When used with the push and save commands, all untracked files are also stashed and then cleaned up with git clean.";
                Condition = [ExclusiveParameterCondition]::new("include-untracked");
            },
            [FlagParameter]@{
                Keys = @("--only-untracked");
                Name = "only-untracked";
                Description = "This option is only valid for the show command.";
            },
            [FlagParameter]@{
                Keys = @("--index");
                Name = "index";
                Description = "This option is only valid for pop and apply commands.";
            },
            [FlagParameter]@{
                Keys = @("--keep-index", "-k");
                Name = "keep-index";
                Description = "This option is only valid for push and save commands.";
                Condition = [ExclusiveParameterCondition]::new("no-keep-index");
            },
            [FlagParameter]@{
                Keys = @("--no-keep-index");
                Name = "no-keep-index";
                Description = "This option is only valid for push and save commands.";
                Condition = [ExclusiveParameterCondition]::new("keep-index");
            },
            [FlagParameter]@{
                Keys = @("--patch", "-p");
                Name = "patch";
                Description = "This option is only valid for push and save commands.";
            },
            [ValueParameter]@{
                Keys = @("--pathspec-from-file");
                Name = "pathspec-from-file";
                Description = "This option is only valid for push command.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--pathspec-file-nul");
                Name = "pathspec-file-nul";
                Description = "This option is only valid for push command.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "This option is only valid for apply, drop, pop, push, save, store commands.";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "This option is only valid for push command.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "This option is only valid for push command.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "This option is only valid for apply, branch, drop, pop, show commands.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("merge");
        Name = "merge";
        Description = "Join two or more development histories together";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--commit");
                Name = "commit";
                Description = "Perform the merge and commit the result. This option can be used to override --no-commit.";
                Condition = [ExclusiveParameterCondition]::new("no-commit");
            },
            [FlagParameter]@{
                Keys = @("--no-commit");
                Name = "no-commit";
                Description = "Perform the merge and commit the result. This option can be used to override --no-commit.";
                Condition = [ExclusiveParameterCondition]::new("commit");
            },
            [FlagParameter]@{
                Keys = @("--edit", "-e");
                Name = "edit";
                Description = "Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge. The --no-edit option can be used to accept the auto-generated message (this is generally discouraged). The --edit (or -e) option is still useful if you are giving a draft message with the -m option from the command line and want to edit it in the editor.";
                Condition = [ExclusiveParameterCondition]::new("no-edit");
            },
            [FlagParameter]@{
                Keys = @("--no-edit");
                Name = "no-edit";
                Description = "Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge. The --no-edit option can be used to accept the auto-generated message (this is generally discouraged). The --edit (or -e) option is still useful if you are giving a draft message with the -m option from the command line and want to edit it in the editor.";
                Condition = [ExclusiveParameterCondition]::new("edit");
            },
            [ValueParameter]@{
                Keys = @("--cleanup");
                Name = "cleanup";
                Description = "This option determines how the merge message will be cleaned up before committing. See git-commit1 for more details. In addition, if the <mode> is given a value of scissors, scissors will be appended to MERGE_MSG before being passed on to the commit machinery in the case of a merge conflict.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ff-only", "--ff");
                Name = "ff-only";
                Description = "Specifies how a merge is handled when the merged-in history is already a descendant of the current history. --ff is the default unless merging an annotated (and possibly signed) tag that is not stored in its natural place in the refs/tags/ hierarchy, in which case --no-ff is assumed.";
            },
            [FlagParameter]@{
                Keys = @("--no-ff");
                Name = "no-ff";
                Description = "Specifies how a merge is handled when the merged-in history is already a descendant of the current history. --ff is the default unless merging an annotated (and possibly signed) tag that is not stored in its natural place in the refs/tags/ hierarchy, in which case --no-ff is assumed.";
            },
            [ValueParameter]@{
                Keys = @("--gpg-sign", "-S");
                Name = "gpg-sign";
                Description = "GPG-sign the resulting merge commit. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-gpg-sign");
            },
            [FlagParameter]@{
                Keys = @("--no-gpg-sign");
                Name = "no-gpg-sign";
                Description = "GPG-sign the resulting merge commit. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                Condition = [ExclusiveParameterCondition]::new("gpg-sign");
            },
            [ValueParameter]@{
                Keys = @("--log");
                Name = "log";
                Description = "In addition to branch names, populate the log message with one-line descriptions from at most <n> actual commits that are being merged. See also git-fmt-merge-msg1.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-log");
            },
            [FlagParameter]@{
                Keys = @("--no-log");
                Name = "no-log";
                Description = "In addition to branch names, populate the log message with one-line descriptions from at most <n> actual commits that are being merged. See also git-fmt-merge-msg1.";
                Condition = [ExclusiveParameterCondition]::new("log");
            },
            [FlagParameter]@{
                Keys = @("--signoff");
                Name = "signoff";
                Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
                Condition = [ExclusiveParameterCondition]::new("no-signoff");
            },
            [FlagParameter]@{
                Keys = @("--no-signoff");
                Name = "no-signoff";
                Description = "Add a Signed-off-by trailer by the committer at the end of the commit log message. The meaning of a signoff depends on the project to which you’re committing. For example, it may certify that the committer has the rights to submit the work under the project’s license or agrees to some contributor representation, such as a Developer Certificate of Origin. (See http://developercertificate.org for the one used by the Linux kernel and Git projects.) Consult the documentation or leadership of the project to which you’re contributing to understand how the signoffs are used in that project.";
                Condition = [ExclusiveParameterCondition]::new("signoff");
            },
            [FlagParameter]@{
                Keys = @("--stat");
                Name = "stat";
                Description = "Show a diffstat at the end of the merge. The diffstat is also controlled by the configuration option merge.stat.";
                Condition = [ExclusiveParameterCondition]::new("no-stat");
            },
            [FlagParameter]@{
                Keys = @("--no-stat", "-n");
                Name = "no-stat";
                Description = "Show a diffstat at the end of the merge. The diffstat is also controlled by the configuration option merge.stat.";
                Condition = [ExclusiveParameterCondition]::new("stat");
            },
            [FlagParameter]@{
                Keys = @("--squash");
                Name = "squash";
                Description = "Produce the working tree and index state as if a real merge happened (except for the merge information), but do not actually make a commit, move the HEAD, or record $GIT_DIR/MERGE_HEAD (to cause the next git commit command to create a merge commit). This allows you to create a single commit on top of the current branch whose effect is the same as merging another branch (or more in case of an octopus).";
                Condition = [ExclusiveParameterCondition]::new("no-squash");
            },
            [FlagParameter]@{
                Keys = @("--no-squash");
                Name = "no-squash";
                Description = "Produce the working tree and index state as if a real merge happened (except for the merge information), but do not actually make a commit, move the HEAD, or record $GIT_DIR/MERGE_HEAD (to cause the next git commit command to create a merge commit). This allows you to create a single commit on top of the current branch whose effect is the same as merging another branch (or more in case of an octopus).";
                Condition = [ExclusiveParameterCondition]::new("squash");
            },
            [FlagParameter]@{
                Keys = @("--verify");
                Name = "verify";
                Description = "By default, the pre-merge and commit-msg hooks are run. When --no-verify is given, these are bypassed. See also githooks5.";
                Condition = [ExclusiveParameterCondition]::new("no-verify");
            },
            [FlagParameter]@{
                Keys = @("--no-verify");
                Name = "no-verify";
                Description = "By default, the pre-merge and commit-msg hooks are run. When --no-verify is given, these are bypassed. See also githooks5.";
                Condition = [ExclusiveParameterCondition]::new("verify");
            },
            [ValueParameter]@{
                Keys = @("--strategy", "-s");
                Name = "strategy";
                Description = "Use the given merge strategy; can be supplied more than once to specify them in the order they should be tried. If there is no -s option, a built-in list of strategies is used instead (ort when merging a single head, octopus otherwise).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--strategy-option", "-X");
                Name = "strategy-option";
                Description = "Pass merge strategy specific option through to the merge strategy.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--verify-signatures");
                Name = "verify-signatures";
                Description = "Verify that the tip commit of the side branch being merged is signed with a valid key, i.e. a key that has a valid uid: in the default trust model, this means the signing key has been signed by a trusted key. If the tip commit of the side branch is not signed with a valid key, the merge is aborted.";
                Condition = [ExclusiveParameterCondition]::new("no-verify-signatures");
            },
            [FlagParameter]@{
                Keys = @("--no-verify-signatures");
                Name = "no-verify-signatures";
                Description = "Verify that the tip commit of the side branch being merged is signed with a valid key, i.e. a key that has a valid uid: in the default trust model, this means the signing key has been signed by a trusted key. If the tip commit of the side branch is not signed with a valid key, the merge is aborted.";
                Condition = [ExclusiveParameterCondition]::new("verify-signatures");
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
                Condition = [ExclusiveParameterCondition]::new("verbose");
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Be verbose.";
                Condition = [ExclusiveParameterCondition]::new("quiet");
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Turn progress on/off explicitly. If neither is specified, progress is shown if standard error is connected to a terminal. Note that not all merge strategies may support progress reporting.";
                Condition = [ExclusiveParameterCondition]::new("no-progress");
            },
            [FlagParameter]@{
                Keys = @("--no-progress");
                Name = "no-progress";
                Description = "Turn progress on/off explicitly. If neither is specified, progress is shown if standard error is connected to a terminal. Note that not all merge strategies may support progress reporting.";
                Condition = [ExclusiveParameterCondition]::new("progress");
            },
            [FlagParameter]@{
                Keys = @("--autostash");
                Name = "autostash";
                Description = "Automatically create a temporary stash entry before the operation begins, record it in the special ref MERGE_AUTOSTASH and apply it after the operation ends. This means that you can run the operation on a dirty worktree. However, use with care: the final stash application after a successful merge might result in non-trivial conflicts.";
                Condition = [ExclusiveParameterCondition]::new("no-autostash");
            },
            [FlagParameter]@{
                Keys = @("--no-autostash");
                Name = "no-autostash";
                Description = "Automatically create a temporary stash entry before the operation begins, record it in the special ref MERGE_AUTOSTASH and apply it after the operation ends. This means that you can run the operation on a dirty worktree. However, use with care: the final stash application after a successful merge might result in non-trivial conflicts.";
                Condition = [ExclusiveParameterCondition]::new("autostash");
            },
            [FlagParameter]@{
                Keys = @("--allow-unrelated-histories");
                Name = "allow-unrelated-histories";
                Description = "By default, git merge command refuses to merge histories that do not share a common ancestor. This option can be used to override this safety when merging histories of two projects that started their lives independently. As that is a very rare occasion, no configuration variable to enable this by default exists and will not be added.";
            },
            [ValueParameter]@{
                Keys = @("-m");
                Name = "m";
                Description = "Set the commit message to be used for the merge commit (in case one is created).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--file", "-F");
                Name = "file";
                Description = "Read the commit message to be used for the merge commit (in case one is created).";
                Source = $???;
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
            [FlagParameter]@{
                Keys = @("--overwrite-ignore");
                Name = "overwrite-ignore";
                Description = "Silently overwrite ignored files from the merge result. This is the default behavior. Use --no-overwrite-ignore to abort.";
                Condition = [ExclusiveParameterCondition]::new("no-overwrite-ignore");
            },
            [FlagParameter]@{
                Keys = @("--no-overwrite-ignore");
                Name = "no-overwrite-ignore";
                Description = "Silently overwrite ignored files from the merge result. This is the default behavior. Use --no-overwrite-ignore to abort.";
                Condition = [ExclusiveParameterCondition]::new("overwrite-ignore");
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
                Keys = @("");
                Name = "
        ";
                Description = "Commits, usually other branch heads, to merge into our branch. Specifying more than one commit will create a merge with more than two parents (affectionately called an Octopus merge).";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
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
                Keys = @("--reference");
                Name = "reference";
                Description = "If the reference repository is on the local machine, automatically setup .git/objects/info/alternates to obtain objects from the reference repository. Using an already existing repository as an alternate will require fewer objects to be copied from the repository being cloned, reducing network and local storage costs. When using the --reference-if-able, a non existing directory is skipped with a warning instead of aborting the clone.";
                Source = $???;
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
                Source = $???;
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
                Condition = [ExclusiveParameterCondition]::new("no-reject-shallow");
            },
            [FlagParameter]@{
                Keys = @("--no-reject-shallow");
                Name = "no-reject-shallow";
                Description = "Fail if the source repository is a shallow repository. The clone.rejectShallow configuration variable can be used to specify the default.";
                Condition = [ExclusiveParameterCondition]::new("reject-shallow");
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
                Description = "Use the partial clone feature and request that the server sends a subset of reachable objects according to a given object filter. When using --filter, the supplied <filter-spec> is used for the partial clone filter. For example, --filter=blob:none will filter out all blobs (file contents) until needed by Git. Also, --filter=blob:limit=<size> will filter out all blobs of size at least <size>. For more details on filter specifications, see the --filter option in git-rev-list1.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--branch", "-b");
                Name = "branch";
                Description = "Instead of pointing the newly created HEAD to the branch pointed to by the cloned repository’s HEAD, point to <name> branch instead. In a non-bare repository, this is the branch that will be checked out. --branch can also take tags and detaches the HEAD at that commit in the resulting repository.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--upload-pack", "-u");
                Name = "upload-pack";
                Description = "When given, and the repository to clone from is accessed via ssh, this specifies a non-default path for the command run on the other end.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--template");
                Name = "template";
                Description = "Specify the directory from which templates will be used; (See the `"TEMPLATE DIRECTORY`" section of git-init1.)";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--config", "-c");
                Name = "config";
                Description = "Set a configuration variable in the newly-created repository; this takes effect immediately after the repository is initialized, but before the remote history is fetched or any files checked out. The key is in the same format as expected by git-config1 (e.g., core.eol=true). If multiple values are given for the same key, each value will be written to the config file. This makes it safe, for example, to add additional fetch refspecs to the origin remote.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--depth");
                Name = "depth";
                Description = "Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--shallow-since");
                Name = "shallow-since";
                Description = "Create a shallow clone with a history after the specified time.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--shallow-exclude");
                Name = "shallow-exclude";
                Description = "Create a shallow clone with a history, excluding commits reachable from a specified remote branch or tag. This option can be specified multiple times.";
                Source = $???;
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
                Description = "Don’t clone any tags, and set remote.<remote>.tagOpt=--no-tags in the config, ensuring that future git pull and git fetch operations won’t follow any tags. Subsequent explicit tag fetches will still work, (see git-fetch1).";
            },
            [ValueParameter]@{
                Keys = @("--recurse-submodules");
                Name = "recurse-submodules";
                Description = "After the clone is created, initialize and clone submodules within based on the provided pathspec. If no pathspec is provided, all submodules are initialized and cloned. This option can be given multiple times for pathspecs consisting of multiple entries. The resulting clone has submodule.active set to the provided pathspec, or `".`" (meaning all submodules) if no pathspec is provided.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--jobs", "-j");
                Name = "jobs";
                Description = "The number of submodules fetched at the same time. Defaults to the submodule.fetchJobs option.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The (possibly remote) repository to clone from. See the GIT URLS section below for more information on specifying repositories.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The name of a new directory to clone into. The `"humanish`" part of the source repository is used if no directory is explicitly given (repo for /path/to/repo.git and foo for host.xz:foo/.git). Cloning into an existing directory is only allowed if the directory is empty.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("rebase");
        Name = "rebase";
        Description = "Reapply commits on top of another base tip";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--onto");
                Name = "onto";
                Description = "Starting point at which to create the new commits. If the --onto option is not specified, the starting point is <upstream>. May be any valid commit, and not just an existing branch name.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--keep-base");
                Name = "keep-base";
                Description = "Set the starting point at which to create the new commits to the merge base of <upstream> <branch>. Running git rebase --keep-base <upstream> <branch> is equivalent to running git rebase --onto <upstream>… <upstream>.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Upstream branch to compare against. May be any valid commit, not just an existing branch name. Defaults to the configured upstream for the current branch.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Working branch; defaults to HEAD.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--strategy-option", "-X");
                Name = "strategy-option";
                Description = "Pass the <strategy-option> through to the merge strategy. This implies --merge and, if no strategy has been specified, -s ort. Note the reversal of ours and theirs as noted above for the -m option.";
                Source = $???;
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
                Source = $???;
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
                Description = "This option bypasses the pre-rebase hook. See also githooks5.";
                Condition = [ExclusiveParameterCondition]::new("verify");
            },
            [FlagParameter]@{
                Keys = @("--verify");
                Name = "verify";
                Description = "Allows the pre-rebase hook to run, which is the default. This option can be used to override --no-verify. See also githooks5.";
                Condition = [ExclusiveParameterCondition]::new("no-verify");
            },
            [ValueParameter]@{
                Keys = @("-C");
                Name = "C";
                Description = "Ensure at least <n> lines of surrounding context match before and after each change. When fewer lines of surrounding context exist they all must match. By default no context is ever ignored. Implies --apply.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--no-ff", "--force-rebase", "-f");
                Name = "no-ff";
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
                Description = "This flag is passed to the git apply program (see git-apply1) that applies the patch. Implies --apply.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--exec", "-x");
                Name = "exec";
                Description = "Append `"exec &lt;cmd&gt;`" after each line creating a commit in the final history. <cmd> will be interpreted as one or more shell commands. Any command that fails will interrupt the rebase, with exit code 1.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--root");
                Name = "root";
                Description = "Rebase all commits reachable from <branch>, instead of limiting them with an <upstream>. This allows you to rebase the root commit(s) on a branch. When used with --onto, it will skip changes already contained in <newbase> (instead of <upstream>) whereas without --onto it will operate on every change.";
            },
            [FlagParameter]@{
                Keys = @("--autosquash");
                Name = "autosquash";
                Description = "When the commit log message begins with `"squash! …`" or `"fixup! …`" or `"amend! …`", and there is already a commit in the todo list that matches the same ..., automatically modify the todo list of rebase -i, so that the commit marked for squashing comes right after the commit to be modified, and change the action of the moved commit from pick to squash or fixup or fixup -C respectively. A commit matches the ... if the commit subject matches, or if the ... refers to the commit’s hash. As a fall-back, partial matches of the commit subject work, too. The recommended way to create fixup/amend/squash commits is by using the --fixup, --fixup=amend: or --fixup=reword: and --squash options respectively of git-commit1.";
                Condition = [ExclusiveParameterCondition]::new("no-autosquash");
            },
            [FlagParameter]@{
                Keys = @("--no-autosquash");
                Name = "no-autosquash";
                Description = "When the commit log message begins with `"squash! …`" or `"fixup! …`" or `"amend! …`", and there is already a commit in the todo list that matches the same ..., automatically modify the todo list of rebase -i, so that the commit marked for squashing comes right after the commit to be modified, and change the action of the moved commit from pick to squash or fixup or fixup -C respectively. A commit matches the ... if the commit subject matches, or if the ... refers to the commit’s hash. As a fall-back, partial matches of the commit subject work, too. The recommended way to create fixup/amend/squash commits is by using the --fixup, --fixup=amend: or --fixup=reword: and --squash options respectively of git-commit1.";
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
            },
        ),
    },
﻿    [CommandParameter]@{
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--ignore-submodules");
                Name = "ignore-submodules";
                Description = "Ignore changes to submodules when looking for changes. &lt;when&gt; can be either `"none`", `"untracked`", `"dirty`" or `"all`", which is the default. Using `"none`" will consider the submodule modified when it either contains untracked or modified files or its HEAD differs from the commit recorded in the superproject and can be used to override any settings of the ignore option in git-config1 or gitmodules5. When `"untracked`" is used submodules are not considered dirty when they only contain untracked content (but they are still scanned for modified content). Using `"dirty`" ignores all changes to the work tree of submodules, only changes to the commits stored in the superproject are shown (this was the behavior before 1.7.0). Using `"all`" hides all changes to submodules (and suppresses the output of submodule summaries when the config option status.submoduleSummary is set).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--ignored");
                Name = "ignored";
                Description = "Show ignored files as well.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "Terminate entries with NUL, instead of LF. This implies the --porcelain=v1 output format if no other format is given.";
            },
            [ValueParameter]@{
                Keys = @("--column");
                Name = "column";
                Description = "Display untracked files in columns. See configuration variable column.status for option syntax. --column and --no-column without options are equivalent to always and never respectively.";
                Source = $???;
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
                Description = "Turn on/off rename detection regardless of user configuration. See also git-diff1--no-renames.";
                Condition = [ExclusiveParameterCondition]::new("no-renames");
            },
            [FlagParameter]@{
                Keys = @("--no-renames");
                Name = "no-renames";
                Description = "Turn on/off rename detection regardless of user configuration. See also git-diff1--no-renames.";
                Condition = [ExclusiveParameterCondition]::new("renames");
            },
            [ValueParameter]@{
                Keys = @("--find-renames");
                Name = "find-renames";
                Description = "Turn on rename detection, optionally setting the similarity threshold. See also git-diff1--find-renames.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "See the pathspec entry in gitglossary7.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("push");
        Name = "push";
        Description = "Update remote refs along with associated objects";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
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
                Description = "Limit fetching to the specified number of commits from the tip of each remote branch history. If fetching to a shallow repository created by git clone with --depth=<depth> option (see git-clone1), deepen or shorten the history to the specified number of commits. Tags for the deepened commits are not fetched.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--deepen");
                Name = "deepen";
                Description = "Similar to --depth, except it specifies the number of commits from the current shallow boundary instead of from the tip of each remote branch history.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--shallow-since");
                Name = "shallow-since";
                Description = "Deepen or shorten the history of a shallow repository to include all reachable commits after <date>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--shallow-exclude");
                Name = "shallow-exclude";
                Description = "Deepen or shorten the history of a shallow repository to exclude commits reachable from a specified remote branch or tag. This option can be specified multiple times.";
                Source = $???;
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
                Source = $???;
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
            [FlagParameter]@{Found multiple no
                Keys = @("--", "--");
                Name = "
        ";
                Description = "Run git maintenance run --auto at the end to perform automatic repository maintenance if needed. (--[no-]auto-gc is a synonym.) This is enabled by default.";
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
                Description = "Modify the configured refspec to place all refs into the refs/prefetch/ namespace. See the prefetch task in git-maintenance1.";
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
                Description = "By default, tags that point at objects that are downloaded from the remote repository are fetched and stored locally. This option disables this automatic tag following. The default behavior for a remote may be specified with the remote.<name>.tagOpt setting. See git-config1.";
                Condition = [ExclusiveParameterCondition]::new("tags");
            },
            [ValueParameter]@{
                Keys = @("--refmap");
                Name = "refmap";
                Description = "When fetching refs listed on the command line, use the specified refspec (can be given more than once) to map the refs to remote-tracking branches, instead of the values of remote.*.fetch configuration variables for the remote repository. Providing an empty &lt;refspec&gt; to the --refmap option causes Git to ignore the configured refspecs and rely entirely on the refspecs supplied as command-line arguments. See section on `"Configured Remote-tracking Branches`" for details.";
                Source = $???;
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
                Description = "This option controls if and under what conditions new commits of populated submodules should be fetched too. It can be used as a boolean option to completely disable recursion when set to no or to unconditionally recurse into all populated submodules when set to yes, which is the default when this option is used without any value. Use on-demand to only recurse into a populated submodule when the superproject retrieves a commit that updates the submodule’s reference to a commit that isn’t already in the local submodule clone. By default, on-demand is used, unless fetch.recurseSubmodules is set (see git-config1).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-recurse-submodules");
            },
            [ValueParameter]@{
                Keys = @("--jobs", "-j");
                Name = "jobs";
                Description = "Number of parallel children to be used for all forms of fetching.";
                Source = $???;
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
                Description = "If the remote is fetched successfully, add upstream (tracking) reference, used by argument-less git-pull1 and other commands. For more information, see branch.<name>.merge and branch.<name>.remote in git-config1.";
            },
            [ValueParameter]@{
                Keys = @("--submodule-prefix");
                Name = "submodule-prefix";
                Description = "Prepend &lt;path&gt; to paths printed in informative messages such as `"Fetching submodule foo`". This option is used internally when recursing over submodules.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--recurse-submodules-default");
                Name = "recurse-submodules-default";
                Description = "This option is used internally to temporarily provide a non-negative default value for the --recurse-submodules option. All other methods of configuring fetch’s submodule recursion (such as settings in gitmodules5 and git-config1) override this option, as does specifying --[no-]recurse-submodules directly.";
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Pass --quiet to git-fetch-pack and silence any other internally used git commands. Progress is not reported to the standard error stream.";
                Condition = [ExclusiveParameterCondition]::new("verbose");
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Be verbose.";
                Condition = [ExclusiveParameterCondition]::new("quiet");
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--show-forced-updates");
                Name = "show-forced-updates";
                Description = "By default, git checks if a branch is force-updated during fetch. This can be disabled through fetch.showForcedUpdates, but the --show-forced-updates option guarantees this check occurs. See git-config1.";
                Condition = [ExclusiveParameterCondition]::new("no-show-forced-updates");
            },
            [FlagParameter]@{
                Keys = @("--no-show-forced-updates");
                Name = "no-show-forced-updates";
                Description = "By default, git checks if a branch is force-updated during fetch. Pass --no-show-forced-updates or set fetch.showForcedUpdates to false to skip this check for performance reasons. If used during git-pull the --ff-only option will still check for forced updates before attempting a fast-forward update. See git-config1.";
                Condition = [ExclusiveParameterCondition]::new("show-forced-updates");
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
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The `"remote`" repository that is the source of a fetch or pull operation. This parameter can be either a URL (see the section GIT URLS below) or the name of a remote (see the section REMOTES below).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "A name referring to a list of repositories as the value of remotes.<group> in the configuration file. (See git-config1).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Specifies which refs to fetch and which local refs to update. When no <refspec>s appear on the command line, the refs to fetch are read from remote.<repository>.fetch variables instead (see CONFIGURED REMOTE-TRACKING BRANCHES below).";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Read refspecs, one per line, from stdin in addition to those provided as arguments. The `"tag &lt;name&gt;`" format is not supported.";
            },
        ),
    },
﻿    [CommandParameter]@{
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
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--source");
                Name = "source";
                Description = "Print out the ref name given on the command line by which each commit was reached.";
            },
            [FlagParameter]@{Found multiple no
                Keys = @("--", "--");
                Name = "
        ";
                Description = "Use mailmap file to map author and committer names and email addresses to canonical real names and email addresses. See git-shortlog1.";
            },
            [FlagParameter]@{
                Keys = @("--full-diff");
                Name = "full-diff";
                Description = "Without this flag, git log -p &lt;path&gt;... shows commits that touch the specified paths, and diffs about the same specified paths. With this, the full diff is shown for commits that touch the specified paths; this means that `"&lt;path&gt;…`" limits only commits, and doesn’t limit diff for those commits.";
            },
            [FlagParameter]@{
                Keys = @("--log-size");
                Name = "log-size";
                Description = "Include a line “log size <number>” in the output for each commit, where <number> is the length of that commit’s message in bytes. Intended to speed up tools that read log messages from git log output by allowing them to allocate space in advance.";
            },
            [ValueParameter]@{
                Keys = @("-L:", "-L");
                Name = "L:";
                Description = "Trace the evolution of the line range given by <start>,<end>, or by the function name regex <funcname>, within the <file>. You may not give any pathspec limiters. This is currently limited to a walk starting from a single revision, i.e., you may only give zero or one positive revision arguments, and <start> and <end> (or <funcname>) must exist in the starting revision. You can specify this option more than once. Implies --patch. Patch output can be suppressed using --no-patch, but other diff formats (namely --raw, --numstat, --shortstat, --dirstat, --summary, --name-only, --name-status, --check) are not currently implemented.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Show only commits in the specified revision range. When no <revision range> is specified, it defaults to HEAD (i.e. the whole history leading to the current commit). origin..HEAD specifies all the commits reachable from the current commit (i.e. HEAD), but not from origin. For a complete list of ways to spell <revision range>, see the Specifying Ranges section of gitrevisions7.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Show only commits that are enough to explain how the files that match the specified paths came to be. See History Simplification below for details and other simplification modes.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output");
                Name = "output";
                Description = "Output to a specific file instead of stdout.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output-indicator-context", "--output-indicator-old", "--output-indicator-new");
                Name = "output-indicator-context";
                Description = "Specify the character used to indicate new, old or context lines in the generated patch. Normally they are +, - and ' ' respectively.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-algorithm");
                Name = "diff-algorithm";
                Description = "Choose a diff algorithm. The variants are as follows:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--stat");
                Name = "stat";
                Description = "Generate a diffstat. By default, as much space as necessary will be used for the filename part, and the rest for the graph part. Maximum width defaults to terminal width, or 80 columns if not connected to a terminal, and can be overridden by <width>. The width of the filename part can be limited by giving another width <name-width> after a comma. The width of the graph part can be limited by using --stat-graph-width=<width> (affects all commands generating a stat graph) or by setting diff.statGraphWidth=<width> (does not affect git format-patch). By giving a third parameter <count>, you can limit the output to the first <count> lines, followed by ... if there are more.";
                Source = $???;
            },
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color");
                Name = "color";
                Description = "Show colored diff. --color (i.e. without =<when>) is the same as --color=always. <when> can be one of always, never, or auto. It can be changed by the color.ui and color.diff configuration settings.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--word-diff-regex");
                Name = "word-diff-regex";
                Description = "Use <regex> to decide what a word is, instead of considering runs of non-whitespace to be a word. Also implies --word-diff unless it was already enabled.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color-words");
                Name = "color-words";
                Description = "Equivalent to --word-diff=color plus (if a regex was specified) --word-diff-regex=<regex>.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--break-rewrites", "-B");
                Name = "break-rewrites";
                Description = "Break complete rewrite changes into pairs of delete and create. This serves two purposes:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-renames", "-M");
                Name = "find-renames";
                Description = "Detect renames. If n is specified, it is a threshold on the similarity index (i.e. amount of addition/deletions compared to the file’s size). For example, -M90% means Git should consider a delete/add pair to be a rename if more than 90% of the file hasn’t changed. Without a % sign, the number is to be read as a fraction, with a decimal point before it. I.e., -M5 becomes 0.5, and is thus the same as -M50%. Similarly, -M05 is the same as -M5%. To limit detection to exact renames, use -M100%. The default similarity index is 50%.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-copies", "-C");
                Name = "find-copies";
                Description = "Detect copies as well as renames. See also --find-copies-harder. If n is specified, it has the same meaning as for -M<n>.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-filter");
                Name = "diff-filter";
                Description = "Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e. regular file, symlink, submodule, …) changed (T), are Unmerged (U), are Unknown (X), or have had their pairing Broken (B). Any combination of the filter characters (including none) can be used. When * (All-or-none) is added to the combination, all paths are selected if there is any file that matches other criteria in the comparison; if there is no file that matches other criteria, nothing is selected.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-S");
                Name = "S";
                Description = "Look for differences that change the number of occurrences of the specified string (i.e. addition/deletion) in a file. Intended for the scripter’s use.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-G");
                Name = "G";
                Description = "Look for differences whose patch text contains added/removed lines that match <regex>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-object");
                Name = "find-object";
                Description = "Look for differences that change the number of occurrences of the specified object. Similar to -S, just the argument is different in that it doesn’t search for a specific string but for a specific object id.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--rotate-to", "--skip-to");
                Name = "rotate-to";
                Description = "Discard the files before the named <file> from the output (i.e. skip to), or move them to the end of the output (i.e. rotate to). These were invented primarily for use of the git difftool command, and may not be very useful otherwise.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--inter-hunk-context");
                Name = "inter-hunk-context";
                Description = "Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other. Defaults to diff.interHunkContext or 0 if the config option is unset.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--src-prefix");
                Name = "src-prefix";
                Description = "Show the given source prefix instead of `"a/`".";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--dst-prefix");
                Name = "dst-prefix";
                Description = "Show the given destination prefix instead of `"b/`".";
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ita-invisible-in-index");
                Name = "ita-invisible-in-index";
                Description = "By default entries added by `"git add -N`" appear as an existing empty file in `"git diff`" and a new file in `"git diff --cached`". This option makes the entry appear as a new file in `"git diff`" and non-existent in `"git diff --cached`". This option could be reverted with --ita-visible-in-index. Both options are experimental and could be removed in future.";
            },
            [FlagParameter]@{
                Keys = @("-3 --theirs", "-2 --ours", "-1 --base");
                Name = "3 --theirs";
                Description = "Compare the working tree with the `"base`" version (stage #1), `"our branch`" (stage #2) or `"their branch`" (stage #3). The index contains these stages only for unmerged entries i.e. while resolving conflicts. See git-read-tree1 section `"3-Way Merge`" for detailed information.";
            },
            [FlagParameter]@{
                Keys = @("-0");
                Name = "0";
                Description = "Omit diff output for unmerged entries and just show `"Unmerged`". Can be used only when comparing the working tree with the index.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The <paths> parameters, when given, are used to limit the diff to the named paths (you can give directory names and get diff for all files under them).";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-contains");
            },
            [ValueParameter]@{
                Keys = @("--no-contains");
                Name = "no-contains";
                Description = "Only list branches which don’t contain the specified commit (HEAD if not specified). Implies --list.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("contains");
            },
            [ValueParameter]@{
                Keys = @("--merged");
                Name = "merged";
                Description = "Only list branches whose tips are reachable from the specified commit (HEAD if not specified). Implies --list.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-merged");
            },
            [ValueParameter]@{
                Keys = @("--no-merged");
                Name = "no-merged";
                Description = "Only list branches whose tips are not reachable from the specified commit (HEAD if not specified). Implies --list.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("merged");
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The name of the branch to create or delete. The new branch name must pass all checks defined by git-check-ref-format1. Some of these checks may restrict the characters allowed in a branch name.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The new branch head will point to this commit. It may be given as a branch name, a commit-id, or a tag. If this option is omitted, the current HEAD will be used instead.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The name of an existing branch to rename.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The new name for an existing branch. The same restrictions as for <branchname> apply.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--sort");
                Name = "sort";
                Description = "Sort based on the key given. Prefix - to sort in descending order of the value. You may use the --sort=<key> option multiple times, in which case the last key becomes the primary key. The keys supported are the same as those in git for-each-ref. Sort order defaults to the value configured for the branch.sort variable if exists, or to sorting based on the full refname (including refs/... prefix). This lists detached HEAD (if present) first, then local branches and finally remote-tracking branches. See git-config1.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--points-at");
                Name = "points-at";
                Description = "Only list branches of the given object.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--format");
                Name = "format";
                Description = "A string that interpolates %(fieldname) from a branch ref being shown and the object it points at. The format is the same as that of git-for-each-ref1.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("blame");
        Name = "blame";
        Description = "Show what revision and author last modified each line of a file";
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
                Keys = @("-L :", "-L");
                Name = "L :";
                Description = "Annotate only the line range given by <start>,<end>, or by the function name regex <funcname>. May be specified multiple times. Overlapping ranges are allowed.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--reverse");
                Name = "reverse";
                Description = "Walk history forward instead of backward. Instead of showing the revision in which a line appeared, this shows the last revision in which a line has existed. This requires a range of revision like START..END where the path to blame exists in START. git blame --reverse START is taken as git blame --reverse START..HEAD for convenience.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--contents");
                Name = "contents";
                Description = "When <rev> is not specified, the command annotates the changes starting backwards from the working tree copy. This flag makes the command pretend as if the working tree copy has the contents of the named file (specify - to make the command read from the standard input).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--date");
                Name = "date";
                Description = "Specifies the format used to output dates. If --date is not provided, the value of the blame.date config variable is used. If the blame.date config variable is also not set, the iso format is used. For supported values, see the discussion of the --date option at git-log1.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-C");
                Name = "C";
                Description = "In addition to -M, detect lines moved or copied from other files that were modified in the same commit. This is useful when you reorganize your program and move code around across files. When this option is given twice, the command additionally looks for copies from other files in the commit that creates the file. When this option is given three times, the command additionally looks for copies from other files in any commit.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--ignore-rev");
                Name = "ignore-rev";
                Description = "Ignore changes made by the revision when assigning blame, as if the change never happened. Lines that were changed or added by an ignored commit will be blamed on the previous commit that changed that line or nearby lines. This option may be specified multiple times to ignore more than one revision. If the blame.markIgnoredLines config option is set, then lines that were changed by an ignored commit and attributed to another commit will be marked with a ? in the blame output. If the blame.markUnblamableLines config option is set, then those lines touched by an ignored commit that we could not attribute to another revision are marked with a *.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--ignore-revs-file");
                Name = "ignore-revs-file";
                Description = "Ignore revisions listed in file, which must be in the same format as an fsck.skipList. This option may be repeated, and these files will be processed after any files specified with the blame.ignoreRevsFile config option. An empty file name, `"`", will clear the list of revs from previously processed files.";
                Source = $???;
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
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("cherry-pick");
        Name = "cherry-pick";
        Description = "Apply the changes introduced by some existing commits";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Commits to cherry-pick. For a more complete list of ways to spell commits, see gitrevisions7. Sets of commits can be passed but no traversal is done by default, as if the --no-walk option was specified, see git-rev-list1. Note that specifying a range will feed all <commit>… arguments to a single revision walk (see a later example that uses maint master..next).";
                Source = $???;
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
                Source = $???;
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
            [FlagParameter]@{
                Keys = @("--mainline parent-number", "-m parent-number");
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--strategy-option", "-X");
                Name = "strategy-option";
                Description = "Pass the merge strategy-specific option through to the merge strategy. See git-merge1 for details.";
                Source = $???;
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
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("revert");
        Name = "revert";
        Description = "Revert some existing commits";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Commits to revert. For a more complete list of ways to spell commit names, see gitrevisions7. Sets of commits can also be given but no traversal is done by default, see git-rev-list1 and its --no-walk option.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--edit", "-e");
                Name = "edit";
                Description = "With this option, git revert will let you edit the commit message prior to committing the revert. This is the default if you run the command from a terminal.";
                Condition = [ExclusiveParameterCondition]::new("no-edit");
            },
            [FlagParameter]@{
                Keys = @("--mainline parent-number", "-m parent-number");
                Name = "mainline parent-number";
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--strategy-option", "-X");
                Name = "strategy-option";
                Description = "Pass the merge strategy-specific option through to the merge strategy. See git-merge1 for details.";
                Source = $???;
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
        ),
    },
﻿    [CommandParameter]@{
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color");
                Name = "color";
                Description = "Respect any colors specified in the --format option. The <when> field must be one of always, never, or auto (if <when> is absent, behave as if always was given).";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-contains");
            },
            [ValueParameter]@{
                Keys = @("--no-contains");
                Name = "no-contains";
                Description = "Only list tags which don’t contain the specified commit (HEAD if not specified). Implies --list.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("contains");
            },
            [ValueParameter]@{
                Keys = @("--merged");
                Name = "merged";
                Description = "Only list tags whose commits are reachable from the specified commit (HEAD if not specified).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-merged");
            },
            [ValueParameter]@{
                Keys = @("--no-merged");
                Name = "no-merged";
                Description = "Only list tags whose commits are not reachable from the specified commit (HEAD if not specified).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("merged");
            },
            [ValueParameter]@{
                Keys = @("--points-at");
                Name = "points-at";
                Description = "Only list tags of the given object (HEAD if not specified). Implies --list.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--message", "-m");
                Name = "message";
                Description = "Use the given tag message (instead of prompting). If multiple -m options are given, their values are concatenated as separate paragraphs. Implies -a if none of -a, -s, or -u <keyid> is given.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--file", "-F");
                Name = "file";
                Description = "Take the tag message from the given file. Use - to read the message from the standard input. Implies -a if none of -a, -s, or -u <keyid> is given.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The name of the tag to create, delete, or describe. The new tag name must pass all checks defined by git-check-ref-format1. Some of these checks may restrict the characters allowed in a tag name.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("", "");
                Name = "
        ";
                Description = "The object that the new tag will refer to, usually a commit. Defaults to HEAD.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
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
                Keys = @("-L :", "-L");
                Name = "L :";
                Description = "Annotate only the line range given by <start>,<end>, or by the function name regex <funcname>. May be specified multiple times. Overlapping ranges are allowed.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--reverse");
                Name = "reverse";
                Description = "Walk history forward instead of backward. Instead of showing the revision in which a line appeared, this shows the last revision in which a line has existed. This requires a range of revision like START..END where the path to blame exists in START. git blame --reverse START is taken as git blame --reverse START..HEAD for convenience.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--contents");
                Name = "contents";
                Description = "When <rev> is not specified, the command annotates the changes starting backwards from the working tree copy. This flag makes the command pretend as if the working tree copy has the contents of the named file (specify - to make the command read from the standard input).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--date");
                Name = "date";
                Description = "Specifies the format used to output dates. If --date is not provided, the value of the blame.date config variable is used. If the blame.date config variable is also not set, the iso format is used. For supported values, see the discussion of the --date option at git-log1.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-C");
                Name = "C";
                Description = "In addition to -M, detect lines moved or copied from other files that were modified in the same commit. This is useful when you reorganize your program and move code around across files. When this option is given twice, the command additionally looks for copies from other files in the commit that creates the file. When this option is given three times, the command additionally looks for copies from other files in any commit.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--ignore-rev");
                Name = "ignore-rev";
                Description = "Ignore changes made by the revision when assigning blame, as if the change never happened. Lines that were changed or added by an ignored commit will be blamed on the previous commit that changed that line or nearby lines. This option may be specified multiple times to ignore more than one revision. If the blame.markIgnoredLines config option is set, then lines that were changed by an ignored commit and attributed to another commit will be marked with a ? in the blame output. If the blame.markUnblamableLines config option is set, then those lines touched by an ignored commit that we could not attribute to another revision are marked with a *.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--ignore-revs-file");
                Name = "ignore-revs-file";
                Description = "Ignore revisions listed in file, which must be in the same format as an fsck.skipList. This option may be repeated, and these files will be processed after any files specified with the blame.ignoreRevsFile config option. An empty file name, `"`", will clear the list of revs from previously processed files.";
                Source = $???;
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
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("apply");
        Name = "apply";
        Description = "Apply a patch to files and/or to the index";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The files to read the patch from. - can be used to read from the standard input.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-C");
                Name = "C";
                Description = "Ensure at least <n> lines of surrounding context match before and after each change. When fewer lines of surrounding context exist they all must match. By default no context is ever ignored.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--include");
                Name = "include";
                Description = "Apply changes to files matching the given path pattern. This can be useful when importing patchsets, where you want to include certain files or directories.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--unsafe-paths");
                Name = "unsafe-paths";
                Description = "By default, a patch that affects outside the working area (either a Git controlled working tree, or the current working directory when `"git apply`" is used as a replacement of GNU patch) is rejected as a mistake (or a mischief).";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("archimport");
        Name = "archimport";
        Description = "Import a GNU Arch repository into Git";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-h");
                Name = "h";
                Description = "Display usage.";
            },
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Verbose output.";
            },
            [FlagParameter]@{
                Keys = @("-T");
                Name = "T";
                Description = "Many tags. Will create a tag for every commit, reflecting the commit name in the Arch repository.";
            },
            [FlagParameter]@{
                Keys = @("-f");
                Name = "f";
                Description = "Use the fast patchset import strategy. This can be significantly faster for large trees, but cannot handle directory renames or permissions changes. The default strategy is slow and safe.";
            },
            [FlagParameter]@{
                Keys = @("-o");
                Name = "o";
                Description = "Use this for compatibility with old-style branch names used by earlier versions of git archimport. Old-style branch names were category--branch, whereas new-style branch names are archive,category--branch--version. In both cases, names given on the command-line will override the automatically-generated ones.";
            },
            [ValueParameter]@{
                Keys = @("-D");
                Name = "D";
                Description = "Follow merge ancestry and attempt to import trees that have been merged from. Specify a depth greater than 1 if patch logs have been pruned.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-a");
                Name = "a";
                Description = "Attempt to auto-register archives at http://mirrors.sourcecontrol.net This is particularly useful with the -D option.";
            },
            [ValueParameter]@{
                Keys = @("-t");
                Name = "t";
                Description = "Override the default tempdir.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Archive/branch identifier in a format that tla log understands.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("archive");
        Name = "archive";
        Description = "Create an archive of files from a named tree";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--format");
                Name = "format";
                Description = "Format of the resulting archive: tar or zip. If this option is not given, and the output file is specified, the format is inferred from the filename if possible (e.g. writing to `"foo.zip`" makes the output to be in the zip format). Otherwise the output format is tar.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output", "-o");
                Name = "output";
                Description = "Write the archive to <file> instead of stdout.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--add-file");
                Name = "add-file";
                Description = "Add a non-tracked file to the archive. Can be repeated to add multiple files. The path of the file in the archive is built by concatenating the value for --prefix (if any) and the basename of <file>.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--worktree-attributes");
                Name = "worktree-attributes";
                Description = "Look for attributes in .gitattributes files in the working tree as well (see ).";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "This can be any options that the archiver backend understands. See next section.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--remote");
                Name = "remote";
                Description = "Instead of making a tar archive from the local repository, retrieve a tar archive from a remote repository. Note that the remote repository may place restrictions on which sha1 expressions may be allowed in <tree-ish>. See git-upload-archive1 for details.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--exec");
                Name = "exec";
                Description = "Used with --remote to specify the path to the git-upload-archive on the remote side.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The tree or commit to produce an archive for.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Without an optional path parameter, all files and subdirectories of the current working directory are included in the archive. If one or more paths are specified, only these are included.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
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
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("bundle");
        Name = "bundle";
        Description = "Move objects and refs by archive";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("create");
                Name = "create";
                Description = "Used to create a bundle named file. This requires the <git-rev-list-args> arguments to define the bundle contents. options contains the options specific to the git bundle create subcommand.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("verify");
                Name = "verify";
                Description = "Used to check that a bundle file is valid and will apply cleanly to the current repository. This includes checks on the bundle format itself as well as checking that the prerequisite commits exist and are fully linked in the current repository. git bundle prints a list of missing commits, if any, and exits with a non-zero status.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("list-heads");
                Name = "list-heads";
                Description = "Lists the references defined in the bundle. If followed by a list of references, only references matching those given are printed out.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("unbundle");
                Name = "unbundle";
                Description = "Passes the objects in the bundle to git index-pack for storage in the repository, then prints the names of all defined references. If a list of references is given, only references matching those in the list are printed. This command is really plumbing, intended to be called only by git fetch.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "A list of arguments, acceptable to git rev-parse and git rev-list (and containing a named ref, see SPECIFYING REFERENCES below), that specifies the specific objects and references to transport. For example, master~10..master causes the current master reference to be packaged along with all objects added since its 10th ancestor commit. There is no explicit limit to the number of references and objects that may be packaged.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "A list of references used to limit the references reported as available. This is principally of use to git fetch, which expects to receive only those references asked for and not necessarily everything in the pack (in this case, git bundle acts like git fetch-pack).";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless -q is specified. This flag forces progress status even if the standard error stream is not directed to a terminal.";
            },
            [FlagParameter]@{
                Keys = @("--all-progress");
                Name = "all-progress";
                Description = "When --stdout is specified then progress report is displayed during the object count and compression phases but inhibited during the write-out phase. The reason is that in some cases the output stream is directly linked to another command which may wish to display progress status of its own as it processes incoming pack data. This flag is like --progress except that it forces progress report for the write-out phase as well even if --stdout is used.";
            },
            [FlagParameter]@{
                Keys = @("--all-progress-implied");
                Name = "all-progress-implied";
                Description = "This is used to imply --all-progress whenever progress display is activated. Unlike --all-progress this flag doesn’t actually force any progress display by itself.";
            },
            [ValueParameter]@{
                Keys = @("--version");
                Name = "version";
                Description = "Specify the bundle version. Version 2 is the older format and can only be used with SHA-1 repositories; the newer version 3 contains capabilities that permit extensions. The default is the oldest supported format, based on the hash algorithm in use.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "This flag makes the command not to report its progress on the standard error stream.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("cat-file");
        Name = "cat-file";
        Description = "Provide content or type and size information for repository objects";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The name of the object to show. For a more complete list of ways to spell object names, see the `"SPECIFYING REVISIONS`" section in gitrevisions7.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-t");
                Name = "t";
                Description = "Instead of the content, show the object type identified by <object>.";
            },
            [FlagParameter]@{
                Keys = @("-s");
                Name = "s";
                Description = "Instead of the content, show the object size identified by <object>.";
            },
            [FlagParameter]@{
                Keys = @("-e");
                Name = "e";
                Description = "Exit with zero status if <object> exists and is a valid object. If <object> is of an invalid format exit with non-zero and emits an error on stderr.";
            },
            [FlagParameter]@{
                Keys = @("-p");
                Name = "p";
                Description = "Pretty-print the contents of <object> based on its type.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Typically this matches the real type of &lt;object&gt; but asking for a type that can trivially be dereferenced from the given &lt;object&gt; is also permitted. An example is to ask for a `"tree`" with &lt;object&gt; being a commit object that contains it, or to ask for a `"blob`" with <object> being a tag object that points at it.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--textconv");
                Name = "textconv";
                Description = "Show the content as transformed by a textconv filter. In this case, <object> has to be of the form <tree-ish>:<path>, or :<path> in order to apply the filter to the content recorded in the index at <path>.";
            },
            [FlagParameter]@{
                Keys = @("--filters");
                Name = "filters";
                Description = "Show the content as converted by the filters configured in the current working tree for the given <path> (i.e. smudge filters, end-of-line conversion, etc). In this case, <object> has to be of the form <tree-ish>:<path>, or :<path>.";
            },
            [ValueParameter]@{
                Keys = @("--path");
                Name = "path";
                Description = "For use with --textconv or --filters, to allow specifying an object name and a path separately, e.g. when it is difficult to figure out the revision from which the blob came.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--batch", "--batch");
                Name = "batch";
                Description = "Print object information and contents for each object provided on stdin. May not be combined with any other options or arguments except --textconv or --filters, in which case the input lines also need to specify the path, separated by whitespace. See the section BATCH OUTPUT below for details.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--batch-check", "--batch-check");
                Name = "batch-check";
                Description = "Print object information for each object provided on stdin. May not be combined with any other options or arguments except --textconv or --filters, in which case the input lines also need to specify the path, separated by whitespace. See the section BATCH OUTPUT below for details.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--batch-all-objects");
                Name = "batch-all-objects";
                Description = "Instead of reading a list of objects on stdin, perform the requested batch operation on all objects in the repository and any alternate object stores (not just reachable objects). Requires --batch or --batch-check be specified. By default, the objects are visited in order sorted by their hashes; see also --unordered below. Objects are presented as-is, without respecting the `"replace`" mechanism of git-replace1.";
            },
            [FlagParameter]@{
                Keys = @("--buffer");
                Name = "buffer";
                Description = "Normally batch output is flushed after each object is output, so that a process can interactively read and write from cat-file. With this option, the output uses normal stdio buffering; this is much more efficient when invoking --batch-check on a large number of objects.";
            },
            [FlagParameter]@{
                Keys = @("--unordered");
                Name = "unordered";
                Description = "When --batch-all-objects is in use, visit objects in an order which may be more efficient for accessing the object contents than hash order. The exact details of the order are unspecified, but if you do not require a specific order, this should generally result in faster output, especially with --batch. Note that cat-file will still show each object only once, even if it is stored multiple times in the repository.";
            },
            [FlagParameter]@{
                Keys = @("--allow-unknown-type");
                Name = "allow-unknown-type";
                Description = "Allow -s or -t to query broken/corrupt objects of unknown type.";
            },
            [FlagParameter]@{
                Keys = @("--follow-symlinks");
                Name = "follow-symlinks";
                Description = "With --batch or --batch-check, follow symlinks inside the repository when requesting objects with extended SHA-1 expressions of the form tree-ish:path-in-tree. Instead of providing output about the link itself, provide output about the linked-to object. If a symlink points outside the tree-ish (e.g. a link to /foo or a root-level link to ../foo), the portion of the link which is outside the tree will be printed.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("check-attr");
        Name = "check-attr";
        Description = "Display gitattributes information";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-a, --all");
                Name = "a, --all";
                Description = "List all attributes that are associated with the specified paths. If this option is used, then unspecified attributes will not be included in the output.";
            },
            [FlagParameter]@{
                Keys = @("--cached");
                Name = "cached";
                Description = "Consider .gitattributes in the index only, ignoring the working tree.";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Read pathnames from the standard input, one per line, instead of from the command-line.";
            },
            [FlagParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "The output format is modified to be machine-parsable. If --stdin is also given, input paths are separated with a NUL character instead of a linefeed character.";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Interpret all preceding arguments as attributes and all following arguments as path names.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("check-ignore");
        Name = "check-ignore";
        Description = "Debug gitignore / exclude files";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-q, --quiet");
                Name = "q, --quiet";
                Description = "Don’t output anything, just set exit status. This is only valid with a single pathname.";
            },
            [FlagParameter]@{
                Keys = @("-v, --verbose");
                Name = "v, --verbose";
                Description = "Instead of printing the paths that are excluded, for each path that matches an exclude pattern, print the exclude pattern together with the path. (Matching an exclude pattern usually means the path is excluded, but if the pattern begins with ! then it is a negated pattern and matching it means the path is NOT excluded.)";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Read pathnames from the standard input, one per line, instead of from the command-line.";
            },
            [FlagParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "The output format is modified to be machine-parsable (see below). If --stdin is also given, input paths are separated with a NUL character instead of a linefeed character.";
            },
            [FlagParameter]@{
                Keys = @("-n, --non-matching");
                Name = "n, --non-matching";
                Description = "Show given paths which don’t match any pattern. This only makes sense when --verbose is enabled, otherwise it would not be possible to distinguish between paths which match a pattern and those which don’t.";
            },
            [FlagParameter]@{
                Keys = @("--no-index");
                Name = "no-index";
                Description = "Don’t look in the index when undertaking the checks. This can be used to debug why a path became tracked by e.g. git add . and was not ignored by the rules as expected by the user or when developing patterns including negation to match a path previously added with git add -f.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("check-mailmap");
        Name = "check-mailmap";
        Description = "Show canonical names and email addresses of contacts";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Read contacts, one per line, from the standard input after exhausting contacts provided on the command-line.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("check-ref-format");
        Name = "check-ref-format";
        Description = "Ensures that a reference name is well formed";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--allow-onelevel");
                Name = "allow-onelevel";
                Description = "Controls whether one-level refnames are accepted (i.e., refnames that do not contain multiple /-separated components). The default is --no-allow-onelevel.";
                Condition = [ExclusiveParameterCondition]::new("no-allow-onelevel");
            },
            [FlagParameter]@{
                Keys = @("--no-allow-onelevel");
                Name = "no-allow-onelevel";
                Description = "Controls whether one-level refnames are accepted (i.e., refnames that do not contain multiple /-separated components). The default is --no-allow-onelevel.";
                Condition = [ExclusiveParameterCondition]::new("allow-onelevel");
            },
            [FlagParameter]@{
                Keys = @("--refspec-pattern");
                Name = "refspec-pattern";
                Description = "Interpret <refname> as a reference name pattern for a refspec (as used with remote repositories). If this option is enabled, <refname> is allowed to contain a single * in the refspec (e.g., foo/bar*/baz or foo/bar*baz/ but not foo/bar*/baz*).";
            },
            [FlagParameter]@{
                Keys = @("--normalize");
                Name = "normalize";
                Description = "Normalize refname by removing any leading slash (/) characters and collapsing runs of adjacent slashes between name components into a single slash. If the normalized refname is valid then print it to standard output and exit with a status of 0, otherwise exit with a non-zero status. (--print is a deprecated way to spell --normalize.)";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("checkout-index");
        Name = "checkout-index";
        Description = "Copy files from the index to the working tree";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--index", "-u");
                Name = "index";
                Description = "update stat information for the checked out entries in the index file.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "be quiet if files exist or are not in the index";
            },
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "forces overwrite of existing files";
            },
            [FlagParameter]@{
                Keys = @("--all", "-a");
                Name = "all";
                Description = "checks out all files in the index. Cannot be used together with explicit filenames.";
            },
            [FlagParameter]@{
                Keys = @("--no-create", "-n");
                Name = "no-create";
                Description = "Don’t checkout new files, only refresh files already checked out.";
            },
            [ValueParameter]@{
                Keys = @("--prefix");
                Name = "prefix";
                Description = "When creating files, prepend <string> (usually a directory including a trailing /)";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--stage");
                Name = "stage";
                Description = "Instead of checking out unmerged entries, copy out the files from named stage. <number> must be between 1 and 3. Note: --stage=all automatically implies --temp.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--temp");
                Name = "temp";
                Description = "Instead of copying the files to the working directory write the content to temporary files. The temporary name associations will be written to stdout.";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Instead of taking list of paths from the command line, read list of paths from the standard input. Paths are separated by LF (i.e. one path per line) by default.";
            },
            [FlagParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "Only meaningful with --stdin; paths are separated with NUL character instead of LF.";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("cherry");
        Name = "cherry";
        Description = "Find commits yet to be applied to upstream";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Show the commit subjects next to the SHA1s.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Upstream branch to search for equivalent commits. Defaults to the upstream branch of HEAD.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Working branch; defaults to HEAD.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Do not report commits up to (and including) limit.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("citool");
        Name = "citool";
        Description = "Graphical alternative to git-commit";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("clean");
        Name = "clean";
        Description = "Remove untracked files from the working tree";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-d");
                Name = "d";
                Description = "Normally, when no <path> is specified, git clean will not recurse into untracked directories to avoid removing too much. Specify -d to have it recurse into such directories as well. If any paths are specified, -d is irrelevant; all untracked files matching the specified paths (with exceptions for nested git directories mentioned under --force) will be removed.";
            },
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "If the Git configuration variable clean.requireForce is not set to false, git clean will refuse to delete files or directories unless given -f or -i. Git will refuse to modify untracked nested git repositories (directories with a .git subdirectory) unless a second -f is given.";
            },
            [FlagParameter]@{
                Keys = @("--interactive", "-i");
                Name = "interactive";
                Description = "Show what would be done and clean files interactively. See “Interactive mode” for details.";
            },
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "Don’t actually remove anything, just show what would be done.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Be quiet, only report errors, but not the files that are successfully removed.";
            },
            [ValueParameter]@{
                Keys = @("--exclude", "-e");
                Name = "exclude";
                Description = "Use the given exclude pattern in addition to the standard ignore rules (see gitignore5).";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-x");
                Name = "x";
                Description = "Don’t use the standard ignore rules (see gitignore5), but still use the ignore rules given with -e options from the command line. This allows removing all untracked files, including build products. This can be used (possibly in conjunction with git restore or git reset) to create a pristine working directory to test a clean build.";
            },
            [FlagParameter]@{
                Keys = @("-X");
                Name = "X";
                Description = "Remove only files ignored by Git. This may be useful to rebuild everything from scratch, but keep manually created files.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("column");
        Name = "column";
        Description = "Display data in columns";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--command");
                Name = "command";
                Description = "Look up layout mode using configuration variable column.<name> and column.ui.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--mode");
                Name = "mode";
                Description = "Specify layout mode. See configuration variable column.ui for option syntax in git-config1.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--raw-mode");
                Name = "raw-mode";
                Description = "Same as --mode but take mode encoded as a number. This is mainly used by other commands that have already parsed layout mode.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--width");
                Name = "width";
                Description = "Specify the terminal width. By default git column will detect the terminal width, or fall back to 80 if it is unable to do so.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--indent");
                Name = "indent";
                Description = "String to be printed at the beginning of each line.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--nl");
                Name = "nl";
                Description = "String to be printed at the end of each line, including newline character.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--padding");
                Name = "padding";
                Description = "The number of spaces between columns. One space by default.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("commit-graph");
        Name = "commit-graph";
        Description = "Write and verify Git commit-graph files";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--object-dir");
                Name = "object-dir";
                Description = "Use given directory for the location of packfiles and commit-graph file. This parameter exists to specify the location of an alternate that only has the objects directory, not a full .git directory. The commit-graph file is expected to be in the <dir>/info directory and the packfiles are expected to be in <dir>/pack. If the directory could not be made into an absolute path, or does not match any known object directory, git commit-graph ... will exit with non-zero status.";
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Turn progress on/off explicitly. If neither is specified, progress is shown if standard error is connected to a terminal.";
                Condition = [ExclusiveParameterCondition]::new("no-progress");
            },
            [FlagParameter]@{
                Keys = @("--no-progress");
                Name = "no-progress";
                Description = "Turn progress on/off explicitly. If neither is specified, progress is shown if standard error is connected to a terminal.";
                Condition = [ExclusiveParameterCondition]::new("progress");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("commit-tree");
        Name = "commit-tree";
        Description = "Create a new commit object";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "An existing tree object.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-p");
                Name = "p";
                Description = "Each -p indicates the id of a parent commit object.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-m");
                Name = "m";
                Description = "A paragraph in the commit log message. This can be given more than once and each <message> becomes its own paragraph.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-F");
                Name = "F";
                Description = "Read the commit log message from the given file. Use - to read from the standard input. This can be given more than once and the content of each file becomes its own paragraph.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--gpg-sign", "-S");
                Name = "gpg-sign";
                Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand a --gpg-sign option given earlier on the command line.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-gpg-sign");
            },
            [FlagParameter]@{
                Keys = @("--no-gpg-sign");
                Name = "no-gpg-sign";
                Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand a --gpg-sign option given earlier on the command line.";
                Condition = [ExclusiveParameterCondition]::new("gpg-sign");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("config");
        Name = "config";
        Description = "Get and set repository or global options";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("count-objects");
        Name = "count-objects";
        Description = "Count unpacked number of objects and their disk consumption";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Report in more detail:";
            },
            [FlagParameter]@{
                Keys = @("--human-readable", "-H");
                Name = "human-readable";
                Description = "Print sizes in human readable format";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("credential-cache--daemon");
        Name = "credential-cache--daemon";
        Description = "Temporarily store user credentials in memory";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("credential-cache");
        Name = "credential-cache";
        Description = "Helper to temporarily store passwords in memory";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--timeout");
                Name = "timeout";
                Description = "Number of seconds to cache credentials (default: 900).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--socket");
                Name = "socket";
                Description = "Use <path> to contact a running cache daemon (or start a new cache daemon if one is not started). Defaults to $XDG_CACHE_HOME/git/credential/socket unless ~/.git-credential-cache/ exists in which case ~/.git-credential-cache/socket is used instead. If your home directory is on a network-mounted filesystem, you may need to change this to a local filesystem. You must specify an absolute path.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("credential-store");
        Name = "credential-store";
        Description = "Helper to store credentials on disk";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--file");
                Name = "file";
                Description = "Use <path> to lookup and store credentials. The file will have its filesystem permissions set to prevent other users on the system from reading it, but will not be encrypted or otherwise protected. If not specified, credentials will be searched for from ~/.git-credentials and $XDG_CONFIG_HOME/git/credentials, and credentials will be written to ~/.git-credentials if it exists, or $XDG_CONFIG_HOME/git/credentials if it exists and the former does not. See also .";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("credential");
        Name = "credential";
        Description = "Retrieve and store user credentials";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("cvsexportcommit");
        Name = "cvsexportcommit";
        Description = "Export a single commit to a CVS checkout";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-c");
                Name = "c";
                Description = "Commit automatically if the patch applied cleanly. It will not commit if any hunks fail to apply or there were other problems.";
            },
            [FlagParameter]@{
                Keys = @("-p");
                Name = "p";
                Description = "Be pedantic (paranoid) when applying patches. Invokes patch with --fuzz=0";
            },
            [FlagParameter]@{
                Keys = @("-a");
                Name = "a";
                Description = "Add authorship information. Adds Author line, and Committer (if different from Author) to the message.";
            },
            [FlagParameter]@{
                Keys = @("-d");
                Name = "d";
                Description = "Set an alternative CVSROOT to use. This corresponds to the CVS -d parameter. Usually users will not want to set this, except if using CVS in an asymmetric fashion.";
            },
            [FlagParameter]@{
                Keys = @("-f");
                Name = "f";
                Description = "Force the merge even if the files are not up to date.";
            },
            [FlagParameter]@{
                Keys = @("-P");
                Name = "P";
                Description = "Force the parent commit, even if it is not a direct parent.";
            },
            [FlagParameter]@{
                Keys = @("-m");
                Name = "m";
                Description = "Prepend the commit message with the provided prefix. Useful for patch series and the like.";
            },
            [FlagParameter]@{
                Keys = @("-u");
                Name = "u";
                Description = "Update affected files from CVS repository before attempting export.";
            },
            [FlagParameter]@{
                Keys = @("-k");
                Name = "k";
                Description = "Reverse CVS keyword expansion (e.g. $Revision: 1.2.3.4$ becomes $Revision$) in working CVS checkout before applying patch.";
            },
            [FlagParameter]@{
                Keys = @("-w");
                Name = "w";
                Description = "Specify the location of the CVS checkout to use for the export. This option does not require GIT_DIR to be set before execution if the current directory is within a Git repository. The default is the value of cvsexportcommit.cvsdir.";
            },
            [FlagParameter]@{
                Keys = @("-W");
                Name = "W";
                Description = "Tell cvsexportcommit that the current working directory is not only a Git checkout, but also the CVS checkout. Therefore, Git will reset the working directory to the parent commit before proceeding.";
            },
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Verbose.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("cvsimport");
        Name = "cvsimport";
        Description = "Salvage your data out of another SCM people love to hate";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Verbosity: let cvsimport report what it is doing.";
            },
            [ValueParameter]@{
                Keys = @("-d");
                Name = "d";
                Description = "The root of the CVS archive. May be local (a simple path) or remote; currently, only the :local:, :ext: and :pserver: access methods are supported. If not given, git cvsimport will try to read it from CVS/Root. If no such file exists, it checks for the CVSROOT environment variable.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The CVS module you want to import. Relative to <CVSROOT>. If not given, git cvsimport tries to read it from CVS/Repository.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-C");
                Name = "C";
                Description = "The Git repository to import to. If the directory doesn’t exist, it will be created. Default is the current directory.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-r");
                Name = "r";
                Description = "The Git remote to import this CVS repository into. Moves all CVS branches into remotes/<remote>/<branch> akin to the way git clone uses origin by default.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-o");
                Name = "o";
                Description = "When no remote is specified (via -r) the HEAD branch from CVS is imported to the origin branch within the Git repository, as HEAD already has a special meaning for Git. When a remote is specified the HEAD branch is named remotes/<remote>/master mirroring git clone behaviour. Use this option if you want to import into a different branch.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-i");
                Name = "i";
                Description = "Import-only: don’t perform a checkout after importing. This option ensures the working directory and index remain untouched and will not create them if they do not exist.";
            },
            [FlagParameter]@{
                Keys = @("-k");
                Name = "k";
                Description = "Kill keywords: will extract files with -kk from the CVS archive to avoid noisy changesets. Highly recommended, but off by default to preserve compatibility with early imported trees.";
            },
            [FlagParameter]@{
                Keys = @("-u");
                Name = "u";
                Description = "Convert underscores in tag and branch names to dots.";
            },
            [ValueParameter]@{
                Keys = @("-s");
                Name = "s";
                Description = "Substitute the character `"/`" in branch names with <subst>";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-p");
                Name = "p";
                Description = "Additional options for cvsps. The options -u and -A are implicit and should not be used here.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "Pass the timestamp fuzz factor to cvsps, in seconds. If unset, cvsps defaults to 300s.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-P");
                Name = "P";
                Description = "Instead of calling cvsps, read the provided cvsps output file. Useful for debugging or when cvsps is being handled outside cvsimport.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-m");
                Name = "m";
                Description = "Attempt to detect merges based on the commit message. This option will enable default regexes that try to capture the source branch name from the commit message.";
            },
            [ValueParameter]@{
                Keys = @("-M");
                Name = "M";
                Description = "Attempt to detect merges based on the commit message with a custom regex. It can be used with -m to enable the default regexes as well. You must escape forward slashes.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-S");
                Name = "S";
                Description = "Skip paths matching the regex.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-a");
                Name = "a";
                Description = "Import all commits, including recent ones. cvsimport by default skips commits that have a timestamp less than 10 minutes ago.";
            },
            [ValueParameter]@{
                Keys = @("-L");
                Name = "L";
                Description = "Limit the number of commits imported. Workaround for cases where cvsimport leaks memory.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-A");
                Name = "A";
                Description = "CVS by default uses the Unix username when writing its commit logs. Using this option and an author-conv-file maps the name recorded in CVS to author name, e-mail and optional time zone:";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-R");
                Name = "R";
                Description = "Generate a $GIT_DIR/cvs-revisions file containing a mapping from CVS revision numbers to newly-created Git commit IDs. The generated file will contain one line for each (filename, revision) pair imported; each line will look like";
            },
            [FlagParameter]@{
                Keys = @("-h");
                Name = "h";
                Description = "Print a short usage message and exit.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("cvsserver");
        Name = "cvsserver";
        Description = "A CVS server emulator for Git";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--base-path");
                Name = "base-path";
                Description = "Prepend path to requested CVSROOT";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--strict-paths");
                Name = "strict-paths";
                Description = "Don’t allow recursing into subdirectories";
            },
            [FlagParameter]@{
                Keys = @("--export-all");
                Name = "export-all";
                Description = "Don’t check for gitcvs.enabled in config. You also have to specify a list of allowed directories (see below) if you want to use this option.";
            },
            [FlagParameter]@{
                Keys = @("--version", "-V");
                Name = "version";
                Description = "Print version information and exit";
            },
            [FlagParameter]@{
                Keys = @("--help", "-H", "-h");
                Name = "help";
                Description = "Print usage information and exit";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "You can specify a list of allowed directories. If no directories are given, all are allowed. This is an additional restriction, gitcvs access still needs to be enabled by the gitcvs.enabled config option unless --export-all was given, too.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("describe");
        Name = "describe";
        Description = "Give an object a human readable name based on an available ref";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Commit-ish object names to describe. Defaults to HEAD if omitted.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--broken", "--dirty");
                Name = "broken";
                Description = "Describe the state of the working tree. When the working tree matches HEAD, the output is the same as `"git describe HEAD`". If the working tree has local modification `"-dirty`" is appended to it. If a repository is corrupt and Git cannot determine if there is local modification, Git will error out, unless ‘--broken’ is given, which appends the suffix `"-broken`" instead.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "Instead of using only the annotated tags, use any ref found in refs/ namespace. This option enables matching any known branch, remote-tracking branch, or lightweight tag.";
            },
            [FlagParameter]@{
                Keys = @("--tags");
                Name = "tags";
                Description = "Instead of using only the annotated tags, use any tag found in refs/tags namespace. This option enables matching a lightweight (non-annotated) tag.";
            },
            [FlagParameter]@{
                Keys = @("--contains");
                Name = "contains";
                Description = "Instead of finding the tag that predates the commit, find the tag that comes after the commit, and thus contains it. Automatically implies --tags.";
            },
            [ValueParameter]@{
                Keys = @("--abbrev");
                Name = "abbrev";
                Description = "Instead of using the default number of hexadecimal digits (which will vary according to the number of objects in the repository with a default of 7) of the abbreviated object name, use <n> digits, or as many digits as needed to form a unique object name. An <n> of 0 will suppress long format, only showing the closest tag.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--candidates");
                Name = "candidates";
                Description = "Instead of considering only the 10 most recent tags as candidates to describe the input commit-ish consider up to <n> candidates. Increasing <n> above 10 will take slightly longer but may produce a more accurate result. An <n> of 0 will cause only exact matches to be output.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--exact-match");
                Name = "exact-match";
                Description = "Only output exact matches (a tag directly references the supplied commit). This is a synonym for --candidates=0.";
            },
            [FlagParameter]@{
                Keys = @("--debug");
                Name = "debug";
                Description = "Verbosely display information about the searching strategy being employed to standard error. The tag name will still be printed to standard out.";
            },
            [FlagParameter]@{
                Keys = @("--long");
                Name = "long";
                Description = "Always output the long format (the tag, the number of commits and the abbreviated commit name) even when it matches a tag. This is useful when you want to see parts of the commit object name in `"describe`" output, even when the commit in question happens to be a tagged version. Instead of just emitting the tag name, it will describe such a commit as v1.2-0-gdeadbee (0th commit since tag v1.2 that points at object deadbee….).";
            },
            [ValueParameter]@{
                Keys = @("--match");
                Name = "match";
                Description = "Only consider tags matching the given glob(7) pattern, excluding the `"refs/tags/`" prefix. If used with --all, it also considers local branches and remote-tracking references matching the pattern, excluding respectively `"refs/heads/`" and `"refs/remotes/`" prefix; references of other types are never considered. If given multiple times, a list of patterns will be accumulated, and tags matching any of the patterns will be considered. Use --no-match to clear and reset the list of patterns.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--exclude");
                Name = "exclude";
                Description = "Do not consider tags matching the given glob(7) pattern, excluding the `"refs/tags/`" prefix. If used with --all, it also does not consider local branches and remote-tracking references matching the pattern, excluding respectively `"refs/heads/`" and `"refs/remotes/`" prefix; references of other types are never considered. If given multiple times, a list of patterns will be accumulated and tags matching any of the patterns will be excluded. When combined with --match a tag will be considered when it matches at least one --match pattern and does not match any of the --exclude patterns. Use --no-exclude to clear and reset the list of patterns.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--always");
                Name = "always";
                Description = "Show uniquely abbreviated commit object as fallback.";
            },
            [FlagParameter]@{
                Keys = @("--first-parent");
                Name = "first-parent";
                Description = "Follow only the first parent commit upon seeing a merge commit. This is useful when you wish to not match tags on branches merged in the history of the target commit.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("diff-files");
        Name = "diff-files";
        Description = "Compares files in the working tree and the index";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--patch", "-u", "-p");
                Name = "patch";
                Description = "Generate patch (see section on generating patches).";
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output");
                Name = "output";
                Description = "Output to a specific file instead of stdout.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output-indicator-context", "--output-indicator-old", "--output-indicator-new");
                Name = "output-indicator-context";
                Description = "Specify the character used to indicate new, old or context lines in the generated patch. Normally they are +, - and ' ' respectively.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--raw");
                Name = "raw";
                Description = "Generate the diff in raw format. This is the default.";
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-algorithm");
                Name = "diff-algorithm";
                Description = "Choose a diff algorithm. The variants are as follows:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--stat");
                Name = "stat";
                Description = "Generate a diffstat. By default, as much space as necessary will be used for the filename part, and the rest for the graph part. Maximum width defaults to terminal width, or 80 columns if not connected to a terminal, and can be overridden by <width>. The width of the filename part can be limited by giving another width <name-width> after a comma. The width of the graph part can be limited by using --stat-graph-width=<width> (affects all commands generating a stat graph) or by setting diff.statGraphWidth=<width> (does not affect git format-patch). By giving a third parameter <count>, you can limit the output to the first <count> lines, followed by ... if there are more.";
                Source = $???;
            },
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color");
                Name = "color";
                Description = "Show colored diff. --color (i.e. without =<when>) is the same as --color=always. <when> can be one of always, never, or auto.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-color");
            },
            [FlagParameter]@{
                Keys = @("--no-color");
                Name = "no-color";
                Description = "Turn off colored diff. It is the same as --color=never.";
                Condition = [ExclusiveParameterCondition]::new("color");
            },
            [ValueParameter]@{
                Keys = @("--color-moved");
                Name = "color-moved";
                Description = "Moved lines of code are colored differently. The <mode> defaults to no if the option is not given and to zebra if the option with no mode is given. The mode must be one of:";
                Source = $???;
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
                Description = "This configures how whitespace is ignored when performing the move detection for --color-moved. These modes can be given as a comma separated list:";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--word-diff-regex");
                Name = "word-diff-regex";
                Description = "Use <regex> to decide what a word is, instead of considering runs of non-whitespace to be a word. Also implies --word-diff unless it was already enabled.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color-words");
                Name = "color-words";
                Description = "Equivalent to --word-diff=color plus (if a regex was specified) --word-diff-regex=<regex>.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--break-rewrites", "-B");
                Name = "break-rewrites";
                Description = "Break complete rewrite changes into pairs of delete and create. This serves two purposes:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-renames", "-M");
                Name = "find-renames";
                Description = "Detect renames. If n is specified, it is a threshold on the similarity index (i.e. amount of addition/deletions compared to the file’s size). For example, -M90% means Git should consider a delete/add pair to be a rename if more than 90% of the file hasn’t changed. Without a % sign, the number is to be read as a fraction, with a decimal point before it. I.e., -M5 becomes 0.5, and is thus the same as -M50%. Similarly, -M05 is the same as -M5%. To limit detection to exact renames, use -M100%. The default similarity index is 50%.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-copies", "-C");
                Name = "find-copies";
                Description = "Detect copies as well as renames. See also --find-copies-harder. If n is specified, it has the same meaning as for -M<n>.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-filter");
                Name = "diff-filter";
                Description = "Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e. regular file, symlink, submodule, …) changed (T), are Unmerged (U), are Unknown (X), or have had their pairing Broken (B). Any combination of the filter characters (including none) can be used. When * (All-or-none) is added to the combination, all paths are selected if there is any file that matches other criteria in the comparison; if there is no file that matches other criteria, nothing is selected.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-S");
                Name = "S";
                Description = "Look for differences that change the number of occurrences of the specified string (i.e. addition/deletion) in a file. Intended for the scripter’s use.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-G");
                Name = "G";
                Description = "Look for differences whose patch text contains added/removed lines that match <regex>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-object");
                Name = "find-object";
                Description = "Look for differences that change the number of occurrences of the specified object. Similar to -S, just the argument is different in that it doesn’t search for a specific string but for a specific object id.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--rotate-to", "--skip-to");
                Name = "rotate-to";
                Description = "Discard the files before the named <file> from the output (i.e. skip to), or move them to the end of the output (i.e. rotate to). These were invented primarily for use of the git difftool command, and may not be very useful otherwise.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--inter-hunk-context");
                Name = "inter-hunk-context";
                Description = "Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other. Defaults to diff.interHunkContext or 0 if the config option is unset.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--src-prefix");
                Name = "src-prefix";
                Description = "Show the given source prefix instead of `"a/`".";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--dst-prefix");
                Name = "dst-prefix";
                Description = "Show the given destination prefix instead of `"b/`".";
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ita-invisible-in-index");
                Name = "ita-invisible-in-index";
                Description = "By default entries added by `"git add -N`" appear as an existing empty file in `"git diff`" and a new file in `"git diff --cached`". This option makes the entry appear as a new file in `"git diff`" and non-existent in `"git diff --cached`". This option could be reverted with --ita-visible-in-index. Both options are experimental and could be removed in future.";
            },
            [FlagParameter]@{
                Keys = @("-0", "-3 --theirs", "-2 --ours", "-1 --base");
                Name = "0";
                Description = "Diff against the `"base`" version, `"our branch`" or `"their branch`" respectively. With these options, diffs for merged entries are not shown.";
            },
            [FlagParameter]@{
                Keys = @("--cc", "-c");
                Name = "cc";
                Description = "This compares stage 2 (our branch), stage 3 (their branch) and the working tree file and outputs a combined diff, similar to the way diff-tree shows a merge commit with these flags.";
            },
            [FlagParameter]@{
                Keys = @("-q");
                Name = "q";
                Description = "Remain silent even on nonexistent files";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("diff-index");
        Name = "diff-index";
        Description = "Compare a tree to the working tree or index";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--patch", "-u", "-p");
                Name = "patch";
                Description = "Generate patch (see section on generating patches).";
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output");
                Name = "output";
                Description = "Output to a specific file instead of stdout.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output-indicator-context", "--output-indicator-old", "--output-indicator-new");
                Name = "output-indicator-context";
                Description = "Specify the character used to indicate new, old or context lines in the generated patch. Normally they are +, - and ' ' respectively.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--raw");
                Name = "raw";
                Description = "Generate the diff in raw format. This is the default.";
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-algorithm");
                Name = "diff-algorithm";
                Description = "Choose a diff algorithm. The variants are as follows:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--stat");
                Name = "stat";
                Description = "Generate a diffstat. By default, as much space as necessary will be used for the filename part, and the rest for the graph part. Maximum width defaults to terminal width, or 80 columns if not connected to a terminal, and can be overridden by <width>. The width of the filename part can be limited by giving another width <name-width> after a comma. The width of the graph part can be limited by using --stat-graph-width=<width> (affects all commands generating a stat graph) or by setting diff.statGraphWidth=<width> (does not affect git format-patch). By giving a third parameter <count>, you can limit the output to the first <count> lines, followed by ... if there are more.";
                Source = $???;
            },
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color");
                Name = "color";
                Description = "Show colored diff. --color (i.e. without =<when>) is the same as --color=always. <when> can be one of always, never, or auto.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-color");
            },
            [FlagParameter]@{
                Keys = @("--no-color");
                Name = "no-color";
                Description = "Turn off colored diff. It is the same as --color=never.";
                Condition = [ExclusiveParameterCondition]::new("color");
            },
            [ValueParameter]@{
                Keys = @("--color-moved");
                Name = "color-moved";
                Description = "Moved lines of code are colored differently. The <mode> defaults to no if the option is not given and to zebra if the option with no mode is given. The mode must be one of:";
                Source = $???;
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
                Description = "This configures how whitespace is ignored when performing the move detection for --color-moved. These modes can be given as a comma separated list:";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--word-diff-regex");
                Name = "word-diff-regex";
                Description = "Use <regex> to decide what a word is, instead of considering runs of non-whitespace to be a word. Also implies --word-diff unless it was already enabled.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color-words");
                Name = "color-words";
                Description = "Equivalent to --word-diff=color plus (if a regex was specified) --word-diff-regex=<regex>.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--break-rewrites", "-B");
                Name = "break-rewrites";
                Description = "Break complete rewrite changes into pairs of delete and create. This serves two purposes:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-renames", "-M");
                Name = "find-renames";
                Description = "Detect renames. If n is specified, it is a threshold on the similarity index (i.e. amount of addition/deletions compared to the file’s size). For example, -M90% means Git should consider a delete/add pair to be a rename if more than 90% of the file hasn’t changed. Without a % sign, the number is to be read as a fraction, with a decimal point before it. I.e., -M5 becomes 0.5, and is thus the same as -M50%. Similarly, -M05 is the same as -M5%. To limit detection to exact renames, use -M100%. The default similarity index is 50%.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-copies", "-C");
                Name = "find-copies";
                Description = "Detect copies as well as renames. See also --find-copies-harder. If n is specified, it has the same meaning as for -M<n>.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-filter");
                Name = "diff-filter";
                Description = "Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e. regular file, symlink, submodule, …) changed (T), are Unmerged (U), are Unknown (X), or have had their pairing Broken (B). Any combination of the filter characters (including none) can be used. When * (All-or-none) is added to the combination, all paths are selected if there is any file that matches other criteria in the comparison; if there is no file that matches other criteria, nothing is selected.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-S");
                Name = "S";
                Description = "Look for differences that change the number of occurrences of the specified string (i.e. addition/deletion) in a file. Intended for the scripter’s use.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-G");
                Name = "G";
                Description = "Look for differences whose patch text contains added/removed lines that match <regex>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-object");
                Name = "find-object";
                Description = "Look for differences that change the number of occurrences of the specified object. Similar to -S, just the argument is different in that it doesn’t search for a specific string but for a specific object id.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--rotate-to", "--skip-to");
                Name = "rotate-to";
                Description = "Discard the files before the named <file> from the output (i.e. skip to), or move them to the end of the output (i.e. rotate to). These were invented primarily for use of the git difftool command, and may not be very useful otherwise.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--inter-hunk-context");
                Name = "inter-hunk-context";
                Description = "Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other. Defaults to diff.interHunkContext or 0 if the config option is unset.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--src-prefix");
                Name = "src-prefix";
                Description = "Show the given source prefix instead of `"a/`".";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--dst-prefix");
                Name = "dst-prefix";
                Description = "Show the given destination prefix instead of `"b/`".";
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ita-invisible-in-index");
                Name = "ita-invisible-in-index";
                Description = "By default entries added by `"git add -N`" appear as an existing empty file in `"git diff`" and a new file in `"git diff --cached`". This option makes the entry appear as a new file in `"git diff`" and non-existent in `"git diff --cached`". This option could be reverted with --ita-visible-in-index. Both options are experimental and could be removed in future.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The id of a tree object to diff against.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--cached");
                Name = "cached";
                Description = "Do not consider the on-disk file at all.";
            },
            [FlagParameter]@{
                Keys = @("--merge-base");
                Name = "merge-base";
                Description = "Instead of comparing <tree-ish> directly, use the merge base between <tree-ish> and HEAD instead. <tree-ish> must be a commit.";
            },
            [FlagParameter]@{
                Keys = @("-m");
                Name = "m";
                Description = "By default, files recorded in the index but not checked out are reported as deleted. This flag makes git diff-index say that all non-checked-out files are up to date.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("diff-tree");
        Name = "diff-tree";
        Description = "Compares the content and mode of blobs found via two tree objects";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--patch", "-u", "-p");
                Name = "patch";
                Description = "Generate patch (see section on generating patches).";
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output");
                Name = "output";
                Description = "Output to a specific file instead of stdout.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output-indicator-context", "--output-indicator-old", "--output-indicator-new");
                Name = "output-indicator-context";
                Description = "Specify the character used to indicate new, old or context lines in the generated patch. Normally they are +, - and ' ' respectively.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--raw");
                Name = "raw";
                Description = "Generate the diff in raw format. This is the default.";
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-algorithm");
                Name = "diff-algorithm";
                Description = "Choose a diff algorithm. The variants are as follows:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--stat");
                Name = "stat";
                Description = "Generate a diffstat. By default, as much space as necessary will be used for the filename part, and the rest for the graph part. Maximum width defaults to terminal width, or 80 columns if not connected to a terminal, and can be overridden by <width>. The width of the filename part can be limited by giving another width <name-width> after a comma. The width of the graph part can be limited by using --stat-graph-width=<width> (affects all commands generating a stat graph) or by setting diff.statGraphWidth=<width> (does not affect git format-patch). By giving a third parameter <count>, you can limit the output to the first <count> lines, followed by ... if there are more.";
                Source = $???;
            },
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
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color");
                Name = "color";
                Description = "Show colored diff. --color (i.e. without =<when>) is the same as --color=always. <when> can be one of always, never, or auto.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-color");
            },
            [FlagParameter]@{
                Keys = @("--no-color");
                Name = "no-color";
                Description = "Turn off colored diff. It is the same as --color=never.";
                Condition = [ExclusiveParameterCondition]::new("color");
            },
            [ValueParameter]@{
                Keys = @("--color-moved");
                Name = "color-moved";
                Description = "Moved lines of code are colored differently. The <mode> defaults to no if the option is not given and to zebra if the option with no mode is given. The mode must be one of:";
                Source = $???;
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
                Description = "This configures how whitespace is ignored when performing the move detection for --color-moved. These modes can be given as a comma separated list:";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--word-diff-regex");
                Name = "word-diff-regex";
                Description = "Use <regex> to decide what a word is, instead of considering runs of non-whitespace to be a word. Also implies --word-diff unless it was already enabled.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color-words");
                Name = "color-words";
                Description = "Equivalent to --word-diff=color plus (if a regex was specified) --word-diff-regex=<regex>.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--break-rewrites", "-B");
                Name = "break-rewrites";
                Description = "Break complete rewrite changes into pairs of delete and create. This serves two purposes:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-renames", "-M");
                Name = "find-renames";
                Description = "Detect renames. If n is specified, it is a threshold on the similarity index (i.e. amount of addition/deletions compared to the file’s size). For example, -M90% means Git should consider a delete/add pair to be a rename if more than 90% of the file hasn’t changed. Without a % sign, the number is to be read as a fraction, with a decimal point before it. I.e., -M5 becomes 0.5, and is thus the same as -M50%. Similarly, -M05 is the same as -M5%. To limit detection to exact renames, use -M100%. The default similarity index is 50%.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-copies", "-C");
                Name = "find-copies";
                Description = "Detect copies as well as renames. See also --find-copies-harder. If n is specified, it has the same meaning as for -M<n>.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-filter");
                Name = "diff-filter";
                Description = "Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e. regular file, symlink, submodule, …) changed (T), are Unmerged (U), are Unknown (X), or have had their pairing Broken (B). Any combination of the filter characters (including none) can be used. When * (All-or-none) is added to the combination, all paths are selected if there is any file that matches other criteria in the comparison; if there is no file that matches other criteria, nothing is selected.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-S");
                Name = "S";
                Description = "Look for differences that change the number of occurrences of the specified string (i.e. addition/deletion) in a file. Intended for the scripter’s use.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-G");
                Name = "G";
                Description = "Look for differences whose patch text contains added/removed lines that match <regex>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-object");
                Name = "find-object";
                Description = "Look for differences that change the number of occurrences of the specified object. Similar to -S, just the argument is different in that it doesn’t search for a specific string but for a specific object id.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--rotate-to", "--skip-to");
                Name = "rotate-to";
                Description = "Discard the files before the named <file> from the output (i.e. skip to), or move them to the end of the output (i.e. rotate to). These were invented primarily for use of the git difftool command, and may not be very useful otherwise.";
                Source = $???;
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
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--inter-hunk-context");
                Name = "inter-hunk-context";
                Description = "Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other. Defaults to diff.interHunkContext or 0 if the config option is unset.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--src-prefix");
                Name = "src-prefix";
                Description = "Show the given source prefix instead of `"a/`".";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--dst-prefix");
                Name = "dst-prefix";
                Description = "Show the given destination prefix instead of `"b/`".";
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ita-invisible-in-index");
                Name = "ita-invisible-in-index";
                Description = "By default entries added by `"git add -N`" appear as an existing empty file in `"git diff`" and a new file in `"git diff --cached`". This option makes the entry appear as a new file in `"git diff`" and non-existent in `"git diff --cached`". This option could be reverted with --ita-visible-in-index. Both options are experimental and could be removed in future.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The id of a tree object.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "If provided, the results are limited to a subset of files matching one of the provided pathspecs.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-r");
                Name = "r";
                Description = "recurse into sub-trees";
            },
            [FlagParameter]@{
                Keys = @("-t");
                Name = "t";
                Description = "show tree entry itself as well as subtrees. Implies -r.";
            },
            [FlagParameter]@{
                Keys = @("--root");
                Name = "root";
                Description = "When --root is specified the initial commit will be shown as a big creation event. This is equivalent to a diff against the NULL tree.";
            },
            [FlagParameter]@{
                Keys = @("--merge-base");
                Name = "merge-base";
                Description = "Instead of comparing the &lt;tree-ish&gt;s directly, use the merge base between the two &lt;tree-ish&gt;s as the `"before`" side. There must be two <tree-ish>s given and they must both be commits.";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "When --stdin is specified, the command does not take <tree-ish> arguments from the command line. Instead, it reads lines containing either two <tree>, one <commit>, or a list of <commit> from its standard input. (Use a single space as separator.)";
            },
            [FlagParameter]@{
                Keys = @("-m");
                Name = "m";
                Description = "By default, git diff-tree --stdin does not show differences for merge commits. With this flag, it shows differences to that commit from all of its parents. See also -c.";
            },
            [FlagParameter]@{
                Keys = @("-s");
                Name = "s";
                Description = "By default, git diff-tree --stdin shows differences, either in machine-readable form (without -p) or in patch form (with -p). This output can be suppressed. It is only useful with -v flag.";
            },
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "This flag causes git diff-tree --stdin to also show the commit message before the differences.";
            },
            [ValueParameter]@{
                Keys = @("--format", "--pretty");
                Name = "format";
                Description = "Pretty-print the contents of the commit logs in a given format, where <format> can be one of oneline, short, medium, full, fuller, reference, email, raw, format:<string> and tformat:<string>. When <format> is none of the above, and has %placeholder in it, it acts as if --pretty=tformat:<format> were given.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--abbrev-commit");
                Name = "abbrev-commit";
                Description = "Instead of showing the full 40-byte hexadecimal commit object name, show a prefix that names the object uniquely. `"--abbrev=&lt;n&gt;`" (which also modifies diff output, if it is displayed) option can be used to specify the minimum length of the prefix.";
                Condition = [ExclusiveParameterCondition]::new("no-abbrev-commit");
            },
            [FlagParameter]@{
                Keys = @("--no-abbrev-commit");
                Name = "no-abbrev-commit";
                Description = "Show the full 40-byte hexadecimal commit object name. This negates --abbrev-commit, either explicit or implied by other options such as `"--oneline`". It also overrides the log.abbrevCommit variable.";
                Condition = [ExclusiveParameterCondition]::new("abbrev-commit");
            },
            [FlagParameter]@{
                Keys = @("--oneline");
                Name = "oneline";
                Description = "This is a shorthand for `"--pretty=oneline --abbrev-commit`" used together.";
            },
            [ValueParameter]@{
                Keys = @("--encoding");
                Name = "encoding";
                Description = "Commit objects record the character encoding used for the log message in their encoding header; this option can be used to tell the command to re-code the commit log message in the encoding preferred by the user. For non plumbing commands this defaults to UTF-8. Note that if an object claims to be encoded in X and we are outputting in X, we will output the object verbatim; this means that invalid sequences in the original commit may be copied to the output. Likewise, if iconv(3) fails to convert the commit, we will quietly output the original object verbatim.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--expand-tabs", "--expand-tabs");
                Name = "expand-tabs";
                Description = "Perform a tab expansion (replace each tab with enough spaces to fill to the next display column that is multiple of <n>) in the log message before showing it in the output. --expand-tabs is a short-hand for --expand-tabs=8, and --no-expand-tabs is a short-hand for --expand-tabs=0, which disables tab expansion.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-expand-tabs");
            },
            [FlagParameter]@{
                Keys = @("--no-expand-tabs");
                Name = "no-expand-tabs";
                Description = "Perform a tab expansion (replace each tab with enough spaces to fill to the next display column that is multiple of <n>) in the log message before showing it in the output. --expand-tabs is a short-hand for --expand-tabs=8, and --no-expand-tabs is a short-hand for --expand-tabs=0, which disables tab expansion.";
                Condition = [ExclusiveParameterCondition]::new("expand-tabs");
            },
            [ValueParameter]@{
                Keys = @("--notes");
                Name = "notes";
                Description = "Show the notes (see git-notes1) that annotate the commit, when showing the commit log message. This is the default for git log, git show and git whatchanged commands when there is no --pretty, --format, or --oneline option given on the command line.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-notes");
            },
            [FlagParameter]@{
                Keys = @("--no-notes");
                Name = "no-notes";
                Description = "Do not show notes. This negates the above --notes option, by resetting the list of notes refs from which notes are shown. Options are parsed in the order given on the command line, so e.g. `"--notes --notes=foo --no-notes --notes=bar`" will only show notes from `"refs/notes/bar`".";
                Condition = [ExclusiveParameterCondition]::new("notes");
            },
            [ValueParameter]@{
                Keys = @("--standard-notes", "--show-notes");
                Name = "standard-notes";
                Description = "These options are deprecated. Use the above --notes/--no-notes options instead.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-standard-notes");
            },
            [FlagParameter]@{
                Keys = @("--no-standard-notes");
                Name = "no-standard-notes";
                Description = "These options are deprecated. Use the above --notes/--no-notes options instead.";
                Condition = [ExclusiveParameterCondition]::new("standard-notes");
            },
            [FlagParameter]@{
                Keys = @("--show-signature");
                Name = "show-signature";
                Description = "Check the validity of a signed commit object by passing the signature to gpg --verify and show the output.";
            },
            [FlagParameter]@{
                Keys = @("--no-commit-id");
                Name = "no-commit-id";
                Description = "git diff-tree outputs a line with the commit ID when applicable. This flag suppressed the commit ID output.";
            },
            [FlagParameter]@{
                Keys = @("-c");
                Name = "c";
                Description = "This flag changes the way a merge commit is displayed (which means it is useful only when the command is given one <tree-ish>, or --stdin). It shows the differences from each of the parents to the merge result simultaneously instead of showing pairwise diff between a parent and the result one at a time (which is what the -m option does). Furthermore, it lists only files which were modified from all parents.";
            },
            [FlagParameter]@{
                Keys = @("--cc");
                Name = "cc";
                Description = "This flag changes the way a merge commit patch is displayed, in a similar way to the -c option. It implies the -c and -p options and further compresses the patch output by omitting uninteresting hunks whose the contents in the parents have only two variants and the merge result picks one of them without modification. When all hunks are uninteresting, the commit itself and the commit log message is not shown, just like in any other `"empty diff`" case.";
            },
            [FlagParameter]@{
                Keys = @("--combined-all-paths");
                Name = "combined-all-paths";
                Description = "This flag causes combined diffs (used for merge commits) to list the name of the file from all parents. It thus only has effect when -c or --cc are specified, and is likely only useful if filename changes are detected (i.e. when either rename or copy detection have been requested).";
            },
            [FlagParameter]@{
                Keys = @("--always");
                Name = "always";
                Description = "Show the commit itself and the commit log message even if the diff itself is empty.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("difftool");
        Name = "difftool";
        Description = "Show changes using common diff tools";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--dir-diff", "-d");
                Name = "dir-diff";
                Description = "Copy the modified files to a temporary location and perform a directory diff on them. This mode never prompts before launching the diff tool.";
            },
            [FlagParameter]@{
                Keys = @("--no-prompt", "-y");
                Name = "no-prompt";
                Description = "Do not prompt before launching a diff tool.";
                Condition = [ExclusiveParameterCondition]::new("prompt");
            },
            [FlagParameter]@{
                Keys = @("--prompt");
                Name = "prompt";
                Description = "Prompt before each invocation of the diff tool. This is the default behaviour; the option is provided to override any configuration settings.";
                Condition = [ExclusiveParameterCondition]::new("no-prompt");
            },
            [ValueParameter]@{
                Keys = @("--rotate-to");
                Name = "rotate-to";
                Description = "Start showing the diff for the given path, the paths before it will move to end and output.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--skip-to");
                Name = "skip-to";
                Description = "Start showing the diff for the given path, skipping all the paths before it.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--tool", "-t");
                Name = "tool";
                Description = "Use the diff tool specified by <tool>. Valid values include emerge, kompare, meld, and vimdiff. Run git difftool --tool-help for the list of valid <tool> settings.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--tool-help");
                Name = "tool-help";
                Description = "Print a list of diff tools that may be used with --tool.";
            },
            [FlagParameter]@{
                Keys = @("--symlinks");
                Name = "symlinks";
                Description = "git difftool's default behavior is create symlinks to the working tree when run in --dir-diff mode and the right-hand side of the comparison yields the same content as the file in the working tree.";
                Condition = [ExclusiveParameterCondition]::new("no-symlinks");
            },
            [FlagParameter]@{
                Keys = @("--no-symlinks");
                Name = "no-symlinks";
                Description = "git difftool's default behavior is create symlinks to the working tree when run in --dir-diff mode and the right-hand side of the comparison yields the same content as the file in the working tree.";
                Condition = [ExclusiveParameterCondition]::new("symlinks");
            },
            [ValueParameter]@{
                Keys = @("--extcmd", "-x");
                Name = "extcmd";
                Description = "Specify a custom command for viewing diffs. git-difftool ignores the configured defaults and runs $command $LOCAL $REMOTE when this option is specified. Additionally, $BASE is set in the environment.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--gui", "-g");
                Name = "gui";
                Description = "When git-difftool is invoked with the -g or --gui option the default diff tool will be read from the configured diff.guitool variable instead of diff.tool. The --no-gui option can be used to override this setting. If diff.guitool is not set, we will fallback in the order of merge.guitool, diff.tool, merge.tool until a tool is found.";
                Condition = [ExclusiveParameterCondition]::new("no-gui");
            },
            [FlagParameter]@{
                Keys = @("--no-gui");
                Name = "no-gui";
                Description = "When git-difftool is invoked with the -g or --gui option the default diff tool will be read from the configured diff.guitool variable instead of diff.tool. The --no-gui option can be used to override this setting. If diff.guitool is not set, we will fallback in the order of merge.guitool, diff.tool, merge.tool until a tool is found.";
                Condition = [ExclusiveParameterCondition]::new("gui");
            },
            [FlagParameter]@{
                Keys = @("--trust-exit-code");
                Name = "trust-exit-code";
                Description = "git-difftool invokes a diff tool individually on each file. Errors reported by the diff tool are ignored by default. Use --trust-exit-code to make git-difftool exit when an invoked diff tool returns a non-zero exit code.";
                Condition = [ExclusiveParameterCondition]::new("no-trust-exit-code");
            },
            [FlagParameter]@{
                Keys = @("--no-trust-exit-code");
                Name = "no-trust-exit-code";
                Description = "git-difftool invokes a diff tool individually on each file. Errors reported by the diff tool are ignored by default. Use --trust-exit-code to make git-difftool exit when an invoked diff tool returns a non-zero exit code.";
                Condition = [ExclusiveParameterCondition]::new("trust-exit-code");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("fast-export");
        Name = "fast-export";
        Description = "Git data exporter";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Insert progress statements every <n> objects, to be shown by git fast-import during import.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--signed-tags");
                Name = "signed-tags";
                Description = "Specify how to handle signed tags. Since any transformation after the export can change the tag names (which can also happen when excluding revisions) the signatures will not match.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--tag-of-filtered-object");
                Name = "tag-of-filtered-object";
                Description = "Specify how to handle tags whose tagged object is filtered out. Since revisions and files to export can be limited by path, tagged objects may be filtered completely.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-C", "-M");
                Name = "C";
                Description = "Perform move and/or copy detection, as described in the git-diff1 manual page, and use it to generate rename and copy commands in the output dump.";
            },
            [ValueParameter]@{
                Keys = @("--export-marks");
                Name = "export-marks";
                Description = "Dumps the internal marks table to <file> when complete. Marks are written one per line as :markid SHA-1. Only marks for revisions are dumped; marks for blobs are ignored. Backends can use this file to validate imports after they have been completed, or to save the marks table across incremental runs. As <file> is only opened and truncated at completion, the same path can also be safely given to --import-marks. The file will not be written if no new object has been marked/exported.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--import-marks");
                Name = "import-marks";
                Description = "Before processing any input, load the marks specified in <file>. The input file must exist, must be readable, and must use the same format as produced by --export-marks.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--mark-tags");
                Name = "mark-tags";
                Description = "In addition to labelling blobs and commits with mark ids, also label tags. This is useful in conjunction with --export-marks and --import-marks, and is also useful (and necessary) for exporting of nested tags. It does not hurt other cases and would be the default, but many fast-import frontends are not prepared to accept tags with mark identifiers.";
            },
            [FlagParameter]@{
                Keys = @("--fake-missing-tagger");
                Name = "fake-missing-tagger";
                Description = "Some old repositories have tags without a tagger. The fast-import protocol was pretty strict about that, and did not allow that. So fake a tagger to be able to fast-import the output.";
            },
            [FlagParameter]@{
                Keys = @("--use-done-feature");
                Name = "use-done-feature";
                Description = "Start the stream with a feature done stanza, and terminate it with a done command.";
            },
            [FlagParameter]@{
                Keys = @("--no-data");
                Name = "no-data";
                Description = "Skip output of blob objects and instead refer to blobs via their original SHA-1 hash. This is useful when rewriting the directory structure or history of a repository without touching the contents of individual files. Note that the resulting stream can only be used by a repository which already contains the necessary objects.";
            },
            [FlagParameter]@{
                Keys = @("--full-tree");
                Name = "full-tree";
                Description = "This option will cause fast-export to issue a `"deleteall`" directive for each commit followed by a full list of all files in the commit (as opposed to just listing the files which are different from the commit’s first parent).";
            },
            [FlagParameter]@{
                Keys = @("--anonymize");
                Name = "anonymize";
                Description = "Anonymize the contents of the repository while still retaining the shape of the history and stored tree. See the section on ANONYMIZING below.";
            },
            [ValueParameter]@{
                Keys = @("--anonymize-map");
                Name = "anonymize-map";
                Description = "Convert token <from> to <to> in the anonymized output. If <to> is omitted, map <from> to itself (i.e., do not anonymize it). See the section on ANONYMIZING below.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--reference-excluded-parents");
                Name = "reference-excluded-parents";
                Description = "By default, running a command such as git fast-export master~5..master will not include the commit master~5 and will make master~4 no longer have master~5 as a parent (though both the old master~4 and new master~4 will have all the same files). Use --reference-excluded-parents to instead have the stream refer to commits in the excluded range of history by their sha1sum. Note that the resulting stream can only be used by a repository which already contains the necessary parent commits.";
            },
            [FlagParameter]@{
                Keys = @("--show-original-ids");
                Name = "show-original-ids";
                Description = "Add an extra directive to the output for commits and blobs, original-oid <SHA1SUM>. While such directives will likely be ignored by importers such as git-fast-import, it may be useful for intermediary filters (e.g. for rewriting commit messages which refer to older commits, or for stripping blobs by id).";
            },
            [ValueParameter]@{
                Keys = @("--reencode");
                Name = "reencode";
                Description = "Specify how to handle encoding header in commit objects. When asking to abort (which is the default), this program will die when encountering such a commit object. With yes, the commit message will be re-encoded into UTF-8. With no, the original encoding will be preserved.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--refspec");
                Name = "refspec";
                Description = "Apply the specified refspec to each ref exported. Multiple of them can be specified.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "A list of arguments, acceptable to git rev-parse and git rev-list, that specifies the specific objects and references to export. For example, master~10..master causes the current master reference to be exported along with all objects added since its 10th ancestor commit and (unless the --reference-excluded-parents option is specified) all files common to master~9 and master~10.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("fast-import");
        Name = "fast-import";
        Description = "Backend for fast Git data importers";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--force");
                Name = "force";
                Description = "Force updating modified existing branches, even if doing so would cause commits to be lost (as the new commit does not contain the old commit).";
            },
            [FlagParameter]@{
                Keys = @("--quiet");
                Name = "quiet";
                Description = "Disable the output shown by --stats, making fast-import usually be silent when it is successful. However, if the import stream has directives intended to show user output (e.g. progress directives), the corresponding messages will still be shown.";
            },
            [FlagParameter]@{
                Keys = @("--stats");
                Name = "stats";
                Description = "Display some basic statistics about the objects fast-import has created, the packfiles they were stored into, and the memory used by fast-import during this run. Showing this output is currently the default, but can be disabled with --quiet.";
            },
            [FlagParameter]@{
                Keys = @("--allow-unsafe-features");
                Name = "allow-unsafe-features";
                Description = "Many command-line options can be provided as part of the fast-import stream itself by using the feature or option commands. However, some of these options are unsafe (e.g., allowing fast-import to access the filesystem outside of the repository). These options are disabled by default, but can be allowed by providing this option on the command line. This currently impacts only the export-marks, import-marks, and import-marks-if-exists feature commands.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("fetch-pack");
        Name = "fetch-pack";
        Description = "Receive missing objects from another repository";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "Fetch all remote refs.";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Take the list of refs from stdin, one per line. If there are refs specified on the command line in addition to this option, then the refs from stdin are processed after those on the command line.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Pass -q flag to git unpack-objects; this makes the cloning process less verbose.";
            },
            [FlagParameter]@{
                Keys = @("--keep", "-k");
                Name = "keep";
                Description = "Do not invoke git unpack-objects on received data, but create a single packfile out of it instead, and store it in the object database. If provided twice then the pack is locked against repacking.";
            },
            [FlagParameter]@{
                Keys = @("--thin");
                Name = "thin";
                Description = "Fetch a `"thin`" pack, which records objects in deltified form based on objects not included in the pack to reduce network traffic.";
            },
            [FlagParameter]@{
                Keys = @("--include-tag");
                Name = "include-tag";
                Description = "If the remote side supports it, annotated tags objects will be downloaded on the same connection as the other objects if the object the tag references is downloaded. The caller must otherwise determine the tags this option made available.";
            },
            [ValueParameter]@{
                Keys = @("--upload-pack");
                Name = "upload-pack";
                Description = "Use this to specify the path to git-upload-pack on the remote side, if is not found on your $PATH. Installations of sshd ignores the user’s environment setup scripts for login shells (e.g. .bash_profile) and your privately installed git may not be found on the system default $PATH. Another workaround suggested is to set up your $PATH in `".bashrc`", but this flag is for people who do not want to pay the overhead for non-interactive shells by having a lean .bashrc file (they set most of the things up in .bash_profile).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--exec");
                Name = "exec";
                Description = "Same as --upload-pack=<git-upload-pack>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--depth");
                Name = "depth";
                Description = "Limit fetching to ancestor-chains not longer than n. git-upload-pack treats the special depth 2147483647 as infinite even if there is an ancestor-chain that long.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--shallow-since");
                Name = "shallow-since";
                Description = "Deepen or shorten the history of a shallow repository to include all reachable commits after <date>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--shallow-exclude");
                Name = "shallow-exclude";
                Description = "Deepen or shorten the history of a shallow repository to exclude commits reachable from a specified remote branch or tag. This option can be specified multiple times.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--deepen-relative");
                Name = "deepen-relative";
                Description = "Argument --depth specifies the number of commits from the current shallow boundary instead of from the tip of each remote branch history.";
            },
            [FlagParameter]@{
                Keys = @("--no-progress");
                Name = "no-progress";
                Description = "Do not show the progress.";
            },
            [FlagParameter]@{
                Keys = @("--check-self-contained-and-connected");
                Name = "check-self-contained-and-connected";
                Description = "Output `"connectivity-ok`" if the received pack is self-contained and connected.";
            },
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Run verbosely.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The URL to the remote repository.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The remote heads to update from. This is relative to $GIT_DIR (e.g. `"HEAD`", `"refs/heads/master`"). When unspecified, update from all heads the remote side has.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("filter-branch");
        Name = "filter-branch";
        Description = "Rewrite branches";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--setup");
                Name = "setup";
                Description = "This is not a real filter executed for each commit but a one time setup just before the loop. Therefore no commit-specific variables are defined yet. Functions or variables defined here can be used or modified in the following filter steps except the commit filter, for technical reasons.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--subdirectory-filter");
                Name = "subdirectory-filter";
                Description = "Only look at the history which touches the given subdirectory. The result will contain that directory (and only that) as its project root. Implies .";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--env-filter");
                Name = "env-filter";
                Description = "This filter may be used if you only need to modify the environment in which the commit will be performed. Specifically, you might want to rewrite the author/committer name/email/time environment variables (see git-commit-tree1 for details).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--tree-filter");
                Name = "tree-filter";
                Description = "This is the filter for rewriting the tree and its contents. The argument is evaluated in shell with the working directory set to the root of the checked out tree. The new tree is then used as-is (new files are auto-added, disappeared files are auto-removed - neither .gitignore files nor any other ignore rules HAVE ANY EFFECT!).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--index-filter");
                Name = "index-filter";
                Description = "This is the filter for rewriting the index. It is similar to the tree filter but does not check out the tree, which makes it much faster. Frequently used with git rm --cached --ignore-unmatch ..., see EXAMPLES below. For hairy cases, see git-update-index1.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--parent-filter");
                Name = "parent-filter";
                Description = "This is the filter for rewriting the commit’s parent list. It will receive the parent string on stdin and shall output the new parent string on stdout. The parent string is in the format described in git-commit-tree1: empty for the initial commit, `"-p parent`" for a normal commit and `"-p parent1 -p parent2 -p parent3 …`" for a merge commit.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--msg-filter");
                Name = "msg-filter";
                Description = "This is the filter for rewriting the commit messages. The argument is evaluated in the shell with the original commit message on standard input; its standard output is used as the new commit message.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--commit-filter");
                Name = "commit-filter";
                Description = "This is the filter for performing the commit. If this filter is specified, it will be called instead of the git commit-tree command, with arguments of the form `"&lt;TREE_ID&gt; [(-p &lt;PARENT_COMMIT_ID&gt;)…]`" and the log message on stdin. The commit id is expected on stdout.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--tag-name-filter");
                Name = "tag-name-filter";
                Description = "This is the filter for rewriting tag names. When passed, it will be called for every tag ref that points to a rewritten object (or to a tag object which points to a rewritten object). The original tag name is passed via standard input, and the new tag name is expected on standard output.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--prune-empty");
                Name = "prune-empty";
                Description = "Some filters will generate empty commits that leave the tree untouched. This option instructs git-filter-branch to remove such commits if they have exactly one or zero non-pruned parents; merge commits will therefore remain intact. This option cannot be used together with --commit-filter, though the same effect can be achieved by using the provided git_commit_non_empty_tree function in a commit filter.";
            },
            [ValueParameter]@{
                Keys = @("--original");
                Name = "original";
                Description = "Use this option to set the namespace where the original commits will be stored. The default value is refs/original.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-d");
                Name = "d";
                Description = "Use this option to set the path to the temporary directory used for rewriting. When applying a tree filter, the command needs to temporarily check out the tree to some directory, which may consume considerable space in case of large projects. By default it does this in the .git-rewrite/ directory but you can override that choice by this parameter.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "git filter-branch refuses to start with an existing temporary directory or when there are already refs starting with refs/original/, unless forced.";
            },
            [ValueParameter]@{
                Keys = @("--state-branch");
                Name = "state-branch";
                Description = "This option will cause the mapping from old to new objects to be loaded from named branch upon startup and saved as a new commit to that branch upon exit, enabling incremental of large trees. If <branch> does not exist it will be created.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Arguments for git rev-list. All positive refs included by these options are rewritten. You may also specify options such as --all, but you must use -- to separate them from the git filter-branch options. Implies .";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("fmt-merge-msg");
        Name = "fmt-merge-msg";
        Description = "Produce a merge commit message";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--log");
                Name = "log";
                Description = "In addition to branch names, populate the log message with one-line descriptions from the actual commits that are being merged. At most <n> commits from each merge parent will be used (20 if <n> is omitted). This overrides the merge.log configuration variable.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-log");
            },
            [FlagParameter]@{
                Keys = @("--no-log");
                Name = "no-log";
                Description = "Do not list one-line descriptions from the actual commits being merged.";
                Condition = [ExclusiveParameterCondition]::new("log");
            },
            [FlagParameter]@{
                Keys = @("--summary");
                Name = "summary";
                Description = "Synonyms to --log and --no-log; these are deprecated and will be removed in the future.";
                Condition = [ExclusiveParameterCondition]::new("no-summary");
            },
            [FlagParameter]@{
                Keys = @("--no-summary");
                Name = "no-summary";
                Description = "Synonyms to --log and --no-log; these are deprecated and will be removed in the future.";
                Condition = [ExclusiveParameterCondition]::new("summary");
            },
            [ValueParameter]@{
                Keys = @("--message", "-m");
                Name = "message";
                Description = "Use <message> instead of the branch names for the first line of the log message. For use with --log.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--file", "-F");
                Name = "file";
                Description = "Take the list of merged objects from <file> instead of stdin.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("for-each-ref");
        Name = "for-each-ref";
        Description = "Output information on each ref";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "If one or more patterns are given, only refs are shown that match against at least one pattern, either using fnmatch(3) or literally, in the latter case matching completely or from the beginning up to a slash.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--count");
                Name = "count";
                Description = "By default the command shows all refs that match <pattern>. This option makes it stop after showing that many refs.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--sort");
                Name = "sort";
                Description = "A field name to sort on. Prefix - to sort in descending order of the value. When unspecified, refname is used. You may use the --sort=<key> option multiple times, in which case the last key becomes the primary key.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--format");
                Name = "format";
                Description = "A string that interpolates %(fieldname) from a ref being shown and the object it points at. If fieldname is prefixed with an asterisk (*) and the ref points at a tag object, use the value for the field in the object which the tag object refers to (instead of the field in the tag object). When unspecified, <format> defaults to %(objectname) SPC %(objecttype) TAB %(refname). It also interpolates %% to %, and %xx where xx are hex digits interpolates to character with hex code xx; for example %00 interpolates to \0 (NUL), %09 to \t (TAB) and %0a to \n (LF).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color");
                Name = "color";
                Description = "Respect any colors specified in the --format option. The <when> field must be one of always, never, or auto (if <when> is absent, behave as if always was given).";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--tcl", "--python", "--perl", "--shell");
                Name = "tcl";
                Description = "If given, strings that substitute %(fieldname) placeholders are quoted as string literals suitable for the specified host language. This is meant to produce a scriptlet that can directly be `eval`ed.";
            },
            [ValueParameter]@{
                Keys = @("--points-at");
                Name = "points-at";
                Description = "Only list refs which points at the given object.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--merged");
                Name = "merged";
                Description = "Only list refs whose tips are reachable from the specified commit (HEAD if not specified).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-merged");
            },
            [ValueParameter]@{
                Keys = @("--no-merged");
                Name = "no-merged";
                Description = "Only list refs whose tips are not reachable from the specified commit (HEAD if not specified).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("merged");
            },
            [ValueParameter]@{
                Keys = @("--contains");
                Name = "contains";
                Description = "Only list refs which contain the specified commit (HEAD if not specified).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-contains");
            },
            [ValueParameter]@{
                Keys = @("--no-contains");
                Name = "no-contains";
                Description = "Only list refs which don’t contain the specified commit (HEAD if not specified).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("contains");
            },
            [FlagParameter]@{
                Keys = @("--ignore-case");
                Name = "ignore-case";
                Description = "Sorting and filtering refs are case insensitive.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("for-each-repo");
        Name = "for-each-repo";
        Description = "Run a Git command on a list of repositories";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--config");
                Name = "config";
                Description = "Use the given config variable as a multi-valued list storing absolute path names. Iterate on that list of paths to run the given arguments.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("fsck-objects");
        Name = "fsck-objects";
        Description = "Verifies the connectivity and validity of the objects in the database";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("fsck");
        Name = "fsck";
        Description = "Verifies the connectivity and validity of the objects in the database";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "An object to treat as the head of an unreachability trace.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--unreachable");
                Name = "unreachable";
                Description = "Print out objects that exist but that aren’t reachable from any of the reference nodes.";
            },
            [FlagParameter]@{
                Keys = @("--dangling");
                Name = "dangling";
                Description = "Print objects that exist but that are never directly used (default). --no-dangling can be used to omit this information from the output.";
                Condition = [ExclusiveParameterCondition]::new("no-dangling");
            },
            [FlagParameter]@{
                Keys = @("--no-dangling");
                Name = "no-dangling";
                Description = "Print objects that exist but that are never directly used (default). --no-dangling can be used to omit this information from the output.";
                Condition = [ExclusiveParameterCondition]::new("dangling");
            },
            [FlagParameter]@{
                Keys = @("--root");
                Name = "root";
                Description = "Report root nodes.";
            },
            [FlagParameter]@{
                Keys = @("--tags");
                Name = "tags";
                Description = "Report tags.";
            },
            [FlagParameter]@{
                Keys = @("--cache");
                Name = "cache";
                Description = "Consider any object recorded in the index also as a head node for an unreachability trace.";
            },
            [FlagParameter]@{
                Keys = @("--no-reflogs");
                Name = "no-reflogs";
                Description = "Do not consider commits that are referenced only by an entry in a reflog to be reachable. This option is meant only to search for commits that used to be in a ref, but now aren’t, but are still in that corresponding reflog.";
            },
            [FlagParameter]@{
                Keys = @("--full");
                Name = "full";
                Description = "Check not just objects in GIT_OBJECT_DIRECTORY ($GIT_DIR/objects), but also the ones found in alternate object pools listed in GIT_ALTERNATE_OBJECT_DIRECTORIES or $GIT_DIR/objects/info/alternates, and in packed Git archives found in $GIT_DIR/objects/pack and corresponding pack subdirectories in alternate object pools. This is now default; you can turn it off with --no-full.";
            },
            [FlagParameter]@{
                Keys = @("--connectivity-only");
                Name = "connectivity-only";
                Description = "Check only the connectivity of reachable objects, making sure that any objects referenced by a reachable tag, commit, or tree is present. This speeds up the operation by avoiding reading blobs entirely (though it does still check that referenced blobs exist). This will detect corruption in commits and trees, but not do any semantic checks (e.g., for format errors). Corruption in blob objects will not be detected at all.";
            },
            [FlagParameter]@{
                Keys = @("--strict");
                Name = "strict";
                Description = "Enable more strict checking, namely to catch a file mode recorded with g+w bit set, which was created by older versions of Git. Existing repositories, including the Linux kernel, Git itself, and sparse repository have old objects that triggers this check, but it is recommended to check new projects with this flag.";
            },
            [FlagParameter]@{
                Keys = @("--verbose");
                Name = "verbose";
                Description = "Be chatty.";
            },
            [FlagParameter]@{
                Keys = @("--lost-found");
                Name = "lost-found";
                Description = "Write dangling objects into .git/lost-found/commit/ or .git/lost-found/other/, depending on type. If the object is a blob, the contents are written into the file, rather than its object name.";
            },
            [FlagParameter]@{
                Keys = @("--name-objects");
                Name = "name-objects";
                Description = "When displaying names of reachable objects, in addition to the SHA-1 also display a name that describes how they are reachable, compatible with git-rev-parse1, e.g. HEAD@{1234567890}~25^2:src/.";
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --no-progress or --verbose is specified. --progress forces progress status even if the standard error stream is not directed to a terminal.";
                Condition = [ExclusiveParameterCondition]::new("no-progress");
            },
            [FlagParameter]@{
                Keys = @("--no-progress");
                Name = "no-progress";
                Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --no-progress or --verbose is specified. --progress forces progress status even if the standard error stream is not directed to a terminal.";
                Condition = [ExclusiveParameterCondition]::new("progress");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("gc");
        Name = "gc";
        Description = "Cleanup unnecessary files and optimize the local repository";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--aggressive");
                Name = "aggressive";
                Description = "Usually git gc runs very quickly while providing good disk space utilization and performance. This option will cause git gc to more aggressively optimize the repository at the expense of taking much more time. The effects of this optimization are mostly persistent. See the `"AGGRESSIVE`" section below for details.";
            },
            [FlagParameter]@{
                Keys = @("--auto");
                Name = "auto";
                Description = "With this option, git gc checks whether any housekeeping is required; if not, it exits without performing any work.";
            },
            [ValueParameter]@{
                Keys = @("--prune");
                Name = "prune";
                Description = "Prune loose objects older than date (default is 2 weeks ago, overridable by the config variable gc.pruneExpire). --prune=now prunes loose objects regardless of their age and increases the risk of corruption if another process is writing to the repository concurrently; see `"NOTES`" below. --prune is on by default.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-prune");
            },
            [FlagParameter]@{
                Keys = @("--no-prune");
                Name = "no-prune";
                Description = "Do not prune any loose objects.";
                Condition = [ExclusiveParameterCondition]::new("prune");
            },
            [FlagParameter]@{
                Keys = @("--quiet");
                Name = "quiet";
                Description = "Suppress all progress reports.";
            },
            [FlagParameter]@{
                Keys = @("--force");
                Name = "force";
                Description = "Force git gc to run even if there may be another git gc instance running on this repository.";
            },
            [FlagParameter]@{
                Keys = @("--keep-largest-pack");
                Name = "keep-largest-pack";
                Description = "All packs except the largest pack and those marked with a .keep files are consolidated into a single pack. When this option is used, gc.bigPackThreshold is ignored.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("get-tar-commit-id");
        Name = "get-tar-commit-id";
        Description = "Extract commit ID from an archive created using git-archive";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("grep");
        Name = "grep";
        Description = "Print lines matching a pattern";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--cached");
                Name = "cached";
                Description = "Instead of searching tracked files in the working tree, search blobs registered in the index file.";
            },
            [FlagParameter]@{
                Keys = @("--no-index");
                Name = "no-index";
                Description = "Search files in the current directory that is not managed by Git.";
            },
            [FlagParameter]@{
                Keys = @("--untracked");
                Name = "untracked";
                Description = "In addition to searching in the tracked files in the working tree, search also in untracked files.";
            },
            [FlagParameter]@{
                Keys = @("--no-exclude-standard");
                Name = "no-exclude-standard";
                Description = "Also search in ignored files by not honoring the .gitignore mechanism. Only useful with --untracked.";
                Condition = [ExclusiveParameterCondition]::new("exclude-standard");
            },
            [FlagParameter]@{
                Keys = @("--exclude-standard");
                Name = "exclude-standard";
                Description = "Do not pay attention to ignored files specified via the .gitignore mechanism. Only useful when searching files in the current directory with --no-index.";
                Condition = [ExclusiveParameterCondition]::new("no-exclude-standard");
            },
            [FlagParameter]@{
                Keys = @("--recurse-submodules");
                Name = "recurse-submodules";
                Description = "Recursively search in each submodule that is active and checked out in the repository. When used in combination with the <tree> option the prefix of all submodule output will be the name of the parent project’s <tree> object. This option has no effect if --no-index is given.";
            },
            [FlagParameter]@{
                Keys = @("--text", "-a");
                Name = "text";
                Description = "Process binary files as if they were text.";
            },
            [FlagParameter]@{
                Keys = @("--textconv");
                Name = "textconv";
                Description = "Honor textconv filter settings.";
                Condition = [ExclusiveParameterCondition]::new("no-textconv");
            },
            [FlagParameter]@{
                Keys = @("--no-textconv");
                Name = "no-textconv";
                Description = "Do not honor textconv filter settings. This is the default.";
                Condition = [ExclusiveParameterCondition]::new("textconv");
            },
            [FlagParameter]@{
                Keys = @("--ignore-case", "-i");
                Name = "ignore-case";
                Description = "Ignore case differences between the patterns and the files.";
            },
            [FlagParameter]@{
                Keys = @("-I");
                Name = "I";
                Description = "Don’t match the pattern in binary files.";
            },
            [ValueParameter]@{
                Keys = @("--max-depth");
                Name = "max-depth";
                Description = "For each &lt;pathspec&gt; given on command line, descend at most &lt;depth&gt; levels of directories. A value of -1 means no limit. This option is ignored if &lt;pathspec&gt; contains active wildcards. In other words if `"a*`" matches a directory named `"a*`", `"*`" is matched literally so --max-depth is still effective.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--recursive", "-r");
                Name = "recursive";
                Description = "Same as --max-depth=-1; this is the default.";
                Condition = [ExclusiveParameterCondition]::new("no-recursive");
            },
            [FlagParameter]@{
                Keys = @("--no-recursive");
                Name = "no-recursive";
                Description = "Same as --max-depth=0.";
                Condition = [ExclusiveParameterCondition]::new("recursive");
            },
            [FlagParameter]@{
                Keys = @("--word-regexp", "-w");
                Name = "word-regexp";
                Description = "Match the pattern only at word boundary (either begin at the beginning of a line, or preceded by a non-word character; end at the end of a line or followed by a non-word character).";
            },
            [FlagParameter]@{
                Keys = @("--invert-match", "-v");
                Name = "invert-match";
                Description = "Select non-matching lines.";
            },
            [FlagParameter]@{
                Keys = @("-H", "-h");
                Name = "H";
                Description = "By default, the command shows the filename for each match. -h option is used to suppress this output. -H is there for completeness and does not do anything except it overrides -h given earlier on the command line.";
            },
            [FlagParameter]@{
                Keys = @("--full-name");
                Name = "full-name";
                Description = "When run from a subdirectory, the command usually outputs paths relative to the current directory. This option forces paths to be output relative to the project top directory.";
            },
            [FlagParameter]@{
                Keys = @("--basic-regexp", "--extended-regexp", "-G", "-E");
                Name = "basic-regexp";
                Description = "Use POSIX extended/basic regexp for patterns. Default is to use basic regexp.";
            },
            [FlagParameter]@{
                Keys = @("--perl-regexp", "-P");
                Name = "perl-regexp";
                Description = "Use Perl-compatible regular expressions for patterns.";
            },
            [FlagParameter]@{
                Keys = @("--fixed-strings", "-F");
                Name = "fixed-strings";
                Description = "Use fixed strings for patterns (don’t interpret pattern as a regex).";
            },
            [FlagParameter]@{
                Keys = @("--line-number", "-n");
                Name = "line-number";
                Description = "Prefix the line number to matching lines.";
            },
            [FlagParameter]@{
                Keys = @("--column");
                Name = "column";
                Description = "Prefix the 1-indexed byte-offset of the first match from the start of the matching line.";
            },
            [FlagParameter]@{
                Keys = @("--files-without-match", "--name-only", "--files-with-matches", "-L", "-l");
                Name = "files-without-match";
                Description = "Instead of showing every matched line, show only the names of files that contain (or do not contain) matches. For better compatibility with git diff, --name-only is a synonym for --files-with-matches.";
            },
            [ValueParameter]@{
                Keys = @("--open-files-in-pager", "-O");
                Name = "open-files-in-pager";
                Description = "Open the matching files in the pager (not the output of grep). If the pager happens to be `"less`" or `"vi`", and the user specified only one pattern, the first file is positioned at the first match automatically. The pager argument is optional; if specified, it must be stuck to the option without a space. If pager is unspecified, the default pager will be used (see core.pager in git-config1).";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--null", "-z");
                Name = "null";
                Description = "Use \0 as the delimiter for pathnames in the output, and print them verbatim. Without this option, pathnames with `"unusual`" characters are quoted as explained for the configuration variable core.quotePath (see git-config1).";
            },
            [FlagParameter]@{
                Keys = @("--only-matching", "-o");
                Name = "only-matching";
                Description = "Print only the matched (non-empty) parts of a matching line, with each such part on a separate output line.";
            },
            [FlagParameter]@{
                Keys = @("--count", "-c");
                Name = "count";
                Description = "Instead of showing every matched line, show the number of lines that match.";
            },
            [ValueParameter]@{
                Keys = @("--color");
                Name = "color";
                Description = "Show colored matches. The value must be always (the default), never, or auto.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-color");
            },
            [FlagParameter]@{
                Keys = @("--no-color");
                Name = "no-color";
                Description = "Turn off match highlighting, even when the configuration file gives the default to color output. Same as --color=never.";
                Condition = [ExclusiveParameterCondition]::new("color");
            },
            [FlagParameter]@{
                Keys = @("--break");
                Name = "break";
                Description = "Print an empty line between matches from different files.";
            },
            [FlagParameter]@{
                Keys = @("--heading");
                Name = "heading";
                Description = "Show the filename above the matches in that file instead of at the start of each shown line.";
            },
            [FlagParameter]@{
                Keys = @("--show-function", "-p");
                Name = "show-function";
                Description = "Show the preceding line that contains the function name of the match, unless the matching line is a function name itself. The name is determined in the same way as git diff works out patch hunk headers (see Defining a custom hunk-header in gitattributes5).";
            },
            [ValueParameter]@{
                Keys = @("--context", "-C", "-");
                Name = "context";
                Description = "Show <num> leading and trailing lines, and place a line containing -- between contiguous groups of matches.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--after-context", "-A");
                Name = "after-context";
                Description = "Show <num> trailing lines, and place a line containing -- between contiguous groups of matches.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--before-context", "-B");
                Name = "before-context";
                Description = "Show <num> leading lines, and place a line containing -- between contiguous groups of matches.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--function-context", "-W");
                Name = "function-context";
                Description = "Show the surrounding text from the previous line containing a function name up to the one before the next function name, effectively showing the whole function in which the match was found. The function names are determined in the same way as git diff works out patch hunk headers (see Defining a custom hunk-header in gitattributes5).";
            },
            [ValueParameter]@{
                Keys = @("--threads");
                Name = "threads";
                Description = "Number of grep worker threads to use. See grep.threads in CONFIGURATION for more information.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-f");
                Name = "f";
                Description = "Read patterns from <file>, one per line.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-e");
                Name = "e";
                Description = "The next parameter is the pattern. This option has to be used for patterns starting with - and should be used in scripts passing user input to grep. Multiple patterns are combined by or.";
            },
            [FlagParameter]@{
                Keys = @("--not", "--or", "--and", "( … )");
                Name = "not";
                Description = "Specify how multiple patterns are combined using Boolean expressions. --or is the default operator. --and has higher precedence than --or. -e has to be used for all patterns.";
            },
            [FlagParameter]@{
                Keys = @("--all-match");
                Name = "all-match";
                Description = "When giving multiple pattern expressions combined with --or, this flag is specified to limit the match to files that have lines to match all of them.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Do not output matched lines; instead, exit with status 0 when there is a match and with non-zero status when there isn’t.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Instead of searching tracked files in the working tree, search blobs in the given trees.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Signals the end of options; the rest of the parameters are <pathspec> limiters.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "If given, limit the search to paths matching at least one pattern. Both leading paths match and glob(7) patterns are supported.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("gui");
        Name = "gui";
        Description = "A portable graphical interface to Git";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("hash-object");
        Name = "hash-object";
        Description = "Compute object ID and optionally creates a blob from a file";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("-t");
                Name = "t";
                Description = "Specify the type (default: `"blob`").";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-w");
                Name = "w";
                Description = "Actually write the object into the object database.";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Read the object from standard input instead of from a file.";
            },
            [FlagParameter]@{
                Keys = @("--stdin-paths");
                Name = "stdin-paths";
                Description = "Read file names from the standard input, one per line, instead of from the command-line.";
            },
            [FlagParameter]@{
                Keys = @("--path");
                Name = "path";
                Description = "Hash object as it were located at the given path. The location of file does not directly influence on the hash value, but path is used to determine what Git filters should be applied to the object before it can be placed to the object database, and, as result of applying filters, the actual blob put into the object database may differ from the given file. This option is mainly useful for hashing temporary files located outside of the working directory or files read from stdin.";
            },
            [FlagParameter]@{
                Keys = @("--no-filters");
                Name = "no-filters";
                Description = "Hash the contents as is, ignoring any input filter that would have been chosen by the attributes mechanism, including the end-of-line conversion. If the file is read from standard input then this is always implied, unless the --path option is given.";
            },
            [FlagParameter]@{
                Keys = @("--literally");
                Name = "literally";
                Description = "Allow --stdin to hash any garbage into a loose object which might not otherwise pass standard object parsing or git-fsck checks. Useful for stress-testing Git itself or reproducing characteristics of corrupt or bogus objects encountered in the wild.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("help");
        Name = "help";
        Description = "Display help information about Git";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--all", "-a");
                Name = "all";
                Description = "Prints all the available commands on the standard output. This option overrides any given command or guide name.";
            },
            [FlagParameter]@{
                Keys = @("--verbose");
                Name = "verbose";
                Description = "When used with --all print description for all recognized commands. This is the default.";
            },
            [FlagParameter]@{
                Keys = @("--config", "-c");
                Name = "config";
                Description = "List all available configuration variables. This is a short summary of the list in git-config1.";
            },
            [FlagParameter]@{
                Keys = @("--guides", "-g");
                Name = "guides";
                Description = "Prints a list of the Git concept guides on the standard output.";
            },
            [FlagParameter]@{
                Keys = @("--info", "-i");
                Name = "info";
                Description = "Display manual page for the command in the info format. The info program will be used for that purpose.";
            },
            [FlagParameter]@{
                Keys = @("--man", "-m");
                Name = "man";
                Description = "Display manual page for the command in the man format. This option may be used to override a value set in the help.format configuration variable.";
            },
            [FlagParameter]@{
                Keys = @("--web", "-w");
                Name = "web";
                Description = "Display manual page for the command in the web (HTML) format. A web browser will be used for that purpose.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("http-backend");
        Name = "http-backend";
        Description = "Server side implementation of Git over HTTP";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("http-fetch");
        Name = "http-fetch";
        Description = "Download from a remote Git repository via HTTP";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("commit-id");
                Name = "commit-id";
                Description = "Either the hash or the filename under [URL]/refs/ to pull.";
            },
            [FlagParameter]@{
                Keys = @("-a, -c, -t");
                Name = "a, -c, -t";
                Description = "These options are ignored for historical reasons.";
            },
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Report what is downloaded.";
            },
            [ValueParameter]@{
                Keys = @("-w");
                Name = "w";
                Description = "Writes the commit-id into the filename under $GIT_DIR/refs/<filename> on the local end after the transfer is complete.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Instead of a commit id on the command line (which is not expected in this case), git http-fetch expects lines on stdin in the format";
            },
            [ValueParameter]@{
                Keys = @("--packfile");
                Name = "packfile";
                Description = "For internal use only. Instead of a commit id on the command line (which is not expected in this case), git http-fetch fetches the packfile directly at the given URL and uses index-pack to generate corresponding .idx and .keep files. The hash is used to determine the name of the temporary file and is arbitrary. The output of index-pack is printed to stdout. Requires --index-pack-args.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--index-pack-args");
                Name = "index-pack-args";
                Description = "For internal use only. The command to run on the contents of the downloaded pack. Arguments are URL-encoded separated by spaces.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--recover");
                Name = "recover";
                Description = "Verify that everything reachable from target is fetched. Used after an earlier fetch is interrupted.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("http-push");
        Name = "http-push";
        Description = "Push objects over HTTP/DAV to another repository";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "Do not assume that the remote repository is complete in its current state, and verify all objects in the entire local ref’s history exist in the remote repository.";
            },
            [FlagParameter]@{
                Keys = @("--force");
                Name = "force";
                Description = "Usually, the command refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it. This flag disables the check. What this means is that the remote repository can lose commits; use it with care.";
            },
            [FlagParameter]@{
                Keys = @("--dry-run");
                Name = "dry-run";
                Description = "Do everything except actually send the updates.";
            },
            [FlagParameter]@{
                Keys = @("--verbose");
                Name = "verbose";
                Description = "Report the list of objects being walked locally and the list of objects successfully sent to the remote repository.";
            },
            [FlagParameter]@{
                Keys = @("-D", "-d");
                Name = "D";
                Description = "Remove <ref> from remote repository. The specified branch cannot be the remote HEAD. If -d is specified the following other conditions must also be met:";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The remote refs to update.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("imap-send");
        Name = "imap-send";
        Description = "Send a collection of patches from stdin to an IMAP folder";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Be verbose.";
                Condition = [ExclusiveParameterCondition]::new("quiet");
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Be quiet.";
                Condition = [ExclusiveParameterCondition]::new("verbose");
            },
            [FlagParameter]@{
                Keys = @("--curl");
                Name = "curl";
                Description = "Use libcurl to communicate with the IMAP server, unless tunneling into it. Ignored if Git was built without the USE_CURL_FOR_IMAP_SEND option set.";
                Condition = [ExclusiveParameterCondition]::new("no-curl");
            },
            [FlagParameter]@{
                Keys = @("--no-curl");
                Name = "no-curl";
                Description = "Talk to the IMAP server using git’s own IMAP routines instead of using libcurl. Ignored if Git was built with the NO_OPENSSL option set.";
                Condition = [ExclusiveParameterCondition]::new("curl");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("index-pack");
        Name = "index-pack";
        Description = "Build pack index file for an existing packed archive";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Be verbose about what is going on, including progress status.";
            },
            [ValueParameter]@{
                Keys = @("-o");
                Name = "o";
                Description = "Write the generated pack index into the specified file. Without this option the name of pack index file is constructed from the name of packed archive file by replacing .pack with .idx (and the program fails if the name of packed archive does not end with .pack).";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--rev-index");
                Name = "rev-index";
                Description = "When this flag is provided, generate a reverse index (a .rev file) corresponding to the given pack. If --verify is given, ensure that the existing reverse index is correct. Takes precedence over pack.writeReverseIndex.";
                Condition = [ExclusiveParameterCondition]::new("no-rev-index");
            },
            [FlagParameter]@{
                Keys = @("--no-rev-index");
                Name = "no-rev-index";
                Description = "When this flag is provided, generate a reverse index (a .rev file) corresponding to the given pack. If --verify is given, ensure that the existing reverse index is correct. Takes precedence over pack.writeReverseIndex.";
                Condition = [ExclusiveParameterCondition]::new("rev-index");
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "When this flag is provided, the pack is read from stdin instead and a copy is then written to <pack-file>. If <pack-file> is not specified, the pack is written to objects/pack/ directory of the current Git repository with a default name determined from the pack content. If <pack-file> is not specified consider using --keep to prevent a race condition between this process and git repack.";
            },
            [FlagParameter]@{
                Keys = @("--fix-thin");
                Name = "fix-thin";
                Description = "Fix a `"thin`" pack produced by git pack-objects --thin (see git-pack-objects1 for details) by adding the excluded objects the deltified objects are based on to the pack. This option only makes sense in conjunction with --stdin.";
            },
            [FlagParameter]@{
                Keys = @("--keep");
                Name = "keep";
                Description = "Before moving the index into its final destination create an empty .keep file for the associated pack file. This option is usually necessary with --stdin to prevent a simultaneous git repack process from deleting the newly constructed pack and index before refs can be updated to use objects contained in the pack.";
            },
            [ValueParameter]@{
                Keys = @("--keep");
                Name = "keep";
                Description = "Like --keep create a .keep file before moving the index into its final destination, but rather than creating an empty file place <msg> followed by an LF into the .keep file. The <msg> message can later be searched for within all .keep files to locate any which have outlived their usefulness.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--index-version");
                Name = "index-version";
                Description = "This is intended to be used by the test suite only. It allows to force the version for the generated pack index, and to force 64-bit index entries on objects located above the given offset.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--strict");
                Name = "strict";
                Description = "Die, if the pack contains broken objects or links.";
            },
            [FlagParameter]@{
                Keys = @("--progress-title");
                Name = "progress-title";
                Description = "For internal use only.";
            },
            [FlagParameter]@{
                Keys = @("--check-self-contained-and-connected");
                Name = "check-self-contained-and-connected";
                Description = "Die if the pack contains broken links. For internal use only.";
            },
            [FlagParameter]@{
                Keys = @("--fsck-objects");
                Name = "fsck-objects";
                Description = "For internal use only.";
            },
            [ValueParameter]@{
                Keys = @("--threads");
                Name = "threads";
                Description = "Specifies the number of threads to spawn when resolving deltas. This requires that index-pack be compiled with pthreads otherwise this option is ignored with a warning. This is meant to reduce packing time on multiprocessor machines. The required amount of memory for the delta search window is however multiplied by the number of threads. Specifying 0 will cause Git to auto-detect the number of CPU’s and use maximum 3 threads.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--max-input-size");
                Name = "max-input-size";
                Description = "Die, if the pack is larger than <size>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--object-format");
                Name = "object-format";
                Description = "Specify the given object format (hash algorithm) for the pack. The valid values are sha1 and (if enabled) sha256. The default is the algorithm for the current repository (set by extensions.objectFormat), or sha1 if no value is set or outside a repository.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("init-db");
        Name = "init-db";
        Description = "Creates an empty Git repository";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("init");
        Name = "init";
        Description = "Create an empty Git repository or reinitialize an existing one";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Only print error and warning messages; all other output will be suppressed.";
            },
            [FlagParameter]@{
                Keys = @("--bare");
                Name = "bare";
                Description = "Create a bare repository. If GIT_DIR environment is not set, it is set to the current working directory.";
            },
            [ValueParameter]@{
                Keys = @("--object-format");
                Name = "object-format";
                Description = "Specify the given object format (hash algorithm) for the repository. The valid values are sha1 and (if enabled) sha256. sha1 is the default.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--template");
                Name = "template";
                Description = "Specify the directory from which templates will be used. (See the `"TEMPLATE DIRECTORY`" section below.)";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--separate-git-dir");
                Name = "separate-git-dir";
                Description = "Instead of initializing the repository as a directory to either $GIT_DIR or ./.git/, create a text file there containing the path to the actual repository. This file acts as filesystem-agnostic Git symbolic link to the repository.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--initial-branch", "-b");
                Name = "initial-branch";
                Description = "Use the specified name for the initial branch in the newly created repository. If not specified, fall back to the default name (currently master, but this is subject to change in the future; the name can be customized via the init.defaultBranch configuration variable).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--shared");
                Name = "shared";
                Description = "Specify that the Git repository is to be shared amongst several users. This allows users belonging to the same group to push into that repository. When specified, the config variable `"core.sharedRepository`" is set so that files and directories under $GIT_DIR are created with the requested permissions. When not specified, Git will use permissions reported by umask(2).";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("interpret-trailers");
        Name = "interpret-trailers";
        Description = "Add or parse structured information in commit messages";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--in-place");
                Name = "in-place";
                Description = "Edit the files in place.";
            },
            [FlagParameter]@{
                Keys = @("--trim-empty");
                Name = "trim-empty";
                Description = "If the <value> part of any trailer contains only whitespace, the whole trailer will be removed from the resulting message. This applies to existing trailers as well as new trailers.";
            },
            [ValueParameter]@{
                Keys = @("--trailer");
                Name = "trailer";
                Description = "Specify a (<token>, <value>) pair that should be applied as a trailer to the input messages. See the description of this command.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--where");
                Name = "where";
                Description = "Specify where all new trailers will be added. A setting provided with --where overrides all configuration variables and applies to all --trailer options until the next occurrence of --where or --no-where. Possible values are after, before, end or start.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-where");
            },
            [FlagParameter]@{
                Keys = @("--no-where");
                Name = "no-where";
                Description = "Specify where all new trailers will be added. A setting provided with --where overrides all configuration variables and applies to all --trailer options until the next occurrence of --where or --no-where. Possible values are after, before, end or start.";
                Condition = [ExclusiveParameterCondition]::new("where");
            },
            [ValueParameter]@{
                Keys = @("--if-exists");
                Name = "if-exists";
                Description = "Specify what action will be performed when there is already at least one trailer with the same <token> in the message. A setting provided with --if-exists overrides all configuration variables and applies to all --trailer options until the next occurrence of --if-exists or --no-if-exists. Possible actions are addIfDifferent, addIfDifferentNeighbor, add, replace and doNothing.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-if-exists");
            },
            [FlagParameter]@{
                Keys = @("--no-if-exists");
                Name = "no-if-exists";
                Description = "Specify what action will be performed when there is already at least one trailer with the same <token> in the message. A setting provided with --if-exists overrides all configuration variables and applies to all --trailer options until the next occurrence of --if-exists or --no-if-exists. Possible actions are addIfDifferent, addIfDifferentNeighbor, add, replace and doNothing.";
                Condition = [ExclusiveParameterCondition]::new("if-exists");
            },
            [ValueParameter]@{
                Keys = @("--if-missing");
                Name = "if-missing";
                Description = "Specify what action will be performed when there is no other trailer with the same <token> in the message. A setting provided with --if-missing overrides all configuration variables and applies to all --trailer options until the next occurrence of --if-missing or --no-if-missing. Possible actions are doNothing or add.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-if-missing");
            },
            [FlagParameter]@{
                Keys = @("--no-if-missing");
                Name = "no-if-missing";
                Description = "Specify what action will be performed when there is no other trailer with the same <token> in the message. A setting provided with --if-missing overrides all configuration variables and applies to all --trailer options until the next occurrence of --if-missing or --no-if-missing. Possible actions are doNothing or add.";
                Condition = [ExclusiveParameterCondition]::new("if-missing");
            },
            [FlagParameter]@{
                Keys = @("--only-trailers");
                Name = "only-trailers";
                Description = "Output only the trailers, not any other parts of the input.";
            },
            [FlagParameter]@{
                Keys = @("--only-input");
                Name = "only-input";
                Description = "Output only trailers that exist in the input; do not add any from the command-line or by following configured trailer.* rules.";
            },
            [FlagParameter]@{
                Keys = @("--unfold");
                Name = "unfold";
                Description = "Remove any whitespace-continuation in trailers, so that each trailer appears on a line by itself with its full content.";
            },
            [FlagParameter]@{
                Keys = @("--parse");
                Name = "parse";
                Description = "A convenience alias for --only-trailers --only-input --unfold.";
            },
            [FlagParameter]@{
                Keys = @("--no-divider");
                Name = "no-divider";
                Description = "Do not treat --- as the end of the commit message. Use this when you know your input contains just the commit message itself (and not an email or the output of git format-patch).";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("ls-files");
        Name = "ls-files";
        Description = "Show information about files in the index and the working tree";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--cached", "-c");
                Name = "cached";
                Description = "Show cached files in the output (default)";
            },
            [FlagParameter]@{
                Keys = @("--deleted", "-d");
                Name = "deleted";
                Description = "Show deleted files in the output";
            },
            [FlagParameter]@{
                Keys = @("--modified", "-m");
                Name = "modified";
                Description = "Show modified files in the output";
            },
            [FlagParameter]@{
                Keys = @("--others", "-o");
                Name = "others";
                Description = "Show other (i.e. untracked) files in the output";
            },
            [FlagParameter]@{
                Keys = @("--ignored", "-i");
                Name = "ignored";
                Description = "Show only ignored files in the output. When showing files in the index, print only those matched by an exclude pattern. When showing `"other`" files, show only those matched by an exclude pattern. Standard ignore rules are not automatically activated, therefore at least one of the --exclude* options is required.";
            },
            [FlagParameter]@{
                Keys = @("--stage", "-s");
                Name = "stage";
                Description = "Show staged contents' mode bits, object name and stage number in the output.";
            },
            [FlagParameter]@{
                Keys = @("--directory");
                Name = "directory";
                Description = "If a whole directory is classified as `"other`", show just its name (with a trailing slash) and not its whole contents.";
            },
            [FlagParameter]@{
                Keys = @("--no-empty-directory");
                Name = "no-empty-directory";
                Description = "Do not list empty directories. Has no effect without --directory.";
            },
            [FlagParameter]@{
                Keys = @("--unmerged", "-u");
                Name = "unmerged";
                Description = "Show unmerged files in the output (forces --stage)";
            },
            [FlagParameter]@{
                Keys = @("--killed", "-k");
                Name = "killed";
                Description = "Show files on the filesystem that need to be removed due to file/directory conflicts for checkout-index to succeed.";
            },
            [FlagParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "\0 line termination on output and do not quote filenames. See OUTPUT below for more information.";
            },
            [FlagParameter]@{
                Keys = @("--deduplicate");
                Name = "deduplicate";
                Description = "When only filenames are shown, suppress duplicates that may come from having multiple stages during a merge, or giving --deleted and --modified option at the same time. When any of the -t, --unmerged, or --stage option is in use, this option has no effect.";
            },
            [ValueParameter]@{
                Keys = @("--exclude", "-x");
                Name = "exclude";
                Description = "Skip untracked files matching pattern. Note that pattern is a shell wildcard pattern. See EXCLUDE PATTERNS below for more information.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--exclude-from", "-X");
                Name = "exclude-from";
                Description = "Read exclude patterns from <file>; 1 per line.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--exclude-per-directory");
                Name = "exclude-per-directory";
                Description = "Read additional exclude patterns that apply only to the directory and its subdirectories in <file>.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--exclude-standard");
                Name = "exclude-standard";
                Description = "Add the standard Git exclusions: .git/info/exclude, .gitignore in each directory, and the user’s global exclusion file.";
            },
            [FlagParameter]@{
                Keys = @("--error-unmatch");
                Name = "error-unmatch";
                Description = "If any <file> does not appear in the index, treat this as an error (return 1).";
            },
            [ValueParameter]@{
                Keys = @("--with-tree");
                Name = "with-tree";
                Description = "When using --error-unmatch to expand the user supplied <file> (i.e. path pattern) arguments to paths, pretend that paths which were removed in the index since the named <tree-ish> are still present. Using this option with -s or -u options does not make any sense.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-t");
                Name = "t";
                Description = "This feature is semi-deprecated. For scripting purpose, git-status1--porcelain and git-diff-files1--name-status are almost always superior alternatives, and users should look at git-status1--short or git-diff1--name-status for more user-friendly alternatives.";
            },
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Similar to -t, but use lowercase letters for files that are marked as assume unchanged (see git-update-index1).";
            },
            [FlagParameter]@{
                Keys = @("-f");
                Name = "f";
                Description = "Similar to -t, but use lowercase letters for files that are marked as fsmonitor valid (see git-update-index1).";
            },
            [FlagParameter]@{
                Keys = @("--full-name");
                Name = "full-name";
                Description = "When run from a subdirectory, the command usually outputs paths relative to the current directory. This option forces paths to be output relative to the project top directory.";
            },
            [FlagParameter]@{
                Keys = @("--recurse-submodules");
                Name = "recurse-submodules";
                Description = "Recursively calls ls-files on each active submodule in the repository. Currently there is only support for the --cached mode.";
            },
            [ValueParameter]@{
                Keys = @("--abbrev");
                Name = "abbrev";
                Description = "Instead of showing the full 40-byte hexadecimal object lines, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object. Non default number of digits can be specified with --abbrev=<n>.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--debug");
                Name = "debug";
                Description = "After each line that describes a file, add more data about its cache entry. This is intended to show as much information as possible for manual inspection; the exact format may change at any time.";
            },
            [FlagParameter]@{
                Keys = @("--eol");
                Name = "eol";
                Description = "Show &lt;eolinfo&gt; and &lt;eolattr&gt; of files. &lt;eolinfo&gt; is the file content identification used by Git when the `"text`" attribute is `"auto`" (or not set and core.autocrlf is not false). &lt;eolinfo&gt; is either `"-text`", `"none`", `"lf`", `"crlf`", `"mixed`" or `"`".";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Files to show. If no files are given all files which match the other specified criteria are shown.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("ls-remote");
        Name = "ls-remote";
        Description = "List references in a remote repository";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--tags", "--heads", "-t", "-h");
                Name = "tags";
                Description = "Limit to only refs/heads and refs/tags, respectively. These options are not mutually exclusive; when given both, references stored in refs/heads and refs/tags are displayed. Note that git ls-remote -h used without anything else on the command line gives help, consistent with other git subcommands.";
            },
            [FlagParameter]@{
                Keys = @("--refs");
                Name = "refs";
                Description = "Do not show peeled tags or pseudorefs like HEAD in the output.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Do not print remote URL to stderr.";
            },
            [ValueParameter]@{
                Keys = @("--upload-pack");
                Name = "upload-pack";
                Description = "Specify the full path of git-upload-pack on the remote host. This allows listing references from repositories accessed via SSH and where the SSH daemon does not use the PATH configured by the user.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--exit-code");
                Name = "exit-code";
                Description = "Exit with status `"2`" when no matching refs are found in the remote repository. Usually the command exits with status `"0`" to indicate it successfully talked with the remote repository, whether it found any matching refs.";
            },
            [FlagParameter]@{
                Keys = @("--get-url");
                Name = "get-url";
                Description = "Expand the URL of the given remote repository taking into account any `"url.&lt;base&gt;.insteadOf`" config setting (See git-config1) and exit without talking to the remote.";
            },
            [FlagParameter]@{
                Keys = @("--symref");
                Name = "symref";
                Description = "In addition to the object pointed by it, show the underlying ref pointed by it when showing a symbolic ref. Currently, upload-pack only shows the symref HEAD, so it will be the only one shown by ls-remote.";
            },
            [ValueParameter]@{
                Keys = @("--sort");
                Name = "sort";
                Description = "Sort based on the key given. Prefix - to sort in descending order of the value. Supports `"version:refname`" or `"v:refname`" (tag names are treated as versions). The `"version:refname`" sort order can also be affected by the `"versionsort.suffix`" configuration variable. See git-for-each-ref1 for more sort options, but be aware keys like committerdate that require access to the objects themselves will not work for refs whose objects have not yet been fetched from the remote, and will give a missing object error.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--server-option", "-o");
                Name = "server-option";
                Description = "Transmit the given string to the server when communicating using protocol version 2. The given string must not contain a NUL or LF character. When multiple --server-option=<option> are given, they are all sent to the other side in the order listed on the command line.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The `"remote`" repository to query. This parameter can be either a URL or the name of a remote (see the GIT URLS and REMOTES sections of git-fetch1).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "When unspecified, all references, after filtering done with --heads and --tags, are shown. When <refs>… are specified, only references matching the given patterns are displayed.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("ls-tree");
        Name = "ls-tree";
        Description = "List the contents of a tree object";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Id of a tree-ish.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-d");
                Name = "d";
                Description = "Show only the named tree entry itself, not its children.";
            },
            [FlagParameter]@{
                Keys = @("-r");
                Name = "r";
                Description = "Recurse into sub-trees.";
            },
            [FlagParameter]@{
                Keys = @("-t");
                Name = "t";
                Description = "Show tree entries even when going to recurse them. Has no effect if -r was not passed. -d implies -t.";
            },
            [FlagParameter]@{
                Keys = @("--long", "-l");
                Name = "long";
                Description = "Show object size of blob (file) entries.";
            },
            [FlagParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "\0 line termination on output and do not quote filenames. See OUTPUT FORMAT below for more information.";
            },
            [FlagParameter]@{
                Keys = @("--name-status", "--name-only");
                Name = "name-status";
                Description = "List only filenames (instead of the `"long`" output), one per line.";
            },
            [ValueParameter]@{
                Keys = @("--abbrev");
                Name = "abbrev";
                Description = "Instead of showing the full 40-byte hexadecimal object lines, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object. Non default number of digits can be specified with --abbrev=<n>.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--full-name");
                Name = "full-name";
                Description = "Instead of showing the path names relative to the current working directory, show the full path names.";
            },
            [FlagParameter]@{
                Keys = @("--full-tree");
                Name = "full-tree";
                Description = "Do not limit the listing to the current working directory. Implies --full-name.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "When paths are given, show them (note that this isn’t really raw pathnames, but rather a list of patterns to match). Otherwise implicitly uses the root level of the tree as the sole path argument.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("mailinfo");
        Name = "mailinfo";
        Description = "Extracts patch and authorship from a single e-mail message";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-k");
                Name = "k";
                Description = "Usually the program removes email cruft from the Subject: header line to extract the title line for the commit log message. This option prevents this munging, and is most useful when used to read back git format-patch -k output.";
            },
            [FlagParameter]@{
                Keys = @("-b");
                Name = "b";
                Description = "When -k is not in effect, all leading strings bracketed with [ and ] pairs are stripped. This option limits the stripping to only the pairs whose bracketed string contains the word `"PATCH`".";
            },
            [FlagParameter]@{
                Keys = @("-u");
                Name = "u";
                Description = "The commit log message, author name and author email are taken from the e-mail, and after minimally decoding MIME transfer encoding, re-coded in the charset specified by i18n.commitEncoding (defaulting to UTF-8) by transliterating them. This used to be optional but now it is the default.";
            },
            [ValueParameter]@{
                Keys = @("--encoding");
                Name = "encoding";
                Description = "Similar to -u. But when re-coding, the charset specified here is used instead of the one specified by i18n.commitEncoding or UTF-8.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-n");
                Name = "n";
                Description = "Disable all charset re-coding of the metadata.";
            },
            [FlagParameter]@{
                Keys = @("--message-id", "-m");
                Name = "message-id";
                Description = "Copy the Message-ID header at the end of the commit message. This is useful in order to associate commits with mailing list discussions.";
            },
            [FlagParameter]@{
                Keys = @("--scissors");
                Name = "scissors";
                Description = "Remove everything in body before a scissors line (e.g. `"-- &gt;8 --`"). The line represents scissors and perforation marks, and is used to request the reader to cut the message at that line. If that line appears in the body of the message before the patch, everything before it (including the scissors line itself) is ignored when this option is used.";
                Condition = [ExclusiveParameterCondition]::new("no-scissors");
            },
            [FlagParameter]@{
                Keys = @("--no-scissors");
                Name = "no-scissors";
                Description = "Ignore scissors lines. Useful for overriding mailinfo.scissors settings.";
                Condition = [ExclusiveParameterCondition]::new("scissors");
            },
            [ValueParameter]@{
                Keys = @("--quoted-cr");
                Name = "quoted-cr";
                Description = "Action when processes email messages sent with base64 or quoted-printable encoding, and the decoded lines end with a CRLF instead of a simple LF.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The commit log message extracted from e-mail, usually except the title line which comes from e-mail Subject.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The patch extracted from e-mail.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("mailsplit");
        Name = "mailsplit";
        Description = "Simple UNIX mbox splitter program";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Mbox file to split. If not given, the mbox is read from the standard input.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Root of the Maildir to split. This directory should contain the cur, tmp and new subdirectories.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-o");
                Name = "o";
                Description = "Directory in which to place the individual messages.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-b");
                Name = "b";
                Description = "If any file doesn’t begin with a From line, assume it is a single mail message instead of signaling error.";
            },
            [ValueParameter]@{
                Keys = @("-d");
                Name = "d";
                Description = "Instead of the default 4 digits with leading zeros, different precision can be specified for the generated filenames.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-f");
                Name = "f";
                Description = "Skip the first <nn> numbers, for example if -f3 is specified, start the numbering with 0004.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--keep-cr");
                Name = "keep-cr";
                Description = "Do not remove \r from lines ending with \r\n.";
            },
            [FlagParameter]@{
                Keys = @("--mboxrd");
                Name = "mboxrd";
                Description = "Input is of the `"mboxrd`" format and `"^&gt;+From `" line escaping is reversed.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("maintenance");
        Name = "maintenance";
        Description = "Run tasks to optimize Git repository data";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--auto");
                Name = "auto";
                Description = "When combined with the run subcommand, run maintenance tasks only if certain thresholds are met. For example, the gc task runs when the number of loose objects exceeds the number stored in the gc.auto config setting, or when the number of pack-files exceeds the gc.autoPackLimit config setting. Not compatible with the --schedule option.";
            },
            [FlagParameter]@{
                Keys = @("--schedule");
                Name = "schedule";
                Description = "When combined with the run subcommand, run maintenance tasks only if certain time conditions are met, as specified by the maintenance.<task>.schedule config value for each <task>. This config value specifies a number of seconds since the last time that task ran, according to the maintenance.<task>.lastRun config value. The tasks that are tested are those provided by the --task=<task> option(s) or those with maintenance.<task>.enabled set to true.";
            },
            [FlagParameter]@{
                Keys = @("--quiet");
                Name = "quiet";
                Description = "Do not report progress or other information over stderr.";
            },
            [ValueParameter]@{
                Keys = @("--task");
                Name = "task";
                Description = "If this option is specified one or more times, then only run the specified tasks in the specified order. If no --task=<task> arguments are specified, then only the tasks with maintenance.<task>.enabled configured as true are considered. See the TASKS section for the list of accepted <task> values.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--scheduler");
                Name = "scheduler";
                Description = "When combined with the start subcommand, specify the scheduler for running the hourly, daily and weekly executions of git maintenance run. Possible values for <scheduler> are auto, crontab (POSIX), systemd-timer (Linux), launchctl (macOS), and schtasks (Windows). When auto is specified, the appropriate platform-specific scheduler is used; on Linux, systemd-timer is used if available, otherwise crontab. Default is auto.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("merge-base");
        Name = "merge-base";
        Description = "Find as good common ancestors as possible for a merge";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--all", "-a");
                Name = "all";
                Description = "Output all merge bases for the commits, instead of just one.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("merge-file");
        Name = "merge-file";
        Description = "Run a three-way file merge";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("-L");
                Name = "L";
                Description = "This option may be given up to three times, and specifies labels to be used in place of the corresponding file names in conflict reports. That is, git merge-file -L x -L y -L z a b c generates output that looks like it came from files x, y and z instead of from files a, b and c.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-p");
                Name = "p";
                Description = "Send results to standard output instead of overwriting <current-file>.";
            },
            [FlagParameter]@{
                Keys = @("-q");
                Name = "q";
                Description = "Quiet; do not warn about conflicts.";
            },
            [FlagParameter]@{
                Keys = @("--diff3");
                Name = "diff3";
                Description = "Show conflicts in `"diff3`" style.";
            },
            [FlagParameter]@{
                Keys = @("--union", "--theirs", "--ours");
                Name = "union";
                Description = "Instead of leaving conflicts in the file, resolve conflicts favouring our (or their or both) side of the lines.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("merge-index");
        Name = "merge-index";
        Description = "Run a merge for files needing merging";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
            [FlagParameter]@{
                Keys = @("-a");
                Name = "a";
                Description = "Run merge against all files in the index that need merging.";
            },
            [FlagParameter]@{
                Keys = @("-o");
                Name = "o";
                Description = "Instead of stopping at the first failed merge, do all of them in one shot - continue with merging even when previous merges returned errors, and only return the error code after all the merges.";
            },
            [FlagParameter]@{
                Keys = @("-q");
                Name = "q";
                Description = "Do not complain about a failed merge program (a merge program failure usually indicates conflicts during the merge). This is for porcelains which might want to emit custom messages.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("merge-one-file");
        Name = "merge-one-file";
        Description = "The standard helper program to use with git-merge-index";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("merge-tree");
        Name = "merge-tree";
        Description = "Show three-way merge without touching index";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("mergetool--lib");
        Name = "mergetool--lib";
        Description = "Common Git merge tool shell scriptlets";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("mergetool");
        Name = "mergetool";
        Description = "Run merge conflict resolution tools to resolve merge conflicts";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--tool", "-t");
                Name = "tool";
                Description = "Use the merge resolution program specified by <tool>. Valid values include emerge, gvimdiff, kdiff3, meld, vimdiff, and tortoisemerge. Run git mergetool --tool-help for the list of valid <tool> settings.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--tool-help");
                Name = "tool-help";
                Description = "Print a list of merge tools that may be used with --tool.";
            },
            [FlagParameter]@{
                Keys = @("--no-prompt", "-y");
                Name = "no-prompt";
                Description = "Don’t prompt before each invocation of the merge resolution program. This is the default if the merge resolution program is explicitly specified with the --tool option or with the merge.tool configuration variable.";
                Condition = [ExclusiveParameterCondition]::new("prompt");
            },
            [FlagParameter]@{
                Keys = @("--prompt");
                Name = "prompt";
                Description = "Prompt before each invocation of the merge resolution program to give the user a chance to skip the path.";
                Condition = [ExclusiveParameterCondition]::new("no-prompt");
            },
            [FlagParameter]@{
                Keys = @("--gui", "-g");
                Name = "gui";
                Description = "When git-mergetool is invoked with the -g or --gui option the default merge tool will be read from the configured merge.guitool variable instead of merge.tool. If merge.guitool is not set, we will fallback to the tool configured under merge.tool.";
                Condition = [ExclusiveParameterCondition]::new("no-gui");
            },
            [FlagParameter]@{
                Keys = @("--no-gui");
                Name = "no-gui";
                Description = "This overrides a previous -g or --gui setting and reads the default merge tool will be read from the configured merge.tool variable.";
                Condition = [ExclusiveParameterCondition]::new("gui");
            },
            [ValueParameter]@{
                Keys = @("-O");
                Name = "O";
                Description = "Process files in the order specified in the <orderfile>, which has one shell glob pattern per line. This overrides the diff.orderFile configuration variable (see git-config1). To cancel diff.orderFile, use -O/dev/null.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("mktag");
        Name = "mktag";
        Description = "Creates a tag object with extra validation";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--strict");
                Name = "strict";
                Description = "By default mktag turns on the equivalent of git-fsck1--strict mode. Use --no-strict to disable it.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("mktree");
        Name = "mktree";
        Description = "Build a tree-object from ls-tree formatted text";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "Read the NUL-terminated ls-tree -z output instead.";
            },
            [FlagParameter]@{
                Keys = @("--missing");
                Name = "missing";
                Description = "Allow missing objects. The default behaviour (without this option) is to verify that each tree entry’s sha1 identifies an existing object. This option has no effect on the treatment of gitlink entries (aka `"submodules`") which are always allowed to be missing.";
            },
            [FlagParameter]@{
                Keys = @("--batch");
                Name = "batch";
                Description = "Allow building of more than one tree object before exiting. Each tree is separated by as single blank line. The final new-line is optional. Note - if the -z option is used, lines are terminated with NUL.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("multi-pack-index");
        Name = "multi-pack-index";
        Description = "Write and verify multi-pack-indexes";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--object-dir");
                Name = "object-dir";
                Description = "Use given directory for the location of Git objects. We check <dir>/packs/multi-pack-index for the current MIDX file, and <dir>/packs for the pack-files to index.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Turn progress on/off explicitly. If neither is specified, progress is shown if standard error is connected to a terminal. Supported by sub-commands write, verify, expire, and `repack.";
                Condition = [ExclusiveParameterCondition]::new("no-progress");
            },
            [FlagParameter]@{
                Keys = @("--no-progress");
                Name = "no-progress";
                Description = "Turn progress on/off explicitly. If neither is specified, progress is shown if standard error is connected to a terminal. Supported by sub-commands write, verify, expire, and `repack.";
                Condition = [ExclusiveParameterCondition]::new("progress");
            },
            [FlagParameter]@{
                Keys = @("write");
                Name = "write";
                Description = "Write a new MIDX file. The following options are available for the write sub-command:";
            },
            [FlagParameter]@{
                Keys = @("verify");
                Name = "verify";
                Description = "Verify the contents of the MIDX file.";
            },
            [FlagParameter]@{
                Keys = @("expire");
                Name = "expire";
                Description = "Delete the pack-files that are tracked by the MIDX file, but have no objects referenced by the MIDX. Rewrite the MIDX file afterward to remove all references to these pack-files.";
            },
            [FlagParameter]@{
                Keys = @("repack");
                Name = "repack";
                Description = "Create a new pack-file containing objects in small pack-files referenced by the multi-pack-index. If the size given by the --batch-size=&lt;size&gt; argument is zero, then create a pack containing all objects referenced by the multi-pack-index. For a non-zero batch size, Select the pack-files by examining packs from oldest-to-newest, computing the `"expected size`" by counting the number of objects in the pack referenced by the multi-pack-index, then divide by the total number of objects in the pack and multiply by the pack size. We select packs with expected size below the batch size until the set of packs have total expected size at least the batch size, or all pack-files are considered. If only one pack-file is selected, then do nothing. If a new pack-file is created, rewrite the multi-pack-index to reference the new pack-file. A later run of git multi-pack-index expire will delete the pack-files that were part of this batch.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("mv");
        Name = "mv";
        Description = "Move or rename a file, a directory, or a symlink";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "Force renaming or moving of a file even if the target exists";
            },
            [FlagParameter]@{
                Keys = @("-k");
                Name = "k";
                Description = "Skip move or rename actions which would lead to an error condition. An error happens when a source is neither existing nor controlled by Git, or when it would overwrite an existing file unless -f is given.";
            },
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "Do nothing; only show what would happen";
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Report the names of files as they are moved.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("name-rev");
        Name = "name-rev";
        Description = "Find symbolic names for given revs";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--tags");
                Name = "tags";
                Description = "Do not use branch names, but only tags to name the commits";
            },
            [ValueParameter]@{
                Keys = @("--refs");
                Name = "refs";
                Description = "Only use refs whose names match a given shell pattern. The pattern can be one of branch name, tag name or fully qualified ref name. If given multiple times, use refs whose names match any of the given shell patterns. Use --no-refs to clear any previous ref patterns given.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--exclude");
                Name = "exclude";
                Description = "Do not use any ref whose name matches a given shell pattern. The pattern can be one of branch name, tag name or fully qualified ref name. If given multiple times, a ref will be excluded when it matches any of the given patterns. When used together with --refs, a ref will be used as a match only when it matches at least one --refs pattern and does not match any --exclude patterns. Use --no-exclude to clear the list of exclude patterns.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "List all commits reachable from all refs";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Transform stdin by substituting all the 40-character SHA-1 hexes (say $hex) with `"$hex ($rev_name)`". When used with --name-only, substitute with `"$rev_name`", omitting $hex altogether. Intended for the scripter’s use.";
            },
            [FlagParameter]@{
                Keys = @("--name-only");
                Name = "name-only";
                Description = "Instead of printing both the SHA-1 and the name, print only the name. If given with --tags the usual tag prefix of `"tags/`" is also omitted from the name, matching the output of git-describe more closely.";
            },
            [FlagParameter]@{
                Keys = @("--no-undefined");
                Name = "no-undefined";
                Description = "Die with error code != 0 when a reference is undefined, instead of printing undefined.";
            },
            [FlagParameter]@{
                Keys = @("--always");
                Name = "always";
                Description = "Show uniquely abbreviated commit object as fallback.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("notes");
        Name = "notes";
        Description = "Add or inspect object notes";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "When adding notes to an object that already has notes, overwrite the existing notes (instead of aborting).";
            },
            [ValueParameter]@{
                Keys = @("--message", "-m");
                Name = "message";
                Description = "Use the given note message (instead of prompting). If multiple -m options are given, their values are concatenated as separate paragraphs. Lines starting with # and empty lines other than a single line between paragraphs will be stripped out.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--file", "-F");
                Name = "file";
                Description = "Take the note message from the given file. Use - to read the note message from the standard input. Lines starting with # and empty lines other than a single line between paragraphs will be stripped out.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--reuse-message", "-C");
                Name = "reuse-message";
                Description = "Take the given blob object (for example, another note) as the note message. (Use git notes copy <object> instead to copy notes between objects.)";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--reedit-message", "-c");
                Name = "reedit-message";
                Description = "Like -C, but with -c the editor is invoked, so that the user can further edit the note message.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--allow-empty");
                Name = "allow-empty";
                Description = "Allow an empty note object to be stored. The default behavior is to automatically remove empty notes.";
            },
            [ValueParameter]@{
                Keys = @("--ref");
                Name = "ref";
                Description = "Manipulate the notes tree in &lt;ref&gt;. This overrides GIT_NOTES_REF and the `"core.notesRef`" configuration. The ref specifies the full refname when it begins with refs/notes/; when it begins with notes/, refs/ and otherwise refs/notes/ is prefixed to form a full name of the ref.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ignore-missing");
                Name = "ignore-missing";
                Description = "Do not consider it an error to request removing notes from an object that does not have notes attached to it.";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Also read the object names to remove notes from the standard input (there is no reason you cannot combine this with object names from the command line).";
            },
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "Do not remove anything; just report the object names whose notes would be removed.";
            },
            [ValueParameter]@{
                Keys = @("--strategy", "-s");
                Name = "strategy";
                Description = "When merging notes, resolve notes conflicts using the given strategy. The following strategies are recognized: `"manual`" (default), `"ours`", `"theirs`", `"union`" and `"cat_sort_uniq`". This option overrides the `"notes.mergeStrategy`" configuration setting. See the `"NOTES MERGE STRATEGIES`" section below for more information on each notes merge strategy.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--commit");
                Name = "commit";
                Description = "Finalize an in-progress git notes merge. Use this option when you have resolved the conflicts that git notes merge stored in .git/NOTES_MERGE_WORKTREE. This amends the partial merge commit created by git notes merge (stored in .git/NOTES_MERGE_PARTIAL) by adding the notes in .git/NOTES_MERGE_WORKTREE. The notes ref stored in the .git/NOTES_MERGE_REF symref is updated to the resulting commit.";
            },
            [FlagParameter]@{
                Keys = @("--abort");
                Name = "abort";
                Description = "Abort/reset an in-progress git notes merge, i.e. a notes merge with conflicts. This simply removes all files related to the notes merge.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "When merging notes, operate quietly.";
                Condition = [ExclusiveParameterCondition]::new("verbose");
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "When merging notes, be more verbose. When pruning notes, report all object names whose notes are removed.";
                Condition = [ExclusiveParameterCondition]::new("quiet");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("p4");
        Name = "p4";
        Description = "Import from and submit to Perforce repositories";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("pack-objects");
        Name = "pack-objects";
        Description = "Create a packed archive of objects";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("base-name");
                Name = "base-name";
                Description = "Write into pairs of files (.pack and .idx), using <base-name> to determine the name of the created file. When this option is used, the two files in a pair are written in <base-name>-<SHA-1>.{pack,idx} files. <SHA-1> is a hash based on the pack content and is written to the standard output of the command.";
            },
            [FlagParameter]@{
                Keys = @("--stdout");
                Name = "stdout";
                Description = "Write the pack contents (what would have been written to .pack file) out to the standard output.";
            },
            [FlagParameter]@{
                Keys = @("--revs");
                Name = "revs";
                Description = "Read the revision arguments from the standard input, instead of individual object names. The revision arguments are processed the same way as git rev-list with the --objects flag uses its commit arguments to build the list of objects it outputs. The objects on the resulting list are packed. Besides revisions, --not or --shallow <SHA-1> lines are also accepted.";
            },
            [FlagParameter]@{
                Keys = @("--unpacked");
                Name = "unpacked";
                Description = "This implies --revs. When processing the list of revision arguments read from the standard input, limit the objects packed to those that are not already packed.";
            },
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "This implies --revs. In addition to the list of revision arguments read from the standard input, pretend as if all refs under refs/ are specified to be included.";
            },
            [FlagParameter]@{
                Keys = @("--include-tag");
                Name = "include-tag";
                Description = "Include unasked-for annotated tags if the object they reference was included in the resulting packfile. This can be useful to send new tags to native Git clients.";
            },
            [FlagParameter]@{
                Keys = @("--stdin-packs");
                Name = "stdin-packs";
                Description = "Read the basenames of packfiles (e.g., pack-1234abcd.pack) from the standard input, instead of object names or revision arguments. The resulting pack contains all objects listed in the included packs (those not beginning with ^), excluding any objects listed in the excluded packs (beginning with ^).";
            },
            [ValueParameter]@{
                Keys = @("--depth", "--window");
                Name = "depth";
                Description = "These two options affect how the objects contained in the pack are stored using delta compression. The objects are first internally sorted by type, size and optionally names and compared against the other objects within --window to see if using delta compression saves space. --depth limits the maximum delta depth; making it too deep affects the performance on the unpacker side, because delta data needs to be applied that many times to get to the necessary object.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--window-memory");
                Name = "window-memory";
                Description = "This option provides an additional limit on top of --window; the window size will dynamically scale down so as to not take up more than &lt;n&gt; bytes in memory. This is useful in repositories with a mix of large and small objects to not run out of memory with a large window, but still be able to take advantage of the large window for the smaller objects. The size can be suffixed with `"k`", `"m`", or `"g`". --window-memory=0 makes memory usage unlimited. The default is taken from the pack.windowMemory configuration variable.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--max-pack-size");
                Name = "max-pack-size";
                Description = "In unusual scenarios, you may not be able to create files larger than a certain size on your filesystem, and this option can be used to tell the command to split the output packfile into multiple independent packfiles, each not larger than the given size. The size can be suffixed with `"k`", `"m`", or `"g`". The minimum size allowed is limited to 1 MiB. The default is unlimited, unless the config variable pack.packSizeLimit is set. Note that this option may result in a larger and slower repository; see the discussion in pack.packSizeLimit.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--honor-pack-keep");
                Name = "honor-pack-keep";
                Description = "This flag causes an object already in a local pack that has a .keep file to be ignored, even if it would have otherwise been packed.";
            },
            [ValueParameter]@{
                Keys = @("--keep-pack");
                Name = "keep-pack";
                Description = "This flag causes an object already in the given pack to be ignored, even if it would have otherwise been packed. <pack-name> is the pack file name without leading directory (e.g. pack-123.pack). The option could be specified multiple times to keep multiple packs.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--incremental");
                Name = "incremental";
                Description = "This flag causes an object already in a pack to be ignored even if it would have otherwise been packed.";
            },
            [FlagParameter]@{
                Keys = @("--local");
                Name = "local";
                Description = "This flag causes an object that is borrowed from an alternate object store to be ignored even if it would have otherwise been packed.";
            },
            [FlagParameter]@{
                Keys = @("--non-empty");
                Name = "non-empty";
                Description = "Only create a packed archive if it would contain at least one object.";
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Progress status is reported on the standard error stream by default when it is attached to a terminal, unless -q is specified. This flag forces progress status even if the standard error stream is not directed to a terminal.";
            },
            [FlagParameter]@{
                Keys = @("--all-progress");
                Name = "all-progress";
                Description = "When --stdout is specified then progress report is displayed during the object count and compression phases but inhibited during the write-out phase. The reason is that in some cases the output stream is directly linked to another command which may wish to display progress status of its own as it processes incoming pack data. This flag is like --progress except that it forces progress report for the write-out phase as well even if --stdout is used.";
            },
            [FlagParameter]@{
                Keys = @("--all-progress-implied");
                Name = "all-progress-implied";
                Description = "This is used to imply --all-progress whenever progress display is activated. Unlike --all-progress this flag doesn’t actually force any progress display by itself.";
            },
            [FlagParameter]@{
                Keys = @("-q");
                Name = "q";
                Description = "This flag makes the command not to report its progress on the standard error stream.";
            },
            [FlagParameter]@{
                Keys = @("--no-reuse-delta");
                Name = "no-reuse-delta";
                Description = "When creating a packed archive in a repository that has existing packs, the command reuses existing deltas. This sometimes results in a slightly suboptimal pack. This flag tells the command not to reuse existing deltas but compute them from scratch.";
            },
            [FlagParameter]@{
                Keys = @("--no-reuse-object");
                Name = "no-reuse-object";
                Description = "This flag tells the command not to reuse existing object data at all, including non deltified object, forcing recompression of everything. This implies --no-reuse-delta. Useful only in the obscure case where wholesale enforcement of a different compression level on the packed data is desired.";
            },
            [ValueParameter]@{
                Keys = @("--compression");
                Name = "compression";
                Description = "Specifies compression level for newly-compressed data in the generated pack. If not specified, pack compression level is determined first by pack.compression, then by core.compression, and defaults to -1, the zlib default, if neither is set. Add --no-reuse-object if you want to force a uniform compression level on all data no matter the source.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--sparse");
                Name = "sparse";
                Description = "Toggle the `"sparse`" algorithm to determine which objects to include in the pack, when combined with the `"--revs`" option. This algorithm only walks trees that appear in paths that introduce new objects. This can have significant performance benefits when computing a pack to send a small change. However, it is possible that extra objects are added to the pack-file if the included commits contain certain types of direct renames. If this option is not included, it defaults to the value of pack.useSparse, which is true unless otherwise specified.";
                Condition = [ExclusiveParameterCondition]::new("no-sparse");
            },
            [FlagParameter]@{
                Keys = @("--no-sparse");
                Name = "no-sparse";
                Description = "Toggle the `"sparse`" algorithm to determine which objects to include in the pack, when combined with the `"--revs`" option. This algorithm only walks trees that appear in paths that introduce new objects. This can have significant performance benefits when computing a pack to send a small change. However, it is possible that extra objects are added to the pack-file if the included commits contain certain types of direct renames. If this option is not included, it defaults to the value of pack.useSparse, which is true unless otherwise specified.";
                Condition = [ExclusiveParameterCondition]::new("sparse");
            },
            [FlagParameter]@{
                Keys = @("--thin");
                Name = "thin";
                Description = "Create a `"thin`" pack by omitting the common objects between a sender and a receiver in order to reduce network transfer. This option only makes sense in conjunction with --stdout.";
            },
            [FlagParameter]@{
                Keys = @("--shallow");
                Name = "shallow";
                Description = "Optimize a pack that will be provided to a client with a shallow repository. This option, combined with --thin, can result in a smaller pack at the cost of speed.";
            },
            [FlagParameter]@{
                Keys = @("--delta-base-offset");
                Name = "delta-base-offset";
                Description = "A packed archive can express the base object of a delta as either a 20-byte object name or as an offset in the stream, but ancient versions of Git don’t understand the latter. By default, git pack-objects only uses the former format for better compatibility. This option allows the command to use the latter format for compactness. Depending on the average delta chain length, this option typically shrinks the resulting packfile by 3-5 per-cent.";
            },
            [ValueParameter]@{
                Keys = @("--threads");
                Name = "threads";
                Description = "Specifies the number of threads to spawn when searching for best delta matches. This requires that pack-objects be compiled with pthreads otherwise this option is ignored with a warning. This is meant to reduce packing time on multiprocessor machines. The required amount of memory for the delta search window is however multiplied by the number of threads. Specifying 0 will cause Git to auto-detect the number of CPU’s and set the number of threads accordingly.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--index-version");
                Name = "index-version";
                Description = "This is intended to be used by the test suite only. It allows to force the version for the generated pack index, and to force 64-bit index entries on objects located above the given offset.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--keep-true-parents");
                Name = "keep-true-parents";
                Description = "With this option, parents that are hidden by grafts are packed nevertheless.";
            },
            [ValueParameter]@{
                Keys = @("--filter");
                Name = "filter";
                Description = "Requires --stdout. Omits certain objects (usually blobs) from the resulting packfile. See git-rev-list1 for valid <filter-spec> forms.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-filter");
            },
            [FlagParameter]@{
                Keys = @("--no-filter");
                Name = "no-filter";
                Description = "Turns off any previous --filter= argument.";
                Condition = [ExclusiveParameterCondition]::new("filter");
            },
            [ValueParameter]@{
                Keys = @("--missing");
                Name = "missing";
                Description = "A debug option to help with future `"partial clone`" development. This option specifies how missing objects are handled.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--exclude-promisor-objects");
                Name = "exclude-promisor-objects";
                Description = "Omit objects that are known to be in the promisor remote. (This option has the purpose of operating only on locally created objects, so that when we repack, we still maintain a distinction between locally created objects [without .promisor] and objects from the promisor remote [with .promisor].) This is used with partial clone.";
            },
            [FlagParameter]@{
                Keys = @("--keep-unreachable");
                Name = "keep-unreachable";
                Description = "Objects unreachable from the refs in packs named with --unpacked= option are added to the resulting pack, in addition to the reachable objects that are not in packs marked with *.keep files. This implies --revs.";
            },
            [FlagParameter]@{
                Keys = @("--pack-loose-unreachable");
                Name = "pack-loose-unreachable";
                Description = "Pack unreachable loose objects (and their loose counterparts removed). This implies --revs.";
            },
            [FlagParameter]@{
                Keys = @("--unpack-unreachable");
                Name = "unpack-unreachable";
                Description = "Keep unreachable objects in loose form. This implies --revs.";
            },
            [FlagParameter]@{
                Keys = @("--delta-islands");
                Name = "delta-islands";
                Description = "Restrict delta matches based on `"islands`". See DELTA ISLANDS below.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("pack-redundant");
        Name = "pack-redundant";
        Description = "Find redundant pack files";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "Processes all packs. Any filenames on the command line are ignored.";
            },
            [FlagParameter]@{
                Keys = @("--alt-odb");
                Name = "alt-odb";
                Description = "Don’t require objects present in packs from alternate object directories to be present in local packs.";
            },
            [FlagParameter]@{
                Keys = @("--verbose");
                Name = "verbose";
                Description = "Outputs some statistics to stderr. Has a small performance penalty.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("pack-refs");
        Name = "pack-refs";
        Description = "Pack heads and tags for efficient repository access";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "The command by default packs all tags and refs that are already packed, and leaves other refs alone. This is because branches are expected to be actively developed and packing their tips does not help performance. This option causes branch tips to be packed as well. Useful for a repository with many branches of historical interests.";
            },
            [FlagParameter]@{
                Keys = @("--no-prune");
                Name = "no-prune";
                Description = "The command usually removes loose refs under $GIT_DIR/refs hierarchy after packing them. This option tells it not to.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("patch-id");
        Name = "patch-id";
        Description = "Compute unique ID for a patch";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--stable");
                Name = "stable";
                Description = "Use a `"stable`" sum of hashes as the patch ID. With this option:";
            },
            [FlagParameter]@{
                Keys = @("--unstable");
                Name = "unstable";
                Description = "Use an `"unstable`" hash as the patch ID. With this option, the result produced is compatible with the patch-id value produced by git 1.9 and older. Users with pre-existing databases storing patch-ids produced by git 1.9 and older (who do not deal with reordered patches) may want to use this option.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("prune-packed");
        Name = "prune-packed";
        Description = "Remove extra objects that are already in pack files";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "Don’t actually remove any objects, only show those that would have been removed.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Squelch the progress indicator.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("prune");
        Name = "prune";
        Description = "Prune all unreachable objects from the object database";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "Do not remove anything; just report what it would remove.";
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Report all removed objects.";
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Show progress.";
            },
            [ValueParameter]@{
                Keys = @("--expire");
                Name = "expire";
                Description = "Only expire loose objects older than <time>.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "In addition to objects reachable from any of our references, keep objects reachable from listed <head>s.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("pull");
        Name = "pull";
        Description = "Fetch from and integrate with another repository or a local branch";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "This is passed to both underlying git-fetch to squelch reporting of during transfer, and underlying git-merge to squelch output during merging.";
                Condition = [ExclusiveParameterCondition]::new("verbose");
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Pass --verbose to git-fetch and git-merge.";
                Condition = [ExclusiveParameterCondition]::new("quiet");
            },
            [ValueParameter]@{
                Keys = @("--recurse-submodules");
                Name = "recurse-submodules";
                Description = "This option controls if new commits of populated submodules should be fetched, and if the working trees of active submodules should be updated, too (see git-fetch1, git-config1 and gitmodules5).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-recurse-submodules");
            },
            [ValueParameter]@{
                Keys = @("--no-recurse-submodules");
                Name = "no-recurse-submodules";
                Description = "This option controls if new commits of populated submodules should be fetched, and if the working trees of active submodules should be updated, too (see git-fetch1, git-config1 and gitmodules5).";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("recurse-submodules");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("quiltimport");
        Name = "quiltimport";
        Description = "Applies a quilt patchset onto the current branch";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "Walk through the patches in the series and warn if we cannot find all of the necessary information to commit a patch. At the time of this writing only missing author information is warned about.";
            },
            [ValueParameter]@{
                Keys = @("--author Author Name");
                Name = "author Author Name";
                Description = "The author name and email address to use when no author information can be found in the patch description.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--patches");
                Name = "patches";
                Description = "The directory to find the quilt patches.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--series");
                Name = "series";
                Description = "The quilt series file.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--keep-non-patch");
                Name = "keep-non-patch";
                Description = "Pass -b flag to git mailinfo (see git-mailinfo1).";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("range-diff");
        Name = "range-diff";
        Description = "Compare two commit ranges (e.g. two versions of a branch)";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--no-dual-color");
                Name = "no-dual-color";
                Description = "When the commit diffs differ, ‘git range-diff` recreates the original diffs’ coloring, and adds outer -/+ diff markers with the background being red/green to make it easier to see e.g. when there was a change in what exact lines were added.";
            },
            [ValueParameter]@{
                Keys = @("--creation-factor");
                Name = "creation-factor";
                Description = "Set the creation/deletion cost fudge factor to <percent>. Defaults to 60. Try a larger value if git range-diff erroneously considers a large change a total rewrite (deletion of one commit and addition of another), and a smaller one in the reverse case. See the ``Algorithm`` section below for an explanation why this is needed.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--left-only");
                Name = "left-only";
                Description = "Suppress commits that are missing from the first specified range (or the `"left range`" when using the <rev1>...<rev2> format).";
            },
            [FlagParameter]@{
                Keys = @("--right-only");
                Name = "right-only";
                Description = "Suppress commits that are missing from the second specified range (or the `"right range`" when using the <rev1>...<rev2> format).";
            },
            [ValueParameter]@{
                Keys = @("--notes");
                Name = "notes";
                Description = "This flag is passed to the git log program (see git-log1) that generates the patches.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-notes");
            },
            [ValueParameter]@{
                Keys = @("--no-notes");
                Name = "no-notes";
                Description = "This flag is passed to the git log program (see git-log1) that generates the patches.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("notes");
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Compare the commits specified by the two ranges, where <range1> is considered an older version of <range2>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Equivalent to passing <rev2>..<rev1> and <rev1>..<rev2>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Equivalent to passing <base>..<rev1> and <base>..<rev2>. Note that <base> does not need to be the exact branch point of the branches. Example: after rebasing a branch my-topic, git range-diff my-topic@{u} my-topic@{1} my-topic would show the differences introduced by the rebase.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("read-tree");
        Name = "read-tree";
        Description = "Reads tree information into the index";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-m");
                Name = "m";
                Description = "Perform a merge, not just a read. The command will refuse to run if your index file has unmerged entries, indicating that you have not finished previous merge you started.";
            },
            [FlagParameter]@{
                Keys = @("--reset");
                Name = "reset";
                Description = "Same as -m, except that unmerged entries are discarded instead of failing. When used with -u, updates leading to loss of working tree changes or untracked files or directories will not abort the operation.";
            },
            [FlagParameter]@{
                Keys = @("-u");
                Name = "u";
                Description = "After a successful merge, update the files in the work tree with the result of the merge.";
            },
            [FlagParameter]@{
                Keys = @("-i");
                Name = "i";
                Description = "Usually a merge requires the index file as well as the files in the working tree to be up to date with the current head commit, in order not to lose local changes. This flag disables the check with the working tree and is meant to be used when creating a merge of trees that are not directly related to the current working tree status into a temporary index file.";
            },
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "Check if the command would error out, without updating the index or the files in the working tree for real.";
            },
            [FlagParameter]@{
                Keys = @("-v");
                Name = "v";
                Description = "Show the progress of checking files out.";
            },
            [FlagParameter]@{
                Keys = @("--trivial");
                Name = "trivial";
                Description = "Restrict three-way merge by git read-tree to happen only if there is no file-level merging required, instead of resolving merge for trivial cases and leaving conflicting files unresolved in the index.";
            },
            [FlagParameter]@{
                Keys = @("--aggressive");
                Name = "aggressive";
                Description = "Usually a three-way merge by git read-tree resolves the merge for really trivial cases and leaves other cases unresolved in the index, so that porcelains can implement different merge policies. This flag makes the command resolve a few more cases internally:";
            },
            [ValueParameter]@{
                Keys = @("--prefix");
                Name = "prefix";
                Description = "Keep the current index contents, and read the contents of the named tree-ish under the directory at <prefix>. The command will refuse to overwrite entries that already existed in the original index file.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--index-output");
                Name = "index-output";
                Description = "Instead of writing the results out to $GIT_INDEX_FILE, write the resulting index in the named file. While the command is operating, the original index file is locked with the same mechanism as usual. The file must allow to be rename(2)ed into from a temporary file that is created next to the usual index file; typically this means it needs to be on the same filesystem as the index file itself, and you need write permission to the directories the index file and index output file are located in.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--recurse-submodules");
                Name = "recurse-submodules";
                Description = "Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject by calling read-tree recursively, also setting the submodules' HEAD to be detached at that commit.";
                Condition = [ExclusiveParameterCondition]::new("no-recurse-submodules");
            },
            [FlagParameter]@{
                Keys = @("--no-recurse-submodules");
                Name = "no-recurse-submodules";
                Description = "Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject by calling read-tree recursively, also setting the submodules' HEAD to be detached at that commit.";
                Condition = [ExclusiveParameterCondition]::new("recurse-submodules");
            },
            [FlagParameter]@{
                Keys = @("--no-sparse-checkout");
                Name = "no-sparse-checkout";
                Description = "Disable sparse checkout support even if core.sparseCheckout is true.";
            },
            [FlagParameter]@{
                Keys = @("--empty");
                Name = "empty";
                Description = "Instead of reading tree object(s) into the index, just empty it.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Quiet, suppress feedback messages.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The id of the tree object(s) to be read/merged.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("receive-pack");
        Name = "receive-pack";
        Description = "Receive what is pushed into the repository";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The repository to sync into.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--http-backend-info-refs");
                Name = "http-backend-info-refs";
                Description = "Used by git-http-backend1 to serve up $GIT_URL/info/refs?service=git-receive-pack requests. See --http-backend-info-refs in git-upload-pack1.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("reflog");
        Name = "reflog";
        Description = "Manage reflog information";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("remote-ext");
        Name = "remote-ext";
        Description = "Bridge smart transport to external command.";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("remote-fd");
        Name = "remote-fd";
        Description = "Reflect smart transport stream back to caller";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("remote");
        Name = "remote";
        Description = "Manage set of tracked repositories";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Be a little more verbose and show remote url after name. NOTE: This must be placed between remote and subcommand.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("repack");
        Name = "repack";
        Description = "Pack unpacked objects in a repository";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-a");
                Name = "a";
                Description = "Instead of incrementally packing the unpacked objects, pack everything referenced into a single pack. Especially useful when packing a repository that is used for private development. Use with -d. This will clean up the objects that git prune leaves behind, but git fsck --full --dangling shows as dangling.";
            },
            [FlagParameter]@{
                Keys = @("-A");
                Name = "A";
                Description = "Same as -a, unless -d is used. Then any unreachable objects in a previous pack become loose, unpacked objects, instead of being left in the old pack. Unreachable objects are never intentionally added to a pack, even when repacking. This option prevents unreachable objects from being immediately deleted by way of being left in the old pack and then removed. Instead, the loose unreachable objects will be pruned according to normal expiry rules with the next git gc invocation. See git-gc1.";
            },
            [FlagParameter]@{
                Keys = @("-d");
                Name = "d";
                Description = "After packing, if the newly created packs make some existing packs redundant, remove the redundant packs. Also run git prune-packed to remove redundant loose object files.";
            },
            [FlagParameter]@{
                Keys = @("-l");
                Name = "l";
                Description = "Pass the --local option to git pack-objects. See git-pack-objects1.";
            },
            [FlagParameter]@{
                Keys = @("-f");
                Name = "f";
                Description = "Pass the --no-reuse-delta option to git-pack-objects, see git-pack-objects1.";
            },
            [FlagParameter]@{
                Keys = @("-F");
                Name = "F";
                Description = "Pass the --no-reuse-object option to git-pack-objects, see git-pack-objects1.";
            },
            [FlagParameter]@{
                Keys = @("-q");
                Name = "q";
                Description = "Pass the -q option to git pack-objects. See git-pack-objects1.";
            },
            [FlagParameter]@{
                Keys = @("-n");
                Name = "n";
                Description = "Do not update the server information with git update-server-info. This option skips updating local catalog files needed to publish this repository (or a direct copy of it) over HTTP or FTP. See git-update-server-info1.";
            },
            [ValueParameter]@{
                Keys = @("--depth", "--window");
                Name = "depth";
                Description = "These two options affect how the objects contained in the pack are stored using delta compression. The objects are first internally sorted by type, size and optionally names and compared against the other objects within --window to see if using delta compression saves space. --depth limits the maximum delta depth; making it too deep affects the performance on the unpacker side, because delta data needs to be applied that many times to get to the necessary object.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--threads");
                Name = "threads";
                Description = "This option is passed through to git pack-objects.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--window-memory");
                Name = "window-memory";
                Description = "This option provides an additional limit on top of --window; the window size will dynamically scale down so as to not take up more than &lt;n&gt; bytes in memory. This is useful in repositories with a mix of large and small objects to not run out of memory with a large window, but still be able to take advantage of the large window for the smaller objects. The size can be suffixed with `"k`", `"m`", or `"g`". --window-memory=0 makes memory usage unlimited. The default is taken from the pack.windowMemory configuration variable. Note that the actual memory usage will be the limit multiplied by the number of threads used by git-pack-objects1.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--max-pack-size");
                Name = "max-pack-size";
                Description = "Maximum size of each output pack file. The size can be suffixed with `"k`", `"m`", or `"g`". The minimum size allowed is limited to 1 MiB. If specified, multiple packfiles may be created, which also prevents the creation of a bitmap index. The default is unlimited, unless the config variable pack.packSizeLimit is set. Note that this option may result in a larger and slower repository; see the discussion in pack.packSizeLimit.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--write-bitmap-index", "-b");
                Name = "write-bitmap-index";
                Description = "Write a reachability bitmap index as part of the repack. This only makes sense when used with -a, -A or -m, as the bitmaps must be able to refer to all reachable objects. This option overrides the setting of repack.writeBitmaps. This option has no effect if multiple packfiles are created, unless writing a MIDX (in which case a multi-pack bitmap is created).";
            },
            [FlagParameter]@{
                Keys = @("--pack-kept-objects");
                Name = "pack-kept-objects";
                Description = "Include objects in .keep files when repacking. Note that we still do not delete .keep packs after pack-objects finishes. This means that we may duplicate objects, but this makes the option safe to use when there are concurrent pushes or fetches. This option is generally only useful if you are writing bitmaps with -b or repack.writeBitmaps, as it ensures that the bitmapped packfile has the necessary objects.";
            },
            [ValueParameter]@{
                Keys = @("--keep-pack");
                Name = "keep-pack";
                Description = "Exclude the given pack from repacking. This is the equivalent of having .keep file on the pack. <pack-name> is the pack file name without leading directory (e.g. pack-123.pack). The option could be specified multiple times to keep multiple packs.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--unpack-unreachable");
                Name = "unpack-unreachable";
                Description = "When loosening unreachable objects, do not bother loosening any objects older than <when>. This can be used to optimize out the write of any objects that would be immediately pruned by a follow-up git prune.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--keep-unreachable", "-k");
                Name = "keep-unreachable";
                Description = "When used with -ad, any unreachable objects from existing packs will be appended to the end of the packfile instead of being removed. In addition, any unreachable loose objects will be packed (and their loose counterparts removed).";
            },
            [FlagParameter]@{
                Keys = @("--delta-islands", "-i");
                Name = "delta-islands";
                Description = "Pass the --delta-islands option to git-pack-objects, see git-pack-objects1.";
            },
            [ValueParameter]@{
                Keys = @("--geometric", "-g");
                Name = "geometric";
                Description = "Arrange resulting pack structure so that each successive pack contains at least <factor> times the number of objects as the next-largest pack.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--write-midx", "-m");
                Name = "write-midx";
                Description = "Write a multi-pack index (see git-multi-pack-index1) containing the non-redundant packs.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("replace");
        Name = "replace";
        Description = "Create, list, delete refs to replace objects";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "If an existing replace ref for the same object exists, it will be overwritten (instead of failing).";
            },
            [FlagParameter]@{
                Keys = @("--delete", "-d");
                Name = "delete";
                Description = "Delete existing replace refs for the given objects.";
            },
            [ValueParameter]@{
                Keys = @("--edit");
                Name = "edit";
                Description = "Edit an object’s content interactively. The existing content for <object> is pretty-printed into a temporary file, an editor is launched on the file, and the result is parsed to create a new object of the same type as <object>. A replacement ref is then created to replace <object> with the newly created object. See git-var1 for details about how the editor will be chosen.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--raw");
                Name = "raw";
                Description = "When editing, provide the raw object contents rather than pretty-printed ones. Currently this only affects trees, which will be shown in their binary form. This is harder to work with, but can help when repairing a tree that is so corrupted it cannot be pretty-printed. Note that you may need to configure your editor to cleanly read and write binary data.";
            },
            [ValueParameter]@{
                Keys = @("--graft");
                Name = "graft";
                Description = "Create a graft commit. A new commit is created with the same content as <commit> except that its parents will be [<parent>…] instead of <commit>'s parents. A replacement ref is then created to replace <commit> with the newly created commit. Use --convert-graft-file to convert a $GIT_DIR/info/grafts file and use replace refs instead.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--convert-graft-file");
                Name = "convert-graft-file";
                Description = "Creates graft commits for all entries in $GIT_DIR/info/grafts and deletes that file upon success. The purpose is to help users with transitioning off of the now-deprecated graft file.";
            },
            [ValueParameter]@{
                Keys = @("--list", "-l");
                Name = "list";
                Description = "List replace refs for objects that match the given pattern (or all if no pattern is given). Typing `"git replace`" without arguments, also lists all replace refs.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--format");
                Name = "format";
                Description = "When listing, use the specified <format>, which can be one of short, medium and long. When omitted, the format defaults to short.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("rerere");
        Name = "rerere";
        Description = "Reuse recorded resolution of conflicted merges";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("reset");
        Name = "reset";
        Description = "Reset current HEAD to the specified state";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Be quiet, only report errors. The default behavior is set by the reset.quiet config option. --quiet and --no-quiet will override the default behavior.";
                Condition = [ExclusiveParameterCondition]::new("no-quiet");
            },
            [FlagParameter]@{
                Keys = @("--no-quiet");
                Name = "no-quiet";
                Description = "Be quiet, only report errors. The default behavior is set by the reset.quiet config option. --quiet and --no-quiet will override the default behavior.";
                Condition = [ExclusiveParameterCondition]::new("quiet");
            },
            [ValueParameter]@{
                Keys = @("--pathspec-from-file");
                Name = "pathspec-from-file";
                Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1). See also --pathspec-file-nul and global --literal-pathspecs.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--pathspec-file-nul");
                Name = "pathspec-file-nul";
                Description = "Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Limits the paths affected by the operation.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("restore");
        Name = "restore";
        Description = "Restore working tree files";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--source", "-s");
                Name = "source";
                Description = "Restore the working tree files with the content from the given tree. It is common to specify the source tree by naming a commit, branch or tag associated with it.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--patch", "-p");
                Name = "patch";
                Description = "Interactively select hunks in the difference between the restore source and the restore location. See the “Interactive Mode” section of git-add1 to learn how to operate the --patch mode.";
            },
            [FlagParameter]@{
                Keys = @("--staged", "--worktree", "-S", "-W");
                Name = "staged";
                Description = "Specify the restore location. If neither option is specified, by default the working tree is restored. Specifying --staged will only restore the index. Specifying both restores both.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Quiet, suppress feedback messages. Implies --no-progress.";
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
                Keys = @("--theirs", "--ours");
                Name = "theirs";
                Description = "When restoring files in the working tree from the index, use stage #2 (ours) or #3 (theirs) for unmerged paths.";
            },
            [FlagParameter]@{
                Keys = @("--merge", "-m");
                Name = "merge";
                Description = "When restoring files on the working tree from the index, recreate the conflicted merge in the unmerged paths.";
            },
            [ValueParameter]@{
                Keys = @("--conflict");
                Name = "conflict";
                Description = "The same as --merge option above, but changes the way the conflicting hunks are presented, overriding the merge.conflictStyle configuration variable. Possible values are `"merge`" (default) and `"diff3`" (in addition to what is shown by `"merge`" style, shows the original contents).";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ignore-unmerged");
                Name = "ignore-unmerged";
                Description = "When restoring files on the working tree from the index, do not abort the operation if there are unmerged entries and neither --ours, --theirs, --merge or --conflict is specified. Unmerged paths on the working tree are left alone.";
            },
            [FlagParameter]@{
                Keys = @("--ignore-skip-worktree-bits");
                Name = "ignore-skip-worktree-bits";
                Description = "In sparse checkout mode, by default is to only update entries matched by <pathspec> and sparse patterns in $GIT_DIR/info/sparse-checkout. This option ignores the sparse patterns and unconditionally restores any files in <pathspec>.";
            },
            [FlagParameter]@{
                Keys = @("--recurse-submodules");
                Name = "recurse-submodules";
                Description = "If <pathspec> names an active submodule and the restore location includes the working tree, the submodule will only be updated if this option is given, in which case its working tree will be restored to the commit recorded in the superproject, and any local modifications overwritten. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-checkout1, this will detach HEAD of the submodule.";
                Condition = [ExclusiveParameterCondition]::new("no-recurse-submodules");
            },
            [FlagParameter]@{
                Keys = @("--no-recurse-submodules");
                Name = "no-recurse-submodules";
                Description = "If <pathspec> names an active submodule and the restore location includes the working tree, the submodule will only be updated if this option is given, in which case its working tree will be restored to the commit recorded in the superproject, and any local modifications overwritten. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-checkout1, this will detach HEAD of the submodule.";
                Condition = [ExclusiveParameterCondition]::new("recurse-submodules");
            },
            [FlagParameter]@{
                Keys = @("--overlay");
                Name = "overlay";
                Description = "In overlay mode, the command never removes files when restoring. In no-overlay mode, tracked files that do not appear in the --source tree are removed, to make them match <tree> exactly. The default is no-overlay mode.";
                Condition = [ExclusiveParameterCondition]::new("no-overlay");
            },
            [FlagParameter]@{
                Keys = @("--no-overlay");
                Name = "no-overlay";
                Description = "In overlay mode, the command never removes files when restoring. In no-overlay mode, tracked files that do not appear in the --source tree are removed, to make them match <tree> exactly. The default is no-overlay mode.";
                Condition = [ExclusiveParameterCondition]::new("overlay");
            },
            [ValueParameter]@{
                Keys = @("--pathspec-from-file");
                Name = "pathspec-from-file";
                Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1). See also --pathspec-file-nul and global --literal-pathspecs.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--pathspec-file-nul");
                Name = "pathspec-file-nul";
                Description = "Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Limits the paths affected by the operation.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("rev-list");
        Name = "rev-list";
        Description = "Lists commit objects in reverse chronological order";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("rev-parse");
        Name = "rev-parse";
        Description = "Pick out and massage parameters";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("rm");
        Name = "rm";
        Description = "Remove files from the working tree and from the index";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Files to remove. A leading directory name (e.g. dir to remove dir/file1 and dir/file2) can be given to remove all files in the directory, and recursively all sub-directories, but this requires the -r option to be explicitly given.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "Override the up-to-date check.";
            },
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "Don’t actually remove any file(s). Instead, just show if they exist in the index and would otherwise be removed by the command.";
            },
            [FlagParameter]@{
                Keys = @("-r");
                Name = "r";
                Description = "Allow recursive removal when a leading directory name is given.";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "This option can be used to separate command-line options from the list of files, (useful when filenames might be mistaken for command-line options).";
            },
            [FlagParameter]@{
                Keys = @("--cached");
                Name = "cached";
                Description = "Use this option to unstage and remove paths only from the index. Working tree files, whether modified or not, will be left alone.";
            },
            [FlagParameter]@{
                Keys = @("--ignore-unmatch");
                Name = "ignore-unmatch";
                Description = "Exit with a zero status even if no files matched.";
            },
            [FlagParameter]@{
                Keys = @("--sparse");
                Name = "sparse";
                Description = "Allow updating index entries outside of the sparse-checkout cone. Normally, git rm refuses to update index entries whose paths do not fit within the sparse-checkout cone. See git-sparse-checkout1 for more.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "git rm normally outputs one line (in the form of an rm command) for each file removed. This option suppresses that output.";
            },
            [ValueParameter]@{
                Keys = @("--pathspec-from-file");
                Name = "pathspec-from-file";
                Description = "Pathspec is passed in <file> instead of commandline args. If <file> is exactly - then standard input is used. Pathspec elements are separated by LF or CR/LF. Pathspec elements can be quoted as explained for the configuration variable core.quotePath (see git-config1). See also --pathspec-file-nul and global --literal-pathspecs.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--pathspec-file-nul");
                Name = "pathspec-file-nul";
                Description = "Only meaningful with --pathspec-from-file. Pathspec elements are separated with NUL character and all other characters are taken literally (including newlines and quotes).";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("send-pack");
        Name = "send-pack";
        Description = "Push objects over Git protocol to another repository";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--receive-pack");
                Name = "receive-pack";
                Description = "Path to the git-receive-pack program on the remote end. Sometimes useful when pushing to a remote repository over ssh, and you do not have the program in a directory on the default $PATH.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--exec");
                Name = "exec";
                Description = "Same as --receive-pack=<git-receive-pack>.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "Instead of explicitly specifying which refs to update, update all heads that locally exist.";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Take the list of refs from stdin, one per line. If there are refs specified on the command line in addition to this option, then the refs from stdin are processed after those on the command line.";
            },
            [FlagParameter]@{
                Keys = @("--dry-run");
                Name = "dry-run";
                Description = "Do everything except actually send the updates.";
            },
            [FlagParameter]@{
                Keys = @("--force");
                Name = "force";
                Description = "Usually, the command refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it. This flag disables the check. What this means is that the remote repository can lose commits; use it with care.";
            },
            [FlagParameter]@{
                Keys = @("--verbose");
                Name = "verbose";
                Description = "Run verbosely.";
            },
            [FlagParameter]@{
                Keys = @("--thin");
                Name = "thin";
                Description = "Send a `"thin`" pack, which records objects in deltified form based on objects not included in the pack to reduce network traffic.";
            },
            [FlagParameter]@{
                Keys = @("--atomic");
                Name = "atomic";
                Description = "Use an atomic transaction for updating the refs. If any of the refs fails to update then the entire push will fail without changing any refs.";
            },
            [ValueParameter]@{
                Keys = @("--signed", "--signed");
                Name = "signed";
                Description = "GPG-sign the push request to update refs on the receiving side, to allow it to be checked by the hooks and/or be logged. If false or --no-signed, no signing will be attempted. If true or --signed, the push will fail if the server does not support signed pushes. If set to if-asked, sign if and only if the server supports signed pushes. The push will also fail if the actual call to gpg --sign fails. See git-receive-pack1 for the details on the receiving end.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-signed");
            },
            [FlagParameter]@{
                Keys = @("--no-signed");
                Name = "no-signed";
                Description = "GPG-sign the push request to update refs on the receiving side, to allow it to be checked by the hooks and/or be logged. If false or --no-signed, no signing will be attempted. If true or --signed, the push will fail if the server does not support signed pushes. If set to if-asked, sign if and only if the server supports signed pushes. The push will also fail if the actual call to gpg --sign fails. See git-receive-pack1 for the details on the receiving end.";
                Condition = [ExclusiveParameterCondition]::new("signed");
            },
            [ValueParameter]@{
                Keys = @("--push-option");
                Name = "push-option";
                Description = "Pass the specified string as a push option for consumption by hooks on the server side. If the server doesn’t support push options, error out. See git-push1 and githooks5 for details.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "A remote host to house the repository. When this part is specified, git-receive-pack is invoked via ssh.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The repository to update.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The remote refs to update.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("sh-i18n--envsubst");
        Name = "sh-i18n--envsubst";
        Description = "Git's own envsubst(1) for i18n fallbacks";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("sh-i18n");
        Name = "sh-i18n";
        Description = "Git's i18n setup code for shell scripts";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("sh-setup");
        Name = "sh-setup";
        Description = "Common Git shell script setup code";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("shell");
        Name = "shell";
        Description = "Restricted login shell for Git-only SSH access";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("shortlog");
        Name = "shortlog";
        Description = "Summarize 'git log' output";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--numbered", "-n");
                Name = "numbered";
                Description = "Sort output according to the number of commits per author instead of author alphabetic order.";
            },
            [FlagParameter]@{
                Keys = @("--summary", "-s");
                Name = "summary";
                Description = "Suppress commit description and provide a commit count summary only.";
            },
            [FlagParameter]@{
                Keys = @("--email", "-e");
                Name = "email";
                Description = "Show the email address of each author.";
            },
            [ValueParameter]@{
                Keys = @("--format");
                Name = "format";
                Description = "Instead of the commit subject, use some other information to describe each commit. &lt;format&gt; can be any string accepted by the --format option of git log, such as * [%h] %s. (See the `"PRETTY FORMATS`" section of git-log1.)";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--group");
                Name = "group";
                Description = "Group commits based on <type>. If no --group option is specified, the default is author. <type> is one of:";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--committer", "-c");
                Name = "committer";
                Description = "This is an alias for --group=committer.";
            },
            [ValueParameter]@{
                Keys = @("-w");
                Name = "w";
                Description = "Linewrap the output by wrapping each line at width. The first line of each entry is indented by indent1 spaces, and the second and subsequent lines are indented by indent2 spaces. width, indent1, and indent2 default to 76, 6 and 9 respectively.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Show only commits in the specified revision range. When no &lt;revision range&gt; is specified, it defaults to HEAD (i.e. the whole history leading to the current commit). origin..HEAD specifies all the commits reachable from the current commit (i.e. HEAD), but not from origin. For a complete list of ways to spell &lt;revision range&gt;, see the `"Specifying Ranges`" section of gitrevisions7.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Consider only commits that are enough to explain how the files that match the specified paths came to be.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("show-branch");
        Name = "show-branch";
        Description = "Show branches and their commits";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Arbitrary extended SHA-1 expression (see gitrevisions7) that typically names a branch head or a tag.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "A glob pattern that matches branch or tag names under refs/. For example, if you have many topic branches under refs/heads/topic, giving topic/* would show all of them.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--remotes", "-r");
                Name = "remotes";
                Description = "Show the remote-tracking branches.";
            },
            [FlagParameter]@{
                Keys = @("--all", "-a");
                Name = "all";
                Description = "Show both remote-tracking branches and local branches.";
            },
            [FlagParameter]@{
                Keys = @("--current");
                Name = "current";
                Description = "With this option, the command includes the current branch to the list of revs to be shown when it is not given on the command line.";
            },
            [FlagParameter]@{
                Keys = @("--topo-order");
                Name = "topo-order";
                Description = "By default, the branches and their commits are shown in reverse chronological order. This option makes them appear in topological order (i.e., descendant commits are shown before their parents).";
            },
            [FlagParameter]@{
                Keys = @("--date-order");
                Name = "date-order";
                Description = "This option is similar to --topo-order in the sense that no parent comes before all of its children, but otherwise commits are ordered according to their commit date.";
            },
            [FlagParameter]@{
                Keys = @("--sparse");
                Name = "sparse";
                Description = "By default, the output omits merges that are reachable from only one tip being shown. This option makes them visible.";
            },
            [ValueParameter]@{
                Keys = @("--more");
                Name = "more";
                Description = "Usually the command stops output upon showing the commit that is the common ancestor of all the branches. This flag tells the command to go <n> more common commits beyond that. When <n> is negative, display only the <reference>s given, without showing the commit ancestry tree.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--list");
                Name = "list";
                Description = "Synonym to --more=-1";
            },
            [FlagParameter]@{
                Keys = @("--merge-base");
                Name = "merge-base";
                Description = "Instead of showing the commit list, determine possible merge bases for the specified commits. All merge bases will be contained in all specified commits. This is different from how git-merge-base1 handles the case of three or more commits.";
            },
            [FlagParameter]@{
                Keys = @("--independent");
                Name = "independent";
                Description = "Among the <reference>s given, display only the ones that cannot be reached from any other <reference>.";
            },
            [FlagParameter]@{
                Keys = @("--no-name");
                Name = "no-name";
                Description = "Do not show naming strings for each commit.";
            },
            [FlagParameter]@{
                Keys = @("--sha1-name");
                Name = "sha1-name";
                Description = "Instead of naming the commits using the path to reach them from heads (e.g. `"master~2`" to mean the grandparent of `"master`"), name them with the unique prefix of their object names.";
            },
            [FlagParameter]@{
                Keys = @("--topics");
                Name = "topics";
                Description = "Shows only commits that are NOT on the first branch given. This helps track topic branches by hiding any commit that is already in the main line of development. When given `"git show-branch --topics master topic1 topic2`", this will show the revisions given by `"git rev-list ^master topic1 topic2`"";
            },
            [ValueParameter]@{
                Keys = @("--reflog", "-g");
                Name = "reflog";
                Description = "Shows <n> most recent ref-log entries for the given ref. If <base> is given, <n> entries going back from that entry. <base> can be specified as count or date. When no explicit <ref> parameter is given, it defaults to the current branch (or HEAD if it is detached).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--color");
                Name = "color";
                Description = "Color the status sign (one of these: *!+-) of each commit corresponding to the branch it’s in. The value must be always (the default), never, or auto.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-color");
            },
            [FlagParameter]@{
                Keys = @("--no-color");
                Name = "no-color";
                Description = "Turn off colored output, even when the configuration file gives the default to color output. Same as --color=never.";
                Condition = [ExclusiveParameterCondition]::new("color");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("show-index");
        Name = "show-index";
        Description = "Show packed archive index";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--object-format");
                Name = "object-format";
                Description = "Specify the given object format (hash algorithm) for the index file. The valid values are sha1 and (if enabled) sha256. The default is the algorithm for the current repository (set by extensions.objectFormat), or sha1 if no value is set or outside a repository..";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("show-ref");
        Name = "show-ref";
        Description = "List references in a local repository";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--head");
                Name = "head";
                Description = "Show the HEAD reference, even if it would normally be filtered out.";
            },
            [FlagParameter]@{
                Keys = @("--tags", "--heads");
                Name = "tags";
                Description = "Limit to `"refs/heads`" and `"refs/tags`", respectively. These options are not mutually exclusive; when given both, references stored in `"refs/heads`" and `"refs/tags`" are displayed.";
            },
            [FlagParameter]@{
                Keys = @("--dereference", "-d");
                Name = "dereference";
                Description = "Dereference tags into object IDs as well. They will be shown with `"^{}`" appended.";
            },
            [ValueParameter]@{
                Keys = @("--hash", "-s");
                Name = "hash";
                Description = "Only show the SHA-1 hash, not the reference name. When combined with --dereference the dereferenced tag will still be shown after the SHA-1.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--verify");
                Name = "verify";
                Description = "Enable stricter reference checking by requiring an exact ref path. Aside from returning an error code of 1, it will also print an error message if --quiet was not specified.";
            },
            [ValueParameter]@{
                Keys = @("--abbrev");
                Name = "abbrev";
                Description = "Abbreviate the object name. When using --hash, you do not have to say --hash --abbrev; --hash=n would do.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Do not print any results to stdout. When combined with --verify this can be used to silently check if a reference exists.";
            },
            [ValueParameter]@{
                Keys = @("--exclude-existing");
                Name = "exclude-existing";
                Description = "Make git show-ref act as a filter that reads refs from stdin of the form `"^(?:&lt;anything&gt;\s)?&lt;refname&gt;(?:\^{})?$`" and performs the following actions on each: (1) strip `"^{}`" at the end of line if any; (2) ignore if pattern is provided and does not head-match refname; (3) warn if refname is not a well-formed refname and skip; (4) ignore if refname is a ref that exists in the local repository; (5) otherwise output the line.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Show references matching one or more patterns. Patterns are matched from the end of the full name, and only complete parts are matched, e.g. master matches refs/heads/master, refs/remotes/origin/master, refs/tags/jedi/master but not refs/heads/mymaster or refs/remotes/master/jedi.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("show");
        Name = "show";
        Description = "Show various types of objects";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The names of objects to show (defaults to HEAD). For a more complete list of ways to spell object names, see `"SPECIFYING REVISIONS`" section in gitrevisions7.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--format", "--pretty");
                Name = "format";
                Description = "Pretty-print the contents of the commit logs in a given format, where <format> can be one of oneline, short, medium, full, fuller, reference, email, raw, format:<string> and tformat:<string>. When <format> is none of the above, and has %placeholder in it, it acts as if --pretty=tformat:<format> were given.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--abbrev-commit");
                Name = "abbrev-commit";
                Description = "Instead of showing the full 40-byte hexadecimal commit object name, show a prefix that names the object uniquely. `"--abbrev=&lt;n&gt;`" (which also modifies diff output, if it is displayed) option can be used to specify the minimum length of the prefix.";
                Condition = [ExclusiveParameterCondition]::new("no-abbrev-commit");
            },
            [FlagParameter]@{
                Keys = @("--no-abbrev-commit");
                Name = "no-abbrev-commit";
                Description = "Show the full 40-byte hexadecimal commit object name. This negates --abbrev-commit, either explicit or implied by other options such as `"--oneline`". It also overrides the log.abbrevCommit variable.";
                Condition = [ExclusiveParameterCondition]::new("abbrev-commit");
            },
            [FlagParameter]@{
                Keys = @("--oneline");
                Name = "oneline";
                Description = "This is a shorthand for `"--pretty=oneline --abbrev-commit`" used together.";
            },
            [ValueParameter]@{
                Keys = @("--encoding");
                Name = "encoding";
                Description = "Commit objects record the character encoding used for the log message in their encoding header; this option can be used to tell the command to re-code the commit log message in the encoding preferred by the user. For non plumbing commands this defaults to UTF-8. Note that if an object claims to be encoded in X and we are outputting in X, we will output the object verbatim; this means that invalid sequences in the original commit may be copied to the output. Likewise, if iconv(3) fails to convert the commit, we will quietly output the original object verbatim.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--expand-tabs", "--expand-tabs");
                Name = "expand-tabs";
                Description = "Perform a tab expansion (replace each tab with enough spaces to fill to the next display column that is multiple of <n>) in the log message before showing it in the output. --expand-tabs is a short-hand for --expand-tabs=8, and --no-expand-tabs is a short-hand for --expand-tabs=0, which disables tab expansion.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-expand-tabs");
            },
            [FlagParameter]@{
                Keys = @("--no-expand-tabs");
                Name = "no-expand-tabs";
                Description = "Perform a tab expansion (replace each tab with enough spaces to fill to the next display column that is multiple of <n>) in the log message before showing it in the output. --expand-tabs is a short-hand for --expand-tabs=8, and --no-expand-tabs is a short-hand for --expand-tabs=0, which disables tab expansion.";
                Condition = [ExclusiveParameterCondition]::new("expand-tabs");
            },
            [ValueParameter]@{
                Keys = @("--notes");
                Name = "notes";
                Description = "Show the notes (see git-notes1) that annotate the commit, when showing the commit log message. This is the default for git log, git show and git whatchanged commands when there is no --pretty, --format, or --oneline option given on the command line.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-notes");
            },
            [FlagParameter]@{
                Keys = @("--no-notes");
                Name = "no-notes";
                Description = "Do not show notes. This negates the above --notes option, by resetting the list of notes refs from which notes are shown. Options are parsed in the order given on the command line, so e.g. `"--notes --notes=foo --no-notes --notes=bar`" will only show notes from `"refs/notes/bar`".";
                Condition = [ExclusiveParameterCondition]::new("notes");
            },
            [ValueParameter]@{
                Keys = @("--standard-notes", "--show-notes");
                Name = "standard-notes";
                Description = "These options are deprecated. Use the above --notes/--no-notes options instead.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-standard-notes");
            },
            [FlagParameter]@{
                Keys = @("--no-standard-notes");
                Name = "no-standard-notes";
                Description = "These options are deprecated. Use the above --notes/--no-notes options instead.";
                Condition = [ExclusiveParameterCondition]::new("standard-notes");
            },
            [FlagParameter]@{
                Keys = @("--show-signature");
                Name = "show-signature";
                Description = "Check the validity of a signed commit object by passing the signature to gpg --verify and show the output.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("sparse-checkout");
        Name = "sparse-checkout";
        Description = "Initialize and modify the sparse-checkout configuration, which reduces the checkout to a set of paths given by a list of patterns.";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("stage");
        Name = "stage";
        Description = "Add file contents to the staging area";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("stripspace");
        Name = "stripspace";
        Description = "Remove unnecessary whitespace";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--strip-comments", "-s");
                Name = "strip-comments";
                Description = "Skip and remove all lines starting with comment character (default #).";
            },
            [FlagParameter]@{
                Keys = @("--comment-lines", "-c");
                Name = "comment-lines";
                Description = "Prepend comment character and blank to each line. Lines will automatically be terminated with a newline. On empty lines, only the comment character will be prepended.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("submodule");
        Name = "submodule";
        Description = "Initialize, update or inspect submodules";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Only print error messages.";
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "This option is only valid for add and update commands. Progress status is reported on the standard error stream by default when it is attached to a terminal, unless -q is specified. This flag forces progress status even if the standard error stream is not directed to a terminal.";
            },
            [FlagParameter]@{
                Keys = @("--all");
                Name = "all";
                Description = "This option is only valid for the deinit command. Unregister all submodules in the working tree.";
            },
            [ValueParameter]@{
                Keys = @("--branch", "-b");
                Name = "branch";
                Description = "Branch of repository to add as submodule. The name of the branch is recorded as submodule.<name>.branch in .gitmodules for update --remote. A special value of . is used to indicate that the name of the branch in the submodule should be the same name as the current branch in the current repository. If the option is not specified, it defaults to the remote HEAD.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "This option is only valid for add, deinit and update commands. When running add, allow adding an otherwise ignored submodule path. When running deinit the submodule working trees will be removed even if they contain local changes. When running update (only effective with the checkout procedure), throw away local changes in submodules when switching to a different commit; and always run a checkout operation in the submodule, even if the commit listed in the index of the containing repository matches the commit checked out in the submodule.";
            },
            [FlagParameter]@{
                Keys = @("--cached");
                Name = "cached";
                Description = "This option is only valid for status and summary commands. These commands typically use the commit found in the submodule HEAD, but with this option, the commit stored in the index is used instead.";
            },
            [FlagParameter]@{
                Keys = @("--files");
                Name = "files";
                Description = "This option is only valid for the summary command. This command compares the commit in the index with that in the submodule HEAD when this option is used.";
            },
            [FlagParameter]@{
                Keys = @("--summary-limit", "-n");
                Name = "summary-limit";
                Description = "This option is only valid for the summary command. Limit the summary size (number of commits shown in total). Giving 0 will disable the summary; a negative number means unlimited (the default). This limit only applies to modified submodules. The size is always limited to 1 for added/deleted/typechanged submodules.";
            },
            [FlagParameter]@{
                Keys = @("--remote");
                Name = "remote";
                Description = "This option is only valid for the update command. Instead of using the superproject’s recorded SHA-1 to update the submodule, use the status of the submodule’s remote-tracking branch. The remote used is branch’s remote (branch.<name>.remote), defaulting to origin. The remote branch used defaults to the remote HEAD, but the branch name may be overridden by setting the submodule.<name>.branch option in either .gitmodules or .git/config (with .git/config taking precedence).";
            },
            [FlagParameter]@{
                Keys = @("--no-fetch", "-N");
                Name = "no-fetch";
                Description = "This option is only valid for the update command. Don’t fetch new objects from the remote site.";
            },
            [FlagParameter]@{
                Keys = @("--checkout");
                Name = "checkout";
                Description = "This option is only valid for the update command. Checkout the commit recorded in the superproject on a detached HEAD in the submodule. This is the default behavior, the main use of this option is to override submodule.$name.update when set to a value other than checkout. If the key submodule.$name.update is either not explicitly set or set to checkout, this option is implicit.";
            },
            [FlagParameter]@{
                Keys = @("--merge");
                Name = "merge";
                Description = "This option is only valid for the update command. Merge the commit recorded in the superproject into the current branch of the submodule. If this option is given, the submodule’s HEAD will not be detached. If a merge failure prevents this process, you will have to resolve the resulting conflicts within the submodule with the usual conflict resolution tools. If the key submodule.$name.update is set to merge, this option is implicit.";
            },
            [FlagParameter]@{
                Keys = @("--rebase");
                Name = "rebase";
                Description = "This option is only valid for the update command. Rebase the current branch onto the commit recorded in the superproject. If this option is given, the submodule’s HEAD will not be detached. If a merge failure prevents this process, you will have to resolve these failures with git-rebase1. If the key submodule.$name.update is set to rebase, this option is implicit.";
            },
            [FlagParameter]@{
                Keys = @("--init");
                Name = "init";
                Description = "This option is only valid for the update command. Initialize all submodules for which `"git submodule init`" has not been called so far before updating.";
            },
            [FlagParameter]@{
                Keys = @("--name");
                Name = "name";
                Description = "This option is only valid for the add command. It sets the submodule’s name to the given string instead of defaulting to its path. The name must be valid as a directory name and may not end with a /.";
            },
            [ValueParameter]@{
                Keys = @("--reference");
                Name = "reference";
                Description = "This option is only valid for add and update commands. These commands sometimes need to clone a remote repository. In this case, this option will be passed to the git-clone1 command.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--dissociate");
                Name = "dissociate";
                Description = "This option is only valid for add and update commands. These commands sometimes need to clone a remote repository. In this case, this option will be passed to the git-clone1 command.";
            },
            [FlagParameter]@{
                Keys = @("--recursive");
                Name = "recursive";
                Description = "This option is only valid for foreach, update, status and sync commands. Traverse submodules recursively. The operation is performed not only in the submodules of the current repo, but also in any nested submodules inside those submodules (and so on).";
            },
            [FlagParameter]@{
                Keys = @("--depth");
                Name = "depth";
                Description = "This option is valid for add and update commands. Create a shallow clone with a history truncated to the specified number of revisions. See git-clone1";
            },
            [FlagParameter]@{
                Keys = @("--recommend-shallow");
                Name = "recommend-shallow";
                Description = "This option is only valid for the update command. The initial clone of a submodule will use the recommended submodule.<name>.shallow as provided by the .gitmodules file by default. To ignore the suggestions use --no-recommend-shallow.";
                Condition = [ExclusiveParameterCondition]::new("no-recommend-shallow");
            },
            [FlagParameter]@{
                Keys = @("--no-recommend-shallow");
                Name = "no-recommend-shallow";
                Description = "This option is only valid for the update command. The initial clone of a submodule will use the recommended submodule.<name>.shallow as provided by the .gitmodules file by default. To ignore the suggestions use --no-recommend-shallow.";
                Condition = [ExclusiveParameterCondition]::new("recommend-shallow");
            },
            [ValueParameter]@{
                Keys = @("--jobs", "-j");
                Name = "jobs";
                Description = "This option is only valid for the update command. Clone new submodules in parallel with as many jobs. Defaults to the submodule.fetchJobs option.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--single-branch");
                Name = "single-branch";
                Description = "This option is only valid for the update command. Clone only one branch during update: HEAD or one specified by --branch.";
                Condition = [ExclusiveParameterCondition]::new("no-single-branch");
            },
            [FlagParameter]@{
                Keys = @("--no-single-branch");
                Name = "no-single-branch";
                Description = "This option is only valid for the update command. Clone only one branch during update: HEAD or one specified by --branch.";
                Condition = [ExclusiveParameterCondition]::new("single-branch");
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Paths to submodule(s). When specified this will restrict the command to only operate on the submodules found at the specified paths. (This argument is required with add).";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("switch");
        Name = "switch";
        Description = "Switch branches";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Branch to switch to.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Name for the new branch.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The starting point for the new branch. Specifying a <start-point> allows you to create a branch based on some other point in history than where HEAD currently points. (Or, in the case of --detach, allows you to inspect and detach from some other point.)";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--create", "-c");
                Name = "create";
                Description = "Create a new branch named <new-branch> starting at <start-point> before switching to the branch. This is a convenient shortcut for:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--force-create", "-C");
                Name = "force-create";
                Description = "Similar to --create except that if <new-branch> already exists, it will be reset to <start-point>. This is a convenient shortcut for:";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--detach", "-d");
                Name = "detach";
                Description = "Switch to a commit for inspection and discardable experiments. See the `"DETACHED HEAD`" section in git-checkout1 for details.";
            },
            [FlagParameter]@{
                Keys = @("--guess");
                Name = "guess";
                Description = "If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to";
                Condition = [ExclusiveParameterCondition]::new("no-guess");
            },
            [FlagParameter]@{
                Keys = @("--no-guess");
                Name = "no-guess";
                Description = "If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to";
                Condition = [ExclusiveParameterCondition]::new("guess");
            },
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "An alias for --discard-changes.";
            },
            [FlagParameter]@{
                Keys = @("--discard-changes");
                Name = "discard-changes";
                Description = "Proceed even if the index or the working tree differs from HEAD. Both the index and working tree are restored to match the switching target. If --recurse-submodules is specified, submodule content is also restored to match the switching target. This is used to throw away local changes.";
            },
            [FlagParameter]@{
                Keys = @("--merge", "-m");
                Name = "merge";
                Description = "If you have local modifications to one or more files that are different between the current branch and the branch to which you are switching, the command refuses to switch branches in order to preserve your modifications in context. However, with this option, a three-way merge between the current branch, your working tree contents, and the new branch is done, and you will be on the new branch.";
            },
            [ValueParameter]@{
                Keys = @("--conflict");
                Name = "conflict";
                Description = "The same as --merge option above, but changes the way the conflicting hunks are presented, overriding the merge.conflictStyle configuration variable. Possible values are `"merge`" (default) and `"diff3`" (in addition to what is shown by `"merge`" style, shows the original contents).";
                Source = $???;
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
                Keys = @("--track", "-t");
                Name = "track";
                Description = "When creating a new branch, set up `"upstream`" configuration. -c is implied. See --track in git-branch1 for details.";
                Condition = [ExclusiveParameterCondition]::new("no-track");
            },
            [FlagParameter]@{
                Keys = @("--no-track");
                Name = "no-track";
                Description = "Do not set up `"upstream`" configuration, even if the branch.autoSetupMerge configuration variable is true.";
                Condition = [ExclusiveParameterCondition]::new("track");
            },
            [ValueParameter]@{
                Keys = @("--orphan");
                Name = "orphan";
                Description = "Create a new orphan branch, named <new-branch>. All tracked files are removed.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ignore-other-worktrees");
                Name = "ignore-other-worktrees";
                Description = "git switch refuses when the wanted ref is already checked out by another worktree. This option makes it check the ref out anyway. In other words, the ref can be held by more than one worktree.";
            },
            [FlagParameter]@{
                Keys = @("--recurse-submodules");
                Name = "recurse-submodules";
                Description = "Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-submodule1, this will detach HEAD of the submodules.";
                Condition = [ExclusiveParameterCondition]::new("no-recurse-submodules");
            },
            [FlagParameter]@{
                Keys = @("--no-recurse-submodules");
                Name = "no-recurse-submodules";
                Description = "Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject. If nothing (or --no-recurse-submodules) is used, submodules working trees will not be updated. Just like git-submodule1, this will detach HEAD of the submodules.";
                Condition = [ExclusiveParameterCondition]::new("recurse-submodules");
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("symbolic-ref");
        Name = "symbolic-ref";
        Description = "Read, modify and delete symbolic refs";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--delete", "-d");
                Name = "delete";
                Description = "Delete the symbolic ref <name>.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Do not issue an error message if the <name> is not a symbolic ref but a detached HEAD; instead exit with non-zero status silently.";
            },
            [FlagParameter]@{
                Keys = @("--short");
                Name = "short";
                Description = "When showing the value of <name> as a symbolic ref, try to shorten the value, e.g. from refs/heads/master to master.";
            },
            [FlagParameter]@{
                Keys = @("-m");
                Name = "m";
                Description = "Update the reflog for <name> with <reason>. This is valid only when creating or updating a symbolic ref.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("unpack-file");
        Name = "unpack-file";
        Description = "Creates a temporary file with a blob's contents";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Must be a blob id";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("unpack-objects");
        Name = "unpack-objects";
        Description = "Unpack objects from a packed archive";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-n");
                Name = "n";
                Description = "Dry run. Check the pack file without actually unpacking the objects.";
            },
            [FlagParameter]@{
                Keys = @("-q");
                Name = "q";
                Description = "The command usually shows percentage progress. This flag suppresses it.";
            },
            [FlagParameter]@{
                Keys = @("-r");
                Name = "r";
                Description = "When unpacking a corrupt packfile, the command dies at the first corruption. This flag tells it to keep going and make the best effort to recover as many objects as possible.";
            },
            [FlagParameter]@{
                Keys = @("--strict");
                Name = "strict";
                Description = "Don’t write objects with broken content or links.";
            },
            [ValueParameter]@{
                Keys = @("--max-input-size");
                Name = "max-input-size";
                Description = "Die, if the pack is larger than <size>.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("update-index");
        Name = "update-index";
        Description = "Register file contents in the working tree to the index";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--add");
                Name = "add";
                Description = "If a specified file isn’t in the index already then it’s added. Default behaviour is to ignore new files.";
            },
            [FlagParameter]@{
                Keys = @("--remove");
                Name = "remove";
                Description = "If a specified file is in the index but is missing then it’s removed. Default behavior is to ignore removed file.";
            },
            [FlagParameter]@{
                Keys = @("--refresh");
                Name = "refresh";
                Description = "Looks at the current index and checks to see if merges or updates are needed by checking stat() information.";
            },
            [FlagParameter]@{
                Keys = @("-q");
                Name = "q";
                Description = "Quiet. If --refresh finds that the index needs an update, the default behavior is to error out. This option makes git update-index continue anyway.";
            },
            [FlagParameter]@{
                Keys = @("--ignore-submodules");
                Name = "ignore-submodules";
                Description = "Do not try to update submodules. This option is only respected when passed before --refresh.";
            },
            [FlagParameter]@{
                Keys = @("--unmerged");
                Name = "unmerged";
                Description = "If --refresh finds unmerged changes in the index, the default behavior is to error out. This option makes git update-index continue anyway.";
            },
            [FlagParameter]@{
                Keys = @("--ignore-missing");
                Name = "ignore-missing";
                Description = "Ignores missing files during a --refresh";
            },
            [ValueParameter]@{
                Keys = @("--cacheinfo", "--cacheinfo");
                Name = "cacheinfo";
                Description = "Directly insert the specified info into the index. For backward compatibility, you can also give these three arguments as three separate parameters, but new users are encouraged to use a single-parameter form.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--index-info");
                Name = "index-info";
                Description = "Read index information from stdin.";
            },
            [ValueParameter]@{
                Keys = @("--chmod");
                Name = "chmod";
                Description = "Set the execute permissions on the updated files.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--assume-unchanged");
                Name = "assume-unchanged";
                Description = "When this flag is specified, the object names recorded for the paths are not updated. Instead, this option sets/unsets the `"assume unchanged`" bit for the paths. When the `"assume unchanged`" bit is on, the user promises not to change the file and allows Git to assume that the working tree file matches what is recorded in the index. If you want to change the working tree file, you need to unset the bit to tell Git. This is sometimes helpful when working with a big project on a filesystem that has very slow lstat(2) system call (e.g. cifs).";
                Condition = [ExclusiveParameterCondition]::new("no-assume-unchanged");
            },
            [FlagParameter]@{
                Keys = @("--no-assume-unchanged");
                Name = "no-assume-unchanged";
                Description = "When this flag is specified, the object names recorded for the paths are not updated. Instead, this option sets/unsets the `"assume unchanged`" bit for the paths. When the `"assume unchanged`" bit is on, the user promises not to change the file and allows Git to assume that the working tree file matches what is recorded in the index. If you want to change the working tree file, you need to unset the bit to tell Git. This is sometimes helpful when working with a big project on a filesystem that has very slow lstat(2) system call (e.g. cifs).";
                Condition = [ExclusiveParameterCondition]::new("assume-unchanged");
            },
            [FlagParameter]@{
                Keys = @("--really-refresh");
                Name = "really-refresh";
                Description = "Like --refresh, but checks stat information unconditionally, without regard to the `"assume unchanged`" setting.";
            },
            [FlagParameter]@{
                Keys = @("--skip-worktree");
                Name = "skip-worktree";
                Description = "When one of these flags is specified, the object name recorded for the paths are not updated. Instead, these options set and unset the `"skip-worktree`" bit for the paths. See section `"Skip-worktree bit`" below for more information.";
                Condition = [ExclusiveParameterCondition]::new("no-skip-worktree");
            },
            [FlagParameter]@{
                Keys = @("--no-skip-worktree");
                Name = "no-skip-worktree";
                Description = "When one of these flags is specified, the object name recorded for the paths are not updated. Instead, these options set and unset the `"skip-worktree`" bit for the paths. See section `"Skip-worktree bit`" below for more information.";
                Condition = [ExclusiveParameterCondition]::new("skip-worktree");
            },
            [FlagParameter]@{
                Keys = @("--ignore-skip-worktree-entries");
                Name = "ignore-skip-worktree-entries";
                Description = "Do not remove skip-worktree (AKA `"index-only`") entries even when the --remove option was specified.";
                Condition = [ExclusiveParameterCondition]::new("no-ignore-skip-worktree-entries");
            },
            [FlagParameter]@{
                Keys = @("--no-ignore-skip-worktree-entries");
                Name = "no-ignore-skip-worktree-entries";
                Description = "Do not remove skip-worktree (AKA `"index-only`") entries even when the --remove option was specified.";
                Condition = [ExclusiveParameterCondition]::new("ignore-skip-worktree-entries");
            },
            [FlagParameter]@{
                Keys = @("--fsmonitor-valid");
                Name = "fsmonitor-valid";
                Description = "When one of these flags is specified, the object name recorded for the paths are not updated. Instead, these options set and unset the `"fsmonitor valid`" bit for the paths. See section `"File System Monitor`" below for more information.";
                Condition = [ExclusiveParameterCondition]::new("no-fsmonitor-valid");
            },
            [FlagParameter]@{
                Keys = @("--no-fsmonitor-valid");
                Name = "no-fsmonitor-valid";
                Description = "When one of these flags is specified, the object name recorded for the paths are not updated. Instead, these options set and unset the `"fsmonitor valid`" bit for the paths. See section `"File System Monitor`" below for more information.";
                Condition = [ExclusiveParameterCondition]::new("fsmonitor-valid");
            },
            [FlagParameter]@{
                Keys = @("--again", "-g");
                Name = "again";
                Description = "Runs git update-index itself on the paths whose index entries are different from those from the HEAD commit.";
            },
            [FlagParameter]@{
                Keys = @("--unresolve");
                Name = "unresolve";
                Description = "Restores the unmerged or needs updating state of a file during a merge if it was cleared by accident.";
            },
            [FlagParameter]@{
                Keys = @("--info-only");
                Name = "info-only";
                Description = "Do not create objects in the object database for all <file> arguments that follow this flag; just insert their object IDs into the index.";
            },
            [FlagParameter]@{
                Keys = @("--force-remove");
                Name = "force-remove";
                Description = "Remove the file from the index even when the working directory still has such a file. (Implies --remove.)";
            },
            [FlagParameter]@{
                Keys = @("--replace");
                Name = "replace";
                Description = "By default, when a file path exists in the index, git update-index refuses an attempt to add path/file. Similarly if a file path/file exists, a file path cannot be added. With --replace flag, existing entries that conflict with the entry being added are automatically removed with warning messages.";
            },
            [FlagParameter]@{
                Keys = @("--stdin");
                Name = "stdin";
                Description = "Instead of taking list of paths from the command line, read list of paths from the standard input. Paths are separated by LF (i.e. one path per line) by default.";
            },
            [FlagParameter]@{
                Keys = @("--verbose");
                Name = "verbose";
                Description = "Report what is being added and removed from index.";
            },
            [ValueParameter]@{
                Keys = @("--index-version");
                Name = "index-version";
                Description = "Write the resulting index out in the named on-disk format version. Supported versions are 2, 3 and 4. The current default version is 2 or 3, depending on whether extra features are used, such as git add -N.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("-z");
                Name = "z";
                Description = "Only meaningful with --stdin or --index-info; paths are separated with NUL character instead of LF.";
            },
            [FlagParameter]@{
                Keys = @("--split-index");
                Name = "split-index";
                Description = "Enable or disable split index mode. If split-index mode is already enabled and --split-index is given again, all changes in $GIT_DIR/index are pushed back to the shared index file.";
                Condition = [ExclusiveParameterCondition]::new("no-split-index");
            },
            [FlagParameter]@{
                Keys = @("--no-split-index");
                Name = "no-split-index";
                Description = "Enable or disable split index mode. If split-index mode is already enabled and --split-index is given again, all changes in $GIT_DIR/index are pushed back to the shared index file.";
                Condition = [ExclusiveParameterCondition]::new("split-index");
            },
            [FlagParameter]@{
                Keys = @("--untracked-cache");
                Name = "untracked-cache";
                Description = "Enable or disable untracked cache feature. Please use --test-untracked-cache before enabling it.";
                Condition = [ExclusiveParameterCondition]::new("no-untracked-cache");
            },
            [FlagParameter]@{
                Keys = @("--no-untracked-cache");
                Name = "no-untracked-cache";
                Description = "Enable or disable untracked cache feature. Please use --test-untracked-cache before enabling it.";
                Condition = [ExclusiveParameterCondition]::new("untracked-cache");
            },
            [FlagParameter]@{
                Keys = @("--test-untracked-cache");
                Name = "test-untracked-cache";
                Description = "Only perform tests on the working directory to make sure untracked cache can be used. You have to manually enable untracked cache using --untracked-cache or --force-untracked-cache or the core.untrackedCache configuration variable afterwards if you really want to use it. If a test fails the exit code is 1 and a message explains what is not working as needed, otherwise the exit code is 0 and OK is printed.";
            },
            [FlagParameter]@{
                Keys = @("--force-untracked-cache");
                Name = "force-untracked-cache";
                Description = "Same as --untracked-cache. Provided for backwards compatibility with older versions of Git where --untracked-cache used to imply --test-untracked-cache but this option would enable the extension unconditionally.";
            },
            [FlagParameter]@{
                Keys = @("--fsmonitor");
                Name = "fsmonitor";
                Description = "Enable or disable files system monitor feature. These options take effect whatever the value of the core.fsmonitor configuration variable (see git-config1). But a warning is emitted when the change goes against the configured value, as the configured value will take effect next time the index is read and this will remove the intended effect of the option.";
                Condition = [ExclusiveParameterCondition]::new("no-fsmonitor");
            },
            [FlagParameter]@{
                Keys = @("--no-fsmonitor");
                Name = "no-fsmonitor";
                Description = "Enable or disable files system monitor feature. These options take effect whatever the value of the core.fsmonitor configuration variable (see git-config1). But a warning is emitted when the change goes against the configured value, as the configured value will take effect next time the index is read and this will remove the intended effect of the option.";
                Condition = [ExclusiveParameterCondition]::new("fsmonitor");
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Files to act on. Note that files beginning with . are discarded. This includes ./file and dir/./file. If you don’t want this, then use cleaner names. The same applies to directories ending / and paths with //";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("update-ref");
        Name = "update-ref";
        Description = "Update the object name stored in a ref safely";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("upload-archive");
        Name = "upload-archive";
        Description = "Send archive back to git-archive";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The repository to get a tar archive from.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("upload-pack");
        Name = "upload-pack";
        Description = "Send objects packed back to git-fetch-pack";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--strict");
                Name = "strict";
                Description = "Do not try <directory>/.git/ if <directory> is no Git directory.";
                Condition = [ExclusiveParameterCondition]::new("no-strict");
            },
            [FlagParameter]@{
                Keys = @("--no-strict");
                Name = "no-strict";
                Description = "Do not try <directory>/.git/ if <directory> is no Git directory.";
                Condition = [ExclusiveParameterCondition]::new("strict");
            },
            [ValueParameter]@{
                Keys = @("--timeout");
                Name = "timeout";
                Description = "Interrupt transfer after <n> seconds of inactivity.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--stateless-rpc");
                Name = "stateless-rpc";
                Description = "Perform only a single read-write cycle with stdin and stdout. This fits with the HTTP POST request processing model where a program may read the request, write a response, and must exit.";
            },
            [FlagParameter]@{
                Keys = @("--http-backend-info-refs");
                Name = "http-backend-info-refs";
                Description = "Used by git-http-backend1 to serve up $GIT_URL/info/refs?service=git-upload-pack requests. See `"Smart Clients`" in the HTTP transfer protocols documentation and `"HTTP Transport`" in the Git Wire Protocol, Version 2 documentation. Also understood by git-receive-pack1.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The repository to sync from.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("var");
        Name = "var";
        Description = "Show a Git logical variable";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-l");
                Name = "l";
                Description = "Cause the logical variables to be listed. In addition, all the variables of the Git configuration file .git/config are listed as well. (However, the configuration variables listing functionality is deprecated in favor of git config -l.)";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("verify-commit");
        Name = "verify-commit";
        Description = "Check the GPG signature of commits";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--raw");
                Name = "raw";
                Description = "Print the raw gpg status output to standard error instead of the normal human-readable output.";
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Print the contents of the commit object before validating it.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "SHA-1 identifiers of Git commit objects.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("verify-pack");
        Name = "verify-pack";
        Description = "Validate packed Git archive files";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The idx files to verify.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "After verifying the pack, show list of objects contained in the pack and a histogram of delta chain length.";
            },
            [FlagParameter]@{
                Keys = @("--stat-only", "-s");
                Name = "stat-only";
                Description = "Do not verify the pack contents; only show the histogram of delta chain length. With --verbose, list of objects is also shown.";
            },
            [FlagParameter]@{
                Keys = @("--");
                Name = "
        ";
                Description = "Do not interpret any more arguments as options.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("verify-tag");
        Name = "verify-tag";
        Description = "Check the GPG signature of tags";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--raw");
                Name = "raw";
                Description = "Print the raw gpg status output to standard error instead of the normal human-readable output.";
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "Print the contents of the tag object before validating it.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "SHA-1 identifiers of Git tag objects.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("version");
        Name = "version";
        Description = "Display version information about Git";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--build-options");
                Name = "build-options";
                Description = "Include additional information about how git was built for diagnostic purposes.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("web--browse");
        Name = "web--browse";
        Description = "Git helper script to launch a web browser";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--browser", "-b");
                Name = "browser";
                Description = "Use the specified browser. It must be in the list of supported browsers.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--tool", "-t");
                Name = "tool";
                Description = "Same as above.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--config", "-c");
                Name = "config";
                Description = "CONF.VAR is looked up in the Git config files. If it’s set, then its value specifies the browser that should be used.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("whatchanged");
        Name = "whatchanged";
        Description = "Show logs with difference each commit introduces";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("worktree");
        Name = "worktree";
        Description = "Manage multiple working trees";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--force", "-f");
                Name = "force";
                Description = "By default, add refuses to create a new working tree when <commit-ish> is a branch name and is already checked out by another working tree, or if <path> is already assigned to some working tree but is missing (for instance, if <path> was deleted manually). This option overrides these safeguards. To add a missing but locked working tree path, specify --force twice.";
            },
            [ValueParameter]@{
                Keys = @("-B", "-b");
                Name = "B";
                Description = "With add, create a new branch named <new-branch> starting at <commit-ish>, and check out <new-branch> into the new working tree. If <commit-ish> is omitted, it defaults to HEAD. By default, -b refuses to create a new branch if it already exists. -B overrides this safeguard, resetting <new-branch> to <commit-ish>.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--detach", "-d");
                Name = "detach";
                Description = "With add, detach HEAD in the new working tree. See `"DETACHED HEAD`" in git-checkout1.";
            },
            [FlagParameter]@{
                Keys = @("--checkout");
                Name = "checkout";
                Description = "By default, add checks out &lt;commit-ish&gt;, however, --no-checkout can be used to suppress checkout in order to make customizations, such as configuring sparse-checkout. See `"Sparse checkout`" in git-read-tree1.";
                Condition = [ExclusiveParameterCondition]::new("no-checkout");
            },
            [FlagParameter]@{
                Keys = @("--no-checkout");
                Name = "no-checkout";
                Description = "By default, add checks out &lt;commit-ish&gt;, however, --no-checkout can be used to suppress checkout in order to make customizations, such as configuring sparse-checkout. See `"Sparse checkout`" in git-read-tree1.";
                Condition = [ExclusiveParameterCondition]::new("checkout");
            },
            [FlagParameter]@{
                Keys = @("--guess-remote");
                Name = "guess-remote";
                Description = "With worktree add &lt;path&gt;, without &lt;commit-ish&gt;, instead of creating a new branch from HEAD, if there exists a tracking branch in exactly one remote matching the basename of &lt;path&gt;, base the new branch on the remote-tracking branch, and mark the remote-tracking branch as `"upstream`" from the new branch.";
                Condition = [ExclusiveParameterCondition]::new("no-guess-remote");
            },
            [FlagParameter]@{
                Keys = @("--no-guess-remote");
                Name = "no-guess-remote";
                Description = "With worktree add &lt;path&gt;, without &lt;commit-ish&gt;, instead of creating a new branch from HEAD, if there exists a tracking branch in exactly one remote matching the basename of &lt;path&gt;, base the new branch on the remote-tracking branch, and mark the remote-tracking branch as `"upstream`" from the new branch.";
                Condition = [ExclusiveParameterCondition]::new("guess-remote");
            },
            [FlagParameter]@{
                Keys = @("--track");
                Name = "track";
                Description = "When creating a new branch, if &lt;commit-ish&gt; is a branch, mark it as `"upstream`" from the new branch. This is the default if <commit-ish> is a remote-tracking branch. See --track in git-branch1 for details.";
                Condition = [ExclusiveParameterCondition]::new("no-track");
            },
            [FlagParameter]@{
                Keys = @("--no-track");
                Name = "no-track";
                Description = "When creating a new branch, if &lt;commit-ish&gt; is a branch, mark it as `"upstream`" from the new branch. This is the default if <commit-ish> is a remote-tracking branch. See --track in git-branch1 for details.";
                Condition = [ExclusiveParameterCondition]::new("track");
            },
            [FlagParameter]@{
                Keys = @("--lock");
                Name = "lock";
                Description = "Keep the working tree locked after creation. This is the equivalent of git worktree lock after git worktree add, but without a race condition.";
            },
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "With prune, do not remove anything; just report what it would remove.";
            },
            [FlagParameter]@{
                Keys = @("--porcelain");
                Name = "porcelain";
                Description = "With list, output in an easy-to-parse format for scripts. This format will remain stable across Git versions and regardless of user configuration. See below for details.";
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "With add, suppress feedback messages.";
                Condition = [ExclusiveParameterCondition]::new("verbose");
            },
            [FlagParameter]@{
                Keys = @("--verbose", "-v");
                Name = "verbose";
                Description = "With prune, report all removals.";
                Condition = [ExclusiveParameterCondition]::new("quiet");
            },
            [ValueParameter]@{
                Keys = @("--expire");
                Name = "expire";
                Description = "With prune, only expire unused working trees older than <time>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--reason");
                Name = "reason";
                Description = "With lock or with add --lock, an explanation why the working tree is locked.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Working trees can be identified by path, either relative or absolute.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("write-tree");
        Name = "write-tree";
        Description = "Create a tree object from the current index";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--missing-ok");
                Name = "missing-ok";
                Description = "Normally git write-tree ensures that the objects referenced by the directory exist in the object database. This option disables this check.";
            },
            [ValueParameter]@{
                Keys = @("--prefix");
                Name = "prefix";
                Description = "Writes a tree object that represents a subdirectory <prefix>. This can be used to write the tree object for a subproject that is in the named subdirectory.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("am");
        Name = "am";
        Description = "Apply a series of patches from a mailbox";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("(");
                Name = "(";
                Description = "The list of mailbox files to read patches from. If you do not supply this argument, the command reads from the standard input. If you supply directories, they will be treated as Maildirs.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--signoff", "-s");
                Name = "signoff";
                Description = "Add a Signed-off-by trailer to the commit message, using the committer identity of yourself. See the signoff option in git-commit1 for more information.";
            },
            [FlagParameter]@{
                Keys = @("--keep", "-k");
                Name = "keep";
                Description = "Pass -k flag to git mailinfo (see git-mailinfo1).";
            },
            [FlagParameter]@{
                Keys = @("--keep-non-patch");
                Name = "keep-non-patch";
                Description = "Pass -b flag to git mailinfo (see git-mailinfo1).";
            },
            [FlagParameter]@{
                Keys = @("--keep-cr");
                Name = "keep-cr";
                Description = "With --keep-cr, call git mailsplit (see git-mailsplit1) with the same option, to prevent it from stripping CR at the end of lines. am.keepcr configuration variable can be used to specify the default behaviour. --no-keep-cr is useful to override am.keepcr.";
                Condition = [ExclusiveParameterCondition]::new("no-keep-cr");
            },
            [FlagParameter]@{
                Keys = @("--no-keep-cr");
                Name = "no-keep-cr";
                Description = "With --keep-cr, call git mailsplit (see git-mailsplit1) with the same option, to prevent it from stripping CR at the end of lines. am.keepcr configuration variable can be used to specify the default behaviour. --no-keep-cr is useful to override am.keepcr.";
                Condition = [ExclusiveParameterCondition]::new("keep-cr");
            },
            [FlagParameter]@{
                Keys = @("--scissors", "-c");
                Name = "scissors";
                Description = "Remove everything in body before a scissors line (see git-mailinfo1). Can be activated by default using the mailinfo.scissors configuration variable.";
                Condition = [ExclusiveParameterCondition]::new("no-scissors");
            },
            [FlagParameter]@{
                Keys = @("--no-scissors");
                Name = "no-scissors";
                Description = "Ignore scissors lines (see git-mailinfo1).";
                Condition = [ExclusiveParameterCondition]::new("scissors");
            },
            [ValueParameter]@{
                Keys = @("--quoted-cr");
                Name = "quoted-cr";
                Description = "This flag will be passed down to git mailinfo (see git-mailinfo1).";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--message-id", "-m");
                Name = "message-id";
                Description = "Pass the -m flag to git mailinfo (see git-mailinfo1), so that the Message-ID header is added to the commit message. The am.messageid configuration variable can be used to specify the default behaviour.";
                Condition = [ExclusiveParameterCondition]::new("no-message-id");
            },
            [FlagParameter]@{
                Keys = @("--no-message-id");
                Name = "no-message-id";
                Description = "Do not add the Message-ID header to the commit message. no-message-id is useful to override am.messageid.";
                Condition = [ExclusiveParameterCondition]::new("message-id");
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Be quiet. Only print error messages.";
            },
            [FlagParameter]@{
                Keys = @("--utf8", "-u");
                Name = "utf8";
                Description = "Pass -u flag to git mailinfo (see git-mailinfo1). The proposed commit log message taken from the e-mail is re-coded into UTF-8 encoding (configuration variable i18n.commitEncoding can be used to specify project’s preferred encoding if it is not UTF-8).";
                Condition = [ExclusiveParameterCondition]::new("no-utf8");
            },
            [FlagParameter]@{
                Keys = @("--no-utf8");
                Name = "no-utf8";
                Description = "Pass -n flag to git mailinfo (see git-mailinfo1).";
                Condition = [ExclusiveParameterCondition]::new("utf8");
            },
            [FlagParameter]@{
                Keys = @("--3way", "-3");
                Name = "3way";
                Description = "When the patch does not apply cleanly, fall back on 3-way merge if the patch records the identity of blobs it is supposed to apply to and we have those blobs available locally. --no-3way can be used to override am.threeWay configuration variable. For more information, see am.threeWay in git-config1.";
                Condition = [ExclusiveParameterCondition]::new("no-3way");
            },
            [FlagParameter]@{
                Keys = @("--no-3way");
                Name = "no-3way";
                Description = "When the patch does not apply cleanly, fall back on 3-way merge if the patch records the identity of blobs it is supposed to apply to and we have those blobs available locally. --no-3way can be used to override am.threeWay configuration variable. For more information, see am.threeWay in git-config1.";
                Condition = [ExclusiveParameterCondition]::new("3way");
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
                Keys = @("--reject", "--include", "--exclude", "--directory", "--whitespace", "--ignore-whitespace", "--ignore-space-change", "-p", "-C");
                Name = "reject";
                Description = "These flags are passed to the git apply (see git-apply1) program that applies the patch.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--patch-format");
                Name = "patch-format";
                Description = "By default the command will try to detect the patch format automatically. This option allows the user to bypass the automatic detection and specify the patch format that the patch(es) should be interpreted as. Valid formats are mbox, mboxrd, stgit, stgit-series and hg.";
            },
            [FlagParameter]@{
                Keys = @("--interactive", "-i");
                Name = "interactive";
                Description = "Run interactively.";
            },
            [FlagParameter]@{
                Keys = @("--committer-date-is-author-date");
                Name = "committer-date-is-author-date";
                Description = "By default the command records the date from the e-mail message as the commit author date, and uses the time of commit creation as the committer date. This allows the user to lie about the committer date by using the same value as the author date.";
            },
            [FlagParameter]@{
                Keys = @("--ignore-date");
                Name = "ignore-date";
                Description = "By default the command records the date from the e-mail message as the commit author date, and uses the time of commit creation as the committer date. This allows the user to lie about the author date by using the same value as the committer date.";
            },
            [FlagParameter]@{
                Keys = @("--skip");
                Name = "skip";
                Description = "Skip the current patch. This is only meaningful when restarting an aborted patch.";
            },
            [ValueParameter]@{
                Keys = @("--gpg-sign", "-S");
                Name = "gpg-sign";
                Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-gpg-sign");
            },
            [FlagParameter]@{
                Keys = @("--no-gpg-sign");
                Name = "no-gpg-sign";
                Description = "GPG-sign commits. The keyid argument is optional and defaults to the committer identity; if specified, it must be stuck to the option without a space. --no-gpg-sign is useful to countermand both commit.gpgSign configuration variable, and earlier --gpg-sign.";
                Condition = [ExclusiveParameterCondition]::new("gpg-sign");
            },
            [FlagParameter]@{
                Keys = @("--resolved", "--continue", "-r");
                Name = "resolved";
                Description = "After a patch failure (e.g. attempting to apply conflicting patch), the user has applied it by hand and the index file stores the result of the application. Make a commit using the authorship and commit log extracted from the e-mail message and the current index file, and continue.";
            },
            [ValueParameter]@{
                Keys = @("--resolvemsg");
                Name = "resolvemsg";
                Description = "When a patch failure occurs, <msg> will be printed to the screen before exiting. This overrides the standard message informing you to use --continue or --skip to handle the failure. This is solely for internal use between git rebase and git am.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--abort");
                Name = "abort";
                Description = "Restore the original branch and abort the patching operation. Revert contents of files involved in the am operation to their pre-am state.";
            },
            [FlagParameter]@{
                Keys = @("--quit");
                Name = "quit";
                Description = "Abort the patching operation but keep HEAD and the index untouched.";
            },
            [ValueParameter]@{
                Keys = @("--show-current-patch");
                Name = "show-current-patch";
                Description = "Show the message at which git am has stopped due to conflicts. If raw is specified, show the raw contents of the e-mail message; if diff, show the diff portion only. Defaults to raw.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("instaweb");
        Name = "instaweb";
        Description = "Instantly browse your working repository in gitweb";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--local", "-l");
                Name = "local";
                Description = "Only bind the web server to the local IP (127.0.0.1).";
            },
            [FlagParameter]@{
                Keys = @("--httpd", "-d");
                Name = "httpd";
                Description = "The HTTP daemon command-line that will be executed. Command-line options may be specified here, and the configuration file will be added at the end of the command-line. Currently apache2, lighttpd, mongoose, plackup, python and webrick are supported. (Default: lighttpd)";
            },
            [FlagParameter]@{
                Keys = @("--module-path", "-m");
                Name = "module-path";
                Description = "The module path (only needed if httpd is Apache). (Default: /usr/lib/apache2/modules)";
            },
            [FlagParameter]@{
                Keys = @("--port", "-p");
                Name = "port";
                Description = "The port number to bind the httpd to. (Default: 1234)";
            },
            [FlagParameter]@{
                Keys = @("--browser", "-b");
                Name = "browser";
                Description = "The web browser that should be used to view the gitweb page. This will be passed to the git web--browse helper script along with the URL of the gitweb instance. See git-web--browse1 for more information about this. If the script fails, the URL will be printed to stdout.";
            },
            [FlagParameter]@{
                Keys = @("--start", "start");
                Name = "start";
                Description = "Start the httpd instance and exit. Regenerate configuration files as necessary for spawning a new instance.";
            },
            [FlagParameter]@{
                Keys = @("--stop", "stop");
                Name = "stop";
                Description = "Stop the httpd instance and exit. This does not generate any of the configuration files for spawning a new instance, nor does it close the browser.";
            },
            [FlagParameter]@{
                Keys = @("--restart", "restart");
                Name = "restart";
                Description = "Restart the httpd instance and exit. Regenerate configuration files as necessary for spawning a new instance.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("bugreport");
        Name = "bugreport";
        Description = "Collect information for user to file a bug report";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--output-directory", "-o");
                Name = "output-directory";
                Description = "Place the resulting bug report file in <path> instead of the current directory.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--suffix", "-s");
                Name = "suffix";
                Description = "Specify an alternate suffix for the bugreport name, to create a file named git-bugreport-<formatted suffix>. This should take the form of a strftime(3) format string; the current local time will be used.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("daemon");
        Name = "daemon";
        Description = "A really simple server for Git repositories";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--strict-paths");
                Name = "strict-paths";
                Description = "Match paths exactly (i.e. don’t allow `"/foo/repo`" when the real path is `"/foo/repo.git`" or `"/foo/repo/.git`") and don’t do user-relative paths. git daemon will refuse to start when this option is enabled and no whitelist is specified.";
            },
            [ValueParameter]@{
                Keys = @("--base-path");
                Name = "base-path";
                Description = "Remap all the path requests as relative to the given path. This is sort of `"Git root`" - if you run git daemon with --base-path=/srv/git on example.com, then if you later try to pull git://example.com/hello.git, git daemon will interpret the path as /srv/git/hello.git.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--base-path-relaxed");
                Name = "base-path-relaxed";
                Description = "If --base-path is enabled and repo lookup fails, with this option git daemon will attempt to lookup without prefixing the base path. This is useful for switching to --base-path usage, while still allowing the old paths.";
            },
            [ValueParameter]@{
                Keys = @("--interpolated-path");
                Name = "interpolated-path";
                Description = "To support virtual hosting, an interpolated path template can be used to dynamically construct alternate paths. The template supports %H for the target hostname as supplied by the client but converted to all lowercase, %CH for the canonical hostname, %IP for the server’s IP address, %P for the port number, and %D for the absolute path of the named repository. After interpolation, the path is validated against the directory whitelist.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--export-all");
                Name = "export-all";
                Description = "Allow pulling from all directories that look like Git repositories (have the objects and refs subdirectories), even if they do not have the git-daemon-export-ok file.";
            },
            [FlagParameter]@{
                Keys = @("--inetd");
                Name = "inetd";
                Description = "Have the server run as an inetd service. Implies --syslog (may be overridden with --log-destination=). Incompatible with --detach, --port, --listen, --user and --group options.";
            },
            [ValueParameter]@{
                Keys = @("--listen");
                Name = "listen";
                Description = "Listen on a specific IP address or hostname. IP addresses can be either an IPv4 address or an IPv6 address if supported. If IPv6 is not supported, then --listen=hostname is also not supported and --listen must be given an IPv4 address. Can be given more than once. Incompatible with --inetd option.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--port");
                Name = "port";
                Description = "Listen on an alternative port. Incompatible with --inetd option.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--init-timeout");
                Name = "init-timeout";
                Description = "Timeout (in seconds) between the moment the connection is established and the client request is received (typically a rather low value, since that should be basically immediate).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--timeout");
                Name = "timeout";
                Description = "Timeout (in seconds) for specific client sub-requests. This includes the time it takes for the server to process the sub-request and the time spent waiting for the next client’s request.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--max-connections");
                Name = "max-connections";
                Description = "Maximum number of concurrent clients, defaults to 32. Set it to zero for no limit.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--syslog");
                Name = "syslog";
                Description = "Short for --log-destination=syslog.";
            },
            [ValueParameter]@{
                Keys = @("--log-destination");
                Name = "log-destination";
                Description = "Send log messages to the specified destination. Note that this option does not imply --verbose, thus by default only error conditions will be logged. The <destination> must be one of:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--user-path", "--user-path");
                Name = "user-path";
                Description = "Allow ~user notation to be used in requests. When specified with no parameter, requests to git://host/~alice/foo is taken as a request to access foo repository in the home directory of user alice. If --user-path=path is specified, the same request is taken as a request to access path/foo repository in the home directory of user alice.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--verbose");
                Name = "verbose";
                Description = "Log details about the incoming connections and requested files.";
            },
            [FlagParameter]@{
                Keys = @("--reuseaddr");
                Name = "reuseaddr";
                Description = "Use SO_REUSEADDR when binding the listening socket. This allows the server to restart without waiting for old connections to time out.";
            },
            [FlagParameter]@{
                Keys = @("--detach");
                Name = "detach";
                Description = "Detach from the shell. Implies --syslog.";
            },
            [ValueParameter]@{
                Keys = @("--pid-file");
                Name = "pid-file";
                Description = "Save the process id in file. Ignored when the daemon is run under --inetd.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--group", "--user");
                Name = "group";
                Description = "Change daemon’s uid and gid before entering the service loop. When only --user is given without --group, the primary group ID for the user is used. The values of the option are given to getpwnam(3) and getgrnam(3) and numeric IDs are not supported.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--disable", "--enable");
                Name = "disable";
                Description = "Enable/disable the service site-wide per default. Note that a service disabled site-wide can still be enabled per repository if it is marked overridable and the repository enables the service with a configuration item.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--forbid-override", "--allow-override");
                Name = "forbid-override";
                Description = "Allow/forbid overriding the site-wide default with per repository configuration. By default, all the services may be overridden.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--informative-errors");
                Name = "informative-errors";
                Description = "When informative errors are turned on, git-daemon will report more verbose errors to the client, differentiating conditions like `"no such repository`" from `"repository not exported`". This is more convenient for clients, but may leak information about the existence of unexported repositories. When informative errors are not enabled, all errors report `"access denied`" to the client. The default is --no-informative-errors.";
                Condition = [ExclusiveParameterCondition]::new("no-informative-errors");
            },
            [FlagParameter]@{
                Keys = @("--no-informative-errors");
                Name = "no-informative-errors";
                Description = "When informative errors are turned on, git-daemon will report more verbose errors to the client, differentiating conditions like `"no such repository`" from `"repository not exported`". This is more convenient for clients, but may leak information about the existence of unexported repositories. When informative errors are not enabled, all errors report `"access denied`" to the client. The default is --no-informative-errors.";
                Condition = [ExclusiveParameterCondition]::new("informative-errors");
            },
            [ValueParameter]@{
                Keys = @("--access-hook");
                Name = "access-hook";
                Description = "Every time a client connects, first run an external command specified by the &lt;path&gt; with service name (e.g. `"upload-pack`"), path to the repository, hostname (%H), canonical hostname (%CH), IP address (%IP), and TCP port (%P) as its command-line arguments. The external command can decide to decline the service by exiting with a non-zero status (or to allow it by exiting with a zero status). It can also look at the $REMOTE_ADDR and $REMOTE_PORT environment variables to learn about the requestor when making this decision.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "A directory to add to the whitelist of allowed directories. Unless --strict-paths is specified this will also include subdirectories of each named directory.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("update-server-info");
        Name = "update-server-info";
        Description = "Update auxiliary info file to help dumb servers";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("format-patch");
        Name = "format-patch";
        Description = "Prepare patches for e-mail submission";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("--no-stat", "-p");
                Name = "no-stat";
                Description = "Generate plain patches without any diffstats.";
                Condition = [ExclusiveParameterCondition]::new("stat");
            },
            [ValueParameter]@{
                Keys = @("--unified", "-U");
                Name = "unified";
                Description = "Generate diffs with <n> lines of context instead of the usual three.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output");
                Name = "output";
                Description = "Output to a specific file instead of stdout.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output-indicator-context", "--output-indicator-old", "--output-indicator-new");
                Name = "output-indicator-context";
                Description = "Specify the character used to indicate new, old or context lines in the generated patch. Normally they are +, - and ' ' respectively.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--diff-algorithm");
                Name = "diff-algorithm";
                Description = "Choose a diff algorithm. The variants are as follows:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--stat");
                Name = "stat";
                Description = "Generate a diffstat. By default, as much space as necessary will be used for the filename part, and the rest for the graph part. Maximum width defaults to terminal width, or 80 columns if not connected to a terminal, and can be overridden by <width>. The width of the filename part can be limited by giving another width <name-width> after a comma. The width of the graph part can be limited by using --stat-graph-width=<width> (affects all commands generating a stat graph) or by setting diff.statGraphWidth=<width> (does not affect git format-patch). By giving a third parameter <count>, you can limit the output to the first <count> lines, followed by ... if there are more.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-stat");
            },
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
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--summary");
                Name = "summary";
                Description = "Output a condensed summary of extended header information such as creations, renames and mode changes.";
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
                Keys = @("--full-index");
                Name = "full-index";
                Description = "Instead of the first handful of characters, show the full pre- and post-image blob object names on the `"index`" line when generating patch format output.";
            },
            [FlagParameter]@{
                Keys = @("--binary");
                Name = "binary";
                Description = "In addition to --full-index, output a binary diff that can be applied with git-apply.";
                Condition = [ExclusiveParameterCondition]::new("no-binary");
            },
            [ValueParameter]@{
                Keys = @("--abbrev");
                Name = "abbrev";
                Description = "Instead of showing the full 40-byte hexadecimal object name in diff-raw format output and diff-tree header lines, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object. In diff-patch output format, --full-index takes higher precedence, i.e. if --full-index is specified, full blob names will be shown regardless of --abbrev. Non default number of digits can be specified with --abbrev=<n>.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--break-rewrites", "-B");
                Name = "break-rewrites";
                Description = "Break complete rewrite changes into pairs of delete and create. This serves two purposes:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-renames", "-M");
                Name = "find-renames";
                Description = "Detect renames. If n is specified, it is a threshold on the similarity index (i.e. amount of addition/deletions compared to the file’s size). For example, -M90% means Git should consider a delete/add pair to be a rename if more than 90% of the file hasn’t changed. Without a % sign, the number is to be read as a fraction, with a decimal point before it. I.e., -M5 becomes 0.5, and is thus the same as -M50%. Similarly, -M05 is the same as -M5%. To limit detection to exact renames, use -M100%. The default similarity index is 50%.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--find-copies", "-C");
                Name = "find-copies";
                Description = "Detect copies as well as renames. See also --find-copies-harder. If n is specified, it has the same meaning as for -M<n>.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("-O");
                Name = "O";
                Description = "Control the order in which files appear in the output. This overrides the diff.orderFile configuration variable (see git-config1). To cancel diff.orderFile, use -O/dev/null.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--rotate-to", "--skip-to");
                Name = "rotate-to";
                Description = "Discard the files before the named <file> from the output (i.e. skip to), or move them to the end of the output (i.e. rotate to). These were invented primarily for use of the git difftool command, and may not be very useful otherwise.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--relative");
                Name = "relative";
                Description = "When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option. When you are not in a subdirectory (e.g. in a bare repository), you can name which subdirectory to make the output relative to by giving a <path> as an argument. --no-relative can be used to countermand both diff.relative config option and previous --relative.";
                Source = $???;
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--inter-hunk-context");
                Name = "inter-hunk-context";
                Description = "Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other. Defaults to diff.interHunkContext or 0 if the config option is unset.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--function-context", "-W");
                Name = "function-context";
                Description = "Show whole function as context lines for each change. The function names are determined in the same way as git diff works out patch hunk headers (see Defining a custom hunk-header in gitattributes5).";
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
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--src-prefix");
                Name = "src-prefix";
                Description = "Show the given source prefix instead of `"a/`".";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--dst-prefix");
                Name = "dst-prefix";
                Description = "Show the given destination prefix instead of `"b/`".";
                Source = $???;
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
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ita-invisible-in-index");
                Name = "ita-invisible-in-index";
                Description = "By default entries added by `"git add -N`" appear as an existing empty file in `"git diff`" and a new file in `"git diff --cached`". This option makes the entry appear as a new file in `"git diff`" and non-existent in `"git diff --cached`". This option could be reverted with --ita-visible-in-index. Both options are experimental and could be removed in future.";
            },
            [ValueParameter]@{
                Keys = @("-");
                Name = "
        ";
                Description = "Prepare patches from the topmost <n> commits.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--output-directory", "-o");
                Name = "output-directory";
                Description = "Use <dir> to store the resulting files, instead of the current working directory.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--numbered", "-n");
                Name = "numbered";
                Description = "Name output in [PATCH n/m] format, even with a single patch.";
                Condition = [ExclusiveParameterCondition]::new("no-numbered");
            },
            [FlagParameter]@{
                Keys = @("--no-numbered", "-N");
                Name = "no-numbered";
                Description = "Name output in [PATCH] format.";
                Condition = [ExclusiveParameterCondition]::new("numbered");
            },
            [ValueParameter]@{
                Keys = @("--start-number");
                Name = "start-number";
                Description = "Start numbering the patches at <n> instead of 1.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--numbered-files");
                Name = "numbered-files";
                Description = "Output file names will be a simple number sequence without the default first line of the commit appended.";
            },
            [FlagParameter]@{
                Keys = @("--keep-subject", "-k");
                Name = "keep-subject";
                Description = "Do not strip/add [PATCH] from the first line of the commit log message.";
            },
            [FlagParameter]@{
                Keys = @("--signoff", "-s");
                Name = "signoff";
                Description = "Add a Signed-off-by trailer to the commit message, using the committer identity of yourself. See the signoff option in git-commit1 for more information.";
            },
            [FlagParameter]@{
                Keys = @("--stdout");
                Name = "stdout";
                Description = "Print all commits to the standard output in mbox format, instead of creating a file for each one.";
            },
            [ValueParameter]@{
                Keys = @("--attach");
                Name = "attach";
                Description = "Create multipart/mixed attachment, the first part of which is the commit message and the patch itself in the second part, with Content-Disposition: attachment.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-attach");
            },
            [FlagParameter]@{
                Keys = @("--no-attach");
                Name = "no-attach";
                Description = "Disable the creation of an attachment, overriding the configuration setting.";
                Condition = [ExclusiveParameterCondition]::new("attach");
            },
            [ValueParameter]@{
                Keys = @("--inline");
                Name = "inline";
                Description = "Create multipart/mixed attachment, the first part of which is the commit message and the patch itself in the second part, with Content-Disposition: inline.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--thread");
                Name = "thread";
                Description = "Controls addition of In-Reply-To and References headers to make the second and subsequent mails appear as replies to the first. Also controls generation of the Message-Id header to reference.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-thread");
            },
            [FlagParameter]@{
                Keys = @("--no-thread");
                Name = "no-thread";
                Description = "Controls addition of In-Reply-To and References headers to make the second and subsequent mails appear as replies to the first. Also controls generation of the Message-Id header to reference.";
                Condition = [ExclusiveParameterCondition]::new("thread");
            },
            [ValueParameter]@{
                Keys = @("--in-reply-to");
                Name = "in-reply-to";
                Description = "Make the first mail (or all the mails with --no-thread) appear as a reply to the given <message id>, which avoids breaking threads to provide a new patch series.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--ignore-if-in-upstream");
                Name = "ignore-if-in-upstream";
                Description = "Do not include a patch that matches a commit in <until>..<since>. This will examine all patches reachable from <since> but not from <until> and compare them with the patches being generated, and any patch that matches is ignored.";
            },
            [ValueParameter]@{
                Keys = @("--cover-from-description");
                Name = "cover-from-description";
                Description = "Controls which parts of the cover letter will be automatically populated using the branch’s description.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--subject-prefix");
                Name = "subject-prefix";
                Description = "Instead of the standard [PATCH] prefix in the subject line, instead use [<subject prefix>]. This allows for useful naming of a patch series, and can be combined with the --numbered option.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--filename-max-length");
                Name = "filename-max-length";
                Description = "Instead of the standard 64 bytes, chomp the generated output filenames at around <n> bytes (too short a value will be silently raised to a reasonable length). Defaults to the value of the format.filenameMaxLength configuration variable, or 64 if unconfigured.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--rfc");
                Name = "rfc";
                Description = "Alias for --subject-prefix=`"RFC PATCH`". RFC means `"Request For Comments`"; use this when sending an experimental patch for discussion rather than application.";
            },
            [ValueParameter]@{
                Keys = @("--reroll-count", "-v");
                Name = "reroll-count";
                Description = "Mark the series as the &lt;n&gt;-th iteration of the topic. The output filenames have v&lt;n&gt; prepended to them, and the subject prefix (`"PATCH`" by default, but configurable via the --subject-prefix option) has ` v&lt;n&gt;` appended to it. E.g. --reroll-count=4 may produce v4-0001-add-makefile.patch file that has `"Subject: [PATCH v4 1/20] Add makefile`" in it. &lt;n&gt; does not have to be an integer (e.g. `"--reroll-count=4.4`", or `"--reroll-count=4rev2`" are allowed), but the downside of using such a reroll-count is that the range-diff/interdiff with the previous version does not state exactly which version the new interation is compared against.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--to");
                Name = "to";
                Description = "Add a To: header to the email headers. This is in addition to any configured headers, and may be used multiple times. The negated form --no-to discards all To: headers added so far (from config or command line).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--cc");
                Name = "cc";
                Description = "Add a Cc: header to the email headers. This is in addition to any configured headers, and may be used multiple times. The negated form --no-cc discards all Cc: headers added so far (from config or command line).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--from", "--from");
                Name = "from";
                Description = "Use ident in the From: header of each commit email. If the author ident of the commit is not textually identical to the provided ident, place a From: header in the body of the message with the original author. If no ident is given, use the committer ident.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--add-header");
                Name = "add-header";
                Description = "Add an arbitrary header to the email headers. This is in addition to any configured headers, and may be used multiple times. For example, --add-header=`"Organization: git-foo`". The negated form --no-add-header discards all (To:, Cc:, and custom) headers added so far from config or command line.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--cover-letter");
                Name = "cover-letter";
                Description = "In addition to the patches, generate a cover letter file containing the branch description, shortlog and the overall diffstat. You can fill in a description in the file before sending it out.";
                Condition = [ExclusiveParameterCondition]::new("no-cover-letter");
            },
            [FlagParameter]@{
                Keys = @("--no-cover-letter");
                Name = "no-cover-letter";
                Description = "In addition to the patches, generate a cover letter file containing the branch description, shortlog and the overall diffstat. You can fill in a description in the file before sending it out.";
                Condition = [ExclusiveParameterCondition]::new("cover-letter");
            },
            [FlagParameter]@{
                Keys = @("--encode-email-headers");
                Name = "encode-email-headers";
                Description = "Encode email headers that have non-ASCII characters with `"Q-encoding`" (described in RFC 2047), instead of outputting the headers verbatim. Defaults to the value of the format.encodeEmailHeaders configuration variable.";
                Condition = [ExclusiveParameterCondition]::new("no-encode-email-headers");
            },
            [FlagParameter]@{
                Keys = @("--no-encode-email-headers");
                Name = "no-encode-email-headers";
                Description = "Encode email headers that have non-ASCII characters with `"Q-encoding`" (described in RFC 2047), instead of outputting the headers verbatim. Defaults to the value of the format.encodeEmailHeaders configuration variable.";
                Condition = [ExclusiveParameterCondition]::new("encode-email-headers");
            },
            [ValueParameter]@{
                Keys = @("--interdiff");
                Name = "interdiff";
                Description = "As a reviewer aid, insert an interdiff into the cover letter, or as commentary of the lone patch of a 1-patch series, showing the differences between the previous version of the patch series and the series currently being formatted. previous is a single revision naming the tip of the previous series which shares a common base with the series being formatted (for example git format-patch --cover-letter --interdiff=feature/v1 -3 feature/v2).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--range-diff");
                Name = "range-diff";
                Description = "As a reviewer aid, insert a range-diff (see git-range-diff1) into the cover letter, or as commentary of the lone patch of a 1-patch series, showing the differences between the previous version of the patch series and the series currently being formatted. previous can be a single revision naming the tip of the previous series if it shares a common base with the series being formatted (for example git format-patch --cover-letter --range-diff=feature/v1 -3 feature/v2), or a revision range if the two versions of the series are disjoint (for example git format-patch --cover-letter --range-diff=feature/v1~3..feature/v1 -3 feature/v2).";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--creation-factor");
                Name = "creation-factor";
                Description = "Used with --range-diff, tweak the heuristic which matches up commits between the previous and current series of patches by adjusting the creation/deletion cost fudge factor. See git-range-diff1) for details.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--notes");
                Name = "notes";
                Description = "Append the notes (see git-notes1) for the commit after the three-dash line.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-notes");
            },
            [FlagParameter]@{
                Keys = @("--no-notes");
                Name = "no-notes";
                Description = "Append the notes (see git-notes1) for the commit after the three-dash line.";
                Condition = [ExclusiveParameterCondition]::new("notes");
            },
            [ValueParameter]@{
                Keys = @("--signature");
                Name = "signature";
                Description = "Add a signature to each message produced. Per RFC 3676 the signature is separated from the body by a line with '-- ' on it. If the signature option is omitted the signature defaults to the Git version number.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-signature");
            },
            [ValueParameter]@{
                Keys = @("--no-signature");
                Name = "no-signature";
                Description = "Add a signature to each message produced. Per RFC 3676 the signature is separated from the body by a line with '-- ' on it. If the signature option is omitted the signature defaults to the Git version number.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("signature");
            },
            [ValueParameter]@{
                Keys = @("--signature-file");
                Name = "signature-file";
                Description = "Works just like --signature except the signature is read from a file.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--suffix");
                Name = "suffix";
                Description = "Instead of using .patch as the suffix for generated filenames, use specified suffix. A common alternative is --suffix=.txt. Leaving this empty will remove the .patch suffix.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Do not print the names of the generated files to standard output.";
            },
            [FlagParameter]@{
                Keys = @("--no-binary");
                Name = "no-binary";
                Description = "Do not output contents of changes in binary files, instead display a notice that those files changed. Patches generated using this option cannot be applied properly, but they are still useful for code review.";
                Condition = [ExclusiveParameterCondition]::new("binary");
            },
            [FlagParameter]@{
                Keys = @("--zero-commit");
                Name = "zero-commit";
                Description = "Output an all-zero hash in each patch’s From header instead of the hash of the commit.";
            },
            [ValueParameter]@{
                Keys = @("--base");
                Name = "base";
                Description = "Record the base tree information to identify the state the patch series applies to. See the BASE TREE INFORMATION section below for details. If &lt;commit&gt; is `"auto`", a base commit is automatically chosen. The --no-base option overrides a format.useAutoBase configuration.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("no-base");
            },
            [ValueParameter]@{
                Keys = @("--no-base");
                Name = "no-base";
                Description = "Record the base tree information to identify the state the patch series applies to. See the BASE TREE INFORMATION section below for details. If &lt;commit&gt; is `"auto`", a base commit is automatically chosen. The --no-base option overrides a format.useAutoBase configuration.";
                Source = $???;
                Condition = [ExclusiveParameterCondition]::new("base");
            },
            [FlagParameter]@{
                Keys = @("--root");
                Name = "root";
                Description = "Treat the revision argument as a <revision range>, even if it is just a single commit (that would normally be treated as a <since>). Note that root commits included in the specified range are always formatted as creation patches, independently of this flag.";
            },
            [FlagParameter]@{
                Keys = @("--progress");
                Name = "progress";
                Description = "Show progress reports on stderr as patches are generated.";
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("send-email");
        Name = "send-email";
        Description = "Send a collection of patches as emails";
        Parameters = @(
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("request-pull");
        Name = "request-pull";
        Description = "Generates a summary of pending changes";
        Parameters = @(
            [FlagParameter]@{
                Keys = @("-p");
                Name = "p";
                Description = "Include patch text in the output.";
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Commit to start at. This names a commit that is already in the upstream history.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "The repository URL to be pulled from.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("");
                Name = "
        ";
                Description = "Commit to end at (defaults to HEAD). This names the commit at the tip of the history you are asking to be pulled.";
                Source = $???;
            },
        ),
    },
﻿    [CommandParameter]@{
        Keys = @("svn");
        Name = "svn";
        Description = "Bidirectional operation between a Subversion repository and Git";
        Parameters = @(
            [ValueParameter]@{
                Keys = @("--template", "--shared");
                Name = "template";
                Description = "Only used with the init command. These are passed directly to git init.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--revision", "-r");
                Name = "revision";
                Description = "Used with the fetch command.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--stdin", "-");
                Name = "stdin";
                Description = "Only used with the set-tree command.";
            },
            [FlagParameter]@{
                Keys = @("--rmdir");
                Name = "rmdir";
                Description = "Only used with the dcommit, set-tree and commit-diff commands.";
            },
            [FlagParameter]@{
                Keys = @("--edit", "-e");
                Name = "edit";
                Description = "Only used with the dcommit, set-tree and commit-diff commands.";
            },
            [ValueParameter]@{
                Keys = @("--find-copies-harder", "-l");
                Name = "find-copies-harder";
                Description = "Only used with the dcommit, set-tree and commit-diff commands.";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--authors-file", "-A");
                Name = "authors-file";
                Description = "Syntax is compatible with the file used by git cvsimport but an empty email address can be supplied with <>:";
                Source = $???;
            },
            [ValueParameter]@{
                Keys = @("--authors-prog");
                Name = "authors-prog";
                Description = "If this option is specified, for each SVN committer name that does not exist in the authors file, the given file is executed with the committer name as the first argument. The program is expected to return a single line of the form `"Name &lt;email&gt;`" or `"Name &lt;&gt;`", which will be treated as if included in the authors file.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--quiet", "-q");
                Name = "quiet";
                Description = "Make git svn less verbose. Specify a second time to make it even less verbose.";
            },
            [ValueParameter]@{
                Keys = @("--rebase-merges", "--strategy", "--merge", "-p", "-s", "-m");
                Name = "rebase-merges";
                Description = "These are only used with the dcommit and rebase commands.";
                Source = $???;
            },
            [FlagParameter]@{
                Keys = @("--dry-run", "-n");
                Name = "dry-run";
                Description = "This can be used with the dcommit, rebase, branch and tag commands.";
            },
            [FlagParameter]@{
                Keys = @("--use-log-author");
                Name = "use-log-author";
                Description = "When retrieving svn commits into Git (as part of fetch, rebase, or dcommit operations), look for the first From: line or Signed-off-by trailer in the log message and use that as the author string.";
            },
            [FlagParameter]@{
                Keys = @("--add-author-from");
                Name = "add-author-from";
                Description = "When committing to svn from Git (as part of set-tree or dcommit operations), if the existing log message doesn’t already have a From: or Signed-off-by trailer, append a From: line based on the Git commit’s author string. If you use this, then --use-log-author will retrieve a valid author string for all commits.";
            },
        ),
    },

