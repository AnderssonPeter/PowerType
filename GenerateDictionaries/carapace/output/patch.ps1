# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/patch";
    Keys        = @("patch");
    Name        = "patch";
    Description = "appy a diff file to an original";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--backup", "-b");
            Name        = "Back up the original contents of each file.";
            Description = "Back up the original contents of each file.";
        },
        [FlagParameter]@{
            Keys        = @("--backup-if-mismatch");
            Name        = "Back up if the patch does not match exactly.";
            Description = "Back up if the patch does not match exactly.";
        },
        [ValueParameter]@{
            Keys        = @("--basename-prefix", "-Y");
            Name        = "Prepend PREFIX to backup file basenames.";
            Description = "Prepend PREFIX to backup file basenames.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--batch", "-t");
            Name        = "Ask no questions; skip bad-Prereq patches; assume reversed.";
            Description = "Ask no questions; skip bad-Prereq patches; assume reversed.";
        },
        [FlagParameter]@{
            Keys        = @("--binary");
            Name        = "Read and write data in binary mode.";
            Description = "Read and write data in binary mode.";
        },
        [FlagParameter]@{
            Keys        = @("--context", "-c");
            Name        = "Interpret the patch as a context difference.";
            Description = "Interpret the patch as a context difference.";
        },
        [ValueParameter]@{
            Keys        = @("--directory", "-d");
            Name        = "Change the working directory to DIR first.";
            Description = "Change the working directory to DIR first.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dry-run");
            Name        = "Do not actually change any files; just print what would happen.";
            Description = "Do not actually change any files; just print what would happen.";
        },
        [FlagParameter]@{
            Keys        = @("--ed", "-e");
            Name        = "Interpret the patch as an ed script.";
            Description = "Interpret the patch as an ed script.";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "Like -t, but ignore bad-Prereq patches, and assume unreversed.";
            Description = "Like -t, but ignore bad-Prereq patches, and assume unreversed.";
        },
        [FlagParameter]@{
            Keys        = @("--forward", "-N");
            Name        = "Ignore patches that appear to be reversed or already applied.";
            Description = "Ignore patches that appear to be reversed or already applied.";
        },
        [ValueParameter]@{
            Keys        = @("--fuzz", "-F");
            Name        = "Set the fuzz factor to LINES for inexact matching.";
            Description = "Set the fuzz factor to LINES for inexact matching.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--get", "-g");
            Name        = "Get files from RCS etc. if positive; ask if negative.";
            Description = "Get files from RCS etc. if positive; ask if negative.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Output this help.";
            Description = "Output this help.";
        },
        [ValueParameter]@{
            Keys        = @("--ifdef", "-D");
            Name        = "Make merged if-then-else output using NAME.";
            Description = "Make merged if-then-else output using NAME.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-whitespace", "-l");
            Name        = "Ignore white space changes between patch and input.";
            Description = "Ignore white space changes between patch and input.";
        },
        [ValueParameter]@{
            Keys        = @("--input", "-i");
            Name        = "Read patch from PATCHFILE instead of stdin.";
            Description = "Read patch from PATCHFILE instead of stdin.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--merge");
            Name        = "Merge using conflict markers instead of creating reject files.";
            Description = "Merge using conflict markers instead of creating reject files.";
        },
        [FlagParameter]@{
            Keys        = @("--no-backup-if-mismatch");
            Name        = "Back up mismatches only if otherwise requested.";
            Description = "Back up mismatches only if otherwise requested.";
        },
        [FlagParameter]@{
            Keys        = @("--normal", "-n");
            Name        = "Interpret the patch as a normal difference.";
            Description = "Interpret the patch as a normal difference.";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "Output patched files to FILE.";
            Description = "Output patched files to FILE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--posix");
            Name        = "Conform to the POSIX standard.";
            Description = "Conform to the POSIX standard.";
        },
        [ValueParameter]@{
            Keys        = @("--prefix", "-B");
            Name        = "Prepend PREFIX to backup file names.";
            Description = "Prepend PREFIX to backup file names.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "Work silently unless an error occurs.";
            Description = "Work silently unless an error occurs.";
        },
        [ValueParameter]@{
            Keys        = @("--quoting-style");
            Name        = "output file names using quoting style WORD.";
            Description = "output file names using quoting style WORD.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--read-only");
            Name        = "How to handle read-only input files";
            Description = "How to handle read-only input files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--reject-file", "-r");
            Name        = "Output rejects to FILE.";
            Description = "Output rejects to FILE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--reject-format");
            Name        = "Create 'context' or 'unified' rejects.";
            Description = "Create 'context' or 'unified' rejects.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--remove-empty-files", "-E");
            Name        = "Remove output files that are empty after patching.";
            Description = "Remove output files that are empty after patching.";
        },
        [FlagParameter]@{
            Keys        = @("--reverse", "-R");
            Name        = "Assume patches were created with old and new files swapped.";
            Description = "Assume patches were created with old and new files swapped.";
        },
        [FlagParameter]@{
            Keys        = @("--set-time", "-T");
            Name        = "Likewise, assuming local time.";
            Description = "Likewise, assuming local time.";
        },
        [FlagParameter]@{
            Keys        = @("--set-utc", "-Z");
            Name        = "Set times of patched files, assuming diff uses UTC (GMT).";
            Description = "Set times of patched files, assuming diff uses UTC (GMT).";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-s");
            Name        = "Work silently unless an error occurs.";
            Description = "Work silently unless an error occurs.";
        },
        [ValueParameter]@{
            Keys        = @("--strip", "-p");
            Name        = "Strip NUM leading components from file names.";
            Description = "Strip NUM leading components from file names.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--suffix", "-z");
            Name        = "Append SUFFIX to backup file names.";
            Description = "Append SUFFIX to backup file names.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unified", "-u");
            Name        = "Interpret the patch as a unified difference.";
            Description = "Interpret the patch as a unified difference.";
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Output extra information about the work being done.";
            Description = "Output extra information about the work being done.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Output version info.";
            Description = "Output version info.";
        },
        [ValueParameter]@{
            Keys        = @("--version-control", "-V");
            Name        = "Use STYLE version control.";
            Description = "Use STYLE version control.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
