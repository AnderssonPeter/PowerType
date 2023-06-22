# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://maven.apache.org/";
    Keys        = @("mvn");
    Name        = "mvn";
    Description = "Apache Maven is a software project management and comprehension tool";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--activate-profiles", "-P");
            Name        = "Comma-delimited list of profiles";
            Description = "Comma-delimited list of profiles";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--also-make");
            Name        = "If project list is specified, also";
            Description = "If project list is specified, also";
        },
        [FlagParameter]@{
            Keys        = @("--also-make-dependents");
            Name        = "If project list is specified, also";
            Description = "If project list is specified, also";
        },
        [FlagParameter]@{
            Keys        = @("--batch-mode", "-B");
            Name        = "Run in non-interactive (batch)";
            Description = "Run in non-interactive (batch)";
        },
        [ValueParameter]@{
            Keys        = @("--builder", "-b");
            Name        = "The id of the build strategy to use``";
            Description = "The id of the build strategy to use``";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--check-plugin-updates");
            Name        = "Ineffective, only kept for";
            Description = "Ineffective, only kept for";
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-X");
            Name        = "Produce execution debug output";
            Description = "Produce execution debug output";
        },
        [ValueParameter]@{
            Keys        = @("--define", "-D");
            Name        = "Define a system property";
            Description = "Define a system property";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--encrypt-master-password");
            Name        = "Encrypt master security password";
            Description = "Encrypt master security password";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--encrypt-password");
            Name        = "Encrypt server password";
            Description = "Encrypt server password";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--errors", "-e");
            Name        = "Produce execution error messages";
            Description = "Produce execution error messages";
        },
        [FlagParameter]@{
            Keys        = @("--fail-at-end");
            Name        = "Only fail the build afterwards;";
            Description = "Only fail the build afterwards;";
        },
        [FlagParameter]@{
            Keys        = @("--fail-fast");
            Name        = "Stop at first failure in";
            Description = "Stop at first failure in";
        },
        [FlagParameter]@{
            Keys        = @("--fail-never");
            Name        = "NEVER fail the build, regardless";
            Description = "NEVER fail the build, regardless";
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "Force the use of an alternate POM";
            Description = "Force the use of an alternate POM";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-settings");
            Name        = "Alternate path for the global";
            Description = "Alternate path for the global";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-toolchains");
            Name        = "Alternate path for the global";
            Description = "Alternate path for the global";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display help information";
            Description = "Display help information";
        },
        [FlagParameter]@{
            Keys        = @("--lax-checksums", "-c");
            Name        = "Warn if checksums don't match";
            Description = "Warn if checksums don't match";
        },
        [FlagParameter]@{
            Keys        = @("--legacy-local-repository");
            Name        = "Use Maven 2 Legacy Local";
            Description = "Use Maven 2 Legacy Local";
        },
        [ValueParameter]@{
            Keys        = @("--log-file", "-l");
            Name        = "Log file where all build output";
            Description = "Log file where all build output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-plugin-registry");
            Name        = "Ineffective, only kept for";
            Description = "Ineffective, only kept for";
        },
        [FlagParameter]@{
            Keys        = @("--no-plugin-updates");
            Name        = "Ineffective, only kept for";
            Description = "Ineffective, only kept for";
        },
        [FlagParameter]@{
            Keys        = @("--no-snapshot-updates");
            Name        = "Suppress SNAPSHOT updates";
            Description = "Suppress SNAPSHOT updates";
        },
        [FlagParameter]@{
            Keys        = @("--no-transfer-progress");
            Name        = "Do not display transfer progress";
            Description = "Do not display transfer progress";
        },
        [FlagParameter]@{
            Keys        = @("--non-recursive", "-N");
            Name        = "Do not recurse into sub-projects";
            Description = "Do not recurse into sub-projects";
        },
        [FlagParameter]@{
            Keys        = @("--offline", "-o");
            Name        = "Work offline";
            Description = "Work offline";
        },
        [ValueParameter]@{
            Keys        = @("--projects");
            Name        = "Comma-delimited list of specified";
            Description = "Comma-delimited list of specified";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Quiet output - only show errors";
            Description = "Quiet output - only show errors";
        },
        [ValueParameter]@{
            Keys        = @("--resume-from");
            Name        = "Resume reactor from specified";
            Description = "Resume reactor from specified";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--settings", "-s");
            Name        = "Alternate path for the user";
            Description = "Alternate path for the user";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-version", "-V");
            Name        = "Display version information";
            Description = "Display version information";
        },
        [FlagParameter]@{
            Keys        = @("--strict-checksums", "-C");
            Name        = "Fail the build if checksums don't";
            Description = "Fail the build if checksums don't";
        },
        [ValueParameter]@{
            Keys        = @("--threads", "-T");
            Name        = "Thread count, for instance 2.0C";
            Description = "Thread count, for instance 2.0C";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--toolchains", "-t");
            Name        = "Alternate path for the user";
            Description = "Alternate path for the user";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update-plugins");
            Name        = "Ineffective, only kept for";
            Description = "Ineffective, only kept for";
        },
        [FlagParameter]@{
            Keys        = @("--update-snapshots", "-U");
            Name        = "Forces a check for missing";
            Description = "Forces a check for missing";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display version information";
            Description = "Display version information";
        }
    )
}
