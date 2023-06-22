# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://deno.land/";
    Keys        = @("deno");
    Name        = "deno";
    Description = "A modern JavaScript and TypeScript runtime";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [ValueParameter]@{
            Keys        = @("--log-level", "-L");
            Name        = "Set log level [possible values: debug, info]";
            Description = "Set log level [possible values: debug, info]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Suppress diagnostic output";
            Description = "Suppress diagnostic output";
        },
        [FlagParameter]@{
            Keys        = @("--unstable");
            Name        = "Enable unstable features and APIs";
            Description = "Enable unstable features and APIs";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Prints version information";
            Description = "Prints version information";
        },
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("bundle");
            Name        = "bundle";
            Description = "Bundle module and dependencies into single file";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Check the specified lock file";
                    Description = "Check the specified lock file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lock-write");
                    Name        = "Write lock file (use with --lock)";
                    Description = "Write lock file (use with --lock)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-check");
                    Name        = "Skip type checking modules";
                    Description = "Skip type checking modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-remote");
                    Name        = "Do not resolve remote modules";
                    Description = "Do not resolve remote modules";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--watch");
                    Name        = "UNSTABLE: Watch for file changes and restart process automatically";
                    Description = "UNSTABLE: Watch for file changes and restart process automatically";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cache");
            Name        = "cache";
            Description = "Cache the dependencies";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Check the specified lock file";
                    Description = "Check the specified lock file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lock-write");
                    Name        = "Write lock file (use with --lock)";
                    Description = "Write lock file (use with --lock)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-check");
                    Name        = "Skip type checking modules";
                    Description = "Skip type checking modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-remote");
                    Name        = "Do not resolve remote modules";
                    Description = "Do not resolve remote modules";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("compile");
            Name        = "compile";
            Description = "Compile the script into a self contained executable";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-all", "-A");
                    Name        = "Allow all permissions";
                    Description = "Allow all permissions";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-env");
                    Name        = "Allow environment access";
                    Description = "Allow environment access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-ffi");
                    Name        = "Allow loading dynamic libraries";
                    Description = "Allow loading dynamic libraries";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--allow-hrtime");
                    Name        = "Allow high resolution time measurement";
                    Description = "Allow high resolution time measurement";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-net");
                    Name        = "Allow network access";
                    Description = "Allow network access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-read");
                    Name        = "Allow file system read access";
                    Description = "Allow file system read access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-run");
                    Name        = "Allow running subprocesses";
                    Description = "Allow running subprocesses";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-write");
                    Name        = "Allow file system write access";
                    Description = "Allow file system write access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cached-only");
                    Name        = "Require that remote dependencies are already cached";
                    Description = "Require that remote dependencies are already cached";
                },
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--location");
                    Name        = "Value of 'globalThis.location' used by some web APIs";
                    Description = "Value of 'globalThis.location' used by some web APIs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Check the specified lock file";
                    Description = "Check the specified lock file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lock-write");
                    Name        = "Write lock file (use with --lock)";
                    Description = "Write lock file (use with --lock)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-check");
                    Name        = "Skip type checking modules";
                    Description = "Skip type checking modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-remote");
                    Name        = "Do not resolve remote modules";
                    Description = "Do not resolve remote modules";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "Output file (defaults to `$PWD/<inferred-name>)";
                    Description = "Output file (defaults to `$PWD/<inferred-name>)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--prompt");
                    Name        = "Fallback to prompt if required permission wasn't passed";
                    Description = "Fallback to prompt if required permission wasn't passed";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--seed");
                    Name        = "Seed Math.random()";
                    Description = "Seed Math.random()";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "Target OS architecture [possible values: x86_64-unknown-linux-gnu, x86_64-pc-windows-msvc, x86_64-apple-darwin, aarch64-apple-darwin]";
                    Description = "Target OS architecture [possible values: x86_64-unknown-linux-gnu, x86_64-pc-windows-msvc, x86_64-apple-darwin, aarch64-apple-darwin]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--unsafely-ignore-certificate-errors");
                    Name        = "DANGER: Disables verification of TLS certificates";
                    Description = "DANGER: Disables verification of TLS certificates";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--v8-flags");
                    Name        = "Set V8 command line options (for help: --v8-flags=--help";
                    Description = "Set V8 command line options (for help: --v8-flags=--help";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("completions");
            Name        = "completions";
            Description = "Generate shell completions";
        },
        [CommandParameter]@{
            Keys        = @("coverage");
            Name        = "coverage";
            Description = "Print coverage reports";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--exclude");
                    Name        = "Exclude source files from the report";
                    Description = "Exclude source files from the report";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ignore");
                    Name        = "Ignore coverage files";
                    Description = "Ignore coverage files";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--include");
                    Name        = "Include source files in the report [default: ^file:]";
                    Description = "Include source files in the report [default: ^file:]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lcov");
                    Name        = "Output coverage report in lcov format";
                    Description = "Output coverage report in lcov format";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("doc");
            Name        = "doc";
            Description = "Show documentation for a modul";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Output documentation in JSON format";
                    Description = "Output documentation in JSON format";
                },
                [FlagParameter]@{
                    Keys        = @("--private");
                    Name        = "Output private documentation";
                    Description = "Output private documentation";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("eval");
            Name        = "eval";
            Description = "Eval script";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--cached-only");
                    Name        = "Require that remote dependencies are already cached";
                    Description = "Require that remote dependencies are already cached";
                },
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ext");
                    Name        = "Set standard input (stdin) content type [default: js]  [possible values: ts, tsx, js, jsx]";
                    Description = "Set standard input (stdin) content type [default: js]  [possible values: ts, tsx, js, jsx]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect");
                    Name        = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    Description = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect-brk");
                    Name        = "Activate inspector on host:port and break at start of user script";
                    Description = "Activate inspector on host:port and break at start of user script";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--location");
                    Name        = "Value of 'globalThis.location' used by some web APIs";
                    Description = "Value of 'globalThis.location' used by some web APIs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Check the specified lock file";
                    Description = "Check the specified lock file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lock-write");
                    Name        = "Write lock file (use with --lock)";
                    Description = "Write lock file (use with --lock)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-check");
                    Name        = "Skip type checking modules";
                    Description = "Skip type checking modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-remote");
                    Name        = "Do not resolve remote modules";
                    Description = "Do not resolve remote modules";
                },
                [FlagParameter]@{
                    Keys        = @("--print", "-p");
                    Name        = "print result to stdout";
                    Description = "print result to stdout";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--seed");
                    Name        = "Seed Math.random()";
                    Description = "Seed Math.random()";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("fmt");
            Name        = "fmt";
            Description = "Format source files";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--check");
                    Name        = "Check if the source files are formatted";
                    Description = "Check if the source files are formatted";
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ext");
                    Name        = "Set standard input (stdin) content type [default: ts]  [possible values: ts, tsx, js, jsx, md, json, jsonc]";
                    Description = "Set standard input (stdin) content type [default: ts]  [possible values: ts, tsx, js, jsx, md, json, jsonc]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ignore");
                    Name        = "Ignore formatting particular source files";
                    Description = "Ignore formatting particular source files";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--options-indent-width");
                    Name        = "Define indentation width. Defaults to 2.";
                    Description = "Define indentation width. Defaults to 2.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--options-line-width");
                    Name        = "Define maximum line width. Defaults to 80.";
                    Description = "Define maximum line width. Defaults to 80.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--options-prose-wrap");
                    Name        = "Define how prose should be wrapped. Defaults to always. [possible values: always, never, preserve]";
                    Description = "Define how prose should be wrapped. Defaults to always. [possible values: always, never, preserve]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--options-single-quote");
                    Name        = "Use single quotes. Defaults to false.";
                    Description = "Use single quotes. Defaults to false.";
                },
                [FlagParameter]@{
                    Keys        = @("--options-use-tabs");
                    Name        = "Use tabs instead of spaces for indentation. Defaults to false.";
                    Description = "Use tabs instead of spaces for indentation. Defaults to false.";
                },
                [FlagParameter]@{
                    Keys        = @("--watch");
                    Name        = "UNSTABLE: Watch for file changes and restart process automatically";
                    Description = "UNSTABLE: Watch for file changes and restart process automatically";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Prints this message or the help of the given subcommand(s)";
        },
        [CommandParameter]@{
            Keys        = @("info");
            Name        = "info";
            Description = "Show info about cache or info related to source file";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "UNSTABLE: Outputs the information in JSON format";
                    Description = "UNSTABLE: Outputs the information in JSON format";
                },
                [ValueParameter]@{
                    Keys        = @("--location");
                    Name        = "Show files used for origin bound APIs like the Web Storage API when running a script with '--location=<HREF>'";
                    Description = "Show files used for origin bound APIs like the Web Storage API when running a script with '--location=<HREF>'";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "Install script as an executable";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-all", "-A");
                    Name        = "Allow all permissions";
                    Description = "Allow all permissions";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-env");
                    Name        = "Allow environment access";
                    Description = "Allow environment access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-ffi");
                    Name        = "Allow loading dynamic libraries";
                    Description = "Allow loading dynamic libraries";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--allow-hrtime");
                    Name        = "Allow high resolution time measurement";
                    Description = "Allow high resolution time measurement";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-net");
                    Name        = "Allow network access";
                    Description = "Allow network access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-read");
                    Name        = "Allow file system read access";
                    Description = "Allow file system read access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-run");
                    Name        = "Allow running subprocesses";
                    Description = "Allow running subprocesses";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-write");
                    Name        = "Allow file system write access";
                    Description = "Allow file system write access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cached-only");
                    Name        = "Require that remote dependencies are already cached";
                    Description = "Require that remote dependencies are already cached";
                },
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Forcefully overwrite existing installation";
                    Description = "Forcefully overwrite existing installation";
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect");
                    Name        = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    Description = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect-brk");
                    Name        = "Activate inspector on host:port and break at start of user script";
                    Description = "Activate inspector on host:port and break at start of user script";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--location");
                    Name        = "Value of 'globalThis.location' used by some web APIs";
                    Description = "Value of 'globalThis.location' used by some web APIs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Check the specified lock file";
                    Description = "Check the specified lock file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lock-write");
                    Name        = "Write lock file (use with --lock)";
                    Description = "Write lock file (use with --lock)";
                },
                [ValueParameter]@{
                    Keys        = @("--name", "-n");
                    Name        = "Executable file name";
                    Description = "Executable file name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-check");
                    Name        = "Skip type checking modules";
                    Description = "Skip type checking modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-remote");
                    Name        = "Do not resolve remote modules";
                    Description = "Do not resolve remote modules";
                },
                [FlagParameter]@{
                    Keys        = @("--prompt");
                    Name        = "Fallback to prompt if required permission wasn't passed";
                    Description = "Fallback to prompt if required permission wasn't passed";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--root");
                    Name        = "Installation root";
                    Description = "Installation root";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--seed");
                    Name        = "Seed Math.random()";
                    Description = "Seed Math.random()";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--unsafely-ignore-certificate-errors");
                    Name        = "DANGER: Disables verification of TLS certificates";
                    Description = "DANGER: Disables verification of TLS certificates";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--v8-flags");
                    Name        = "Set V8 command line options (for help: --v8-flags=--help";
                    Description = "Set V8 command line options (for help: --v8-flags=--help";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("lint");
            Name        = "lint";
            Description = "Lint source files";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ignore");
                    Name        = "Ignore linting particular source files";
                    Description = "Ignore linting particular source files";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--json");
                    Name        = "Output lint result in JSON format";
                    Description = "Output lint result in JSON format";
                },
                [FlagParameter]@{
                    Keys        = @("--rules");
                    Name        = "List available rules";
                    Description = "List available rules";
                },
                [ValueParameter]@{
                    Keys        = @("--rules-exclude");
                    Name        = "Exclude lint rules";
                    Description = "Exclude lint rules";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--rules-include");
                    Name        = "Include lint rules";
                    Description = "Include lint rules";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--rules-tags");
                    Name        = "Use set of rules with a tag";
                    Description = "Use set of rules with a tag";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("lsp");
            Name        = "lsp";
            Description = "Start the language server";
        },
        [CommandParameter]@{
            Keys        = @("repl");
            Name        = "repl";
            Description = "Read Eval Print Loop";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--cached-only");
                    Name        = "Require that remote dependencies are already cached";
                    Description = "Require that remote dependencies are already cached";
                },
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--eval");
                    Name        = "Evaluates the provided code when the REPL starts.";
                    Description = "Evaluates the provided code when the REPL starts.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect");
                    Name        = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    Description = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect-brk");
                    Name        = "Activate inspector on host:port and break at start of user script";
                    Description = "Activate inspector on host:port and break at start of user script";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--location");
                    Name        = "Value of 'globalThis.location' used by some web APIs";
                    Description = "Value of 'globalThis.location' used by some web APIs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Check the specified lock file";
                    Description = "Check the specified lock file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lock-write");
                    Name        = "Write lock file (use with --lock)";
                    Description = "Write lock file (use with --lock)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-check");
                    Name        = "Skip type checking modules";
                    Description = "Skip type checking modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-remote");
                    Name        = "Do not resolve remote modules";
                    Description = "Do not resolve remote modules";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--seed");
                    Name        = "Seed Math.random()";
                    Description = "Seed Math.random()";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--v8-flags");
                    Name        = "Set V8 command line options (for help: --v8-flags=--help";
                    Description = "Set V8 command line options (for help: --v8-flags=--help";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Run a JavaScript or TypeScript program";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-all", "-A");
                    Name        = "Allow all permissions";
                    Description = "Allow all permissions";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-env");
                    Name        = "Allow environment access";
                    Description = "Allow environment access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-ffi");
                    Name        = "Allow loading dynamic libraries";
                    Description = "Allow loading dynamic libraries";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--allow-hrtime");
                    Name        = "Allow high resolution time measurement";
                    Description = "Allow high resolution time measurement";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-net");
                    Name        = "Allow network access";
                    Description = "Allow network access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-read");
                    Name        = "Allow file system read access";
                    Description = "Allow file system read access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-run");
                    Name        = "Allow running subprocesses";
                    Description = "Allow running subprocesses";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-write");
                    Name        = "Allow file system write access";
                    Description = "Allow file system write access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cached-only");
                    Name        = "Require that remote dependencies are already cached";
                    Description = "Require that remote dependencies are already cached";
                },
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect");
                    Name        = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    Description = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect-brk");
                    Name        = "Activate inspector on host:port and break at start of user script";
                    Description = "Activate inspector on host:port and break at start of user script";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--location");
                    Name        = "Value of 'globalThis.location' used by some web APIs";
                    Description = "Value of 'globalThis.location' used by some web APIs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Check the specified lock file";
                    Description = "Check the specified lock file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lock-write");
                    Name        = "Write lock file (use with --lock)";
                    Description = "Write lock file (use with --lock)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-check");
                    Name        = "Skip type checking modules";
                    Description = "Skip type checking modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-remote");
                    Name        = "Do not resolve remote modules";
                    Description = "Do not resolve remote modules";
                },
                [FlagParameter]@{
                    Keys        = @("--prompt");
                    Name        = "Fallback to prompt if required permission wasn't passed";
                    Description = "Fallback to prompt if required permission wasn't passed";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--seed");
                    Name        = "Seed Math.random()";
                    Description = "Seed Math.random()";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--unsafely-ignore-certificate-errors");
                    Name        = "DANGER: Disables verification of TLS certificates";
                    Description = "DANGER: Disables verification of TLS certificates";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--v8-flags");
                    Name        = "Set V8 command line options (for help: --v8-flags=--help";
                    Description = "Set V8 command line options (for help: --v8-flags=--help";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--watch");
                    Name        = "UNSTABLE: Watch for file changes and restart process automatically";
                    Description = "UNSTABLE: Watch for file changes and restart process automatically";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "Run tests";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-all", "-A");
                    Name        = "Allow all permissions";
                    Description = "Allow all permissions";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-env");
                    Name        = "Allow environment access";
                    Description = "Allow environment access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-ffi");
                    Name        = "Allow loading dynamic libraries";
                    Description = "Allow loading dynamic libraries";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--allow-hrtime");
                    Name        = "Allow high resolution time measurement";
                    Description = "Allow high resolution time measurement";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-net");
                    Name        = "Allow network access";
                    Description = "Allow network access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--allow-none");
                    Name        = "Don't return error code if no test files are found";
                    Description = "Don't return error code if no test files are found";
                },
                [ValueParameter]@{
                    Keys        = @("--allow-read");
                    Name        = "Allow file system read access";
                    Description = "Allow file system read access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-run");
                    Name        = "Allow running subprocesses";
                    Description = "Allow running subprocesses";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--allow-write");
                    Name        = "Allow file system write access";
                    Description = "Allow file system write access";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cached-only");
                    Name        = "Require that remote dependencies are already cached";
                    Description = "Require that remote dependencies are already cached";
                },
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--config", "-c");
                    Name        = "Load configuration file";
                    Description = "Load configuration file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--coverage");
                    Name        = "UNSTABLE: Collect coverage profile data into DIR";
                    Description = "UNSTABLE: Collect coverage profile data into DIR";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--doc");
                    Name        = "UNSTABLE: type check code blocks";
                    Description = "UNSTABLE: type check code blocks";
                },
                [ValueParameter]@{
                    Keys        = @("--fail-fast");
                    Name        = "Stop after N errors. Defaults to stopping after first failure.";
                    Description = "Stop after N errors. Defaults to stopping after first failure.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--filter");
                    Name        = "Run tests with this string or pattern in the test name";
                    Description = "Run tests with this string or pattern in the test name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ignore");
                    Name        = "Ignore files";
                    Description = "Ignore files";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--import-map");
                    Name        = "Load import map file";
                    Description = "Load import map file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect");
                    Name        = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    Description = "Activate inspector on host:port (default: 127.0.0.1:9229)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inspect-brk");
                    Name        = "Activate inspector on host:port and break at start of user script";
                    Description = "Activate inspector on host:port and break at start of user script";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--jobs", "-j");
                    Name        = "Number of parallel workers, defaults to # of CPUs when no value is provided. Defaults to 1 when the option is not present.";
                    Description = "Number of parallel workers, defaults to # of CPUs when no value is provided. Defaults to 1 when the option is not present.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--location");
                    Name        = "Value of 'globalThis.location' used by some web APIs";
                    Description = "Value of 'globalThis.location' used by some web APIs";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--lock");
                    Name        = "Check the specified lock file";
                    Description = "Check the specified lock file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--lock-write");
                    Name        = "Write lock file (use with --lock)";
                    Description = "Write lock file (use with --lock)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-check");
                    Name        = "Skip type checking modules";
                    Description = "Skip type checking modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-remote");
                    Name        = "Do not resolve remote modules";
                    Description = "Do not resolve remote modules";
                },
                [FlagParameter]@{
                    Keys        = @("--no-run");
                    Name        = "Cache test modules, but don't run tests";
                    Description = "Cache test modules, but don't run tests";
                },
                [FlagParameter]@{
                    Keys        = @("--prompt");
                    Name        = "Fallback to prompt if required permission wasn't passed";
                    Description = "Fallback to prompt if required permission wasn't passed";
                },
                [ValueParameter]@{
                    Keys        = @("--reload", "-r");
                    Name        = "Reload source code cache (recompile TypeScript)";
                    Description = "Reload source code cache (recompile TypeScript)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--seed");
                    Name        = "Seed Math.random()";
                    Description = "Seed Math.random()";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--shuffle");
                    Name        = "(UNSTABLE): Shuffle the order in which the tests are run";
                    Description = "(UNSTABLE): Shuffle the order in which the tests are run";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--unsafely-ignore-certificate-errors");
                    Name        = "DANGER: Disables verification of TLS certificates";
                    Description = "DANGER: Disables verification of TLS certificates";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--v8-flags");
                    Name        = "Set V8 command line options (for help: --v8-flags=--help";
                    Description = "Set V8 command line options (for help: --v8-flags=--help";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--watch");
                    Name        = "UNSTABLE: Watch for file changes and restart process automatically";
                    Description = "UNSTABLE: Watch for file changes and restart process automatically";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("types");
            Name        = "types";
            Description = "Print runtime TypeScript declarations";
        },
        [CommandParameter]@{
            Keys        = @("upgrade");
            Name        = "upgrade";
            Description = "Upgrade deno executable to given version";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--canary");
                    Name        = "Upgrade to canary builds";
                    Description = "Upgrade to canary builds";
                },
                [ValueParameter]@{
                    Keys        = @("--cert");
                    Name        = "Load certificate authority from PEM encoded file";
                    Description = "Load certificate authority from PEM encoded file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Perform all checks without replacing old exe";
                    Description = "Perform all checks without replacing old exe";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Replace current exe even if not out-of-date";
                    Description = "Replace current exe even if not out-of-date";
                },
                [ValueParameter]@{
                    Keys        = @("--output");
                    Name        = "The path to output the updated version to";
                    Description = "The path to output the updated version to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--version");
                    Name        = "The version to upgrade to";
                    Description = "The version to upgrade to";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
