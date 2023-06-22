# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://angular.io/cli";
    Keys        = @("ng");
    Name        = "ng";
    Description = "The Angular CLI";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "Shows commands";
            Description = "Shows commands";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Shows a help message for this command in the console";
            Description = "Shows a help message for this command in the console";
        },
        ,
        [CommandParameter]@{
            Keys        = @("add");
            Name        = "add";
            Description = "Adds support for an external library to your project";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--defaults");
                    Name        = "Disable interactive input prompts for options with a default.";
                    Description = "Disable interactive input prompts for options with a default.";
                },
                [FlagParameter]@{
                    Keys        = @("--interactive");
                    Name        = "Enable interactive input prompts.";
                    Description = "Enable interactive input prompts.";
                },
                [ValueParameter]@{
                    Keys        = @("--registry");
                    Name        = "The NPM registry to use.";
                    Description = "The NPM registry to use.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--skip-confirmation");
                    Name        = "Skip asking a confirmation prompt before installing and executing the package.";
                    Description = "Skip asking a confirmation prompt before installing and executing the package.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose");
                    Name        = "Display additional details about internal operations during execution.";
                    Description = "Display additional details about internal operations during execution.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("analytics");
            Name        = "analytics";
            Description = "Configures the gathering of Angular CLI usage metrics";
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Compiles an Angular app into an output directory";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--allowed-common-js-dependencies");
                    Name        = "A list of CommonJS packages that are allowed to be used without a build time warning.";
                    Description = "A list of CommonJS packages that are allowed to be used without a build time warning.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--aot");
                    Name        = "Build using Ahead of Time compilation.";
                    Description = "Build using Ahead of Time compilation.";
                },
                [ValueParameter]@{
                    Keys        = @("--base-href");
                    Name        = "Base url for the application being built.";
                    Description = "Base url for the application being built.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--build-optimizer");
                    Name        = "Enables '@angular-devkit/build-optimizer' optimizations when using the 'aot' option.";
                    Description = "Enables '@angular-devkit/build-optimizer' optimizations when using the 'aot' option.";
                },
                [FlagParameter]@{
                    Keys        = @("--common-chunk");
                    Name        = "Generate a seperate bundle containing code used across multiple bundles.";
                    Description = "Generate a seperate bundle containing code used across multiple bundles.";
                },
                [ValueParameter]@{
                    Keys        = @("--configuration", "-c");
                    Name        = "One or more named builder configurations";
                    Description = "One or more named builder configurations";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--cross-origin");
                    Name        = "Define the crossorigin attribute setting of elements that provide CORS support.";
                    Description = "Define the crossorigin attribute setting of elements that provide CORS support.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--delete-output-path");
                    Name        = "Delete the output path before building.";
                    Description = "Delete the output path before building.";
                },
                [FlagParameter]@{
                    Keys        = @("--extract-licenses");
                    Name        = "Extract all licenses in a separate file.";
                    Description = "Extract all licenses in a separate file.";
                },
                [ValueParameter]@{
                    Keys        = @("--i18n-missing-translation");
                    Name        = "How to handle missing translations for i18n.";
                    Description = "How to handle missing translations for i18n.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--index");
                    Name        = "Configures the generation of the application's HTML index.";
                    Description = "Configures the generation of the application's HTML index.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inline-style-language");
                    Name        = "The stylesheet language to use for the application's inline component styles.";
                    Description = "The stylesheet language to use for the application's inline component styles.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--localize");
                    Name        = "Translate the bundles in one or more locales.";
                    Description = "Translate the bundles in one or more locales.";
                },
                [FlagParameter]@{
                    Keys        = @("--main");
                    Name        = "The full path for the main entry point to the app, relative to the current workspace.";
                    Description = "The full path for the main entry point to the app, relative to the current workspace.";
                },
                [FlagParameter]@{
                    Keys        = @("--named-chunks");
                    Name        = "Use file name for lazy loaded chunks.";
                    Description = "Use file name for lazy loaded chunks.";
                },
                [ValueParameter]@{
                    Keys        = @("--ngsw-config-path");
                    Name        = "Path to ngsw-config.json.";
                    Description = "Path to ngsw-config.json.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--optimization");
                    Name        = "Enables optimization of the build output.";
                    Description = "Enables optimization of the build output.";
                },
                [ValueParameter]@{
                    Keys        = @("--output-hashing");
                    Name        = "Define the output filename cache-busting hashing mode.";
                    Description = "Define the output filename cache-busting hashing mode.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output-path");
                    Name        = "The full path for the new output directory, relative to the current workspace.";
                    Description = "The full path for the new output directory, relative to the current workspace.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--poll");
                    Name        = "Enable and define the file watching poll time period in milliseconds.";
                    Description = "Enable and define the file watching poll time period in milliseconds.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--polyfills");
                    Name        = "The full path for the polyfills file, relative to the current workspace.";
                    Description = "The full path for the polyfills file, relative to the current workspace.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--preserve-symlinks");
                    Name        = "Do not use the real path when resolving modules.";
                    Description = "Do not use the real path when resolving modules.";
                },
                [FlagParameter]@{
                    Keys        = @("--progress");
                    Name        = "Log progress to the console while building.";
                    Description = "Log progress to the console while building.";
                },
                [ValueParameter]@{
                    Keys        = @("--resources-output-path");
                    Name        = "The path where style resources will be placed, relative to outputPath.";
                    Description = "The path where style resources will be placed, relative to outputPath.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--service-worker");
                    Name        = "Generates a service worker config for production builds.";
                    Description = "Generates a service worker config for production builds.";
                },
                [FlagParameter]@{
                    Keys        = @("--source-map");
                    Name        = "Output source maps for scripts and styles.";
                    Description = "Output source maps for scripts and styles.";
                },
                [FlagParameter]@{
                    Keys        = @("--stats-json");
                    Name        = "Generates a 'stats.json' file which can be analyzed using tools such as 'webpack-bundle-analyzer'.";
                    Description = "Generates a 'stats.json' file which can be analyzed using tools such as 'webpack-bundle-analyzer'.";
                },
                [FlagParameter]@{
                    Keys        = @("--subresource-integrity");
                    Name        = "Enables the use of subresource integrity validation.";
                    Description = "Enables the use of subresource integrity validation.";
                },
                [FlagParameter]@{
                    Keys        = @("--ts-config");
                    Name        = "The full path for the TypeScript configuration file, relative to the current workspace.";
                    Description = "The full path for the TypeScript configuration file, relative to the current workspace.";
                },
                [FlagParameter]@{
                    Keys        = @("--vendor-chunk");
                    Name        = "Generate a seperate bundle containing only vendor libraries.";
                    Description = "Generate a seperate bundle containing only vendor libraries.";
                },
                [FlagParameter]@{
                    Keys        = @("--verbose");
                    Name        = "Adds more details to output logging.";
                    Description = "Adds more details to output logging.";
                },
                [FlagParameter]@{
                    Keys        = @("--watch");
                    Name        = "Run build when files change.";
                    Description = "Run build when files change.";
                },
                [ValueParameter]@{
                    Keys        = @("--web-worker-ts-config");
                    Name        = "TypeScript configuration for Web Worker modules.";
                    Description = "TypeScript configuration for Web Worker modules.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Retrieves or sets Angular configuration values in the angular.json file for the workspace";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--global", "-g");
                    Name        = "Access the global configuration in the caller's home directory.";
                    Description = "Access the global configuration in the caller's home directory.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("deploy");
            Name        = "deploy";
            Description = "Invokes the deploy builder for a specified project or for the default project in the workspace";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--configuration", "-c");
                    Name        = "One or more named builder configurations";
                    Description = "One or more named builder configurations";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("doc");
            Name        = "doc";
            Description = "Opens the official Angular documentation (angular.io) in a browser, and searches for a given keyword.";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--search", "-s");
                    Name        = "Search all of angular.io.";
                    Description = "Search all of angular.io.";
                },
                [ValueParameter]@{
                    Keys        = @("--version");
                    Name        = "Contains the version of Angular to use for the documentation.";
                    Description = "Contains the version of Angular to use for the documentation.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("e2e");
            Name        = "e2e";
            Description = "Builds and serves an Angular app, then runs end-to-end tests";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--configuration", "-c");
                    Name        = "One or more named builder configurations";
                    Description = "One or more named builder configurations";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("extract-i18n");
            Name        = "extract-i18n";
            Description = "Extracts i18n messages from source code";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--browser-target");
                    Name        = "A browser builder target to extract i18n messages";
                    Description = "A browser builder target to extract i18n messages";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--configuration", "-c");
                    Name        = "One or more named builder configurations";
                    Description = "One or more named builder configurations";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--format");
                    Name        = "Output format for the generated file.";
                    Description = "Output format for the generated file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--out-file");
                    Name        = "Name of the file to output.";
                    Description = "Name of the file to output.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output-path");
                    Name        = "Path where output will be placed.";
                    Description = "Path where output will be placed.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--progress");
                    Name        = "Log progress to the console.";
                    Description = "Log progress to the console.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("generate");
            Name        = "generate";
            Description = "Generates and/or modifies files based on a schematic";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--defaults");
                    Name        = "Disable interactive input prompts for options with a default.";
                    Description = "Disable interactive input prompts for options with a default.";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run");
                    Name        = "Run through and reports activity without writing out results.";
                    Description = "Run through and reports activity without writing out results.";
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Force overwriting of existing files.";
                    Description = "Force overwriting of existing files.";
                },
                [FlagParameter]@{
                    Keys        = @("--interactive");
                    Name        = "Enable interactive input prompts.";
                    Description = "Enable interactive input prompts.";
                },
                [CommandParameter]@{
                    Keys        = @("app-shell");
                    Name        = "app-shell";
                    Description = "Generates an app shell for running a server-side version of an app";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--app-dir");
                            Name        = "The name of the application directory.";
                            Description = "The name of the application directory.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--app-id");
                            Name        = "The app ID to use in withServerTransition().";
                            Description = "The app ID to use in withServerTransition().";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--main");
                            Name        = "The name of the main entry-point file.";
                            Description = "The name of the main entry-point file.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the related client app.";
                            Description = "The name of the related client app.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--root-module-class-name");
                            Name        = "The name of the root module class.";
                            Description = "The name of the root module class.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--root-module-file-name");
                            Name        = "The name of the root module file";
                            Description = "The name of the root module file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--route");
                            Name        = "Route path used to produce the app shell.";
                            Description = "Route path used to produce the app shell.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("application");
                    Name        = "application";
                    Description = "Generates a new basic app definition in the projects subfolder of the workspace";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--inline-style", "-s");
                            Name        = "Include styles inline in the root component.ts file.";
                            Description = "Include styles inline in the root component.ts file.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--inline-template", "-t");
                            Name        = "Include template inline in the root component.ts file.";
                            Description = "Include template inline in the root component.ts file.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--minimal");
                            Name        = "Create a bare-bones project without any testing frameworks.";
                            Description = "Create a bare-bones project without any testing frameworks.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--prefix", "-p");
                            Name        = "A prefix to apply to generated selectors.";
                            Description = "A prefix to apply to generated selectors.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--routing");
                            Name        = "Create a routing NgModule.";
                            Description = "Create a routing NgModule.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-install");
                            Name        = "Skip installing dependency packages.";
                            Description = "Skip installing dependency packages.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-package-json");
                            Name        = "Do not add dependencies to the `"package.json`" file.";
                            Description = "Do not add dependencies to the `"package.json`" file.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests", "-S");
                            Name        = "Do not create `"spec.ts`" test files for the application.";
                            Description = "Do not create `"spec.ts`" test files for the application.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--strict");
                            Name        = "Creates an application with stricter bundle budgets settings.";
                            Description = "Creates an application with stricter bundle budgets settings.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--style");
                            Name        = "The file extension or preprocessor to use for style files.";
                            Description = "The file extension or preprocessor to use for style files.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--view-encapsulation");
                            Name        = "The view encapsulation strategy to use in the new application.";
                            Description = "The view encapsulation strategy to use in the new application.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("class");
                    Name        = "class";
                    Description = "Creates a new, generic class definition in the given or default project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests");
                            Name        = "Do not create `"spec.ts`" test files for the new class.";
                            Description = "Do not create `"spec.ts`" test files for the new class.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--type");
                            Name        = "Adds a developer-defined type to the filename, in the format `"name.type.ts`".";
                            Description = "Adds a developer-defined type to the filename, in the format `"name.type.ts`".";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("component");
                    Name        = "component";
                    Description = "Creates a new, generic component definition in the given or default project.";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--change-detection", "-c");
                            Name        = "The change detection strategy to use in the new component.";
                            Description = "The change detection strategy to use in the new component.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--display-block", "-b");
                            Name        = "Specifies if the style will contain :host { display: block; }.";
                            Description = "Specifies if the style will contain :host { display: block; }.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--export");
                            Name        = "The declaring NgModule exports this component.";
                            Description = "The declaring NgModule exports this component.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flat");
                            Name        = "Create the new files at the top level of the current project.";
                            Description = "Create the new files at the top level of the current project.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--inline-style", "-s");
                            Name        = "Include styles inline in the component.ts file.";
                            Description = "Include styles inline in the component.ts file.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--inline-template", "-t");
                            Name        = "Include template inline in the component.ts file.";
                            Description = "Include template inline in the component.ts file.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--module", "-m");
                            Name        = "The declaring NgModule.";
                            Description = "The declaring NgModule.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--prefix", "-p");
                            Name        = "The prefix to apply to the generated component selector.";
                            Description = "The prefix to apply to the generated component selector.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector");
                            Name        = "The HTML selector to use for this component.";
                            Description = "The HTML selector to use for this component.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-import");
                            Name        = "Do not import this component into the owning NgModule.";
                            Description = "Do not import this component into the owning NgModule.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-selector");
                            Name        = "Specifies if the component should have a selector or not.";
                            Description = "Specifies if the component should have a selector or not.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests");
                            Name        = "Do not create `"spec.ts`" test files for the new component.";
                            Description = "Do not create `"spec.ts`" test files for the new component.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--style");
                            Name        = "The file extension or preprocessor to use for style files";
                            Description = "The file extension or preprocessor to use for style files";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--type");
                            Name        = "Adds a developer-defined type to the filename, in the format `"name.type.ts`".";
                            Description = "Adds a developer-defined type to the filename, in the format `"name.type.ts`".";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--view-encapsulation", "-v");
                            Name        = "The view encapsulation strategy to use in the new component.";
                            Description = "The view encapsulation strategy to use in the new component.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("directive");
                    Name        = "directive";
                    Description = "Creates a new, generic directive definition in the given or default project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--export");
                            Name        = "The declaring NgModule exports this directive.";
                            Description = "The declaring NgModule exports this directive.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flat");
                            Name        = "Creates the new files at the top level of the current project.";
                            Description = "Creates the new files at the top level of the current project.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--module", "-m");
                            Name        = "The declaring NgModule.";
                            Description = "The declaring NgModule.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--prefix", "-p");
                            Name        = "A prefix to apply to generated selectors.";
                            Description = "A prefix to apply to generated selectors.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--selector");
                            Name        = "The HTML selector to use for this directive.";
                            Description = "The HTML selector to use for this directive.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-import");
                            Name        = "Do not import this directive into the owning NgModule.";
                            Description = "Do not import this directive into the owning NgModule.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests");
                            Name        = "Do not create `"spec.ts`" test files for the new class.";
                            Description = "Do not create `"spec.ts`" test files for the new class.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("enum");
                    Name        = "enum";
                    Description = "Generates a new, generic enum definition for the given or default project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project in which to create the enum.";
                            Description = "The name of the project in which to create the enum.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--type");
                            Name        = "Adds a developer-defined type to the filename, in the format `"name.type.ts`".";
                            Description = "Adds a developer-defined type to the filename, in the format `"name.type.ts`".";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("guard");
                    Name        = "guard";
                    Description = "Generates a new, generic route guard definition in the given or default project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--flat");
                            Name        = "Creates the new files at the top level of the current project.";
                            Description = "Creates the new files at the top level of the current project.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--implements");
                            Name        = "Specifies which interfaces to implement.";
                            Description = "Specifies which interfaces to implement.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests");
                            Name        = "Do not create `"spec.ts`" test files for the new guard.";
                            Description = "Do not create `"spec.ts`" test files for the new guard.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("interceptor");
                    Name        = "interceptor";
                    Description = "Creates a new, generic interceptor definition in the given or default project.";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--flat");
                            Name        = "Creates files at the top level of the project.";
                            Description = "Creates files at the top level of the project.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests");
                            Name        = "Do not create `"spec.ts`" test files for the new interceptor.";
                            Description = "Do not create `"spec.ts`" test files for the new interceptor.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("interface");
                    Name        = "interface";
                    Description = "Creates a new, generic interface definition in the given or default project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--prefix");
                            Name        = "A prefix to apply to generated selectors.";
                            Description = "A prefix to apply to generated selectors.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("library");
                    Name        = "library";
                    Description = "Creates a new, generic library project in the current workspace";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--entry-file");
                            Name        = "The path at which to create the library's public API file";
                            Description = "The path at which to create the library's public API file";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--prefix", "-p");
                            Name        = "A prefix to apply to generated selectors.";
                            Description = "A prefix to apply to generated selectors.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-install");
                            Name        = "Do not install dependency packages.";
                            Description = "Do not install dependency packages.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-package-json");
                            Name        = "Do not add dependencies to the `"package.json`" file.";
                            Description = "Do not add dependencies to the `"package.json`" file.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-ts-config");
                            Name        = "Do not update `"tsconfig.json`" to add a path mapping for the new library.";
                            Description = "Do not update `"tsconfig.json`" to add a path mapping for the new library.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("module");
                    Name        = "module";
                    Description = "Creates a new, generic NgModule definition in the given or default project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--flat");
                            Name        = "Create the new files at the top level of the current project root.";
                            Description = "Create the new files at the top level of the current project root.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--module", "-m");
                            Name        = "The declaring NgModule.";
                            Description = "The declaring NgModule.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--route");
                            Name        = "The route path for a lazy-loaded module.";
                            Description = "The route path for a lazy-loaded module.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--routing");
                            Name        = "Create a routing module.";
                            Description = "Create a routing module.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--routing-scope");
                            Name        = "The scope for the new routing module.";
                            Description = "The scope for the new routing module.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("pipe");
                    Name        = "pipe";
                    Description = "Creates a new, generic pipe definition in the given or default project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--export");
                            Name        = "The declaring NgModule exports this pipe.";
                            Description = "The declaring NgModule exports this pipe.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--flat");
                            Name        = "When true (the default) creates files at the top level of the project.";
                            Description = "When true (the default) creates files at the top level of the project.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--module", "-m");
                            Name        = "The declaring NgModule.";
                            Description = "The declaring NgModule.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-import");
                            Name        = "Do not import this pipe into the owning NgModule.";
                            Description = "Do not import this pipe into the owning NgModule.";
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests");
                            Name        = "Do not create `"spec.ts`" test files for the new pipe.";
                            Description = "Do not create `"spec.ts`" test files for the new pipe.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("resolver");
                    Name        = "resolver";
                    Description = "Generates a new, generic resolver definition in the given or default project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--flat");
                            Name        = "Creates the new files at the top level of the current project.";
                            Description = "Creates the new files at the top level of the current project.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests");
                            Name        = "Do not create `"spec.ts`" test files for the new resolver.";
                            Description = "Do not create `"spec.ts`" test files for the new resolver.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("service");
                    Name        = "service";
                    Description = "Creates a new, generic service definition in the given or default project";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--flat");
                            Name        = "Creates files at the top level of the project.";
                            Description = "Creates files at the top level of the project.";
                        },
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--skip-tests");
                            Name        = "Do not create `"spec.ts`" test files for the new service.";
                            Description = "Do not create `"spec.ts`" test files for the new service.";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("service-worker");
                    Name        = "service-worker";
                    Description = "Pass this schematic to the `"run`" command to create a service worker";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--target");
                            Name        = "The target to apply service worker to.";
                            Description = "The target to apply service worker to.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("web-worker");
                    Name        = "web-worker";
                    Description = "Creates a new, generic web worker definition in the given or default project";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--project");
                            Name        = "The name of the project.";
                            Description = "The name of the project.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--snippet");
                            Name        = "Add a worker creation snippet in a sibling file of the same name.";
                            Description = "Add a worker creation snippet in a sibling file of the same name.";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "Lists available commands and their short descriptions";
        },
        [CommandParameter]@{
            Keys        = @("lint");
            Name        = "lint";
            Description = "Runs linting tools on Angular app code in a given project folder";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--configuration", "-c");
                    Name        = "One or more named builder configurations";
                    Description = "One or more named builder configurations";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("new");
            Name        = "new";
            Description = "Create an Angular workspace";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--collection", "-c");
                    Name        = "A collection of schematics to use in generating the initial application.";
                    Description = "A collection of schematics to use in generating the initial application.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--commit");
                    Name        = "Initial git repository commit information.";
                    Description = "Initial git repository commit information.";
                },
                [FlagParameter]@{
                    Keys        = @("--create-application");
                    Name        = "Create a new initial application project in the 'src' folder of the new workspace.";
                    Description = "Create a new initial application project in the 'src' folder of the new workspace.";
                },
                [FlagParameter]@{
                    Keys        = @("--defaults");
                    Name        = "Disable interactive input prompts for options with a default.";
                    Description = "Disable interactive input prompts for options with a default.";
                },
                [ValueParameter]@{
                    Keys        = @("--directory");
                    Name        = "The directory name to create the workspace in.";
                    Description = "The directory name to create the workspace in.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-d");
                    Name        = "Run through and reports activity without writing out results.";
                    Description = "Run through and reports activity without writing out results.";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Force overwriting of existing files.";
                    Description = "Force overwriting of existing files.";
                },
                [FlagParameter]@{
                    Keys        = @("--inline-style", "-s");
                    Name        = "Include styles inline in the component TS file.";
                    Description = "Include styles inline in the component TS file.";
                },
                [FlagParameter]@{
                    Keys        = @("--inline-template", "-t");
                    Name        = "Include template inline in the component TS file.";
                    Description = "Include template inline in the component TS file.";
                },
                [FlagParameter]@{
                    Keys        = @("--interactive");
                    Name        = "Enable interactive input prompts.";
                    Description = "Enable interactive input prompts.";
                },
                [FlagParameter]@{
                    Keys        = @("--minimal");
                    Name        = "Create a workspace without any testing frameworks.";
                    Description = "Create a workspace without any testing frameworks.";
                },
                [ValueParameter]@{
                    Keys        = @("--new-project-root");
                    Name        = "The path where new projects will be created, relative to the new workspace root.";
                    Description = "The path where new projects will be created, relative to the new workspace root.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--package-manager");
                    Name        = "The package manager used to install dependencies.";
                    Description = "The package manager used to install dependencies.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--prefix", "-p");
                    Name        = "The prefix to apply to generated selectors for the initial project.";
                    Description = "The prefix to apply to generated selectors for the initial project.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--routing");
                    Name        = "Generate a routing module for the initial project.";
                    Description = "Generate a routing module for the initial project.";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-git", "-g");
                    Name        = "Do not initialize a git repository.";
                    Description = "Do not initialize a git repository.";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-install");
                    Name        = "Do not install dependency packages.";
                    Description = "Do not install dependency packages.";
                },
                [FlagParameter]@{
                    Keys        = @("--skip-tests", "-S");
                    Name        = "Do not generate `"spec.ts`" test files for the new project.";
                    Description = "Do not generate `"spec.ts`" test files for the new project.";
                },
                [FlagParameter]@{
                    Keys        = @("--strict");
                    Name        = "Creates a workspace with stricter type checking and stricter bundle budgets settings.";
                    Description = "Creates a workspace with stricter type checking and stricter bundle budgets settings.";
                },
                [ValueParameter]@{
                    Keys        = @("--style");
                    Name        = "The file extension or preprocessor to use for style files.";
                    Description = "The file extension or preprocessor to use for style files.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--view-encapsulation");
                    Name        = "The view encapsulation strategy to use in the initial project.";
                    Description = "The view encapsulation strategy to use in the initial project.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("run");
            Name        = "run";
            Description = "Runs an Architect target with an optional custom builder configuration defined in your project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--configuration", "-c");
                    Name        = "One or more named builder configurations";
                    Description = "One or more named builder configurations";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("serve");
            Name        = "serve";
            Description = "Builds and serves your app, rebuilding on file changes";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--allowed-hosts");
                    Name        = "List of hosts that are allowed to access the dev server.";
                    Description = "List of hosts that are allowed to access the dev server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--browser-target");
                    Name        = "A browser builder target to serve";
                    Description = "A browser builder target to serve";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--configuration", "-c");
                    Name        = "One or more named builder configurations";
                    Description = "One or more named builder configurations";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--disable-host-check");
                    Name        = "Don't verify connected clients are part of allowed hosts.";
                    Description = "Don't verify connected clients are part of allowed hosts.";
                },
                [FlagParameter]@{
                    Keys        = @("--hmr");
                    Name        = "Enable hot module replacement.";
                    Description = "Enable hot module replacement.";
                },
                [ValueParameter]@{
                    Keys        = @("--host");
                    Name        = "Host to listen on.";
                    Description = "Host to listen on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--live-reload");
                    Name        = "Whether to reload the page on change, using live-reload.";
                    Description = "Whether to reload the page on change, using live-reload.";
                },
                [FlagParameter]@{
                    Keys        = @("--open", "-o");
                    Name        = "Opens the url in default browser.";
                    Description = "Opens the url in default browser.";
                },
                [ValueParameter]@{
                    Keys        = @("--poll");
                    Name        = "Enable and define the file watching poll time period in milliseconds.";
                    Description = "Enable and define the file watching poll time period in milliseconds.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--port");
                    Name        = "Port to listen on.";
                    Description = "Port to listen on.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--proxy-config");
                    Name        = "Proxy configuration file.";
                    Description = "Proxy configuration file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--public-host");
                    Name        = "The URL that the browser client should use to connect to the development server.";
                    Description = "The URL that the browser client should use to connect to the development server.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--serve-path");
                    Name        = "The pathname where the app will be served.";
                    Description = "The pathname where the app will be served.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--ssl");
                    Name        = "Serve using HTTPS.";
                    Description = "Serve using HTTPS.";
                },
                [ValueParameter]@{
                    Keys        = @("--ssl-cert");
                    Name        = "SSL certificate to use for serving HTTPS.";
                    Description = "SSL certificate to use for serving HTTPS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--ssl-key");
                    Name        = "SSL key to use for serving HTTPS.";
                    Description = "SSL key to use for serving HTTPS.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose");
                    Name        = "Adds more details to output logging.";
                    Description = "Adds more details to output logging.";
                },
                [FlagParameter]@{
                    Keys        = @("--watch");
                    Name        = "Rebuild on change.";
                    Description = "Rebuild on change.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "Runs unit tests in a project";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--browsers");
                    Name        = "Override which browsers tests are run against.";
                    Description = "Override which browsers tests are run against.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--code-coverage");
                    Name        = "Output a code coverage report.";
                    Description = "Output a code coverage report.";
                },
                [ValueParameter]@{
                    Keys        = @("--code-coverage-exclude");
                    Name        = "Globs to exclude from code coverage.";
                    Description = "Globs to exclude from code coverage.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--configuration", "-c");
                    Name        = "One or more named builder configurations";
                    Description = "One or more named builder configurations";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--include");
                    Name        = "Globs of files to include, relative to workspace or project root.";
                    Description = "Globs of files to include, relative to workspace or project root.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--inline-style-language");
                    Name        = "The stylesheet language to use for the application's inline component styles.";
                    Description = "The stylesheet language to use for the application's inline component styles.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--karma-config");
                    Name        = "The name of the Karma configuration file.";
                    Description = "The name of the Karma configuration file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--main");
                    Name        = "The name of the main entry-point file.";
                    Description = "The name of the main entry-point file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--poll");
                    Name        = "Enable and define the file watching poll time period in milliseconds.";
                    Description = "Enable and define the file watching poll time period in milliseconds.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--polyfills");
                    Name        = "The name of the polyfills file.";
                    Description = "The name of the polyfills file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--preserve-symlinks");
                    Name        = "Do not use the real path when resolving modules.";
                    Description = "Do not use the real path when resolving modules.";
                },
                [FlagParameter]@{
                    Keys        = @("--progress");
                    Name        = "Log progress to the console while building.";
                    Description = "Log progress to the console while building.";
                },
                [ValueParameter]@{
                    Keys        = @("--reporters");
                    Name        = "Karma reporters to use. Directly passed to the karma runner.";
                    Description = "Karma reporters to use. Directly passed to the karma runner.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--source-map");
                    Name        = "Output source maps for scripts and styles.";
                    Description = "Output source maps for scripts and styles.";
                },
                [ValueParameter]@{
                    Keys        = @("--ts-config");
                    Name        = "The name of the TypeScript configuration file.";
                    Description = "The name of the TypeScript configuration file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--watch");
                    Name        = "Run build when files change.";
                    Description = "Run build when files change.";
                },
                [ValueParameter]@{
                    Keys        = @("--web-worker-ts-config");
                    Name        = "TypeScript configuration for Web Worker modules.";
                    Description = "TypeScript configuration for Web Worker modules.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "Updates your application and its dependencies";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--allow-dirty");
                    Name        = "Whether to allow updating when the repository contains modified or untracked files.";
                    Description = "Whether to allow updating when the repository contains modified or untracked files.";
                },
                [FlagParameter]@{
                    Keys        = @("--create-commits", "-C");
                    Name        = "Create source control commits for updates and migrations.";
                    Description = "Create source control commits for updates and migrations.";
                },
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Ignore peer dependency version mismatches.";
                    Description = "Ignore peer dependency version mismatches.";
                },
                [ValueParameter]@{
                    Keys        = @("--from");
                    Name        = "Version from which to migrate from.";
                    Description = "Version from which to migrate from.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--migrate-only");
                    Name        = "Only perform a migration, do not update the installed version.";
                    Description = "Only perform a migration, do not update the installed version.";
                },
                [FlagParameter]@{
                    Keys        = @("--next");
                    Name        = "Use the prerelease version, including beta and RCs.";
                    Description = "Use the prerelease version, including beta and RCs.";
                },
                [ValueParameter]@{
                    Keys        = @("--packages");
                    Name        = "The names of package(s) to update.";
                    Description = "The names of package(s) to update.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--to");
                    Name        = "Version up to which to apply migrations.";
                    Description = "Version up to which to apply migrations.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--verbose");
                    Name        = "Display additional details about internal operations during execution.";
                    Description = "Display additional details about internal operations during execution.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Outputs Angular CLI version";
        }
    )
}
