# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://doc.rust-lang.org/cargo/";
    Keys        = @("cargo");
    Name        = "cargo";
    Description = "Rust's package manager";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-Z");
            Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
            Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "Coloring: auto, always, never";
            Description = "Coloring: auto, always, never";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--explain");
            Name        = "Run ``rustc --explain CODE``";
            Description = "Run ``rustc --explain CODE``";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--frozen");
            Name        = "Require Cargo.lock and cache are up to date";
            Description = "Require Cargo.lock and cache are up to date";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [FlagParameter]@{
            Keys        = @("--list");
            Name        = "List installed commands";
            Description = "List installed commands";
        },
        [FlagParameter]@{
            Keys        = @("--locked");
            Name        = "Require Cargo.lock is up to date";
            Description = "Require Cargo.lock is up to date";
        },
        [FlagParameter]@{
            Keys        = @("--offline");
            Name        = "Run without accessing the network";
            Description = "Run without accessing the network";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "No output printed to stdout";
            Description = "No output printed to stdout";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Use verbose output (-vv very verbose/build.rs output)";
            Description = "Use verbose output (-vv very verbose/build.rs output)";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print version info and exit";
            Description = "Print version info and exit";
        },
        [CommandParameter]@{
            Keys        = @("add");
            Name        = "add";
            Description = "Add dependency to a Cargo.toml manifest file";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-prerelease");
                    Name        = "Include prerelease versions when fetching from crates.io (e.g. '0.6.0-alpha')";
                    Description = "Include prerelease versions when fetching from crates.io (e.g. '0.6.0-alpha')";
                },
                [ValueParameter]@{
                    Keys        = @("--branch");
                    Name        = "Specify a git branch to download the crate from";
                    Description = "Specify a git branch to download the crate from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--build", "-B");
                    Name        = "Add crate as build dependency";
                    Description = "Add crate as build dependency";
                },
                [FlagParameter]@{
                    Keys        = @("--dev", "-D");
                    Name        = "Add crate as development dependency";
                    Description = "Add crate as development dependency";
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space-separated list of features to add. For an alternative approach to enabling features, consider installing the ``cargo-feature`` utility";
                    Description = "Space-separated list of features to add. For an alternative approach to enabling features, consider installing the ``cargo-feature`` utility";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--git");
                    Name        = "Specify a git repository to download the crate from";
                    Description = "Specify a git repository to download the crate from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to the manifest to add a dependency to";
                    Description = "Path to the manifest to add a dependency to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Set ``default-features = false`` for the added dependency";
                    Description = "Set ``default-features = false`` for the added dependency";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [FlagParameter]@{
                    Keys        = @("--optional");
                    Name        = "Add as an optional dependency (for use in features)";
                    Description = "Add as an optional dependency (for use in features)";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package id of the crate to add this dependency to";
                    Description = "Package id of the crate to add this dependency to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "Specify the path the crate should be loaded from";
                    Description = "Specify the path the crate should be loaded from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not print any output in case of success";
                    Description = "Do not print any output in case of success";
                },
                [ValueParameter]@{
                    Keys        = @("--registry");
                    Name        = "Registry to use";
                    Description = "Registry to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--rename", "-r");
                    Name        = "Rename a dependency in Cargo.toml";
                    Description = "Rename a dependency in Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--sort", "-s");
                    Name        = "Sort dependencies even if currently unsorted";
                    Description = "Sort dependencies even if currently unsorted";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Add as dependency to the given target platform";
                    Description = "Add as dependency to the given target platform";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--upgrade");
                    Name        = "Choose method of semantic version upgrade";
                    Description = "Choose method of semantic version upgrade";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--vers");
                    Name        = "Specify the version to grab from the registry(crates.io). You can also specify version as part of name, e.g ``cargo add bitflags@0.3.2``";
                    Description = "Specify the version to grab from the registry(crates.io). You can also specify version as part of name, e.g ``cargo add bitflags@0.3.2``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("bench");
            Name        = "bench";
            Description = "Execute all benchmarks of a local package";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Alias for --workspace (deprecated)";
                    Description = "Alias for --workspace (deprecated)";
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [FlagParameter]@{
                    Keys        = @("--all-targets");
                    Name        = "Benchmark all targets";
                    Description = "Benchmark all targets";
                },
                [ValueParameter]@{
                    Keys        = @("--bench");
                    Name        = "Benchmark only the specified bench target";
                    Description = "Benchmark only the specified bench target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--benches");
                    Name        = "Benchmark all benches";
                    Description = "Benchmark all benches";
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Benchmark only the specified binary";
                    Description = "Benchmark only the specified binary";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bins");
                    Name        = "Benchmark all binaries";
                    Description = "Benchmark all binaries";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--example");
                    Name        = "Benchmark only the specified example";
                    Description = "Benchmark only the specified example";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--examples");
                    Name        = "Benchmark all examples";
                    Description = "Benchmark all examples";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude packages from the benchmark";
                    Description = "Exclude packages from the benchmark";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lib");
                    Name        = "Benchmark only this package's library";
                    Description = "Benchmark only this package's library";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message-format");
                    Name        = "Error format";
                    Description = "Error format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--no-fail-fast");
                    Name        = "Run all benchmarks regardless of failure";
                    Description = "Run all benchmarks regardless of failure";
                },
                [FlagParameter]@{
                    Keys        = @("--no-run");
                    Name        = "Compile, but don't run benchmarks";
                    Description = "Compile, but don't run benchmarks";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package to run benchmarks for";
                    Description = "Package to run benchmarks for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Build for the target triple";
                    Description = "Build for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--test");
                    Name        = "Benchmark only the specified test target";
                    Description = "Benchmark only the specified test target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tests");
                    Name        = "Benchmark all tests";
                    Description = "Benchmark all tests";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                },
                [FlagParameter]@{
                    Keys        = @("--workspace");
                    Name        = "Benchmark all packages in the workspace";
                    Description = "Benchmark all packages in the workspace";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Compile a local package and all of its dependencies";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Alias for --workspace (deprecated)";
                    Description = "Alias for --workspace (deprecated)";
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [FlagParameter]@{
                    Keys        = @("--all-targets");
                    Name        = "Build all targets";
                    Description = "Build all targets";
                },
                [ValueParameter]@{
                    Keys        = @("--bench");
                    Name        = "Build only the specified bench target";
                    Description = "Build only the specified bench target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--benches");
                    Name        = "Build all benches";
                    Description = "Build all benches";
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Build only the specified binary";
                    Description = "Build only the specified binary";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bins");
                    Name        = "Build all binaries";
                    Description = "Build all binaries";
                },
                [FlagParameter]@{
                    Keys        = @("--build-plan");
                    Name        = "Output the build plan in JSON (unstable)";
                    Description = "Output the build plan in JSON (unstable)";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--example");
                    Name        = "Build only the specified example";
                    Description = "Build only the specified example";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--examples");
                    Name        = "Build all examples";
                    Description = "Build all examples";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude packages from the build";
                    Description = "Exclude packages from the build";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lib");
                    Name        = "Build only this package's library";
                    Description = "Build only this package's library";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message-format");
                    Name        = "Error format";
                    Description = "Error format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--out-dir");
                    Name        = "Copy final artifacts to this directory (unstable)";
                    Description = "Copy final artifacts to this directory (unstable)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package to build (see ``cargo help pkgid``)";
                    Description = "Package to build (see ``cargo help pkgid``)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build artifacts with the specified profile";
                    Description = "Build artifacts with the specified profile";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Build artifacts in release mode, with optimizations";
                    Description = "Build artifacts in release mode, with optimizations";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Build for the target triple";
                    Description = "Build for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--test");
                    Name        = "Build only the specified test target";
                    Description = "Build only the specified test target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tests");
                    Name        = "Build all tests";
                    Description = "Build all tests";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                },
                [FlagParameter]@{
                    Keys        = @("--workspace");
                    Name        = "Build all packages in the workspace";
                    Description = "Build all packages in the workspace";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("check");
            Name        = "check";
            Description = "Check a local package and all of its dependencies for errors";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Alias for --workspace (deprecated)";
                    Description = "Alias for --workspace (deprecated)";
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [FlagParameter]@{
                    Keys        = @("--all-targets");
                    Name        = "Check all targets";
                    Description = "Check all targets";
                },
                [ValueParameter]@{
                    Keys        = @("--bench");
                    Name        = "Check only the specified bench target";
                    Description = "Check only the specified bench target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--benches");
                    Name        = "Check all benches";
                    Description = "Check all benches";
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Check only the specified binary";
                    Description = "Check only the specified binary";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bins");
                    Name        = "Check all binaries";
                    Description = "Check all binaries";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--example");
                    Name        = "Check only the specified example";
                    Description = "Check only the specified example";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--examples");
                    Name        = "Check all examples";
                    Description = "Check all examples";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude packages from the check";
                    Description = "Exclude packages from the check";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lib");
                    Name        = "Check only this package's library";
                    Description = "Check only this package's library";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message-format");
                    Name        = "Error format";
                    Description = "Error format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package(s) to check";
                    Description = "Package(s) to check";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile");
                    Name        = "Check artifacts with the specified profile";
                    Description = "Check artifacts with the specified profile";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Check artifacts in release mode, with optimizations";
                    Description = "Check artifacts in release mode, with optimizations";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Check for the target triple";
                    Description = "Check for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--test");
                    Name        = "Check only the specified test target";
                    Description = "Check only the specified test target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tests");
                    Name        = "Check all tests";
                    Description = "Check all tests";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                },
                [FlagParameter]@{
                    Keys        = @("--workspace");
                    Name        = "Check all packages in the workspace";
                    Description = "Check all packages in the workspace";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "Remove artifacts that cargo has generated in the past";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--doc");
                    Name        = "Whether or not to clean just the documentation directory";
                    Description = "Whether or not to clean just the documentation directory";
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package to clean artifacts for";
                    Description = "Package to clean artifacts for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile");
                    Name        = "Clean artifacts of the specified profile";
                    Description = "Clean artifacts of the specified profile";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Whether or not to clean release artifacts";
                    Description = "Whether or not to clean release artifacts";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Target triple to clean output for";
                    Description = "Target triple to clean output for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clippy");
            Name        = "clippy";
            Description = "Checks a package to catch common mistakes and improve your Rust code";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--fix");
                    Name        = "Automatically apply lint suggestions. This flag implies ``--no-deps``";
                    Description = "Automatically apply lint suggestions. This flag implies ``--no-deps``";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this message";
                    Description = "Print this message";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Run Clippy only on the given crate, without linting the dependencies";
                    Description = "Run Clippy only on the given crate, without linting the dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Print version info and exit";
                    Description = "Print version info and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("doc");
            Name        = "doc";
            Description = "Build a package's documentation";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Alias for --workspace (deprecated)";
                    Description = "Alias for --workspace (deprecated)";
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Document only the specified binary";
                    Description = "Document only the specified binary";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bins");
                    Name        = "Document all binaries";
                    Description = "Document all binaries";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--document-private-items");
                    Name        = "Document private items";
                    Description = "Document private items";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude packages from the build";
                    Description = "Exclude packages from the build";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lib");
                    Name        = "Document only this package's library";
                    Description = "Document only this package's library";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message-format");
                    Name        = "Error format";
                    Description = "Error format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--no-deps");
                    Name        = "Don't build documentation for dependencies";
                    Description = "Don't build documentation for dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [FlagParameter]@{
                    Keys        = @("--open");
                    Name        = "Opens the docs in a browser after the operation";
                    Description = "Opens the docs in a browser after the operation";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package to document";
                    Description = "Package to document";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build artifacts with the specified profile";
                    Description = "Build artifacts with the specified profile";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Build artifacts in release mode, with optimizations";
                    Description = "Build artifacts in release mode, with optimizations";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Build for the target triple";
                    Description = "Build for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                },
                [FlagParameter]@{
                    Keys        = @("--workspace");
                    Name        = "Document all packages in the workspace";
                    Description = "Document all packages in the workspace";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fetch");
            Name        = "fetch";
            Description = "";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Fetch dependencies for the target triple";
                    Description = "Fetch dependencies for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fix");
            Name        = "fix";
            Description = "Automatically fix lint warnings reported by rustc";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Alias for --workspace (deprecated)";
                    Description = "Alias for --workspace (deprecated)";
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [FlagParameter]@{
                    Keys        = @("--all-targets");
                    Name        = "Fix all targets (default)";
                    Description = "Fix all targets (default)";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-dirty");
                    Name        = "Fix code even if the working directory is dirty";
                    Description = "Fix code even if the working directory is dirty";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-no-vcs");
                    Name        = "Fix code even if a VCS was not detected";
                    Description = "Fix code even if a VCS was not detected";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-staged");
                    Name        = "Fix code even if the working directory has staged changes";
                    Description = "Fix code even if the working directory has staged changes";
                },
                [ValueParameter]@{
                    Keys        = @("--bench");
                    Name        = "Fix only the specified bench target";
                    Description = "Fix only the specified bench target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--benches");
                    Name        = "Fix all benches";
                    Description = "Fix all benches";
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Fix only the specified binary";
                    Description = "Fix only the specified binary";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bins");
                    Name        = "Fix all binaries";
                    Description = "Fix all binaries";
                },
                [FlagParameter]@{
                    Keys        = @("--broken-code");
                    Name        = "Fix code even if it already has compiler errors";
                    Description = "Fix code even if it already has compiler errors";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config");
                    Name        = "Override a configuration value (unstable)";
                    Description = "Override a configuration value (unstable)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--edition");
                    Name        = "Fix in preparation for the next edition";
                    Description = "Fix in preparation for the next edition";
                },
                [FlagParameter]@{
                    Keys        = @("--edition-idioms");
                    Name        = "Fix warnings to migrate to the idioms of an edition";
                    Description = "Fix warnings to migrate to the idioms of an edition";
                },
                [ValueParameter]@{
                    Keys        = @("--example");
                    Name        = "Fix only the specified example";
                    Description = "Fix only the specified example";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--examples");
                    Name        = "Fix all examples";
                    Description = "Fix all examples";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude packages from the fixes";
                    Description = "Exclude packages from the fixes";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--ignore-rust-version");
                    Name        = "Ignore ``rust-version`` specification in packages";
                    Description = "Ignore ``rust-version`` specification in packages";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lib");
                    Name        = "Fix only this package's library";
                    Description = "Fix only this package's library";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message-format");
                    Name        = "Error format";
                    Description = "Error format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package(s) to fix";
                    Description = "Package(s) to fix";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build artifacts with the specified profile";
                    Description = "Build artifacts with the specified profile";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not print cargo log messages";
                    Description = "Do not print cargo log messages";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Fix artifacts in release mode, with optimizations";
                    Description = "Fix artifacts in release mode, with optimizations";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Fix for the target triple";
                    Description = "Fix for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--test");
                    Name        = "Fix only the specified test target";
                    Description = "Fix only the specified test target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tests");
                    Name        = "Fix all tests";
                    Description = "Fix all tests";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                },
                [FlagParameter]@{
                    Keys        = @("--workspace");
                    Name        = "Fix all packages in the workspace";
                    Description = "Fix all packages in the workspace";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fmt");
            Name        = "fmt";
            Description = "format all bin and lib files of the current crate";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Format all packages (only usable in workspaces)";
                    Description = "Format all packages (only usable in workspaces)";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Specify path to Cargo.toml";
                    Description = "Specify path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message-format");
                    Name        = "Specify message-format: short|json|human";
                    Description = "Specify message-format: short|json|human";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Specify package to format (only usable in workspaces)";
                    Description = "Specify package to format (only usable in workspaces)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output";
                    Description = "Use verbose output";
                },
                [FlagParameter]@{
                    Keys        = @("--version");
                    Name        = "Print rustfmt version and exit";
                    Description = "Print rustfmt version and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Create a new cargo package in an existing directory";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bin");
                    Name        = "Use a binary (application) template [default]";
                    Description = "Use a binary (application) template [default]";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--edition");
                    Name        = "Edition to set for the crate generated [possible values: 2015, 2018]";
                    Description = "Edition to set for the crate generated [possible values: 2015, 2018]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--lib");
                    Name        = "Use a library template";
                    Description = "Use a library template";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Set the resulting package name, defaults to the directory name";
                    Description = "Set the resulting package name, defaults to the directory name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--registry");
                    Name        = "Registry to use";
                    Description = "Registry to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--vcs");
                    Name        = "Initialize a new repository for the given version control system";
                    Description = "Initialize a new repository for the given version control system";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Install a Rust binary";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Install only the specified binary";
                    Description = "Install only the specified binary";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bins");
                    Name        = "Install all binaries";
                    Description = "Install all binaries";
                },
                [ValueParameter]@{
                    Keys        = @("--branch");
                    Name        = "Branch to use when installing from git";
                    Description = "Branch to use when installing from git";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Build in debug mode instead of release mode";
                    Description = "Build in debug mode instead of release mode";
                },
                [ValueParameter]@{
                    Keys        = @("--example");
                    Name        = "Install only the specified example";
                    Description = "Install only the specified example";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--examples");
                    Name        = "Install all examples";
                    Description = "Install all examples";
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Force overwriting existing crates or binaries";
                    Description = "Force overwriting existing crates or binaries";
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--git");
                    Name        = "Git URL to install the specified crate from";
                    Description = "Git URL to install the specified crate from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--index");
                    Name        = "Registry index to install from";
                    Description = "Registry index to install from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--list");
                    Name        = "list all installed packages and their versions";
                    Description = "list all installed packages and their versions";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--no-track");
                    Name        = "Do not save tracking information";
                    Description = "Do not save tracking information";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--path");
                    Name        = "Filesystem path to local crate to install";
                    Description = "Filesystem path to local crate to install";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile");
                    Name        = "Install artifacts with the specified profile";
                    Description = "Install artifacts with the specified profile";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--registry");
                    Name        = "Registry to use";
                    Description = "Registry to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--rev");
                    Name        = "Specific commit to use when installing from git";
                    Description = "Specific commit to use when installing from git";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--root");
                    Name        = "Directory to install packages into";
                    Description = "Directory to install packages into";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--tag");
                    Name        = "Tag to use when installing from git";
                    Description = "Tag to use when installing from git";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Build for the target triple";
                    Description = "Build for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                },
                [ValueParameter]@{
                    Keys        = @("--version");
                    Name        = "Specify a version to install";
                    Description = "Specify a version to install";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("new");
            Name        = "new";
            Description = "Create a new cargo package at <path>";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bin");
                    Name        = "Use a binary (application) template [default]";
                    Description = "Use a binary (application) template [default]";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--edition");
                    Name        = "Edition to set for the crate generated [possible values: 2015, 2018]";
                    Description = "Edition to set for the crate generated [possible values: 2015, 2018]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--lib");
                    Name        = "Use a library template";
                    Description = "Use a library template";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Set the resulting package name, defaults to the directory name";
                    Description = "Set the resulting package name, defaults to the directory name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--registry");
                    Name        = "Registry to use";
                    Description = "Registry to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--vcs");
                    Name        = "Initialize a new repository for the given version control system";
                    Description = "Initialize a new repository for the given version control system";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("publish");
            Name        = "publish";
            Description = "Upload a package to the registry";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-dirty");
                    Name        = "Allow dirty working directories to be packaged";
                    Description = "Allow dirty working directories to be packaged";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Perform all checks without uploading";
                    Description = "Perform all checks without uploading";
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--index");
                    Name        = "Registry index URL to upload the package to";
                    Description = "Registry index URL to upload the package to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--no-verify");
                    Name        = "Don't verify the contents by building them";
                    Description = "Don't verify the contents by building them";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--registry");
                    Name        = "Registry to publish to";
                    Description = "Registry to publish to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Build for the target triple";
                    Description = "Build for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--token");
                    Name        = "Token to use when uploading";
                    Description = "Token to use when uploading";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rm");
            Name        = "rm";
            Description = "Remove a dependency from a Cargo.toml manifest file";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--build", "-B");
                    Name        = "Remove crate as build dependency";
                    Description = "Remove crate as build dependency";
                },
                [FlagParameter]@{
                    Keys        = @("--dev", "-D");
                    Name        = "Remove crate as development dependency";
                    Description = "Remove crate as development dependency";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to the manifest to remove a dependency from";
                    Description = "Path to the manifest to remove a dependency from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package id of the crate to remove this dependency from";
                    Description = "Package id of the crate to remove this dependency from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Do not print any output in case of success";
                    Description = "Do not print any output in case of success";
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run a binary or example of the local package";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Name of the bin target to run";
                    Description = "Name of the bin target to run";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--example");
                    Name        = "Name of the example target to run";
                    Description = "Name of the example target to run";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message-format");
                    Name        = "Error format";
                    Description = "Error format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package with the target to run";
                    Description = "Package with the target to run";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build artifacts with the specified profile";
                    Description = "Build artifacts with the specified profile";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Build artifacts in release mode, with optimizations";
                    Description = "Build artifacts in release mode, with optimizations";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Build for the target triple";
                    Description = "Build for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "Search packages in crates.io";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--index");
                    Name        = "Registry index URL to upload the package to";
                    Description = "Registry index URL to upload the package to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--limit");
                    Name        = "Limit the number of results (default: 10, max: 100)";
                    Description = "Limit the number of results (default: 10, max: 100)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--registry");
                    Name        = "Registry to use";
                    Description = "Registry to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("set-version");
            Name        = "set-version";
            Description = "Change a package's version in the local manifest file";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "[deprecated in favor of ``--workspace``]";
                    Description = "[deprecated in favor of ``--workspace``]";
                },
                [ValueParameter]@{
                    Keys        = @("--bump");
                    Name        = "Increment manifest version";
                    Description = "Increment manifest version";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Print changes to be made without making them";
                    Description = "Print changes to be made without making them";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Crates to exclude and not modify";
                    Description = "Crates to exclude and not modify";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to the manifest to upgrade";
                    Description = "Path to the manifest to upgrade";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--metadata", "-m");
                    Name        = "Specify the version metadata field (e.g. a wrapped libraries version)";
                    Description = "Specify the version metadata field (e.g. a wrapped libraries version)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package id of the crate to change the version of";
                    Description = "Package id of the crate to change the version of";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                },
                [FlagParameter]@{
                    Keys        = @("--workspace");
                    Name        = "Modify all packages in the workspace";
                    Description = "Modify all packages in the workspace";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "Execute all unit and integration tests and build examples of a local package";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Alias for --workspace (deprecated)";
                    Description = "Alias for --workspace (deprecated)";
                },
                [FlagParameter]@{
                    Keys        = @("--all-features");
                    Name        = "Activate all available features";
                    Description = "Activate all available features";
                },
                [FlagParameter]@{
                    Keys        = @("--all-targets");
                    Name        = "Test all targets";
                    Description = "Test all targets";
                },
                [ValueParameter]@{
                    Keys        = @("--bench");
                    Name        = "Test only the specified bench target";
                    Description = "Test only the specified bench target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--benches");
                    Name        = "Test all benches";
                    Description = "Test all benches";
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Test only the specified binary";
                    Description = "Test only the specified binary";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bins");
                    Name        = "Test all binaries";
                    Description = "Test all binaries";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--doc");
                    Name        = "Test only this library's documentation";
                    Description = "Test only this library's documentation";
                },
                [ValueParameter]@{
                    Keys        = @("--example");
                    Name        = "Test only the specified example";
                    Description = "Test only the specified example";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--examples");
                    Name        = "Test all examples";
                    Description = "Test all examples";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude packages from the test";
                    Description = "Exclude packages from the test";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--features");
                    Name        = "Space or comma separated list of features to activate";
                    Description = "Space or comma separated list of features to activate";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel jobs, defaults to # of CPUs";
                    Description = "Number of parallel jobs, defaults to # of CPUs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lib");
                    Name        = "Test only this package's library unit tests";
                    Description = "Test only this package's library unit tests";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--message-format");
                    Name        = "Error format";
                    Description = "Error format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-default-features");
                    Name        = "Do not activate the ``default`` feature";
                    Description = "Do not activate the ``default`` feature";
                },
                [FlagParameter]@{
                    Keys        = @("--no-fail-fast");
                    Name        = "Run all tests regardless of failure";
                    Description = "Run all tests regardless of failure";
                },
                [FlagParameter]@{
                    Keys        = @("--no-run");
                    Name        = "Compile, but don't run tests";
                    Description = "Compile, but don't run tests";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package to run tests for";
                    Description = "Package to run tests for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build artifacts with the specified profile";
                    Description = "Build artifacts with the specified profile";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Display one character per test instead of one line";
                    Description = "Display one character per test instead of one line";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Build artifacts in release mode, with optimizations";
                    Description = "Build artifacts in release mode, with optimizations";
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Build for the target triple";
                    Description = "Build for the target triple";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target-dir");
                    Name        = "Directory for all generated artifacts";
                    Description = "Directory for all generated artifacts";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--test");
                    Name        = "Test only the specified test target";
                    Description = "Test only the specified test target";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--tests");
                    Name        = "Test all tests";
                    Description = "Test all tests";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                },
                [FlagParameter]@{
                    Keys        = @("--workspace");
                    Name        = "Test all packages in the workspace";
                    Description = "Test all packages in the workspace";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("uninstall");
            Name        = "uninstall";
            Description = "Remove a Rust binary";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--bin");
                    Name        = "Only uninstall the binary NAME";
                    Description = "Only uninstall the binary NAME";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package to uninstall";
                    Description = "Package to uninstall";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--root");
                    Name        = "Directory to uninstall packages from";
                    Description = "Directory to uninstall packages from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "Update dependencies as recorded in the local lock file";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("-Z");
                    Name        = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    Description = "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--aggressive");
                    Name        = "Force updating all dependencies of <name> as well";
                    Description = "Force updating all dependencies of <name> as well";
                },
                [ValueParameter]@{
                    Keys        = @("--color");
                    Name        = "Coloring: auto, always, never";
                    Description = "Coloring: auto, always, never";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Don't actually write the lockfile";
                    Description = "Don't actually write the lockfile";
                },
                [FlagParameter]@{
                    Keys        = @("--frozen");
                    Name        = "Require Cargo.lock and cache are up to date";
                    Description = "Require Cargo.lock and cache are up to date";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--locked");
                    Name        = "Require Cargo.lock is up to date";
                    Description = "Require Cargo.lock is up to date";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to Cargo.toml";
                    Description = "Path to Cargo.toml";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package to update";
                    Description = "Package to update";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--precise");
                    Name        = "Update a single dependency to exactly PRECISE";
                    Description = "Update a single dependency to exactly PRECISE";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "No output printed to stdout";
                    Description = "No output printed to stdout";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Use verbose output (-vv very verbose/build.rs output)";
                    Description = "Use verbose output (-vv very verbose/build.rs output)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("upgrade");
            Name        = "upgrade";
            Description = "Update dependencies as recorded in the local lock file";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "[deprecated in favor of ``--workspace``]";
                    Description = "[deprecated in favor of ``--workspace``]";
                },
                [FlagParameter]@{
                    Keys        = @("--allow-prerelease");
                    Name        = "Include prerelease versions when fetching from crates.io (e.g. 0.6.0-alpha')";
                    Description = "Include prerelease versions when fetching from crates.io (e.g. 0.6.0-alpha')";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Print changes to be made without making them";
                    Description = "Print changes to be made without making them";
                },
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Crates to exclude and not upgrade";
                    Description = "Crates to exclude and not upgrade";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--manifest-path");
                    Name        = "Path to the manifest to upgrade";
                    Description = "Path to the manifest to upgrade";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "Run without accessing the network";
                    Description = "Run without accessing the network";
                },
                [ValueParameter]@{
                    Keys        = @("--package", "-p");
                    Name        = "Package id of the crate to add this dependency to";
                    Description = "Package id of the crate to add this dependency to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-compatible");
                    Name        = "Only update a dependency if the new version is semver incompatible";
                    Description = "Only update a dependency if the new version is semver incompatible";
                },
                [FlagParameter]@{
                    Keys        = @("--to-lockfile");
                    Name        = "Upgrade all packages to the version in the lockfile";
                    Description = "Upgrade all packages to the version in the lockfile";
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                },
                [FlagParameter]@{
                    Keys        = @("--workspace");
                    Name        = "Upgrade all packages in the workspace";
                    Description = "Upgrade all packages in the workspace";
                }
            )
        }
    )
}
