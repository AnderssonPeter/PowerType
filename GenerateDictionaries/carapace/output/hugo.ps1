# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://gohugo.io/";
    Keys        = @("hugo");
    Name        = "hugo";
    Description = "hugo builds your site";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--baseURL", "-b");
            Name        = "hostname (and path) to the root, e.g. http://spf13.com/";
            Description = "hostname (and path) to the root, e.g. http://spf13.com/";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--buildDrafts", "-D");
            Name        = "include content marked as draft";
            Description = "include content marked as draft";
        },
        [FlagParameter]@{
            Keys        = @("--buildExpired", "-E");
            Name        = "include expired content";
            Description = "include expired content";
        },
        [FlagParameter]@{
            Keys        = @("--buildFuture", "-F");
            Name        = "include content with publishdate in the future";
            Description = "include content with publishdate in the future";
        },
        [ValueParameter]@{
            Keys        = @("--cacheDir");
            Name        = "filesystem path to cache directory. Defaults: `$TMPDIR/hugo_cache/";
            Description = "filesystem path to cache directory. Defaults: `$TMPDIR/hugo_cache/";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cleanDestinationDir");
            Name        = "remove files from destination not found in static directories";
            Description = "remove files from destination not found in static directories";
        },
        [ValueParameter]@{
            Keys        = @("--config");
            Name        = "config file (default is path/config.yaml|json|toml)";
            Description = "config file (default is path/config.yaml|json|toml)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--configDir");
            Name        = "config dir";
            Description = "config dir";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--contentDir", "-c");
            Name        = "filesystem path to content directory";
            Description = "filesystem path to content directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "debug output";
            Description = "debug output";
        },
        [ValueParameter]@{
            Keys        = @("--destination", "-d");
            Name        = "filesystem path to write files to";
            Description = "filesystem path to write files to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--disableKinds");
            Name        = "disable different kind of pages (home, RSS etc.)";
            Description = "disable different kind of pages (home, RSS etc.)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--enableGitInfo");
            Name        = "add Git revision, date and author info to the pages";
            Description = "add Git revision, date and author info to the pages";
        },
        [ValueParameter]@{
            Keys        = @("--environment", "-e");
            Name        = "build environment";
            Description = "build environment";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--forceSyncStatic");
            Name        = "copy all files when static is changed.";
            Description = "copy all files when static is changed.";
        },
        [FlagParameter]@{
            Keys        = @("--gc");
            Name        = "enable to run some cleanup tasks (remove unused cache files) after the build";
            Description = "enable to run some cleanup tasks (remove unused cache files) after the build";
        },
        [FlagParameter]@{
            Keys        = @("--i18n-warnings");
            Name        = "print missing translations";
            Description = "print missing translations";
        },
        [FlagParameter]@{
            Keys        = @("--ignoreCache");
            Name        = "ignores the cache directory";
            Description = "ignores the cache directory";
        },
        [FlagParameter]@{
            Keys        = @("--ignoreVendor");
            Name        = "ignores any _vendor directory";
            Description = "ignores any _vendor directory";
        },
        [ValueParameter]@{
            Keys        = @("--ignoreVendorPaths");
            Name        = "ignores any _vendor for module paths matching the given Glob pattern";
            Description = "ignores any _vendor for module paths matching the given Glob pattern";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--layoutDir", "-l");
            Name        = "filesystem path to layout directory";
            Description = "filesystem path to layout directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--log");
            Name        = "enable Logging";
            Description = "enable Logging";
        },
        [ValueParameter]@{
            Keys        = @("--logFile");
            Name        = "log File path (if set, logging enabled automatically)";
            Description = "log File path (if set, logging enabled automatically)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--minify");
            Name        = "minify any supported output format (HTML, XML etc.)";
            Description = "minify any supported output format (HTML, XML etc.)";
        },
        [FlagParameter]@{
            Keys        = @("--noChmod");
            Name        = "don't sync permission mode of files";
            Description = "don't sync permission mode of files";
        },
        [FlagParameter]@{
            Keys        = @("--noTimes");
            Name        = "don't sync modification time of files";
            Description = "don't sync modification time of files";
        },
        [FlagParameter]@{
            Keys        = @("--path-warnings");
            Name        = "print warnings on duplicate target paths etc.";
            Description = "print warnings on duplicate target paths etc.";
        },
        [ValueParameter]@{
            Keys        = @("--poll");
            Name        = "set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes";
            Description = "set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-mem");
            Name        = "print memory usage to screen at intervals";
            Description = "print memory usage to screen at intervals";
        },
        [ValueParameter]@{
            Keys        = @("--profile-cpu");
            Name        = "write cpu profile to ``file``";
            Description = "write cpu profile to ``file``";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile-mem");
            Name        = "write memory profile to ``file``";
            Description = "write memory profile to ``file``";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile-mutex");
            Name        = "write Mutex profile to ``file``";
            Description = "write Mutex profile to ``file``";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "build in quiet mode";
            Description = "build in quiet mode";
        },
        [FlagParameter]@{
            Keys        = @("--renderToMemory");
            Name        = "render to memory (only useful for benchmark testing)";
            Description = "render to memory (only useful for benchmark testing)";
        },
        [ValueParameter]@{
            Keys        = @("--source", "-s");
            Name        = "filesystem path to read files relative from";
            Description = "filesystem path to read files relative from";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--templateMetrics");
            Name        = "display metrics about template executions";
            Description = "display metrics about template executions";
        },
        [FlagParameter]@{
            Keys        = @("--templateMetricsHints");
            Name        = "calculate some improvement hints when combined with --templateMetrics";
            Description = "calculate some improvement hints when combined with --templateMetrics";
        },
        [ValueParameter]@{
            Keys        = @("--theme", "-t");
            Name        = "themes to use (located in /themes/THEMENAME/)";
            Description = "themes to use (located in /themes/THEMENAME/)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--themesDir");
            Name        = "filesystem path to themes directory";
            Description = "filesystem path to themes directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--trace");
            Name        = "write trace to ``file`` (not useful in general)";
            Description = "write trace to ``file`` (not useful in general)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbose output";
            Description = "verbose output";
        },
        [FlagParameter]@{
            Keys        = @("--verboseLog");
            Name        = "verbose logging";
            Description = "verbose logging";
        },
        [FlagParameter]@{
            Keys        = @("--watch", "-w");
            Name        = "watch filesystem for changes and recreate as needed";
            Description = "watch filesystem for changes and recreate as needed";
        },
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("check");
            Name        = "check";
            Description = "Contains some verification checks";
        },
        [CommandParameter]@{
            Keys        = @("completion");
            Name        = "completion";
            Description = "Generate the autocompletion script for the specified shell";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("bash");
                    Name        = "bash";
                    Description = "Generate the autocompletion script for bash";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("fish");
                    Name        = "fish";
                    Description = "Generate the autocompletion script for fish";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("powershell");
                    Name        = "powershell";
                    Description = "Generate the autocompletion script for powershell";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("zsh");
                    Name        = "zsh";
                    Description = "Generate the autocompletion script for zsh";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--no-descriptions");
                            Name        = "disable completion descriptions";
                            Description = "disable completion descriptions";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Print the site configuration";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("mounts");
                    Name        = "mounts";
                    Description = "Print the configured file mounts";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("convert");
            Name        = "convert";
            Description = "Convert your content to different formats";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "filesystem path to write files to";
                    Description = "filesystem path to write files to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--unsafe");
                    Name        = "enable less safe operations, please backup first";
                    Description = "enable less safe operations, please backup first";
                },
                ,
                ,
                [CommandParameter]@{
                    Keys        = @("toJSON");
                    Name        = "toJSON";
                    Description = "Convert front matter to JSON";
                },
                [CommandParameter]@{
                    Keys        = @("toTOML");
                    Name        = "toTOML";
                    Description = "Convert front matter to TOML";
                },
                [CommandParameter]@{
                    Keys        = @("toYAML");
                    Name        = "toYAML";
                    Description = "Convert front matter to YAML";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("deploy");
            Name        = "deploy";
            Description = "Deploy your site to a Cloud provider.";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--confirm");
                    Name        = "ask for confirmation before making changes to the target";
                    Description = "ask for confirmation before making changes to the target";
                },
                [FlagParameter]@{
                    Keys        = @("--dryRun");
                    Name        = "dry run";
                    Description = "dry run";
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "force upload of all files";
                    Description = "force upload of all files";
                },
                [FlagParameter]@{
                    Keys        = @("--invalidateCDN");
                    Name        = "invalidate the CDN cache listed in the deployment target";
                    Description = "invalidate the CDN cache listed in the deployment target";
                },
                [ValueParameter]@{
                    Keys        = @("--maxDeletes");
                    Name        = "maximum # of files to delete, or -1 to disable";
                    Description = "maximum # of files to delete, or -1 to disable";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--target");
                    Name        = "target deployment from deployments section in config file; defaults to the first one";
                    Description = "target deployment from deployments section in config file; defaults to the first one";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("env");
            Name        = "env";
            Description = "Print Hugo version and environment info";
        },
        [CommandParameter]@{
            Keys        = @("gen");
            Name        = "gen";
            Description = "A collection of several useful generators.";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("autocomplete");
                    Name        = "autocomplete";
                    Description = "Generate shell autocompletion script for Hugo";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--completionfile", "-f");
                            Name        = "autocompletion file, defaults to stdout";
                            Description = "autocompletion file, defaults to stdout";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--type", "-t");
                            Name        = "autocompletion type (bash, zsh, fish, or powershell)";
                            Description = "autocompletion type (bash, zsh, fish, or powershell)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("chromastyles");
                    Name        = "chromastyles";
                    Description = "Generate CSS stylesheet for the Chroma code highlighter";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--highlightStyle");
                            Name        = "style used for highlighting lines (see https://github.com/alecthomas/chroma)";
                            Description = "style used for highlighting lines (see https://github.com/alecthomas/chroma)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--linesStyle");
                            Name        = "style used for line numbers (see https://github.com/alecthomas/chroma)";
                            Description = "style used for line numbers (see https://github.com/alecthomas/chroma)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--style");
                            Name        = "highlighter style (see https://help.farbox.com/pygments.html)";
                            Description = "highlighter style (see https://help.farbox.com/pygments.html)";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        ,
                        ,
                    )
                },
                [CommandParameter]@{
                    Keys        = @("doc");
                    Name        = "doc";
                    Description = "Generate Markdown documentation for the Hugo CLI.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--dir");
                            Name        = "the directory to write the doc.";
                            Description = "the directory to write the doc.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                    )
                },
                [CommandParameter]@{
                    Keys        = @("man");
                    Name        = "man";
                    Description = "Generate man pages for the Hugo CLI";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--dir");
                            Name        = "the directory to write the man pages.";
                            Description = "the directory to write the man pages.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Help about any command";
        },
        [CommandParameter]@{
            Keys        = @("import");
            Name        = "import";
            Description = "Import your site from others.";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("jekyll");
                    Name        = "jekyll";
                    Description = "hugo import from Jekyll";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "allow import into non-empty target directory";
                            Description = "allow import into non-empty target directory";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "Listing out various types of content";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("all");
                    Name        = "all";
                    Description = "List all posts";
                },
                [CommandParameter]@{
                    Keys        = @("drafts");
                    Name        = "drafts";
                    Description = "List all drafts";
                },
                [CommandParameter]@{
                    Keys        = @("expired");
                    Name        = "expired";
                    Description = "List all posts already expired";
                },
                [CommandParameter]@{
                    Keys        = @("future");
                    Name        = "future";
                    Description = "List all posts dated in the future";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("mod");
            Name        = "mod";
            Description = "Various Hugo Modules helpers.";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--baseURL", "-b");
                    Name        = "hostname (and path) to the root, e.g. http://spf13.com/";
                    Description = "hostname (and path) to the root, e.g. http://spf13.com/";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--buildDrafts", "-D");
                    Name        = "include content marked as draft";
                    Description = "include content marked as draft";
                },
                [FlagParameter]@{
                    Keys        = @("--buildExpired", "-E");
                    Name        = "include expired content";
                    Description = "include expired content";
                },
                [FlagParameter]@{
                    Keys        = @("--buildFuture", "-F");
                    Name        = "include content with publishdate in the future";
                    Description = "include content with publishdate in the future";
                },
                [ValueParameter]@{
                    Keys        = @("--cacheDir");
                    Name        = "filesystem path to cache directory. Defaults: `$TMPDIR/hugo_cache/";
                    Description = "filesystem path to cache directory. Defaults: `$TMPDIR/hugo_cache/";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cleanDestinationDir");
                    Name        = "remove files from destination not found in static directories";
                    Description = "remove files from destination not found in static directories";
                },
                [ValueParameter]@{
                    Keys        = @("--contentDir", "-c");
                    Name        = "filesystem path to content directory";
                    Description = "filesystem path to content directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--destination", "-d");
                    Name        = "filesystem path to write files to";
                    Description = "filesystem path to write files to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--disableKinds");
                    Name        = "disable different kind of pages (home, RSS etc.)";
                    Description = "disable different kind of pages (home, RSS etc.)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--enableGitInfo");
                    Name        = "add Git revision, date and author info to the pages";
                    Description = "add Git revision, date and author info to the pages";
                },
                [FlagParameter]@{
                    Keys        = @("--forceSyncStatic");
                    Name        = "copy all files when static is changed.";
                    Description = "copy all files when static is changed.";
                },
                [FlagParameter]@{
                    Keys        = @("--gc");
                    Name        = "enable to run some cleanup tasks (remove unused cache files) after the build";
                    Description = "enable to run some cleanup tasks (remove unused cache files) after the build";
                },
                [FlagParameter]@{
                    Keys        = @("--i18n-warnings");
                    Name        = "print missing translations";
                    Description = "print missing translations";
                },
                [FlagParameter]@{
                    Keys        = @("--ignoreCache");
                    Name        = "ignores the cache directory";
                    Description = "ignores the cache directory";
                },
                [ValueParameter]@{
                    Keys        = @("--layoutDir", "-l");
                    Name        = "filesystem path to layout directory";
                    Description = "filesystem path to layout directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--minify");
                    Name        = "minify any supported output format (HTML, XML etc.)";
                    Description = "minify any supported output format (HTML, XML etc.)";
                },
                [FlagParameter]@{
                    Keys        = @("--noChmod");
                    Name        = "don't sync permission mode of files";
                    Description = "don't sync permission mode of files";
                },
                [FlagParameter]@{
                    Keys        = @("--noTimes");
                    Name        = "don't sync modification time of files";
                    Description = "don't sync modification time of files";
                },
                [FlagParameter]@{
                    Keys        = @("--path-warnings");
                    Name        = "print warnings on duplicate target paths etc.";
                    Description = "print warnings on duplicate target paths etc.";
                },
                [ValueParameter]@{
                    Keys        = @("--poll");
                    Name        = "set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes";
                    Description = "set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--print-mem");
                    Name        = "print memory usage to screen at intervals";
                    Description = "print memory usage to screen at intervals";
                },
                [ValueParameter]@{
                    Keys        = @("--profile-cpu");
                    Name        = "write cpu profile to ``file``";
                    Description = "write cpu profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile-mem");
                    Name        = "write memory profile to ``file``";
                    Description = "write memory profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile-mutex");
                    Name        = "write Mutex profile to ``file``";
                    Description = "write Mutex profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--templateMetrics");
                    Name        = "display metrics about template executions";
                    Description = "display metrics about template executions";
                },
                [FlagParameter]@{
                    Keys        = @("--templateMetricsHints");
                    Name        = "calculate some improvement hints when combined with --templateMetrics";
                    Description = "calculate some improvement hints when combined with --templateMetrics";
                },
                [ValueParameter]@{
                    Keys        = @("--theme", "-t");
                    Name        = "themes to use (located in /themes/THEMENAME/)";
                    Description = "themes to use (located in /themes/THEMENAME/)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--trace");
                    Name        = "write trace to ``file`` (not useful in general)";
                    Description = "write trace to ``file`` (not useful in general)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [CommandParameter]@{
                    Keys        = @("clean");
                    Name        = "clean";
                    Description = "Delete the Hugo Module cache for the current project.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--all");
                            Name        = "clean entire module cache";
                            Description = "clean entire module cache";
                        },
                        [ValueParameter]@{
                            Keys        = @("--pattern");
                            Name        = "pattern matching module paths to clean (all if not set), e.g. `"**hugo*`"";
                            Description = "pattern matching module paths to clean (all if not set), e.g. `"**hugo*`"";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("get");
                    Name        = "get";
                    Description = "Resolves dependencies in your current Hugo Project.";
                },
                [CommandParameter]@{
                    Keys        = @("graph");
                    Name        = "graph";
                    Description = "Print a module dependency graph.";
                },
                [CommandParameter]@{
                    Keys        = @("init");
                    Name        = "init";
                    Description = "Initialize this project as a Hugo Module.";
                },
                [CommandParameter]@{
                    Keys        = @("npm");
                    Name        = "npm";
                    Description = "Various npm helpers.";
                    Parameters  = @(
                        [CommandParameter]@{
                            Keys        = @("pack");
                            Name        = "pack";
                            Description = "Experimental: Prepares and writes a composite package.json file for your project.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("tidy");
                    Name        = "tidy";
                    Description = "Remove unused entries in go.mod and go.sum.";
                },
                [CommandParameter]@{
                    Keys        = @("vendor");
                    Name        = "vendor";
                    Description = "Vendor all module dependencies into the _vendor directory.";
                },
                [CommandParameter]@{
                    Keys        = @("verify");
                    Name        = "verify";
                    Description = "Verify dependencies.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--clean");
                            Name        = "delete module cache for dependencies that fail verification";
                            Description = "delete module cache for dependencies that fail verification";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("new");
            Name        = "new";
            Description = "Create new content for your site";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--baseURL", "-b");
                    Name        = "hostname (and path) to the root, e.g. http://spf13.com/";
                    Description = "hostname (and path) to the root, e.g. http://spf13.com/";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--buildDrafts", "-D");
                    Name        = "include content marked as draft";
                    Description = "include content marked as draft";
                },
                [FlagParameter]@{
                    Keys        = @("--buildExpired", "-E");
                    Name        = "include expired content";
                    Description = "include expired content";
                },
                [FlagParameter]@{
                    Keys        = @("--buildFuture", "-F");
                    Name        = "include content with publishdate in the future";
                    Description = "include content with publishdate in the future";
                },
                [ValueParameter]@{
                    Keys        = @("--cacheDir");
                    Name        = "filesystem path to cache directory. Defaults: `$TMPDIR/hugo_cache/";
                    Description = "filesystem path to cache directory. Defaults: `$TMPDIR/hugo_cache/";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cleanDestinationDir");
                    Name        = "remove files from destination not found in static directories";
                    Description = "remove files from destination not found in static directories";
                },
                [ValueParameter]@{
                    Keys        = @("--contentDir", "-c");
                    Name        = "filesystem path to content directory";
                    Description = "filesystem path to content directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--destination", "-d");
                    Name        = "filesystem path to write files to";
                    Description = "filesystem path to write files to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--disableKinds");
                    Name        = "disable different kind of pages (home, RSS etc.)";
                    Description = "disable different kind of pages (home, RSS etc.)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--editor");
                    Name        = "edit new content with this editor, if provided";
                    Description = "edit new content with this editor, if provided";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--enableGitInfo");
                    Name        = "add Git revision, date and author info to the pages";
                    Description = "add Git revision, date and author info to the pages";
                },
                [FlagParameter]@{
                    Keys        = @("--forceSyncStatic");
                    Name        = "copy all files when static is changed.";
                    Description = "copy all files when static is changed.";
                },
                [FlagParameter]@{
                    Keys        = @("--gc");
                    Name        = "enable to run some cleanup tasks (remove unused cache files) after the build";
                    Description = "enable to run some cleanup tasks (remove unused cache files) after the build";
                },
                [FlagParameter]@{
                    Keys        = @("--i18n-warnings");
                    Name        = "print missing translations";
                    Description = "print missing translations";
                },
                [FlagParameter]@{
                    Keys        = @("--ignoreCache");
                    Name        = "ignores the cache directory";
                    Description = "ignores the cache directory";
                },
                [ValueParameter]@{
                    Keys        = @("--kind", "-k");
                    Name        = "content type to create";
                    Description = "content type to create";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--layoutDir", "-l");
                    Name        = "filesystem path to layout directory";
                    Description = "filesystem path to layout directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--minify");
                    Name        = "minify any supported output format (HTML, XML etc.)";
                    Description = "minify any supported output format (HTML, XML etc.)";
                },
                [FlagParameter]@{
                    Keys        = @("--noChmod");
                    Name        = "don't sync permission mode of files";
                    Description = "don't sync permission mode of files";
                },
                [FlagParameter]@{
                    Keys        = @("--noTimes");
                    Name        = "don't sync modification time of files";
                    Description = "don't sync modification time of files";
                },
                [FlagParameter]@{
                    Keys        = @("--path-warnings");
                    Name        = "print warnings on duplicate target paths etc.";
                    Description = "print warnings on duplicate target paths etc.";
                },
                [ValueParameter]@{
                    Keys        = @("--poll");
                    Name        = "set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes";
                    Description = "set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--print-mem");
                    Name        = "print memory usage to screen at intervals";
                    Description = "print memory usage to screen at intervals";
                },
                [ValueParameter]@{
                    Keys        = @("--profile-cpu");
                    Name        = "write cpu profile to ``file``";
                    Description = "write cpu profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile-mem");
                    Name        = "write memory profile to ``file``";
                    Description = "write memory profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile-mutex");
                    Name        = "write Mutex profile to ``file``";
                    Description = "write Mutex profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--templateMetrics");
                    Name        = "display metrics about template executions";
                    Description = "display metrics about template executions";
                },
                [FlagParameter]@{
                    Keys        = @("--templateMetricsHints");
                    Name        = "calculate some improvement hints when combined with --templateMetrics";
                    Description = "calculate some improvement hints when combined with --templateMetrics";
                },
                [ValueParameter]@{
                    Keys        = @("--theme", "-t");
                    Name        = "themes to use (located in /themes/THEMENAME/)";
                    Description = "themes to use (located in /themes/THEMENAME/)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--trace");
                    Name        = "write trace to ``file`` (not useful in general)";
                    Description = "write trace to ``file`` (not useful in general)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [CommandParameter]@{
                    Keys        = @("site");
                    Name        = "site";
                    Description = "Create a new site (skeleton)";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--force");
                            Name        = "init inside non-empty directory";
                            Description = "init inside non-empty directory";
                        },
                        [ValueParameter]@{
                            Keys        = @("--format", "-f");
                            Name        = "config & frontmatter format";
                            Description = "config & frontmatter format";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("theme");
                    Name        = "theme";
                    Description = "Create a new theme";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("server");
            Name        = "server";
            Description = "A high performance webserver";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--appendPort");
                    Name        = "append port to baseURL";
                    Description = "append port to baseURL";
                },
                [ValueParameter]@{
                    Keys        = @("--baseURL", "-b");
                    Name        = "hostname (and path) to the root, e.g. http://spf13.com/";
                    Description = "hostname (and path) to the root, e.g. http://spf13.com/";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--bind");
                    Name        = "interface to which the server will bind";
                    Description = "interface to which the server will bind";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--buildDrafts", "-D");
                    Name        = "include content marked as draft";
                    Description = "include content marked as draft";
                },
                [FlagParameter]@{
                    Keys        = @("--buildExpired", "-E");
                    Name        = "include expired content";
                    Description = "include expired content";
                },
                [FlagParameter]@{
                    Keys        = @("--buildFuture", "-F");
                    Name        = "include content with publishdate in the future";
                    Description = "include content with publishdate in the future";
                },
                [ValueParameter]@{
                    Keys        = @("--cacheDir");
                    Name        = "filesystem path to cache directory. Defaults: `$TMPDIR/hugo_cache/";
                    Description = "filesystem path to cache directory. Defaults: `$TMPDIR/hugo_cache/";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--cleanDestinationDir");
                    Name        = "remove files from destination not found in static directories";
                    Description = "remove files from destination not found in static directories";
                },
                [ValueParameter]@{
                    Keys        = @("--contentDir", "-c");
                    Name        = "filesystem path to content directory";
                    Description = "filesystem path to content directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--destination", "-d");
                    Name        = "filesystem path to write files to";
                    Description = "filesystem path to write files to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disableBrowserError");
                    Name        = "do not show build errors in the browser";
                    Description = "do not show build errors in the browser";
                },
                [FlagParameter]@{
                    Keys        = @("--disableFastRender");
                    Name        = "enables full re-renders on changes";
                    Description = "enables full re-renders on changes";
                },
                [ValueParameter]@{
                    Keys        = @("--disableKinds");
                    Name        = "disable different kind of pages (home, RSS etc.)";
                    Description = "disable different kind of pages (home, RSS etc.)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disableLiveReload");
                    Name        = "watch without enabling live browser reload on rebuild";
                    Description = "watch without enabling live browser reload on rebuild";
                },
                [FlagParameter]@{
                    Keys        = @("--enableGitInfo");
                    Name        = "add Git revision, date and author info to the pages";
                    Description = "add Git revision, date and author info to the pages";
                },
                [FlagParameter]@{
                    Keys        = @("--forceSyncStatic");
                    Name        = "copy all files when static is changed.";
                    Description = "copy all files when static is changed.";
                },
                [FlagParameter]@{
                    Keys        = @("--gc");
                    Name        = "enable to run some cleanup tasks (remove unused cache files) after the build";
                    Description = "enable to run some cleanup tasks (remove unused cache files) after the build";
                },
                [FlagParameter]@{
                    Keys        = @("--i18n-warnings");
                    Name        = "print missing translations";
                    Description = "print missing translations";
                },
                [FlagParameter]@{
                    Keys        = @("--ignoreCache");
                    Name        = "ignores the cache directory";
                    Description = "ignores the cache directory";
                },
                [ValueParameter]@{
                    Keys        = @("--layoutDir", "-l");
                    Name        = "filesystem path to layout directory";
                    Description = "filesystem path to layout directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--liveReloadPort");
                    Name        = "port for live reloading (i.e. 443 in HTTPS proxy situations)";
                    Description = "port for live reloading (i.e. 443 in HTTPS proxy situations)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--meminterval");
                    Name        = "interval to poll memory usage (requires --memstats), valid time units are `"ns`", `"us`" (or `"µs`"), `"ms`", `"s`", `"m`", `"h`".";
                    Description = "interval to poll memory usage (requires --memstats), valid time units are `"ns`", `"us`" (or `"µs`"), `"ms`", `"s`", `"m`", `"h`".";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--memstats");
                    Name        = "log memory usage to this file";
                    Description = "log memory usage to this file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--minify");
                    Name        = "minify any supported output format (HTML, XML etc.)";
                    Description = "minify any supported output format (HTML, XML etc.)";
                },
                [FlagParameter]@{
                    Keys        = @("--navigateToChanged");
                    Name        = "navigate to changed content file on live browser reload";
                    Description = "navigate to changed content file on live browser reload";
                },
                [FlagParameter]@{
                    Keys        = @("--noChmod");
                    Name        = "don't sync permission mode of files";
                    Description = "don't sync permission mode of files";
                },
                [FlagParameter]@{
                    Keys        = @("--noHTTPCache");
                    Name        = "prevent HTTP caching";
                    Description = "prevent HTTP caching";
                },
                [FlagParameter]@{
                    Keys        = @("--noTimes");
                    Name        = "don't sync modification time of files";
                    Description = "don't sync modification time of files";
                },
                [FlagParameter]@{
                    Keys        = @("--path-warnings");
                    Name        = "print warnings on duplicate target paths etc.";
                    Description = "print warnings on duplicate target paths etc.";
                },
                [ValueParameter]@{
                    Keys        = @("--poll");
                    Name        = "set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes";
                    Description = "set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--port", "-p");
                    Name        = "port on which the server will listen";
                    Description = "port on which the server will listen";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--print-mem");
                    Name        = "print memory usage to screen at intervals";
                    Description = "print memory usage to screen at intervals";
                },
                [ValueParameter]@{
                    Keys        = @("--profile-cpu");
                    Name        = "write cpu profile to ``file``";
                    Description = "write cpu profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile-mem");
                    Name        = "write memory profile to ``file``";
                    Description = "write memory profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--profile-mutex");
                    Name        = "write Mutex profile to ``file``";
                    Description = "write Mutex profile to ``file``";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--renderToDisk");
                    Name        = "render to Destination path (default is render to memory & serve from there)";
                    Description = "render to Destination path (default is render to memory & serve from there)";
                },
                [FlagParameter]@{
                    Keys        = @("--templateMetrics");
                    Name        = "display metrics about template executions";
                    Description = "display metrics about template executions";
                },
                [FlagParameter]@{
                    Keys        = @("--templateMetricsHints");
                    Name        = "calculate some improvement hints when combined with --templateMetrics";
                    Description = "calculate some improvement hints when combined with --templateMetrics";
                },
                [ValueParameter]@{
                    Keys        = @("--theme", "-t");
                    Name        = "themes to use (located in /themes/THEMENAME/)";
                    Description = "themes to use (located in /themes/THEMENAME/)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--trace");
                    Name        = "write trace to ``file`` (not useful in general)";
                    Description = "write trace to ``file`` (not useful in general)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--watch", "-w");
                    Name        = "watch filesystem for changes and recreate as needed";
                    Description = "watch filesystem for changes and recreate as needed";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Print the version number of Hugo";
        }
    )
}
