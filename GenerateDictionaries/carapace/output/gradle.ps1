# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://gradle.org/";
    Keys        = @("gradle");
    Name        = "gradle";
    Description = "Gradle Build Tool";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--build-cache");
            Name        = "Enables the Gradle build cache. Gradle will try to reuse outputs from previous builds.";
            Description = "Enables the Gradle build cache. Gradle will try to reuse outputs from previous builds.";
        },
        [ValueParameter]@{
            Keys        = @("--build-file", "-b");
            Name        = "Specify the build file.";
            Description = "Specify the build file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--configure-on-demand");
            Name        = "Configure necessary projects only. Gradle will attempt to reduce configuration time for large multi-project builds. [incubating]";
            Description = "Configure necessary projects only. Gradle will attempt to reduce configuration time for large multi-project builds. [incubating]";
        },
        [ValueParameter]@{
            Keys        = @("--console");
            Name        = "Specifies which type of console output to generate. Values are 'plain', 'auto' (default), 'rich' or 'verbose'.";
            Description = "Specifies which type of console output to generate. Values are 'plain', 'auto' (default), 'rich' or 'verbose'.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--continue");
            Name        = "Continue task execution after a task failure.";
            Description = "Continue task execution after a task failure.";
        },
        [FlagParameter]@{
            Keys        = @("--continuous", "-t");
            Name        = "Enables continuous build. Gradle does not exit and will re-execute tasks when task file inputs change.";
            Description = "Enables continuous build. Gradle does not exit and will re-execute tasks when task file inputs change.";
        },
        [FlagParameter]@{
            Keys        = @("--daemon");
            Name        = "Uses the Gradle Daemon to run the build. Starts the Daemon if not running.";
            Description = "Uses the Gradle Daemon to run the build. Starts the Daemon if not running.";
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "Log in debug mode (includes normal stacktrace).";
            Description = "Log in debug mode (includes normal stacktrace).";
        },
        [ValueParameter]@{
            Keys        = @("--dependency-verification", "-F");
            Name        = "Configures the dependency verification mode (strict, lenient or off) [incubating]";
            Description = "Configures the dependency verification mode (strict, lenient or off) [incubating]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dry-run", "-m");
            Name        = "Run the builds with all task actions disabled.";
            Description = "Run the builds with all task actions disabled.";
        },
        [ValueParameter]@{
            Keys        = @("--exclude-task", "-x");
            Name        = "Specify a task to be excluded from execution.";
            Description = "Specify a task to be excluded from execution.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--export-keys");
            Name        = "Exports the public keys used for dependency verification. [incubating]";
            Description = "Exports the public keys used for dependency verification. [incubating]";
        },
        [FlagParameter]@{
            Keys        = @("--foreground");
            Name        = "Starts the Gradle Daemon in the foreground.";
            Description = "Starts the Gradle Daemon in the foreground.";
        },
        [FlagParameter]@{
            Keys        = @("--full-stacktrace", "-S");
            Name        = "Print out the full (very verbose) stacktrace for all exceptions.";
            Description = "Print out the full (very verbose) stacktrace for all exceptions.";
        },
        [ValueParameter]@{
            Keys        = @("--gradle-user-home", "-g");
            Name        = "Specifies the gradle user home directory.";
            Description = "Specifies the gradle user home directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--include-build");
            Name        = "Include the specified build in the composite.";
            Description = "Include the specified build in the composite.";
        },
        [FlagParameter]@{
            Keys        = @("--info", "-i");
            Name        = "Set log level to info.";
            Description = "Set log level to info.";
        },
        [ValueParameter]@{
            Keys        = @("--init-script", "-I");
            Name        = "Specify an initialization script.";
            Description = "Specify an initialization script.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-workers");
            Name        = "Configure the number of concurrent workers Gradle is allowed to use.";
            Description = "Configure the number of concurrent workers Gradle is allowed to use.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-build-cache");
            Name        = "Disables the Gradle build cache.";
            Description = "Disables the Gradle build cache.";
        },
        [FlagParameter]@{
            Keys        = @("--no-configure-on-demand");
            Name        = "Disables the use of configuration on demand. [incubating]";
            Description = "Disables the use of configuration on demand. [incubating]";
        },
        [FlagParameter]@{
            Keys        = @("--no-daemon");
            Name        = "Do not use the Gradle daemon to run the build. Useful occasionally if you have configured Gradle to always run with the daemon by default.";
            Description = "Do not use the Gradle daemon to run the build. Useful occasionally if you have configured Gradle to always run with the daemon by default.";
        },
        [FlagParameter]@{
            Keys        = @("--no-parallel");
            Name        = "Disables parallel execution to build projects.";
            Description = "Disables parallel execution to build projects.";
        },
        [FlagParameter]@{
            Keys        = @("--no-rebuild", "-a");
            Name        = "Do not rebuild project dependencies.";
            Description = "Do not rebuild project dependencies.";
        },
        [FlagParameter]@{
            Keys        = @("--no-scan");
            Name        = "Disables the creation of a build scan. For more information about build scans, please visit https://gradle.com/build-scans.";
            Description = "Disables the creation of a build scan. For more information about build scans, please visit https://gradle.com/build-scans.";
        },
        [FlagParameter]@{
            Keys        = @("--offline");
            Name        = "Execute the build without accessing network resources.";
            Description = "Execute the build without accessing network resources.";
        },
        [FlagParameter]@{
            Keys        = @("--parallel");
            Name        = "Build projects in parallel. Gradle will attempt to determine the optimal number of executor threads to use.";
            Description = "Build projects in parallel. Gradle will attempt to determine the optimal number of executor threads to use.";
        },
        [ValueParameter]@{
            Keys        = @("--priority");
            Name        = "Specifies the scheduling priority for the Gradle daemon and all processes launched by it. Values are 'normal' (default) or 'low' [incubating]";
            Description = "Specifies the scheduling priority for the Gradle daemon and all processes launched by it. Values are 'normal' (default) or 'low' [incubating]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--profile");
            Name        = "Profile build execution time and generates a report in the <build_dir>/reports/profile directory.";
            Description = "Profile build execution time and generates a report in the <build_dir>/reports/profile directory.";
        },
        [ValueParameter]@{
            Keys        = @("--project-cache-dir");
            Name        = "Specify the project-specific cache directory. Defaults to .gradle in the root project directory.";
            Description = "Specify the project-specific cache directory. Defaults to .gradle in the root project directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--project-dir", "-p");
            Name        = "Specifies the start directory for Gradle. Defaults to current directory.";
            Description = "Specifies the start directory for Gradle. Defaults to current directory.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--project-prop", "-P");
            Name        = "Set project property for the build script (e.g. -Pmyprop=myvalue).";
            Description = "Set project property for the build script (e.g. -Pmyprop=myvalue).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Log errors only.";
            Description = "Log errors only.";
        },
        [FlagParameter]@{
            Keys        = @("--refresh-dependencies");
            Name        = "Refresh the state of dependencies.";
            Description = "Refresh the state of dependencies.";
        },
        [FlagParameter]@{
            Keys        = @("--refresh-keys");
            Name        = "Refresh the public keys used for dependency verification. [incubating]";
            Description = "Refresh the public keys used for dependency verification. [incubating]";
        },
        [FlagParameter]@{
            Keys        = @("--rerun-tasks");
            Name        = "Ignore previously cached task results.";
            Description = "Ignore previously cached task results.";
        },
        [FlagParameter]@{
            Keys        = @("--scan");
            Name        = "Creates a build scan. Gradle will emit a warning if the build scan plugin has not been applied. (https://gradle.com/build-scans)";
            Description = "Creates a build scan. Gradle will emit a warning if the build scan plugin has not been applied. (https://gradle.com/build-scans)";
        },
        [ValueParameter]@{
            Keys        = @("--settings-file", "-c");
            Name        = "Specify the settings file.";
            Description = "Specify the settings file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stacktrace", "-s");
            Name        = "Print out the stacktrace for all exceptions.";
            Description = "Print out the stacktrace for all exceptions.";
        },
        [FlagParameter]@{
            Keys        = @("--status");
            Name        = "Shows status of running and recently stopped Gradle Daemon(s).";
            Description = "Shows status of running and recently stopped Gradle Daemon(s).";
        },
        [FlagParameter]@{
            Keys        = @("--stop");
            Name        = "Stops the Gradle Daemon if it is running.";
            Description = "Stops the Gradle Daemon if it is running.";
        },
        [ValueParameter]@{
            Keys        = @("--system-prop", "-D");
            Name        = "Set system property of the JVM (e.g. -Dmyprop=myvalue).";
            Description = "Set system property of the JVM (e.g. -Dmyprop=myvalue).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update-locks");
            Name        = "Perform a partial update of the dependency lock, letting passed in module notations change version. [incubating]";
            Description = "Perform a partial update of the dependency lock, letting passed in module notations change version. [incubating]";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version info.";
            Description = "Print version info.";
        },
        [FlagParameter]@{
            Keys        = @("--warn", "-w");
            Name        = "Set log level to warn.";
            Description = "Set log level to warn.";
        },
        [ValueParameter]@{
            Keys        = @("--warning-mode");
            Name        = "Specifies which mode of warnings to generate. Values are 'all', 'fail', 'summary'(default) or 'none'";
            Description = "Specifies which mode of warnings to generate. Values are 'all', 'fail', 'summary'(default) or 'none'";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--write-locks");
            Name        = "Persists dependency resolution for locked configurations, ignoring existing locking information if it exists [incubating]";
            Description = "Persists dependency resolution for locked configurations, ignoring existing locking information if it exists [incubating]";
        },
        [FlagParameter]@{
            Keys        = @("--write-verification-metadata", "-M");
            Name        = "Generates checksums for dependencies used in the project (comma-separated list) [incubating]";
            Description = "Generates checksums for dependencies used in the project (comma-separated list) [incubating]";
        }
    )
}
