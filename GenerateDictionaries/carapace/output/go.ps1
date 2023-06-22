# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://golang.org/";
    Keys        = @("go");
    Name        = "go";
    Description = "Go is a tool for managing Go source code";
    Parameters  = @(
        [CommandParameter]@{
            Keys        = @("bug");
            Name        = "bug";
            Description = "start a bug report";
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "compile packages and dependencies";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-a");
                    Name        = "force rebuilding of packages that are already up-to-date.";
                    Description = "force rebuilding of packages that are already up-to-date.";
                },
                [ValueParameter]@{
                    Keys        = @("--asmflags");
                    Name        = "arguments to pass on each go tool asm invocation";
                    Description = "arguments to pass on each go tool asm invocation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--buildmode");
                    Name        = "build mode to use";
                    Description = "build mode to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--compiler");
                    Name        = "name of compiler to use";
                    Description = "name of compiler to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gccgoflags");
                    Name        = "arguments to pass on each gccgo compiler/linker invocation";
                    Description = "arguments to pass on each gccgo compiler/linker invocation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--gcflags");
                    Name        = "arguments to pass on each go tool compile invocation.";
                    Description = "arguments to pass on each go tool compile invocation.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("-i");
                    Name        = "install the packages that are dependencies of the target";
                    Description = "install the packages that are dependencies of the target";
                },
                [ValueParameter]@{
                    Keys        = @("--installsuffix");
                    Name        = "a suffix to use in the name of the package installation directory";
                    Description = "a suffix to use in the name of the package installation directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ldflags");
                    Name        = "arguments to pass on each go tool link invocation";
                    Description = "arguments to pass on each go tool link invocation";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--linkshared");
                    Name        = "build code that will be linked against shared libraries";
                    Description = "build code that will be linked against shared libraries";
                },
                [ValueParameter]@{
                    Keys        = @("--mod");
                    Name        = "module download mode to use";
                    Description = "module download mode to use";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--modcacherw");
                    Name        = "leave newly-created directories in the module cache read-write";
                    Description = "leave newly-created directories in the module cache read-write";
                },
                [ValueParameter]@{
                    Keys        = @("--modfile");
                    Name        = "read and possibly write an alternate go.mod file";
                    Description = "read and possibly write an alternate go.mod file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--msan");
                    Name        = "enable interoperation with memory sanitizer";
                    Description = "enable interoperation with memory sanitizer";
                },
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "print the commands but do not run them.";
                    Description = "print the commands but do not run them.";
                },
                [FlagParameter]@{
                    Keys        = @("-o");
                    Name        = "set output file or directory";
                    Description = "set output file or directory";
                },
                [ValueParameter]@{
                    Keys        = @("-p");
                    Name        = "the number of programs to run in parallel";
                    Description = "the number of programs to run in parallel";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--pkgdir");
                    Name        = "install and load all packages from dir";
                    Description = "install and load all packages from dir";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--race");
                    Name        = "enable data race detection";
                    Description = "enable data race detection";
                },
                [ValueParameter]@{
                    Keys        = @("--tags");
                    Name        = "a comma-separated list of build tags to consider satisfied during the";
                    Description = "a comma-separated list of build tags to consider satisfied during the";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--toolexec");
                    Name        = "a program to use to invoke toolchain programs like vet and asm";
                    Description = "a program to use to invoke toolchain programs like vet and asm";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--trimpath");
                    Name        = "remove all file system paths from the resulting executable";
                    Description = "remove all file system paths from the resulting executable";
                },
                [FlagParameter]@{
                    Keys        = @("-v");
                    Name        = "print the names of packages as they are compiled";
                    Description = "print the names of packages as they are compiled";
                },
                [FlagParameter]@{
                    Keys        = @("--work");
                    Name        = "print the name of the temporary work directory";
                    Description = "print the name of the temporary work directory";
                },
                [FlagParameter]@{
                    Keys        = @("-x");
                    Name        = "print the commands.";
                    Description = "print the commands.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "remove object files and cached files";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--cache");
                    Name        = "remove the entire go build cache";
                    Description = "remove the entire go build cache";
                },
                [FlagParameter]@{
                    Keys        = @("-i");
                    Name        = "remove the corresponding installed archive or binary";
                    Description = "remove the corresponding installed archive or binary";
                },
                [FlagParameter]@{
                    Keys        = @("--modcache");
                    Name        = "remove the entire module download cache";
                    Description = "remove the entire module download cache";
                },
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "only print the remove commands that would be executed";
                    Description = "only print the remove commands that would be executed";
                },
                [FlagParameter]@{
                    Keys        = @("-r");
                    Name        = "apply recursively to all the dependencies";
                    Description = "apply recursively to all the dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--testcache");
                    Name        = "expire all test results in the go build cache";
                    Description = "expire all test results in the go build cache";
                },
                [FlagParameter]@{
                    Keys        = @("-x");
                    Name        = "print remove commands as being executed";
                    Description = "print remove commands as being executed";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("doc");
            Name        = "doc";
            Description = "show documentation for package or symbol";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all");
                    Name        = "Show all the documentation for the package";
                    Description = "Show all the documentation for the package";
                },
                [FlagParameter]@{
                    Keys        = @("--cmd");
                    Name        = "Treat a command like a regular package";
                    Description = "Treat a command like a regular package";
                },
                [FlagParameter]@{
                    Keys        = @("--short");
                    Name        = "One-line representation for each symbol";
                    Description = "One-line representation for each symbol";
                },
                [FlagParameter]@{
                    Keys        = @("--src");
                    Name        = "Show the full source code for the symbol";
                    Description = "Show the full source code for the symbol";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("env");
            Name        = "env";
            Description = "print Go environment information";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "print the environment in JSON format";
                    Description = "print the environment in JSON format";
                },
                [FlagParameter]@{
                    Keys        = @("-u");
                    Name        = "unsets the default setting for the named environment variables";
                    Description = "unsets the default setting for the named environment variables";
                },
                [ValueParameter]@{
                    Keys        = @("-w");
                    Name        = "changes the default settings of the named environment variables";
                    Description = "changes the default settings of the named environment variables";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fix");
            Name        = "fix";
            Description = "update packages to use new APIs";
        },
        [CommandParameter]@{
            Keys        = @("fmt");
            Name        = "fmt";
            Description = "gofmt (reformat) package sources";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--mod");
                    Name        = "set module download mode";
                    Description = "set module download mode";
                },
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "print commands that would be executed";
                    Description = "print commands that would be executed";
                },
                [FlagParameter]@{
                    Keys        = @("-x");
                    Name        = "print commands as they are executed";
                    Description = "print commands as they are executed";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("generate");
            Name        = "generate";
            Description = "generate Go files by processing source";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "print commands that would be executed";
                    Description = "print commands that would be executed";
                },
                [ValueParameter]@{
                    Keys        = @("--run");
                    Name        = "specifies a regular expression to select matching directives";
                    Description = "specifies a regular expression to select matching directives";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("-v");
                    Name        = "print the names of packages and files as they are processed";
                    Description = "print the names of packages and files as they are processed";
                },
                [FlagParameter]@{
                    Keys        = @("-x");
                    Name        = "print commands as they are executed";
                    Description = "print commands as they are executed";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("get");
            Name        = "get";
            Description = "add dependencies to current module and install them";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-d");
                    Name        = "only download the source code needed to build";
                    Description = "only download the source code needed to build";
                },
                [FlagParameter]@{
                    Keys        = @("--insecure");
                    Name        = "permit using insecure schemes such as HTTP";
                    Description = "permit using insecure schemes such as HTTP";
                },
                [FlagParameter]@{
                    Keys        = @("-t");
                    Name        = "consider modules needed to build tests";
                    Description = "consider modules needed to build tests";
                },
                [FlagParameter]@{
                    Keys        = @("-u");
                    Name        = "update modules providing dependencies";
                    Description = "update modules providing dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("-v");
                    Name        = "verbose output";
                    Description = "verbose output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "compile and install packages and dependencies";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-i");
                    Name        = "installs dependencies as well";
                    Description = "installs dependencies as well";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "list packages or modules";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--compiled");
                    Name        = "set CompiledGoFiles to the Go source files presented to the compiler";
                    Description = "set CompiledGoFiles to the Go source files presented to the compiler";
                },
                [FlagParameter]@{
                    Keys        = @("--deps");
                    Name        = "iterate over not just the named packages but also all their dependencies";
                    Description = "iterate over not just the named packages but also all their dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("-e");
                    Name        = "change the handling of erroneous packages";
                    Description = "change the handling of erroneous packages";
                },
                [FlagParameter]@{
                    Keys        = @("--export");
                    Name        = "set the Export field to the name of a file containing up-to-date export information";
                    Description = "set the Export field to the name of a file containing up-to-date export information";
                },
                [ValueParameter]@{
                    Keys        = @("-f");
                    Name        = "specify an alternate format for the list";
                    Description = "specify an alternate format for the list";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--find");
                    Name        = "identify the named packages but not resolve their dependencies";
                    Description = "identify the named packages but not resolve their dependencies";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "print package data in JSON format";
                    Description = "print package data in JSON format";
                },
                [FlagParameter]@{
                    Keys        = @("-m");
                    Name        = "list modules instead of packages";
                    Description = "list modules instead of packages";
                },
                [FlagParameter]@{
                    Keys        = @("--test");
                    Name        = "report not only the named packages but also their test binaries";
                    Description = "report not only the named packages but also their test binaries";
                },
                [FlagParameter]@{
                    Keys        = @("-u");
                    Name        = "add information about available upgrades";
                    Description = "add information about available upgrades";
                },
                [FlagParameter]@{
                    Keys        = @("--versions");
                    Name        = "set the Module's Versions field to list of all known versions";
                    Description = "set the Module's Versions field to list of all known versions";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("mod");
            Name        = "mod";
            Description = "module maintenance";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("download");
                    Name        = "download";
                    Description = "download modules to local cache";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "print a sequence of JSON objects";
                            Description = "print a sequence of JSON objects";
                        },
                        [FlagParameter]@{
                            Keys        = @("-x");
                            Name        = "print the commands download executes";
                            Description = "print the commands download executes";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("edit");
                    Name        = "edit";
                    Description = "edit go.mod from tools or scripts";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--dropexclude");
                            Name        = "drop an exclusion";
                            Description = "drop an exclusion";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--dropreplace");
                            Name        = "drop a module replacement";
                            Description = "drop a module replacement";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--droprequire");
                            Name        = "drop a requirement";
                            Description = "drop a requirement";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--exclude");
                            Name        = "add an exclusion";
                            Description = "add an exclusion";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--fmt");
                            Name        = "reformats the go.mod file without making other changes";
                            Description = "reformats the go.mod file without making other changes";
                        },
                        [ValueParameter]@{
                            Keys        = @("--go");
                            Name        = "set the expected Go language version";
                            Description = "set the expected Go language version";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--json");
                            Name        = "print the final go.mod file in JSON format instead instead of writing back";
                            Description = "print the final go.mod file in JSON format instead instead of writing back";
                        },
                        [ValueParameter]@{
                            Keys        = @("--module");
                            Name        = "changes the module's path";
                            Description = "changes the module's path";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--print");
                            Name        = "print the final go.mod in its text format instead of writing back";
                            Description = "print the final go.mod in its text format instead of writing back";
                        },
                        [ValueParameter]@{
                            Keys        = @("--replace");
                            Name        = "add a module replacement";
                            Description = "add a module replacement";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--require");
                            Name        = "add a requirement";
                            Description = "add a requirement";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("graph");
                    Name        = "graph";
                    Description = "print module requirement graph";
                },
                [CommandParameter]@{
                    Keys        = @("init");
                    Name        = "init";
                    Description = "initialize new module in current directory";
                },
                [CommandParameter]@{
                    Keys        = @("tidy");
                    Name        = "tidy";
                    Description = "add missing and remove unused modules";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("-v");
                            Name        = "print information about removed modules";
                            Description = "print information about removed modules";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("vendor");
                    Name        = "vendor";
                    Description = "make vendored copy of dependencies";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("-v");
                            Name        = "print the names of vendored modules and packages";
                            Description = "print the names of vendored modules and packages";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("verify");
                    Name        = "verify";
                    Description = "verify dependencies have expected content";
                },
                [CommandParameter]@{
                    Keys        = @("why");
                    Name        = "why";
                    Description = "explain why packages or modules are needed";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("-m");
                            Name        = "treat arguments as a list of modules";
                            Description = "treat arguments as a list of modules";
                        },
                        [FlagParameter]@{
                            Keys        = @("--vendor");
                            Name        = "exclude tests of dependencies";
                            Description = "exclude tests of dependencies";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "compile and run Go program";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--exec");
                    Name        = "invoke the binary using xprog";
                    Description = "invoke the binary using xprog";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "test packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--args");
                    Name        = "pass the remainder of the command line to the test binary";
                    Description = "pass the remainder of the command line to the test binary";
                },
                [ValueParameter]@{
                    Keys        = @("--bench");
                    Name        = "run only those benchmarks matching a regular expression";
                    Description = "run only those benchmarks matching a regular expression";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--benchtime");
                    Name        = "Run enough iterations of each benchmark to take given duration";
                    Description = "Run enough iterations of each benchmark to take given duration";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("-c");
                    Name        = "compile the test binary to pkg.test but do not run it";
                    Description = "compile the test binary to pkg.test but do not run it";
                },
                [ValueParameter]@{
                    Keys        = @("--count");
                    Name        = "run each test and benchmark n times";
                    Description = "run each test and benchmark n times";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cover");
                    Name        = "enable coverage analysis";
                    Description = "enable coverage analysis";
                },
                [ValueParameter]@{
                    Keys        = @("--covermode");
                    Name        = "set the mode for coverage analysis for the package";
                    Description = "set the mode for coverage analysis for the package";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--coverpkg");
                    Name        = "apply coverage analysis in each test to packages matching the patterns";
                    Description = "apply coverage analysis in each test to packages matching the patterns";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cpu");
                    Name        = "specify a list of GOMAXPROCS values for which the tests or benchmarks should be executed";
                    Description = "specify a list of GOMAXPROCS values for which the tests or benchmarks should be executed";
                },
                [ValueParameter]@{
                    Keys        = @("--exec");
                    Name        = "run the test binary using xprog";
                    Description = "run the test binary using xprog";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--failfast");
                    Name        = "Do not start new tests after the first test failure";
                    Description = "Do not start new tests after the first test failure";
                },
                [FlagParameter]@{
                    Keys        = @("-i");
                    Name        = "install packages that are dependencies of the test";
                    Description = "install packages that are dependencies of the test";
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "convert test output to JSON";
                    Description = "convert test output to JSON";
                },
                [ValueParameter]@{
                    Keys        = @("--list");
                    Name        = "list tests, benchmarks, or examples matching the regular expression";
                    Description = "list tests, benchmarks, or examples matching the regular expression";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("-o");
                    Name        = "compile the test binary to the named file";
                    Description = "compile the test binary to the named file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel");
                    Name        = "Allow parallel execution of test functions that call t.Paralle";
                    Description = "Allow parallel execution of test functions that call t.Paralle";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--run");
                    Name        = "run only those tests and examples matching the regular expression";
                    Description = "run only those tests and examples matching the regular expression";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--short");
                    Name        = "tell long-running tests to shorten their run time";
                    Description = "tell long-running tests to shorten their run time";
                },
                [ValueParameter]@{
                    Keys        = @("--timeout");
                    Name        = "if a test binary runs longer than duration d, panic";
                    Description = "if a test binary runs longer than duration d, panic";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--v");
                    Name        = "verbose output";
                    Description = "verbose output";
                },
                [ValueParameter]@{
                    Keys        = @("--vet");
                    Name        = "configure the invocation of `"go vet`" during `"go test`" to use the comma-separated list of vet check";
                    Description = "configure the invocation of `"go vet`" during `"go test`" to use the comma-separated list of vet check";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("tool");
            Name        = "tool";
            Description = "run specified go tool";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "only print the command that would be executed";
                    Description = "only print the command that would be executed";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "print Go version";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-m");
                    Name        = "print each executable's embedded module version information";
                    Description = "print each executable's embedded module version information";
                },
                [FlagParameter]@{
                    Keys        = @("-v");
                    Name        = "report unrecognized files";
                    Description = "report unrecognized files";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("vet");
            Name        = "vet";
            Description = "report likely mistakes in packages";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "print commands that would be executed";
                    Description = "print commands that would be executed";
                },
                [FlagParameter]@{
                    Keys        = @("-x");
                    Name        = "print commands as they are executed";
                    Description = "print commands as they are executed";
                }
            )
        }
    )
}
