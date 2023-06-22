# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/make";
    Keys        = @("make");
    Name        = "make";
    Description = "GNU make utility to maintain groups of programs";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--always-make", "-B");
            Name        = "Unconditionally make all targets.";
            Description = "Unconditionally make all targets.";
        },
        [ValueParameter]@{
            Keys        = @("--assume-new");
            Name        = "Consider FILE to be infinitely new.";
            Description = "Consider FILE to be infinitely new.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--assume-old");
            Name        = "Consider FILE to be very old and don't remake it.";
            Description = "Consider FILE to be very old and don't remake it.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--check-symlink-times", "-L");
            Name        = "Use the latest mtime between symlinks and target.";
            Description = "Use the latest mtime between symlinks and target.";
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "Print lots of debugging information.";
            Description = "Print lots of debugging information.";
        },
        [ValueParameter]@{
            Keys        = @("--debug");
            Name        = "Print various types of debugging information.";
            Description = "Print various types of debugging information.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--directory", "-C");
            Name        = "Change to DIRECTORY before doing anything.";
            Description = "Change to DIRECTORY before doing anything.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dry-run");
            Name        = "Don't actually run any recipe; just print them.";
            Description = "Don't actually run any recipe; just print them.";
        },
        [FlagParameter]@{
            Keys        = @("--environment-overrides", "-e");
            Name        = "Environment variables override makefiles.";
            Description = "Environment variables override makefiles.";
        },
        [ValueParameter]@{
            Keys        = @("--eval", "-E");
            Name        = "Evaluate STRING as a makefile statement.";
            Description = "Evaluate STRING as a makefile statement.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "Read FILE as a makefile.";
            Description = "Read FILE as a makefile.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this message and exit.";
            Description = "Print this message and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-errors", "-i");
            Name        = "Ignore errors from recipes.";
            Description = "Ignore errors from recipes.";
        },
        [ValueParameter]@{
            Keys        = @("--include-dir", "-I");
            Name        = "Search DIRECTORY for included makefiles.";
            Description = "Search DIRECTORY for included makefiles.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--jobs", "-j");
            Name        = "Allow N jobs at once; infinite jobs with no arg.";
            Description = "Allow N jobs at once; infinite jobs with no arg.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--just-print", "-n");
            Name        = "Don't actually run any recipe; just print them.";
            Description = "Don't actually run any recipe; just print them.";
        },
        [FlagParameter]@{
            Keys        = @("--keep-going", "-k");
            Name        = "Keep going when some targets can't be made.";
            Description = "Keep going when some targets can't be made.";
        },
        [ValueParameter]@{
            Keys        = @("--load-average", "-l");
            Name        = "Don't start multiple jobs unless load is below N.";
            Description = "Don't start multiple jobs unless load is below N.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--makefile");
            Name        = "Read FILE as a makefile.";
            Description = "Read FILE as a makefile.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-load");
            Name        = "Don't start multiple jobs unless load is below N.";
            Description = "Don't start multiple jobs unless load is below N.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--new-file");
            Name        = "Consider FILE to be infinitely new.";
            Description = "Consider FILE to be infinitely new.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-builtin-rules", "-r");
            Name        = "Disable the built-in implicit rules.";
            Description = "Disable the built-in implicit rules.";
        },
        [FlagParameter]@{
            Keys        = @("--no-builtin-variables", "-R");
            Name        = "Disable the built-in variable settings.";
            Description = "Disable the built-in variable settings.";
        },
        [FlagParameter]@{
            Keys        = @("--no-keep-going", "-S");
            Name        = "Turns off -k.";
            Description = "Turns off -k.";
        },
        [FlagParameter]@{
            Keys        = @("--no-print-directory");
            Name        = "Turn off -w, even if it was turned on implicitly.";
            Description = "Turn off -w, even if it was turned on implicitly.";
        },
        [FlagParameter]@{
            Keys        = @("--no-silent");
            Name        = "Echo recipes (disable --silent mode).";
            Description = "Echo recipes (disable --silent mode).";
        },
        [ValueParameter]@{
            Keys        = @("--old-file", "-o");
            Name        = "Consider FILE to be very old and don't remake it.";
            Description = "Consider FILE to be very old and don't remake it.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--output-sync", "-O");
            Name        = "Synchronize output of parallel jobs by TYPE.";
            Description = "Synchronize output of parallel jobs by TYPE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-data-base", "-p");
            Name        = "Print make's internal database.";
            Description = "Print make's internal database.";
        },
        [FlagParameter]@{
            Keys        = @("--print-directory", "-w");
            Name        = "Print the current directory.";
            Description = "Print the current directory.";
        },
        [FlagParameter]@{
            Keys        = @("--question", "-q");
            Name        = "Run no recipe; exit status says if up to date.";
            Description = "Run no recipe; exit status says if up to date.";
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "Don't echo recipes.";
            Description = "Don't echo recipes.";
        },
        [FlagParameter]@{
            Keys        = @("--recon");
            Name        = "Don't actually run any recipe; just print them.";
            Description = "Don't actually run any recipe; just print them.";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-s");
            Name        = "Don't echo recipes.";
            Description = "Don't echo recipes.";
        },
        [FlagParameter]@{
            Keys        = @("--stop");
            Name        = "Turns off -k.";
            Description = "Turns off -k.";
        },
        [FlagParameter]@{
            Keys        = @("--touch", "-t");
            Name        = "Touch targets instead of remaking them.";
            Description = "Touch targets instead of remaking them.";
        },
        [FlagParameter]@{
            Keys        = @("--trace");
            Name        = "Print tracing information.";
            Description = "Print tracing information.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print the version number of make and exit.";
            Description = "Print the version number of make and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--warn-undefined-variables");
            Name        = "Warn when an undefined variable is referenced.";
            Description = "Warn when an undefined variable is referenced.";
        },
        [ValueParameter]@{
            Keys        = @("--what-if", "-W");
            Name        = "Consider FILE to be infinitely new.";
            Description = "Consider FILE to be infinitely new.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
