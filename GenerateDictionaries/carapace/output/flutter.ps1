# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://flutter.dev/";
    Keys        = @("flutter");
    Name        = "flutter";
    Description = "Manage your Flutter app development";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--device-id", "-d");
            Name        = "Target device id or name (prefixes allowed).";
            Description = "Target device id or name (prefixes allowed).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this usage information.";
            Description = "Print this usage information.";
        },
        [FlagParameter]@{
            Keys        = @("--suppress-analytics");
            Name        = "Suppress analytics reporting when this command runs.";
            Description = "Suppress analytics reporting when this command runs.";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Noisy logging, including all shell commands executed.";
            Description = "Noisy logging, including all shell commands executed.";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Reports the version of this tool.";
            Description = "Reports the version of this tool.";
        },
        [CommandParameter]@{
            Keys        = @("analyze");
            Name        = "analyze";
            Description = "Analyze the project's Dart code";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--congratulate");
                    Name        = "Show output even when there are no errors, warnings, hints, or lints.";
                    Description = "Show output even when there are no errors, warnings, hints, or lints.";
                },
                [FlagParameter]@{
                    Keys        = @("--current-package");
                    Name        = "Analyze the current project, if applicable.";
                    Description = "Analyze the current project, if applicable.";
                },
                [FlagParameter]@{
                    Keys        = @("--fatal-infos");
                    Name        = "Treat info level issues as fatal.";
                    Description = "Treat info level issues as fatal.";
                },
                [FlagParameter]@{
                    Keys        = @("--fatal-warnings");
                    Name        = "Treat warning level issues as fatal.";
                    Description = "Treat warning level issues as fatal.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-congratulate");
                    Name        = "Do not show output even when there are no errors, warnings, hints, or lints.";
                    Description = "Do not show output even when there are no errors, warnings, hints, or lints.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-current-package");
                    Name        = "Do not analyze the current project, if applicable.";
                    Description = "Do not analyze the current project, if applicable.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-fatal-infos");
                    Name        = "Do not treat info level issues as fatal.";
                    Description = "Do not treat info level issues as fatal.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-fatal-warnings");
                    Name        = "Do not treat warning level issues as fatal.";
                    Description = "Do not treat warning level issues as fatal.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-preamble");
                    Name        = "When analyzing the flutter repository, do not display the number of files that will be analyzed.";
                    Description = "When analyzing the flutter repository, do not display the number of files that will be analyzed.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pub");
                    Name        = "Do not run `"flutter pub get`" before executing this command.";
                    Description = "Do not run `"flutter pub get`" before executing this command.";
                },
                [FlagParameter]@{
                    Keys        = @("--preamble");
                    Name        = "When analyzing the flutter repository, display the number of files that will be analyzed.";
                    Description = "When analyzing the flutter repository, display the number of files that will be analyzed.";
                },
                [FlagParameter]@{
                    Keys        = @("--pub");
                    Name        = "Run `"flutter pub get`" before executing this command.";
                    Description = "Run `"flutter pub get`" before executing this command.";
                },
                [FlagParameter]@{
                    Keys        = @("--watch");
                    Name        = "Run analysis continuously, watching the filesystem for changes.";
                    Description = "Run analysis continuously, watching the filesystem for changes.";
                },
                [ValueParameter]@{
                    Keys        = @("--write");
                    Name        = "Also output the results to a file.";
                    Description = "Also output the results to a file.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("assemble");
            Name        = "assemble";
            Description = "Assemble and build Flutter resources";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--DartDefines");
                    Name        = "Additional key-value pairs that will be available as constants.";
                    Description = "Additional key-value pairs that will be available as constants.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-inputs");
                    Name        = "A file path where a newline-separated file containing all inputs used will be written after a build.";
                    Description = "A file path where a newline-separated file containing all inputs used will be written after a build.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-outputs");
                    Name        = "A file path where a newline-separated file containing all outputs created will be written after a build.";
                    Description = "A file path where a newline-separated file containing all outputs created will be written after a build.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--define", "-d");
                    Name        = "Allows passing configuration to a target, as in `"--define=target=key=value`".";
                    Description = "Allows passing configuration to a target, as in `"--define=target=key=value`".";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--depfile");
                    Name        = "A file path where a depfile will be written.";
                    Description = "A file path where a depfile will be written.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--input", "-i");
                    Name        = "Allows passing additional inputs with `"--input=key=value`".";
                    Description = "Allows passing additional inputs with `"--input=key=value`".";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "A directory where output files will be written.";
                    Description = "A directory where output files will be written.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--performance-measurement-file");
                    Name        = "Output individual target performance to a JSON file.";
                    Description = "Output individual target performance to a JSON file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--resource-pool-size");
                    Name        = "The maximum number of concurrent tasks the build system will run.";
                    Description = "The maximum number of concurrent tasks the build system will run.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("attach");
            Name        = "attach";
            Description = "Attach to a running app";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--app-id");
                    Name        = "The package name (Android) or bundle identifier (iOS) for the app";
                    Description = "The package name (Android) or bundle identifier (iOS) for the app";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dart-define");
                    Name        = "Additional key-value pairs that will be available as constants.";
                    Description = "Additional key-value pairs that will be available as constants.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dds-port");
                    Name        = "When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.";
                    Description = "When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Build a debug version of your app (default mode).";
                    Description = "Build a debug version of your app (default mode).";
                },
                [ValueParameter]@{
                    Keys        = @("--debug-uri");
                    Name        = "The URL at which the observatory is listening.";
                    Description = "The URL at which the observatory is listening.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-timeout");
                    Name        = "Time in seconds to wait for devices to attach.";
                    Description = "Time in seconds to wait for devices to attach.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-user");
                    Name        = "Identifier number for a user or work profile on Android only.";
                    Description = "Identifier number for a user or work profile on Android only.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-vmservice-port");
                    Name        = "Look for vmservice connections only from the specified port.";
                    Description = "Look for vmservice connections only from the specified port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--host-vmservice-port");
                    Name        = "When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.";
                    Description = "When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-null-assertions");
                    Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                    Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-track-widget-creation");
                    Name        = "Do not track widget creation locations.";
                    Description = "Do not track widget creation locations.";
                },
                [FlagParameter]@{
                    Keys        = @("--null-assertions");
                    Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                    Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                },
                [ValueParameter]@{
                    Keys        = @("--pid-file");
                    Name        = "Specify a file to write the process ID to.";
                    Description = "Specify a file to write the process ID to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build a version of your app specialized for performance profiling.";
                    Description = "Build a version of your app specialized for performance profiling.";
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "The main entry-point file of the application, as run on the device.";
                    Description = "The main entry-point file of the application, as run on the device.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--track-widget-creation");
                    Name        = "Track widget creation locations.";
                    Description = "Track widget creation locations.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("bash-completion");
            Name        = "bash-completion";
            Description = "Output command line shell completion setup scripts";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-overwrite");
                    Name        = "Causes the given shell completion setup script not to be overwritten if it already exists.";
                    Description = "Causes the given shell completion setup script not to be overwritten if it already exists.";
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "Causes the given shell completion setup script to be overwritten if it already exists.";
                    Description = "Causes the given shell completion setup script to be overwritten if it already exists.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Build an executable app or install bundle";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [CommandParameter]@{
                    Keys        = @("aar");
                    Name        = "aar";
                    Description = "Build a repository containing an AAR and a POM file";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--build-number");
                            Name        = "An identifier used as an internal version number.";
                            Description = "An identifier used as an internal version number.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of the current project.";
                            Description = "Build a debug version of the current project.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flavor");
                            Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                            Description = "Build a custom app flavor as defined by platform-specific build setup.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-debug");
                            Name        = "Do not build a debug version of the current project.";
                            Description = "Do not build a debug version of the current project.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-release");
                            Name        = "Do not build a release version of the current project.";
                            Description = "Do not build a release version of the current project.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-track-widget-creation");
                            Name        = "Do not track widget creation locations.";
                            Description = "Do not track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output-dir");
                            Name        = "The absolute path to the directory where the repository is generated.";
                            Description = "The absolute path to the directory where the repository is generated.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of the current project specialized for performance profiling.";
                            Description = "Build a version of the current project specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-platform");
                            Name        = "The target platform for which the project is compiled.";
                            Description = "The target platform for which the project is compiled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--track-widget-creation");
                            Name        = "Track widget creation locations.";
                            Description = "Track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("apk");
                    Name        = "apk";
                    Description = "Build an Android APK file from your app";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--analyze-size");
                            Name        = "Produce additional profile information for artifact output size.";
                            Description = "Produce additional profile information for artifact output size.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-name");
                            Name        = "A `"x.y.z`" string used as the version number shown to users.";
                            Description = "A `"x.y.z`" string used as the version number shown to users.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-number");
                            Name        = "An identifier used as an internal version number.";
                            Description = "An identifier used as an internal version number.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flavor");
                            Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                            Description = "Build a custom app flavor as defined by platform-specific build setup.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-analyze-size");
                            Name        = "Do not produce additional profile information for artifact output size.";
                            Description = "Do not produce additional profile information for artifact output size.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-track-widget-creation");
                            Name        = "Do not track widget creation locations.";
                            Description = "Do not track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--split-per-abi");
                            Name        = "Whether to split the APKs per ABIs.";
                            Description = "Whether to split the APKs per ABIs.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-platform");
                            Name        = "The target platform for which the app is compiled.";
                            Description = "The target platform for which the app is compiled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--track-widget-creation");
                            Name        = "Track widget creation locations.";
                            Description = "Track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("appbundle");
                    Name        = "appbundle";
                    Description = "Build an Android App Bundle file from your app";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--analyze-size");
                            Name        = "Produce additional profile information for artifact output size.";
                            Description = "Produce additional profile information for artifact output size.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-name");
                            Name        = "A `"x.y.z`" string used as the version number shown to users.";
                            Description = "A `"x.y.z`" string used as the version number shown to users.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-number");
                            Name        = "An identifier used as an internal version number.";
                            Description = "An identifier used as an internal version number.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--deferred-components");
                            Name        = "Setting to false disables building with deferred components.";
                            Description = "Setting to false disables building with deferred components.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flavor");
                            Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                            Description = "Build a custom app flavor as defined by platform-specific build setup.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-analyze-size");
                            Name        = "Do not produce additional profile information for artifact output size.";
                            Description = "Do not produce additional profile information for artifact output size.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-deferred-components");
                            Name        = "Setting to false disables building with deferred components.";
                            Description = "Setting to false disables building with deferred components.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-track-widget-creation");
                            Name        = "Do not track widget creation locations.";
                            Description = "Do not track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-validate-deferred-components");
                            Name        = "When enabled, deferred component apps will fail to build if setup problems are detected that would prevent deferred components from functioning properly.";
                            Description = "When enabled, deferred component apps will fail to build if setup problems are detected that would prevent deferred components from functioning properly.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-platform");
                            Name        = "The target platform for which the app is compiled.";
                            Description = "The target platform for which the app is compiled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--track-widget-creation");
                            Name        = "Track widget creation locations.";
                            Description = "Track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--validate-deferred-components");
                            Name        = "When enabled, deferred component apps will fail to build if setup problems are detected that would prevent deferred components from functioning properly.";
                            Description = "When enabled, deferred component apps will fail to build if setup problems are detected that would prevent deferred components from functioning properly.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("bundle");
                    Name        = "bundle";
                    Description = "Build the Flutter assets directory from your app";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--asset-dir");
                            Name        = "The output directory for the kernel_blob.bin file, the native snapshet, the assets, etc.";
                            Description = "The output directory for the kernel_blob.bin file, the native snapshet, the assets, etc.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-number");
                            Name        = "An identifier used as an internal version number.";
                            Description = "An identifier used as an internal version number.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app (default mode).";
                            Description = "Build a debug version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--depfile");
                            Name        = "A file path where a depfile will be written.";
                            Description = "A file path where a depfile will be written.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-track-widget-creation");
                            Name        = "Do not track widget creation locations.";
                            Description = "Do not track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app.";
                            Description = "Build a release version of your app.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-platform");
                            Name        = "The architecture for which to build the application.";
                            Description = "The architecture for which to build the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--track-widget-creation");
                            Name        = "Track widget creation locations.";
                            Description = "Track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("fuchsia");
                    Name        = "fuchsia";
                    Description = "Build the Fuchsia target";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--runner-source");
                            Name        = "The package source to use for the flutter_runner.";
                            Description = "The package source to use for the flutter_runner.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-platform");
                            Name        = "The target platform for which the app is compiled.";
                            Description = "The target platform for which the app is compiled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ios");
                    Name        = "ios";
                    Description = "Build an iOS application bundle (Mac OS X host only)";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--analyze-size");
                            Name        = "Produce additional profile information for artifact output size.";
                            Description = "Produce additional profile information for artifact output size.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-name");
                            Name        = "A `"x.y.z`" string used as the version number shown to users.";
                            Description = "A `"x.y.z`" string used as the version number shown to users.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-number");
                            Name        = "An identifier used as an internal version number.";
                            Description = "An identifier used as an internal version number.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--codesign");
                            Name        = "Codesign the application bundle (only available on device builds).";
                            Description = "Codesign the application bundle (only available on device builds).";
                        },
                        [FlagParameter]@{
                            Keys        = @("--config-only");
                            Name        = "Update the project configuration without performing a build.";
                            Description = "Update the project configuration without performing a build.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flavor");
                            Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                            Description = "Build a custom app flavor as defined by platform-specific build setup.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-analyze-size");
                            Name        = "Do not produce additional profile information for artifact output size.";
                            Description = "Do not produce additional profile information for artifact output size.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-codesign");
                            Name        = "Codesign the application bundle (only available on device builds).";
                            Description = "Codesign the application bundle (only available on device builds).";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-config-only");
                            Name        = "Update the project configuration without performing a build.";
                            Description = "Update the project configuration without performing a build.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Whether to run `"flutter pub get`" before executing this command.";
                            Description = "Whether to run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-simulator");
                            Name        = "Build for the iOS simulator instead of the device.";
                            Description = "Build for the iOS simulator instead of the device.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Whether to run `"flutter pub get`" before executing this command.";
                            Description = "Whether to run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [FlagParameter]@{
                            Keys        = @("--simulator");
                            Name        = "Build for the iOS simulator instead of the device.";
                            Description = "Build for the iOS simulator instead of the device.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ios-framework");
                    Name        = "ios-framework";
                    Description = "Produces .xcframeworks for a Flutter project and its plugins for integration into existing, plain Xcode projects";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--cocoapods");
                            Name        = "Produce a Flutter.podspec instead of an engine Flutter.xcframework (recommended if host app uses CocoaPods).";
                            Description = "Produce a Flutter.podspec instead of an engine Flutter.xcframework (recommended if host app uses CocoaPods).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Produce a framework for the debug build configuration.";
                            Description = "Produce a framework for the debug build configuration.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flavor");
                            Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                            Description = "Build a custom app flavor as defined by platform-specific build setup.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-cocoapods");
                            Name        = "Do not produce a Flutter.podspec instead of an engine Flutter.xcframework (recommended if host app uses CocoaPods).";
                            Description = "Do not produce a Flutter.podspec instead of an engine Flutter.xcframework (recommended if host app uses CocoaPods).";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-debug");
                            Name        = "Do not produce a framework for the debug build configuration.";
                            Description = "Do not produce a framework for the debug build configuration.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-profile");
                            Name        = "Do not produce a framework for the profile build configuration.";
                            Description = "Do not produce a framework for the profile build configuration.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-release");
                            Name        = "Do not produce a framework for the release build configuration.";
                            Description = "Do not produce a framework for the release build configuration.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--output", "-o");
                            Name        = "Location to write the frameworks.";
                            Description = "Location to write the frameworks.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Produce a framework for the profile build configuration.";
                            Description = "Produce a framework for the profile build configuration.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Produce a framework for the release build configuration.";
                            Description = "Produce a framework for the release build configuration.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("ipa");
                    Name        = "ipa";
                    Description = "Build an iOS archive bundle (Mac OS X host only)";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--analyze-size");
                            Name        = "Produce additional profile information for artifact output size.";
                            Description = "Produce additional profile information for artifact output size.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-name");
                            Name        = "A `"x.y.z`" string used as the version number shown to users.";
                            Description = "A `"x.y.z`" string used as the version number shown to users.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-number");
                            Name        = "An identifier used as an internal version number.";
                            Description = "An identifier used as an internal version number.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--export-options-plist");
                            Name        = "Optionally export an IPA with these options.";
                            Description = "Optionally export an IPA with these options.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--flavor");
                            Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                            Description = "Build a custom app flavor as defined by platform-specific build setup.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-analyze-size");
                            Name        = "Do not produce additional profile information for artifact output size.";
                            Description = "Do not produce additional profile information for artifact output size.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("linux");
                    Name        = "linux";
                    Description = "Build a Linux desktop application";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--analyze-size");
                            Name        = "Whether to produce additional profile information for artifact output size.";
                            Description = "Whether to produce additional profile information for artifact output size.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-analyze-size");
                            Name        = "Whether to produce additional profile information for artifact output size.";
                            Description = "Whether to produce additional profile information for artifact output size.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-track-widget-creation");
                            Name        = "Do no track widget creation locations.";
                            Description = "Do no track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-platform");
                            Name        = "The target platform for which the app is compiled.";
                            Description = "The target platform for which the app is compiled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target-sysroot");
                            Name        = "The root filesystem path of target platform for which the app is compiled.";
                            Description = "The root filesystem path of target platform for which the app is compiled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--track-widget-creation");
                            Name        = "Track widget creation locations.";
                            Description = "Track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("web");
                    Name        = "web";
                    Description = "Build a web application bundle";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--csp");
                            Name        = "Disable dynamic generation of code in the generated output.";
                            Description = "Disable dynamic generation of code in the generated output.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--native-null-assertions");
                            Name        = "Enables additional runtime null checks in web applications.";
                            Description = "Enables additional runtime null checks in web applications.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-native-null-assertions");
                            Name        = "Disables additional runtime null checks in web applications.";
                            Description = "Disables additional runtime null checks in web applications.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-source-maps");
                            Name        = "Do not generate a sourcemap file.";
                            Description = "Do not generate a sourcemap file.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pwa-strategy");
                            Name        = "val                    The caching strategy to be used by the PWA service worker.";
                            Description = "val                    The caching strategy to be used by the PWA service worker.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [FlagParameter]@{
                            Keys        = @("--source-maps");
                            Name        = "Generate a sourcemap file.";
                            Description = "Generate a sourcemap file.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--web-renderer");
                            Name        = "The renderer implementation to use when building for the web.";
                            Description = "The renderer implementation to use when building for the web.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("windows");
                    Name        = "windows";
                    Description = "Build a Windows desktop application";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--analyze-size");
                            Name        = "Produce additional profile information for artifact output size.";
                            Description = "Produce additional profile information for artifact output size.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-analyze-size");
                            Name        = "Do not produce additional profile information for artifact output size.";
                            Description = "Do not produce additional profile information for artifact output size.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-track-widget-creation");
                            Name        = "Do not track widget creation locations.";
                            Description = "Do not track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--track-widget-creation");
                            Name        = "Track widget creation locations.";
                            Description = "Track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("winuwp");
                    Name        = "winuwp";
                    Description = "Build a Windows UWP desktop application";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--analyze-size");
                            Name        = "Produce additional profile information for artifact output size.";
                            Description = "Produce additional profile information for artifact output size.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-analyze-size");
                            Name        = "Do not produce additional profile information for artifact output size.";
                            Description = "Do not produce additional profile information for artifact output size.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-track-widget-creation");
                            Name        = "Do not track widget creation locations.";
                            Description = "Do not track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--track-widget-creation");
                            Name        = "Track widget creation locations.";
                            Description = "Track widget creation locations.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("xcarchive");
                    Name        = "xcarchive";
                    Description = "Build an iOS archive bundle";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--analyze-size");
                            Name        = "Produce additional profile information for artifact output size.";
                            Description = "Produce additional profile information for artifact output size.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-name");
                            Name        = "A `"x.y.z`" string used as the version number shown to users.";
                            Description = "A `"x.y.z`" string used as the version number shown to users.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--build-number");
                            Name        = "An identifier used as an internal version number.";
                            Description = "An identifier used as an internal version number.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dart-define");
                            Name        = "Additional key-value pairs that will be available as constants.";
                            Description = "Additional key-value pairs that will be available as constants.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--debug");
                            Name        = "Build a debug version of your app.";
                            Description = "Build a debug version of your app.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--export-options-plist");
                            Name        = "Optionally export an IPA with these options.";
                            Description = "Optionally export an IPA with these options.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--flavor");
                            Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                            Description = "Build a custom app flavor as defined by platform-specific build setup.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-analyze-size");
                            Name        = "Do not produce additional profile information for artifact output size.";
                            Description = "Do not produce additional profile information for artifact output size.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-null-assertions");
                            Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-obfuscate");
                            Name        = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag does not removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-pub");
                            Name        = "Do not run `"flutter pub get`" before executing this command.";
                            Description = "Do not run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-tree-shake-icons");
                            Name        = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Do not tree shake icon fonts so that only glyphs used by the application remain.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-assertions");
                            Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                            Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--obfuscate");
                            Name        = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                            Description = "In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--profile");
                            Name        = "Build a version of your app specialized for performance profiling.";
                            Description = "Build a version of your app specialized for performance profiling.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--pub");
                            Name        = "Run `"flutter pub get`" before executing this command.";
                            Description = "Run `"flutter pub get`" before executing this command.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--release");
                            Name        = "Build a release version of your app (default mode).";
                            Description = "Build a release version of your app (default mode).";
                        },
                        [ValueParameter]@{
                            Keys        = @("--split-debug-info");
                            Name        = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            Description = "In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target", "-t");
                            Name        = "The main entry-point file of the application, as run on the device.";
                            Description = "The main entry-point file of the application, as run on the device.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--tree-shake-icons");
                            Name        = "Tree shake icon fonts so that only glyphs used by the application remain.";
                            Description = "Tree shake icon fonts so that only glyphs used by the application remain.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("channel");
            Name        = "channel";
            Description = "List or switch Flutter channels";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "Delete the build/ and .dart_tool/ directories";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Configure Flutter settings";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--analytics");
                    Name        = "Enable reporting anonymously tool usage statistics and crash reports.";
                    Description = "Enable reporting anonymously tool usage statistics and crash reports.";
                },
                [ValueParameter]@{
                    Keys        = @("--android-sdk");
                    Name        = "The Android SDK directory.";
                    Description = "The Android SDK directory.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--android-studio-dir");
                    Name        = "The Android Studio install directory.";
                    Description = "The Android Studio install directory.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--build-dir");
                    Name        = "The relative path to override a projects build directory.";
                    Description = "The relative path to override a projects build directory.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--clear-features");
                    Name        = "Remove all configured features and restore them to the default values.";
                    Description = "Remove all configured features and restore them to the default values.";
                },
                [FlagParameter]@{
                    Keys        = @("--clear-ios-signing-cert");
                    Name        = "Clear the saved development certificate choice used to sign apps for iOS device deployment.";
                    Description = "Clear the saved development certificate choice used to sign apps for iOS device deployment.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-android");
                    Name        = "Enable Flutter for Android.";
                    Description = "Enable Flutter for Android.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-custom-devices");
                    Name        = "Enable Early support for custom device types.";
                    Description = "Enable Early support for custom device types.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-fuchsia");
                    Name        = "Enable Flutter for Fuchsia.";
                    Description = "Enable Flutter for Fuchsia.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-ios");
                    Name        = "Enable Flutter for iOS.";
                    Description = "Enable Flutter for iOS.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-linux-desktop");
                    Name        = "Enable beta-quality support for desktop on Linux.";
                    Description = "Enable beta-quality support for desktop on Linux.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-macos-desktop");
                    Name        = "Enable beta-quality support for desktop on macOS.";
                    Description = "Enable beta-quality support for desktop on macOS.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-web");
                    Name        = "Enable Flutter for web.";
                    Description = "Enable Flutter for web.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-windows-desktop");
                    Name        = "Enable beta-quality support for desktop on Windows.";
                    Description = "Enable beta-quality support for desktop on Windows.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-windows-uwp-desktop");
                    Name        = "Enable  Flutter for Windows UWP.";
                    Description = "Enable  Flutter for Windows UWP.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-analytics");
                    Name        = "Disable reporting anonymously tool usage statistics and crash reports.";
                    Description = "Disable reporting anonymously tool usage statistics and crash reports.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-android");
                    Name        = "Disable Flutter for Android.";
                    Description = "Disable Flutter for Android.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-custom-devices");
                    Name        = "Disable Early support for custom device types.";
                    Description = "Disable Early support for custom device types.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-fuchsia");
                    Name        = "Disable Flutter for Fuchsia.";
                    Description = "Disable Flutter for Fuchsia.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-ios");
                    Name        = "Disable Flutter for iOS.";
                    Description = "Disable Flutter for iOS.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-linux-desktop");
                    Name        = "Disable beta-quality support for desktop on Linux.";
                    Description = "Disable beta-quality support for desktop on Linux.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-macos-desktop");
                    Name        = "Disable beta-quality support for desktop on macOS.";
                    Description = "Disable beta-quality support for desktop on macOS.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-web");
                    Name        = "Disable Flutter for web.";
                    Description = "Disable Flutter for web.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-windows-desktop");
                    Name        = "Disable beta-quality support for desktop on Windows.";
                    Description = "Disable beta-quality support for desktop on Windows.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-enable-windows-uwp-desktop");
                    Name        = "Disable Flutter for Windows UWP.";
                    Description = "Disable Flutter for Windows UWP.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-single-widget-reload-optimization");
                    Name        = "Disable Hot reload optimization for changes to class body of a single widget.";
                    Description = "Disable Hot reload optimization for changes to class body of a single widget.";
                },
                [FlagParameter]@{
                    Keys        = @("--single-widget-reload-optimization");
                    Name        = "Enable Hot reload optimization for changes to class body of a single widget.";
                    Description = "Enable Hot reload optimization for changes to class body of a single widget.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("create");
            Name        = "create";
            Description = "Create a new Flutter project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--android-language", "-a");
                    Name        = "The language to use for Android-specific code.";
                    Description = "The language to use for Android-specific code.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--description");
                    Name        = "The description to use for your new Flutter project.";
                    Description = "The description to use for your new Flutter project.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--ios-language", "-i");
                    Name        = "The language to use for iOS-specific code.";
                    Description = "The language to use for iOS-specific code.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--list-samples");
                    Name        = "Specifies a JSON output file for a listing of Flutter code samples that can be created with `"--sample`".";
                    Description = "Specifies a JSON output file for a listing of Flutter code samples that can be created with `"--sample`".";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-offline");
                    Name        = "When `"flutter pub get`" is run by the create command, does not run it in offline mode.";
                    Description = "When `"flutter pub get`" is run by the create command, does not run it in offline mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-overwrite");
                    Name        = "When performing operations, do not overwrite existing files.";
                    Description = "When performing operations, do not overwrite existing files.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pub");
                    Name        = "Do not run `"flutter pub get`" after the project has been created.";
                    Description = "Do not run `"flutter pub get`" after the project has been created.";
                },
                [FlagParameter]@{
                    Keys        = @("--offline");
                    Name        = "When `"flutter pub get`" is run by the create command, this runs it in offline mode.";
                    Description = "When `"flutter pub get`" is run by the create command, this runs it in offline mode.";
                },
                [ValueParameter]@{
                    Keys        = @("--org");
                    Name        = "The organization responsible for your new Flutter project, in reverse domain name notation.";
                    Description = "The organization responsible for your new Flutter project, in reverse domain name notation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "When performing operations, overwrite existing files.";
                    Description = "When performing operations, overwrite existing files.";
                },
                [ValueParameter]@{
                    Keys        = @("--platforms");
                    Name        = "The platforms supported by this project.";
                    Description = "The platforms supported by this project.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--project-name");
                    Name        = "The project name for this new Flutter project.";
                    Description = "The project name for this new Flutter project.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pub");
                    Name        = "Run `"flutter pub get`" after the project has been created.";
                    Description = "Run `"flutter pub get`" after the project has been created.";
                },
                [ValueParameter]@{
                    Keys        = @("--sample", "-s");
                    Name        = "Specifies the Flutter code sample to use as the `"main.dart`" for an application.";
                    Description = "Specifies the Flutter code sample to use as the `"main.dart`" for an application.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--template", "-t");
                    Name        = "Specify the type of project to create.";
                    Description = "Specify the type of project to create.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("devices");
            Name        = "devices";
            Description = "List all connected devices";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--device-timeout");
                    Name        = "Time in seconds to wait for devices to attach.";
                    Description = "Time in seconds to wait for devices to attach.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--machine");
                    Name        = "Output device information in machine readable structured JSON format.";
                    Description = "Output device information in machine readable structured JSON format.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("doctor");
            Name        = "doctor";
            Description = "Show information about the installed tooling";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--android-licenses");
                    Name        = "Run the Android SDK manager tool to accept the SDK's licenses.";
                    Description = "Run the Android SDK manager tool to accept the SDK's licenses.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("downgrade");
            Name        = "downgrade";
            Description = "Downgrade Flutter to the last active version for the current channel";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("drive");
            Name        = "drive";
            Description = "Run integration tests for the project on an attached device or emulator";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--android-emulator");
                    Name        = "Perform Flutter Driver testing using an Android Emulator.";
                    Description = "Perform Flutter Driver testing using an Android Emulator.";
                },
                [ValueParameter]@{
                    Keys        = @("--android-project-arg", "-P");
                    Name        = "Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag.";
                    Description = "Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--browser-dimension");
                    Name        = "The dimension of the browser when running a Flutter Web test.";
                    Description = "The dimension of the browser when running a Flutter Web test.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--browser-name");
                    Name        = "Name of the browser where tests will be executed.";
                    Description = "Name of the browser where tests will be executed.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--build");
                    Name        = "(deprecated) Build the app before running.";
                    Description = "(deprecated) Build the app before running.";
                },
                [FlagParameter]@{
                    Keys        = @("--cache-sksl");
                    Name        = "Cache the shader in the SkSL format instead of in binary or GLSL formats.";
                    Description = "Cache the shader in the SkSL format instead of in binary or GLSL formats.";
                },
                [ValueParameter]@{
                    Keys        = @("--chrome-binary");
                    Name        = "Location of the Chrome binary.";
                    Description = "Location of the Chrome binary.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dart-define");
                    Name        = "Additional key-value pairs that will be available as constants.";
                    Description = "Additional key-value pairs that will be available as constants.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dart-entrypoint-args", "-a");
                    Name        = "Pass a list of arguments to the Dart entrypoint at application startup.";
                    Description = "Pass a list of arguments to the Dart entrypoint at application startup.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dds-port");
                    Name        = "When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.";
                    Description = "When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Build a debug version of your app (default mode).";
                    Description = "Build a debug version of your app (default mode).";
                },
                [ValueParameter]@{
                    Keys        = @("--device-timeout");
                    Name        = "Time in seconds to wait for devices to attach.";
                    Description = "Time in seconds to wait for devices to attach.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-user");
                    Name        = "Identifier number for a user or work profile on Android only.";
                    Description = "Identifier number for a user or work profile on Android only.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-vmservice-port");
                    Name        = "Look for vmservice connections only from the specified port.";
                    Description = "Look for vmservice connections only from the specified port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--driver");
                    Name        = "The test file to run on the host (as opposed to the target file to run on the device).";
                    Description = "The test file to run on the host (as opposed to the target file to run on the device).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--driver-port");
                    Name        = "The port where Webdriver server is launched at.";
                    Description = "The port where Webdriver server is launched at.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dump-skp-on-shader-compilation");
                    Name        = "Automatically dump the skp that triggers new shader compilations.";
                    Description = "Automatically dump the skp that triggers new shader compilations.";
                },
                [FlagParameter]@{
                    Keys        = @("--endless-trace-buffer");
                    Name        = "Enable tracing to an infinite buffer, instead of a ring buffer.";
                    Description = "Enable tracing to an infinite buffer, instead of a ring buffer.";
                },
                [FlagParameter]@{
                    Keys        = @("--flavor");
                    Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                    Description = "Build a custom app flavor as defined by platform-specific build setup.";
                },
                [FlagParameter]@{
                    Keys        = @("--headless");
                    Name        = "Launch driver browser in headless mode.";
                    Description = "Launch driver browser in headless mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--host-vmservice-port");
                    Name        = "When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.";
                    Description = "When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--keep-app-running");
                    Name        = "Will keep the Flutter application running when done testing.";
                    Description = "Will keep the Flutter application running when done testing.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-android-emulator");
                    Name        = "Do not perform Flutter Driver testing using an Android Emulator.";
                    Description = "Do not perform Flutter Driver testing using an Android Emulator.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-build");
                    Name        = "(deprecated) Do not build the app before running.";
                    Description = "(deprecated) Do not build the app before running.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-headless");
                    Name        = "Do not launch driver browser in headless mode.";
                    Description = "Do not launch driver browser in headless mode.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-keep-app-running");
                    Name        = "Will not keep the Flutter application running when done testing.";
                    Description = "Will not keep the Flutter application running when done testing.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-null-assertions");
                    Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                    Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-start-paused");
                    Name        = "Do not start in a paused mode and wait for a debugger to connect.";
                    Description = "Do not start in a paused mode and wait for a debugger to connect.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-track-widget-creation");
                    Name        = "Do not track widget creation locations.";
                    Description = "Do not track widget creation locations.";
                },
                [FlagParameter]@{
                    Keys        = @("--null-assertions");
                    Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                    Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                },
                [FlagParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build a version of your app specialized for performance profiling.";
                    Description = "Build a version of your app specialized for performance profiling.";
                },
                [ValueParameter]@{
                    Keys        = @("--profile-memory");
                    Name        = "Launch devtools and profile application memory, writing The output data to the file path provided to this argument as JSON.";
                    Description = "Launch devtools and profile application memory, writing The output data to the file path provided to this argument as JSON.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--purge-persistent-cache");
                    Name        = "Removes all existing persistent caches. This allows reproducing shader compilation jank that normally only happens the first time an app is run, or for reliable testing of compilation jank fixes (e.g. shader warm-up).";
                    Description = "Removes all existing persistent caches. This allows reproducing shader compilation jank that normally only happens the first time an app is run, or for reliable testing of compilation jank fixes (e.g. shader warm-up).";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Build a release version of your app.";
                    Description = "Build a release version of your app.";
                },
                [ValueParameter]@{
                    Keys        = @("--route");
                    Name        = "Which route to load when running the app.";
                    Description = "Which route to load when running the app.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--screenshot");
                    Name        = "Directory location to write screenshots on test failure.";
                    Description = "Directory location to write screenshots on test failure.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--start-paused");
                    Name        = "Start in a paused mode and wait for a debugger to connect.";
                    Description = "Start in a paused mode and wait for a debugger to connect.";
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "The main entry-point file of the application, as run on the device.";
                    Description = "The main entry-point file of the application, as run on the device.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--test-arguments");
                    Name        = "Additional arguments to pass to the Dart VM running The test script.";
                    Description = "Additional arguments to pass to the Dart VM running The test script.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--trace-skia");
                    Name        = "Enable tracing of Skia code.";
                    Description = "Enable tracing of Skia code.";
                },
                [FlagParameter]@{
                    Keys        = @("--trace-startup");
                    Name        = "Trace application startup, then exit, saving the trace to a file.";
                    Description = "Trace application startup, then exit, saving the trace to a file.";
                },
                [FlagParameter]@{
                    Keys        = @("--trace-systrace");
                    Name        = "Enable tracing to the system tracer.";
                    Description = "Enable tracing to the system tracer.";
                },
                [FlagParameter]@{
                    Keys        = @("--track-widget-creation");
                    Name        = "Track widget creation locations.";
                    Description = "Track widget creation locations.";
                },
                [ValueParameter]@{
                    Keys        = @("--use-application-binary");
                    Name        = "Specify a pre-built application binary to use when running.";
                    Description = "Specify a pre-built application binary to use when running.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--use-existing-app");
                    Name        = "Connect to an already running instance via the given observatory URL.";
                    Description = "Connect to an already running instance via the given observatory URL.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose-system-logs");
                    Name        = "Include verbose logging from the Flutter engine.";
                    Description = "Include verbose logging from the Flutter engine.";
                },
                [ValueParameter]@{
                    Keys        = @("--web-renderer");
                    Name        = "The renderer implementation to use when building for the web.";
                    Description = "The renderer implementation to use when building for the web.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--write-sksl-on-exit");
                    Name        = "Attempts to write an SkSL file when the drive process is finished to the provided file, overwriting it if necessary.";
                    Description = "Attempts to write an SkSL file when the drive process is finished to the provided file, overwriting it if necessary.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("emulators");
            Name        = "emulators";
            Description = "List, launch and create emulators";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--cold");
                    Name        = "Cold boot the emulator instance (Android only).";
                    Description = "Cold boot the emulator instance (Android only).";
                },
                [FlagParameter]@{
                    Keys        = @("--create");
                    Name        = "Creates a new Android emulator based on a Pixel device.";
                    Description = "Creates a new Android emulator based on a Pixel device.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--launch");
                    Name        = "The full or partial ID of the emulator to launch.";
                    Description = "The full or partial ID of the emulator to launch.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "Specifies a name for the emulator being created.";
                    Description = "Specifies a name for the emulator being created.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("format");
            Name        = "format";
            Description = "Idiomatically format Dart source code";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--fix");
                    Name        = "Apply all style fixes.";
                    Description = "Apply all style fixes.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--line-length", "-l");
                    Name        = "Wrap lines longer than this.";
                    Description = "Wrap lines longer than this.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Set where to write formatted output.";
                    Description = "Set where to write formatted output.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--set-exit-if-changed");
                    Name        = "Return exit code 1 if there are any formatting changes.";
                    Description = "Return exit code 1 if there are any formatting changes.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose", "-v");
                    Name        = "Show all options and flags with --help.";
                    Description = "Show all options and flags with --help.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("gen-l10n");
            Name        = "gen-l10n";
            Description = "Generate localizations for the current project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--arb-dir");
                    Name        = "The directory where the template and translated arb files are located.";
                    Description = "The directory where the template and translated arb files are located.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gen-inputs-and-outputs-list");
                    Name        = "When specified, the tool generates a JSON file containing the tool's inputs and outputs named gen_l10n_inputs_and_outputs.json.";
                    Description = "When specified, the tool generates a JSON file containing the tool's inputs and outputs named gen_l10n_inputs_and_outputs.json.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--header");
                    Name        = "The header to prepend to the generated Dart localizations files.";
                    Description = "The header to prepend to the generated Dart localizations files.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--header-file");
                    Name        = "The header to prepend to the generated Dart localizations files.";
                    Description = "The header to prepend to the generated Dart localizations files.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-nullable-getter");
                    Name        = "Localizations class getter is not nullable.";
                    Description = "Localizations class getter is not nullable.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-required-resource-attributes");
                    Name        = "Does not equire all resource ids to contain a corresponding resource attribute.";
                    Description = "Does not equire all resource ids to contain a corresponding resource attribute.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-synthetic-package");
                    Name        = "Disable generated output files. ";
                    Description = "Disable generated output files. ";
                },
                [FlagParameter]@{
                    Keys        = @("--no-use-deferred-loading");
                    Name        = "Do not generate the Dart localization file with locales imported as deferred.";
                    Description = "Do not generate the Dart localization file with locales imported as deferred.";
                },
                [FlagParameter]@{
                    Keys        = @("--nullable-getter");
                    Name        = "Localizations class getter is nullable.";
                    Description = "Localizations class getter is nullable.";
                },
                [ValueParameter]@{
                    Keys        = @("--output-class");
                    Name        = "The Dart class name to use for the output localization and localizations delegate classes.";
                    Description = "The Dart class name to use for the output localization and localizations delegate classes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output-dir");
                    Name        = "The directory where the generated localization classes will be written if the synthetic-package flag is set to false.";
                    Description = "The directory where the generated localization classes will be written if the synthetic-package flag is set to false.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output-localization-file");
                    Name        = "The filename for the output localization and localizations delegate classes.";
                    Description = "The filename for the output localization and localizations delegate classes.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--preferred-supported-locales");
                    Name        = "The list of preferred supported locales for the application.";
                    Description = "The list of preferred supported locales for the application.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--project-dir");
                    Name        = "Directory of the root Flutter project.";
                    Description = "Directory of the root Flutter project.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--required-resource-attributes");
                    Name        = "Requires all resource ids to contain a corresponding resource attribute.";
                    Description = "Requires all resource ids to contain a corresponding resource attribute.";
                },
                [FlagParameter]@{
                    Keys        = @("--synthetic-package");
                    Name        = "Enable generated output files.";
                    Description = "Enable generated output files.";
                },
                [ValueParameter]@{
                    Keys        = @("--template-arb-file");
                    Name        = "The template arb file that will be used as the basis for generating the Dart localization and messages files.";
                    Description = "The template arb file that will be used as the basis for generating the Dart localization and messages files.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--untranslated-messages-file");
                    Name        = "The location of a file that describes the localization messages have not been translated yet.";
                    Description = "The location of a file that describes the localization messages have not been translated yet.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--use-deferred-loading");
                    Name        = "Generate the Dart localization file with locales imported as deferred.";
                    Description = "Generate the Dart localization file with locales imported as deferred.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Install a Flutter app on an attached device";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--device-timeout");
                    Name        = "Time in seconds to wait for devices to attach.";
                    Description = "Time in seconds to wait for devices to attach.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-user");
                    Name        = "Identifier number for a user or work profile on Android only.";
                    Description = "Identifier number for a user or work profile on Android only.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-uninstall-only");
                    Name        = "Uninstall the app if already on the device.";
                    Description = "Uninstall the app if already on the device.";
                },
                [FlagParameter]@{
                    Keys        = @("--uninstall-only");
                    Name        = "Uninstall the app if already on the device.";
                    Description = "Uninstall the app if already on the device.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("logs");
            Name        = "logs";
            Description = "Show log output for running Flutter apps";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--clear", "-c");
                    Name        = "Clear log history before reading from logs.";
                    Description = "Clear log history before reading from logs.";
                },
                [ValueParameter]@{
                    Keys        = @("--device-timeout");
                    Name        = "Time in seconds to wait for devices to attach.";
                    Description = "Time in seconds to wait for devices to attach.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("precache");
            Name        = "precache";
            Description = "Populate the Flutter tool's cache of binary artifacts";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all-platforms", "-a");
                    Name        = "Precache artifacts for all host platforms.";
                    Description = "Precache artifacts for all host platforms.";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Force re-downloading of artifacts.";
                    Description = "Force re-downloading of artifacts.";
                },
                [FlagParameter]@{
                    Keys        = @("--fuchsia");
                    Name        = "Precache artifacts for Fuchsia development.";
                    Description = "Precache artifacts for Fuchsia development.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--ios");
                    Name        = "Precache artifacts for iOS development.";
                    Description = "Precache artifacts for iOS development.";
                },
                [FlagParameter]@{
                    Keys        = @("--linux");
                    Name        = "Precache artifacts for Linux desktop development.";
                    Description = "Precache artifacts for Linux desktop development.";
                },
                [FlagParameter]@{
                    Keys        = @("--macos");
                    Name        = "Precache artifacts for macOS desktop development.";
                    Description = "Precache artifacts for macOS desktop development.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-fuchsia");
                    Name        = "Do not precache artifacts for Fuchsia development.";
                    Description = "Do not precache artifacts for Fuchsia development.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-ios");
                    Name        = "Do not precache artifacts for iOS development.";
                    Description = "Do not precache artifacts for iOS development.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-linux");
                    Name        = "Do not precache artifacts for Linux desktop development.";
                    Description = "Do not precache artifacts for Linux desktop development.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-macos");
                    Name        = "Do not precache artifacts for macOS desktop development.";
                    Description = "Do not precache artifacts for macOS desktop development.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-universal");
                    Name        = "Do not precache artifacts required for any development platform.";
                    Description = "Do not precache artifacts required for any development platform.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-web");
                    Name        = "Do not precache artifacts for web development.";
                    Description = "Do not precache artifacts for web development.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-windows");
                    Name        = "Do not precache artifacts for Windows desktop development.";
                    Description = "Do not precache artifacts for Windows desktop development.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-winuwp");
                    Name        = "Do not precache artifacts for Windows UWP desktop development.";
                    Description = "Do not precache artifacts for Windows UWP desktop development.";
                },
                [FlagParameter]@{
                    Keys        = @("--universal");
                    Name        = "Precache artifacts required for any development platform.";
                    Description = "Precache artifacts required for any development platform.";
                },
                [FlagParameter]@{
                    Keys        = @("--web");
                    Name        = "Precache artifacts for web development.";
                    Description = "Precache artifacts for web development.";
                },
                [FlagParameter]@{
                    Keys        = @("--windows");
                    Name        = "Precache artifacts for Windows desktop development.";
                    Description = "Precache artifacts for Windows desktop development.";
                },
                [FlagParameter]@{
                    Keys        = @("--winuwp");
                    Name        = "Precache artifacts for Windows UWP desktop development.";
                    Description = "Precache artifacts for Windows UWP desktop development.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pub");
            Name        = "pub";
            Description = "Commands for managing Flutter packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [CommandParameter]@{
                    Keys        = @("add");
                    Name        = "add";
                    Description = "Add a dependency to pubspec.yaml";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dev", "-d");
                            Name        = "Adds package to the development dependencies instead.";
                            Description = "Adds package to the development dependencies instead.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory <dir>.";
                            Description = "Run this in the directory <dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change";
                            Description = "Report what dependencies would change but don't change";
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-path");
                            Name        = "Path of git package in repository";
                            Description = "Path of git package in repository";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-ref");
                            Name        = "Git branch or commit to be retrieved";
                            Description = "Git branch or commit to be retrieved";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--git-url");
                            Name        = "Git URL of the package";
                            Description = "Git URL of the package";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--hosted-url");
                            Name        = "URL of package host server";
                            Description = "URL of package host server";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-precompile");
                            Name        = "Do not build executables in immediate dependencies.";
                            Description = "Do not build executables in immediate dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--path");
                            Name        = "Local path";
                            Description = "Local path";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--precompile");
                            Name        = "Build executables in immediate dependencies.";
                            Description = "Build executables in immediate dependencies.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--sdk");
                            Name        = "SDK source for package";
                            Description = "SDK source for package";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("cache");
                    Name        = "cache";
                    Description = "Work with the system cache";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [CommandParameter]@{
                            Keys        = @("add");
                            Name        = "add";
                            Description = "Install a package";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--all");
                                    Name        = "Install all matching versions.";
                                    Description = "Install all matching versions.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--version", "-v");
                                    Name        = "Version constraint.";
                                    Description = "Version constraint.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("clean");
                            Name        = "clean";
                            Description = "Clears the global PUB_CACHE";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--force", "-f");
                                    Name        = "Don't ask for confirmation.";
                                    Description = "Don't ask for confirmation.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("repair");
                            Name        = "repair";
                            Description = "Reinstall cached packages";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("deps");
                    Name        = "deps";
                    Description = "Print package dependencies";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--dev");
                            Name        = "Include dev dependencies.";
                            Description = "Include dev dependencies.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>";
                            Description = "Run this in the directory<dir>";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--executables");
                            Name        = "List all available executables.";
                            Description = "List all available executables.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output dependency information in a json format.";
                            Description = "Output dependency information in a json format.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-dev");
                            Name        = "Do not include dev dependencies.";
                            Description = "Do not include dev dependencies.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--style", "-s");
                            Name        = "How output should be displayed.";
                            Description = "How output should be displayed.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("downgrade");
                    Name        = "downgrade";
                    Description = "Downgrade the current package's dependencies to oldest versions";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>.";
                            Description = "Run this in the directory<dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change any.";
                            Description = "Report what dependencies would change but don't change any.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Get packages in a Flutter project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("global");
                    Name        = "global";
                    Description = "Work with global packages";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [CommandParameter]@{
                            Keys        = @("activate");
                            Name        = "activate";
                            Description = "Make a package's executables globally available";
                            Parameters  = @(
                                [ValueParameter]@{
                                    Keys        = @("--executable", "-x");
                                    Name        = "Executable(s) to place on PATH.";
                                    Description = "Executable(s) to place on PATH.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--hosted-url", "-u");
                                    Name        = "A custom pub server URL for the package.";
                                    Description = "A custom pub server URL for the package.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-executables");
                                    Name        = "Do not put executables on PATH.";
                                    Description = "Do not put executables on PATH.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--overwrite");
                                    Name        = "Overwrite executables from other packages with the same";
                                    Description = "Overwrite executables from other packages with the same";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--source", "-s");
                                    Name        = "The source used to find the package.";
                                    Description = "The source used to find the package.";
                                    # Source = $?? # todo: Fix or remove this!
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("deactivate");
                            Name        = "deactivate";
                            Description = "Remove a previously activated package";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("list");
                            Name        = "list";
                            Description = "List globally activated packages";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                }
                            )
                        },
                        [CommandParameter]@{
                            Keys        = @("run");
                            Name        = "run";
                            Description = "Run an executable from a globally activated package";
                            Parameters  = @(
                                [FlagParameter]@{
                                    Keys        = @("--enable-asserts");
                                    Name        = "Enable assert statements.";
                                    Description = "Enable assert statements.";
                                },
                                [ValueParameter]@{
                                    Keys        = @("--enable-experiment");
                                    Name        = "Runs the executable in a VM with the given experiments enabled.";
                                    Description = "Runs the executable in a VM with the given experiments enabled.";
                                    # Source = $?? # todo: Fix or remove this!
                                },
                                [FlagParameter]@{
                                    Keys        = @("--help", "-h");
                                    Name        = "Print this usage information.";
                                    Description = "Print this usage information.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-enable-asserts");
                                    Name        = "Disable assert statements.";
                                    Description = "Disable assert statements.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--no-sound-null-safety");
                                    Name        = "Do not override the default null safety execution mode.";
                                    Description = "Do not override the default null safety execution mode.";
                                },
                                [FlagParameter]@{
                                    Keys        = @("--sound-null-safety");
                                    Name        = "Override the default null safety execution mode.";
                                    Description = "Override the default null safety execution mode.";
                                }
                            )
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("login");
                    Name        = "login";
                    Description = "Log into pub.dev";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("logout");
                    Name        = "logout";
                    Description = "Log out of pub.dev";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("outdated");
                    Name        = "outdated";
                    Description = "Analyze your dependencies to find which ones can be upgraded";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--color");
                            Name        = "Color the output.";
                            Description = "Color the output.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--dependency-overrides");
                            Name        = "Show resolutions with ``dependency_overrides``.";
                            Description = "Show resolutions with ``dependency_overrides``.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--dev-dependencies");
                            Name        = "Take dev dependencies into account.";
                            Description = "Take dev dependencies into account.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory <dir>.";
                            Description = "Run this in the directory <dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "Output the results using a json format.";
                            Description = "Output the results using a json format.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--mode");
                            Name        = "Highlight versions with PROPERTY.";
                            Description = "Highlight versions with PROPERTY.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-color");
                            Name        = "Do not color the output.";
                            Description = "Do not color the output.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-dependency-overrides");
                            Name        = "Do not show resolutions with ``dependency_overrides``.";
                            Description = "Do not show resolutions with ``dependency_overrides``.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-dev-dependencies");
                            Name        = "Do not take dev dependencies into account.";
                            Description = "Do not take dev dependencies into account.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-show-all");
                            Name        = "Do not include dependencies that are already";
                            Description = "Do not include dependencies that are already";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-transitive");
                            Name        = "Do not show transitive dependencies.";
                            Description = "Do not show transitive dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--show-all");
                            Name        = "Include dependencies that are already";
                            Description = "Include dependencies that are already";
                        },
                        [FlagParameter]@{
                            Keys        = @("--transitive");
                            Name        = "Show transitive dependencies.";
                            Description = "Show transitive dependencies.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pub");
                    Name        = "pub";
                    Description = "Pass the remaining arguments to Dart's `"pub`" tool";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("publish");
                    Name        = "publish";
                    Description = "Publish the current package to pub.dartlang.org";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>.";
                            Description = "Run this in the directory<dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Validate but do not publish the package.";
                            Description = "Validate but do not publish the package.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Publish without confirmation if there are no errors.";
                            Description = "Publish without confirmation if there are no errors.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("remove");
                    Name        = "remove";
                    Description = "Removes a dependency from the current package";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>.";
                            Description = "Run this in the directory<dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change any.";
                            Description = "Report what dependencies would change but don't change any.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-precompile");
                            Name        = "Do not precompile executables in immediate dependencies.";
                            Description = "Do not precompile executables in immediate dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--precompile");
                            Name        = "Precompile executables in immediate dependencies.";
                            Description = "Precompile executables in immediate dependencies.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("run");
                    Name        = "run";
                    Description = "Run an executable from a package";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>.";
                            Description = "Run this in the directory<dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--enable-asserts");
                            Name        = "Enable assert statements.";
                            Description = "Enable assert statements.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--enable-experiment");
                            Name        = "Runs the executable in a VM with the given experiments enabled.";
                            Description = "Runs the executable in a VM with the given experiments enabled.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-enable-asserts");
                            Name        = "Disable assert statements.";
                            Description = "Disable assert statements.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-sound-null-safety");
                            Name        = "Do not override the default null safety execution mode.";
                            Description = "Do not override the default null safety execution mode.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--sound-null-safety");
                            Name        = "Override the default null safety execution mode.";
                            Description = "Override the default null safety execution mode.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("test");
                    Name        = "test";
                    Description = "Run the test package";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("upgrade");
                    Name        = "upgrade";
                    Description = "Upgrade the current package's dependencies to latest versions";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>.";
                            Description = "Run this in the directory<dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--dry-run", "-n");
                            Name        = "Report what dependencies would change but don't change any.";
                            Description = "Report what dependencies would change but don't change any.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--major-versions");
                            Name        = "Upgrades packages to their latest resolvable versions, and updates pubspec.yaml.";
                            Description = "Upgrades packages to their latest resolvable versions, and updates pubspec.yaml.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-offline");
                            Name        = "Do not use cached packages instead of accessing the network.";
                            Description = "Do not use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--no-precompile");
                            Name        = "Do not precompile executables in immediate dependencies.";
                            Description = "Do not precompile executables in immediate dependencies.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null-safety");
                            Name        = "Upgrade constraints in pubspec.yaml to null-safety versions";
                            Description = "Upgrade constraints in pubspec.yaml to null-safety versions";
                        },
                        [FlagParameter]@{
                            Keys        = @("--offline");
                            Name        = "Use cached packages instead of accessing the network.";
                            Description = "Use cached packages instead of accessing the network.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--precompile");
                            Name        = "Precompile executables in immediate dependencies.";
                            Description = "Precompile executables in immediate dependencies.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("uploader");
                    Name        = "uploader";
                    Description = "Manage uploaders for a package on pub.dartlang.org";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--directory", "-C");
                            Name        = "Run this in the directory<dir>.";
                            Description = "Run this in the directory<dir>.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--package");
                            Name        = "The package whose uploaders will be modified.";
                            Description = "The package whose uploaders will be modified.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("version");
                    Name        = "version";
                    Description = "Print pub version";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--help", "-h");
                            Name        = "Print this usage information.";
                            Description = "Print this usage information.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run your Flutter app on an attached device";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--android-project-arg", "-P");
                    Name        = "Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag.";
                    Description = "Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--await-first-frame-when-tracing");
                    Name        = "Wait for the first frame when tracing startup.";
                    Description = "Wait for the first frame when tracing startup.";
                },
                [FlagParameter]@{
                    Keys        = @("--build");
                    Name        = "If necessary, build the app before running.";
                    Description = "If necessary, build the app before running.";
                },
                [FlagParameter]@{
                    Keys        = @("--cache-sksl");
                    Name        = "Cache the shader in the SkSL format instead of in binary or GLSL formats.";
                    Description = "Cache the shader in the SkSL format instead of in binary or GLSL formats.";
                },
                [ValueParameter]@{
                    Keys        = @("--dart-define");
                    Name        = "Additional key-value pairs that will be available as constants.";
                    Description = "Additional key-value pairs that will be available as constants.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dart-entrypoint-args", "-a");
                    Name        = "Pass a list of arguments to the Dart entrypoint at application startup.";
                    Description = "Pass a list of arguments to the Dart entrypoint at application startup.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dds-port");
                    Name        = "When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.";
                    Description = "When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--debug");
                    Name        = "Build a debug version of your app (default mode).";
                    Description = "Build a debug version of your app (default mode).";
                },
                [ValueParameter]@{
                    Keys        = @("--device-timeout");
                    Name        = "Time in seconds to wait for devices to attach.";
                    Description = "Time in seconds to wait for devices to attach.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-user");
                    Name        = "Identifier number for a user or work profile on Android only.";
                    Description = "Identifier number for a user or work profile on Android only.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-vmservice-port");
                    Name        = "Look for vmservice connections only from the specified port.";
                    Description = "Look for vmservice connections only from the specified port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dump-skp-on-shader-compilation");
                    Name        = "Automatically dump the skp that triggers new shader compilations.";
                    Description = "Automatically dump the skp that triggers new shader compilations.";
                },
                [FlagParameter]@{
                    Keys        = @("--enable-software-rendering");
                    Name        = "Enable rendering using the Skia software backend.";
                    Description = "Enable rendering using the Skia software backend.";
                },
                [FlagParameter]@{
                    Keys        = @("--endless-trace-buffer");
                    Name        = "Enable tracing to an infinite buffer, instead of a ring buffer.";
                    Description = "Enable tracing to an infinite buffer, instead of a ring buffer.";
                },
                [FlagParameter]@{
                    Keys        = @("--flavor");
                    Name        = "Build a custom app flavor as defined by platform-specific build setup.";
                    Description = "Build a custom app flavor as defined by platform-specific build setup.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--host-vmservice-port");
                    Name        = "When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.";
                    Description = "When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--hot");
                    Name        = "Run with support for hot reloading.";
                    Description = "Run with support for hot reloading.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-await-first-frame-when-tracing");
                    Name        = "Do not wait for the first frame when tracing startup.";
                    Description = "Do not wait for the first frame when tracing startup.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-build");
                    Name        = "If necessary, do not build the app before running.";
                    Description = "If necessary, do not build the app before running.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-hot");
                    Name        = "Run without support for hot reloading.";
                    Description = "Run without support for hot reloading.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-null-assertions");
                    Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                    Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pub");
                    Name        = "Do not run `"flutter pub get`" before executing this command.";
                    Description = "Do not run `"flutter pub get`" before executing this command.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-start-paused");
                    Name        = "Do not start in a paused mode and wait for a debugger to connect.";
                    Description = "Do not start in a paused mode and wait for a debugger to connect.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-track-widget-creation");
                    Name        = "Do not track widget creation locations.";
                    Description = "Do not track widget creation locations.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-use-test-fonts");
                    Name        = "Disable the `"Ahem`" font.";
                    Description = "Disable the `"Ahem`" font.";
                },
                [FlagParameter]@{
                    Keys        = @("--null-assertions");
                    Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                    Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                },
                [ValueParameter]@{
                    Keys        = @("--pid-file");
                    Name        = "Specify a file to write the process ID to.";
                    Description = "Specify a file to write the process ID to.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--profile");
                    Name        = "Build a version of your app specialized for performance profiling.";
                    Description = "Build a version of your app specialized for performance profiling.";
                },
                [FlagParameter]@{
                    Keys        = @("--pub");
                    Name        = "Run `"flutter pub get`" before executing this command.";
                    Description = "Run `"flutter pub get`" before executing this command.";
                },
                [FlagParameter]@{
                    Keys        = @("--purge-persistent-cache");
                    Name        = "Removes all existing persistent caches.";
                    Description = "Removes all existing persistent caches.";
                },
                [FlagParameter]@{
                    Keys        = @("--release");
                    Name        = "Build a release version of your app.";
                    Description = "Build a release version of your app.";
                },
                [FlagParameter]@{
                    Keys        = @("--route");
                    Name        = "Which route to load when running the app.";
                    Description = "Which route to load when running the app.";
                },
                [FlagParameter]@{
                    Keys        = @("--skia-deterministic-rendering");
                    Name        = "Provide completely deterministic (i.e. reproducible) Skia rendering.";
                    Description = "Provide completely deterministic (i.e. reproducible) Skia rendering.";
                },
                [FlagParameter]@{
                    Keys        = @("--start-paused");
                    Name        = "Start in a paused mode and wait for a debugger to connect.";
                    Description = "Start in a paused mode and wait for a debugger to connect.";
                },
                [ValueParameter]@{
                    Keys        = @("--target", "-t");
                    Name        = "The main entry-point file of the application, as run on the device.";
                    Description = "The main entry-point file of the application, as run on the device.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--trace-skia");
                    Name        = "Enable tracing of Skia code.";
                    Description = "Enable tracing of Skia code.";
                },
                [FlagParameter]@{
                    Keys        = @("--trace-startup");
                    Name        = "Trace application startup, then exit, saving the trace to a file.";
                    Description = "Trace application startup, then exit, saving the trace to a file.";
                },
                [FlagParameter]@{
                    Keys        = @("--trace-systrace");
                    Name        = "Enable tracing to the system tracer.";
                    Description = "Enable tracing to the system tracer.";
                },
                [FlagParameter]@{
                    Keys        = @("--track-widget-creation");
                    Name        = "Track widget creation locations.";
                    Description = "Track widget creation locations.";
                },
                [ValueParameter]@{
                    Keys        = @("--use-application-binary");
                    Name        = "Specify a pre-built application binary to use when running.";
                    Description = "Specify a pre-built application binary to use when running.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--use-test-fonts");
                    Name        = "Enable the `"Ahem`" font.";
                    Description = "Enable the `"Ahem`" font.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose-system-logs");
                    Name        = "Include verbose logging from the Flutter engine.";
                    Description = "Include verbose logging from the Flutter engine.";
                },
                [FlagParameter]@{
                    Keys        = @("--web-renderer");
                    Name        = "The renderer implementation to use when building for the web.";
                    Description = "The renderer implementation to use when building for the web.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("screenshot");
            Name        = "screenshot";
            Description = "Take a screenshot from a connected device";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--device-timeout");
                    Name        = "Time in seconds to wait for devices to attach.";
                    Description = "Time in seconds to wait for devices to attach.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--observatory-url");
                    Name        = "The Observatory URL to which to connect.";
                    Description = "The Observatory URL to which to connect.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--out", "-o");
                    Name        = "Location to write the screenshot.";
                    Description = "Location to write the screenshot.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type");
                    Name        = "The type of screenshot to retrieve.";
                    Description = "The type of screenshot to retrieve.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("symbolize");
            Name        = "symbolize";
            Description = "Symbolize a stack trace from an AOT-compiled Flutter app";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--debug-info", "-d");
                    Name        = "A path to the symbols file generated with `"--split-debug-info`".";
                    Description = "A path to the symbols file generated with `"--split-debug-info`".";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--input", "-i");
                    Name        = "A file path containing a Dart stack trace.";
                    Description = "A file path containing a Dart stack trace.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "A file path for a symbolized stack trace to be written to.";
                    Description = "A file path for a symbolized stack trace to be written to.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "Run Flutter unit tests for the current project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--concurrency", "-j");
                    Name        = "The number of concurrent test processes to run.";
                    Description = "The number of concurrent test processes to run.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--coverage");
                    Name        = "Whether to collect coverage information.";
                    Description = "Whether to collect coverage information.";
                },
                [ValueParameter]@{
                    Keys        = @("--coverage-path");
                    Name        = "Where to store coverage information (if coverage is enabled).";
                    Description = "Where to store coverage information (if coverage is enabled).";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dart-define");
                    Name        = "Additional key-value pairs that will be available as constants.";
                    Description = "Additional key-value pairs that will be available as constants.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--dds-port");
                    Name        = "Dart Development Service (DDS) will be bound to the provided port.";
                    Description = "Dart Development Service (DDS) will be bound to the provided port.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--device-user");
                    Name        = "Identifier number for a user or work profile on Android only.";
                    Description = "Identifier number for a user or work profile on Android only.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--exclude-tags", "-x");
                    Name        = "Run only tests that do not have the specified tags.";
                    Description = "Run only tests that do not have the specified tags.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--merge-coverage");
                    Name        = "Whether to merge coverage data with `"coverage/lcov.base.info`".";
                    Description = "Whether to merge coverage data with `"coverage/lcov.base.info`".";
                },
                [ValueParameter]@{
                    Keys        = @("--name");
                    Name        = "A regular expression matching substrings of the names of tests to run.";
                    Description = "A regular expression matching substrings of the names of tests to run.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-null-assertions");
                    Name        = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                    Description = "Do not perform additional null assertions on the boundaries of migrated and un-migrated code.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-pub");
                    Name        = "Do not run `"flutter pub get`" before executing this command.";
                    Description = "Do not run `"flutter pub get`" before executing this command.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-run-skipped");
                    Name        = "Do not run skipped tests instead of skipping them.";
                    Description = "Do not run skipped tests instead of skipping them.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-test-assets");
                    Name        = "Do not build the assets bundle for testing.";
                    Description = "Do not build the assets bundle for testing.";
                },
                [FlagParameter]@{
                    Keys        = @("--no-track-widget-creation");
                    Name        = "Do not track widget creation locations.";
                    Description = "Do not track widget creation locations.";
                },
                [FlagParameter]@{
                    Keys        = @("--null-assertions");
                    Name        = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                    Description = "Perform additional null assertions on the boundaries of migrated and un-migrated code.";
                },
                [ValueParameter]@{
                    Keys        = @("--plain-name");
                    Name        = "A plain-text substring of the names of tests to run.";
                    Description = "A plain-text substring of the names of tests to run.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--pub");
                    Name        = "Run `"flutter pub get`" before executing this command.";
                    Description = "Run `"flutter pub get`" before executing this command.";
                },
                [ValueParameter]@{
                    Keys        = @("--reporter", "-r");
                    Name        = "Set how to print test results.";
                    Description = "Set how to print test results.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--run-skipped");
                    Name        = "Run skipped tests instead of skipping them.";
                    Description = "Run skipped tests instead of skipping them.";
                },
                [ValueParameter]@{
                    Keys        = @("--shard-index");
                    Name        = "Tests can be sharded with the `"--total-shards`" and `"--shard-index`" arguments.";
                    Description = "Tests can be sharded with the `"--total-shards`" and `"--shard-index`" arguments.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--start-paused");
                    Name        = "Start in a paused mode and wait for a debugger to connect.";
                    Description = "Start in a paused mode and wait for a debugger to connect.";
                },
                [FlagParameter]@{
                    Keys        = @("--tags", "-t");
                    Name        = "Run only tests associated with the specified tags.";
                    Description = "Run only tests associated with the specified tags.";
                },
                [FlagParameter]@{
                    Keys        = @("--test-assets");
                    Name        = "Build the assets bundle for testing.";
                    Description = "Build the assets bundle for testing.";
                },
                [FlagParameter]@{
                    Keys        = @("--test-randomize-ordering-seed");
                    Name        = "The seed to randomize the execution order of test cases within test files.";
                    Description = "The seed to randomize the execution order of test cases within test files.";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "The default test timeout, specified either in seconds.";
                    Description = "The default test timeout, specified either in seconds.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--total-shards");
                    Name        = "Tests can be sharded with the `"--total-shards`" and `"--shard-index`" arguments.";
                    Description = "Tests can be sharded with the `"--total-shards`" and `"--shard-index`" arguments.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--track-widget-creation");
                    Name        = "Track widget creation locations.";
                    Description = "Track widget creation locations.";
                },
                [FlagParameter]@{
                    Keys        = @("--update-goldens");
                    Name        = "Whether `"matchesGoldenFile()`" calls within your test methods should update the golden files rather than test for an existing match.";
                    Description = "Whether `"matchesGoldenFile()`" calls within your test methods should update the golden files rather than test for an existing match.";
                },
                [FlagParameter]@{
                    Keys        = @("--web-renderer");
                    Name        = "The renderer implementation to use when building for the web.";
                    Description = "The renderer implementation to use when building for the web.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("upgrade");
            Name        = "upgrade";
            Description = "Upgrade your copy of Flutter";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Force upgrade the flutter branch, potentially discarding local changes.";
                    Description = "Force upgrade the flutter branch, potentially discarding local changes.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Print this usage information.";
                    Description = "Print this usage information.";
                },
                [FlagParameter]@{
                    Keys        = @("--verify-only");
                    Name        = "Checks for any new flutter updates, without actually fetching them.";
                    Description = "Checks for any new flutter updates, without actually fetching them.";
                }
            )
        }
    )
}
