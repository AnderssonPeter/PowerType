# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.typescriptlang.org/docs/handbook/compiler-options.html";
    Keys        = @("tsc");
    Name        = "tsc";
    Description = "The TypeScript Compiler";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all");
            Name        = "Show all compiler options.";
            Description = "Show all compiler options.";
        },
        [FlagParameter]@{
            Keys        = @("--allowJs");
            Name        = "Allow JavaScript files to be a part of your program. Use the ``checkJS`` option to get errors from these files.";
            Description = "Allow JavaScript files to be a part of your program. Use the ``checkJS`` option to get errors from these files.";
        },
        [FlagParameter]@{
            Keys        = @("--allowSyntheticDefaultImports");
            Name        = "Allow 'import x from y' when a module doesn't have a default export.";
            Description = "Allow 'import x from y' when a module doesn't have a default export.";
        },
        [FlagParameter]@{
            Keys        = @("--allowUmdGlobalAccess");
            Name        = "Allow accessing UMD globals from modules.";
            Description = "Allow accessing UMD globals from modules.";
        },
        [FlagParameter]@{
            Keys        = @("--allowUnreachableCode");
            Name        = "Disable error reporting for unreachable code.";
            Description = "Disable error reporting for unreachable code.";
        },
        [FlagParameter]@{
            Keys        = @("--allowUnusedLabels");
            Name        = "Disable error reporting for unused labels.";
            Description = "Disable error reporting for unused labels.";
        },
        [FlagParameter]@{
            Keys        = @("--alwaysStrict");
            Name        = "Ensure 'use strict' is always emitted.";
            Description = "Ensure 'use strict' is always emitted.";
        },
        [FlagParameter]@{
            Keys        = @("--assumeChangesOnlyAffectDirectDependencies");
            Name        = "Have recompiles in projects that use ``incremental`` and ``watch`` mode assume that changes within a file will only affect files directly depending on it.";
            Description = "Have recompiles in projects that use ``incremental`` and ``watch`` mode assume that changes within a file will only affect files directly depending on it.";
        },
        [ValueParameter]@{
            Keys        = @("--baseUrl");
            Name        = "Specify the base directory to resolve non-relative module names.";
            Description = "Specify the base directory to resolve non-relative module names.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--build");
            Name        = "Build one or more projects and their dependencies, if out of date";
            Description = "Build one or more projects and their dependencies, if out of date";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--checkJs");
            Name        = "Enable error reporting in type-checked JavaScript files.";
            Description = "Enable error reporting in type-checked JavaScript files.";
        },
        [FlagParameter]@{
            Keys        = @("--clean");
            Name        = "Delete the outputs of all projects";
            Description = "Delete the outputs of all projects";
        },
        [FlagParameter]@{
            Keys        = @("--composite");
            Name        = "Enable constraints that allow a TypeScript project to be used with project references.";
            Description = "Enable constraints that allow a TypeScript project to be used with project references.";
        },
        [ValueParameter]@{
            Keys        = @("--declaration");
            Name        = "Generate .d.ts files from TypeScript and JavaScript files in your project.";
            Description = "Generate .d.ts files from TypeScript and JavaScript files in your project.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--declarationDir");
            Name        = "Specify the output directory for generated declaration files.";
            Description = "Specify the output directory for generated declaration files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--declarationMap");
            Name        = "Create sourcemaps for d.ts files.";
            Description = "Create sourcemaps for d.ts files.";
        },
        [FlagParameter]@{
            Keys        = @("--diagnostics");
            Name        = "Output compiler performance information after building.";
            Description = "Output compiler performance information after building.";
        },
        [FlagParameter]@{
            Keys        = @("--disableReferencedProjectLoad");
            Name        = "Reduce the number of projects loaded automatically by TypeScript.";
            Description = "Reduce the number of projects loaded automatically by TypeScript.";
        },
        [FlagParameter]@{
            Keys        = @("--disableSizeLimit");
            Name        = "Remove the 20mb cap on total source code size for JavaScript files in the TypeScript language server.";
            Description = "Remove the 20mb cap on total source code size for JavaScript files in the TypeScript language server.";
        },
        [FlagParameter]@{
            Keys        = @("--disableSolutionSearching");
            Name        = "Opt a project out of multi-project reference checking when editing.";
            Description = "Opt a project out of multi-project reference checking when editing.";
        },
        [FlagParameter]@{
            Keys        = @("--disableSourceOfProjectReferenceRedirect");
            Name        = "Disable preferring source files instead of declaration files when referencing composite projects";
            Description = "Disable preferring source files instead of declaration files when referencing composite projects";
        },
        [FlagParameter]@{
            Keys        = @("--downlevelIteration");
            Name        = "Emit more compliant, but verbose and less performant JavaScript for iteration.";
            Description = "Emit more compliant, but verbose and less performant JavaScript for iteration.";
        },
        [ValueParameter]@{
            Keys        = @("--dry", "-d");
            Name        = "Show what would be built (or deleted, if specified with '--clean')";
            Description = "Show what would be built (or deleted, if specified with '--clean')";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--emitBOM");
            Name        = "Emit a UTF-8 Byte Order Mark (BOM) in the beginning of output files.";
            Description = "Emit a UTF-8 Byte Order Mark (BOM) in the beginning of output files.";
        },
        [FlagParameter]@{
            Keys        = @("--emitDeclarationOnly");
            Name        = "Only output d.ts files and not JavaScript files.";
            Description = "Only output d.ts files and not JavaScript files.";
        },
        [FlagParameter]@{
            Keys        = @("--emitDecoratorMetadata");
            Name        = "Emit design-type metadata for decorated declarations in source files.";
            Description = "Emit design-type metadata for decorated declarations in source files.";
        },
        [FlagParameter]@{
            Keys        = @("--esModuleInterop");
            Name        = "Emit additional JavaScript to ease support for importing CommonJS modules. This enables ``allowSyntheticDefaultImports`` for type compatibility.";
            Description = "Emit additional JavaScript to ease support for importing CommonJS modules. This enables ``allowSyntheticDefaultImports`` for type compatibility.";
        },
        [FlagParameter]@{
            Keys        = @("--exactOptionalPropertyTypes");
            Name        = "Interpret optional property types as written, rather than adding 'undefined'.";
            Description = "Interpret optional property types as written, rather than adding 'undefined'.";
        },
        [ValueParameter]@{
            Keys        = @("--excludeDirectories");
            Name        = "Remove a list of directories from the watch process.";
            Description = "Remove a list of directories from the watch process.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--excludeFiles");
            Name        = "Remove a list of files from the watch mode's processing.";
            Description = "Remove a list of files from the watch mode's processing.";
        },
        [FlagParameter]@{
            Keys        = @("--experimentalDecorators");
            Name        = "Enable experimental support for TC39 stage 2 draft decorators.";
            Description = "Enable experimental support for TC39 stage 2 draft decorators.";
        },
        [FlagParameter]@{
            Keys        = @("--explainFiles");
            Name        = "Print files read during the compilation including why it was included.";
            Description = "Print files read during the compilation including why it was included.";
        },
        [FlagParameter]@{
            Keys        = @("--extendedDiagnostics");
            Name        = "Output more detailed compiler performance information after building.";
            Description = "Output more detailed compiler performance information after building.";
        },
        [ValueParameter]@{
            Keys        = @("--fallbackPolling");
            Name        = "Specify what approach the watcher should use if the system runs out of native file watchers.";
            Description = "Specify what approach the watcher should use if the system runs out of native file watchers.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--force", "-f");
            Name        = "Build all projects, including those that appear to be up to date";
            Description = "Build all projects, including those that appear to be up to date";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--forceConsistentCasingInFileNames");
            Name        = "Ensure that casing is correct in imports.";
            Description = "Ensure that casing is correct in imports.";
        },
        [ValueParameter]@{
            Keys        = @("--generateCpuProfile");
            Name        = "Emit a v8 CPU profile of the compiler run for debugging.";
            Description = "Emit a v8 CPU profile of the compiler run for debugging.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--generateTrace");
            Name        = "Generates an event trace and a list of types.";
            Description = "Generates an event trace and a list of types.";
        },
        [ValueParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this message.";
            Description = "Print this message.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--importHelpers");
            Name        = "Allow importing helper functions from tslib once per project, instead of including them per-file.";
            Description = "Allow importing helper functions from tslib once per project, instead of including them per-file.";
        },
        [FlagParameter]@{
            Keys        = @("--importsNotUsedAsValues");
            Name        = "Specify emit/checking behavior for imports that are only used for types";
            Description = "Specify emit/checking behavior for imports that are only used for types";
        },
        [ValueParameter]@{
            Keys        = @("--incremental", "-i");
            Name        = "Enable incremental compilation";
            Description = "Enable incremental compilation";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--init");
            Name        = "Initializes a TypeScript project and creates a tsconfig.json file.";
            Description = "Initializes a TypeScript project and creates a tsconfig.json file.";
        },
        [FlagParameter]@{
            Keys        = @("--inlineSourceMap");
            Name        = "Include sourcemap files inside the emitted JavaScript.";
            Description = "Include sourcemap files inside the emitted JavaScript.";
        },
        [FlagParameter]@{
            Keys        = @("--inlineSources");
            Name        = "Include source code in the sourcemaps inside the emitted JavaScript.";
            Description = "Include source code in the sourcemaps inside the emitted JavaScript.";
        },
        [FlagParameter]@{
            Keys        = @("--isolatedModules");
            Name        = "Ensure that each file can be safely transpiled without relying on other imports.";
            Description = "Ensure that each file can be safely transpiled without relying on other imports.";
        },
        [ValueParameter]@{
            Keys        = @("--jsx");
            Name        = "Specify what JSX code is generated.";
            Description = "Specify what JSX code is generated.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--jsxFactory");
            Name        = "Specify the JSX factory function used when targeting React JSX emit, e.g. 'React.createElement' or 'h'";
            Description = "Specify the JSX factory function used when targeting React JSX emit, e.g. 'React.createElement' or 'h'";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--jsxFragmentFactory");
            Name        = "Specify the JSX Fragment reference used for fragments when targeting React JSX emit e.g. 'React.Fragment' or 'Fragment'.";
            Description = "Specify the JSX Fragment reference used for fragments when targeting React JSX emit e.g. 'React.Fragment' or 'Fragment'.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--jsxImportSource");
            Name        = "Specify module specifier used to import the JSX factory functions when using ``jsx: react-jsx*``.``";
            Description = "Specify module specifier used to import the JSX factory functions when using ``jsx: react-jsx*``.``";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--lib");
            Name        = "Specify a set of bundled library declaration files that describe the target runtime environment.";
            Description = "Specify a set of bundled library declaration files that describe the target runtime environment.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--listEmittedFiles");
            Name        = "Print the names of emitted files after a compilation.";
            Description = "Print the names of emitted files after a compilation.";
        },
        [FlagParameter]@{
            Keys        = @("--listFiles");
            Name        = "Print all of the files read during the compilation.";
            Description = "Print all of the files read during the compilation.";
        },
        [FlagParameter]@{
            Keys        = @("--listFilesOnly");
            Name        = "Print names of files that are part of the compilation and then stop processing.";
            Description = "Print names of files that are part of the compilation and then stop processing.";
        },
        [ValueParameter]@{
            Keys        = @("--locale");
            Name        = "Set the language of the messaging from TypeScript. This does not affect emit.";
            Description = "Set the language of the messaging from TypeScript. This does not affect emit.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mapRoot");
            Name        = "Specify the location where debugger should locate map files instead of generated locations.";
            Description = "Specify the location where debugger should locate map files instead of generated locations.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--maxNodeModuleJsDepth");
            Name        = "Specify the maximum folder depth used for checking JavaScript files from ``node_modules``. Only applicable with ``allowJs``.";
            Description = "Specify the maximum folder depth used for checking JavaScript files from ``node_modules``. Only applicable with ``allowJs``.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--module", "-m");
            Name        = "VAL  Specify what module code is generated.";
            Description = "VAL  Specify what module code is generated.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--moduleResolution");
            Name        = "Specify how TypeScript looks up a file from a given module specifier.";
            Description = "Specify how TypeScript looks up a file from a given module specifier.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--newLine");
            Name        = "Set the newline character for emitting files.";
            Description = "Set the newline character for emitting files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--noEmit");
            Name        = "Disable emitting files from a compilation.";
            Description = "Disable emitting files from a compilation.";
        },
        [FlagParameter]@{
            Keys        = @("--noEmitHelpers");
            Name        = "Disable generating custom helper functions like ``__extends`` in compiled output.";
            Description = "Disable generating custom helper functions like ``__extends`` in compiled output.";
        },
        [FlagParameter]@{
            Keys        = @("--noEmitOnError");
            Name        = "Disable emitting files if any type checking errors are reported.";
            Description = "Disable emitting files if any type checking errors are reported.";
        },
        [FlagParameter]@{
            Keys        = @("--noErrorTruncation");
            Name        = "Disable truncating types in error messages.";
            Description = "Disable truncating types in error messages.";
        },
        [FlagParameter]@{
            Keys        = @("--noFallthroughCasesInSwitch");
            Name        = "Enable error reporting for fallthrough cases in switch statements.";
            Description = "Enable error reporting for fallthrough cases in switch statements.";
        },
        [FlagParameter]@{
            Keys        = @("--noImplicitAny");
            Name        = "Enable error reporting for expressions and declarations with an implied ``any`` type..";
            Description = "Enable error reporting for expressions and declarations with an implied ``any`` type..";
        },
        [FlagParameter]@{
            Keys        = @("--noImplicitOverride");
            Name        = "Ensure overriding members in derived classes are marked with an override modifier.";
            Description = "Ensure overriding members in derived classes are marked with an override modifier.";
        },
        [FlagParameter]@{
            Keys        = @("--noImplicitReturns");
            Name        = "Enable error reporting for codepaths that do not explicitly return in a function.";
            Description = "Enable error reporting for codepaths that do not explicitly return in a function.";
        },
        [FlagParameter]@{
            Keys        = @("--noImplicitThis");
            Name        = "Enable error reporting when ``this`` is given the type ``any``.";
            Description = "Enable error reporting when ``this`` is given the type ``any``.";
        },
        [FlagParameter]@{
            Keys        = @("--noLib");
            Name        = "Disable including any library files, including the default lib.d.ts.";
            Description = "Disable including any library files, including the default lib.d.ts.";
        },
        [FlagParameter]@{
            Keys        = @("--noPropertyAccessFromIndexSignature");
            Name        = "Enforces using indexed accessors for keys declared using an indexed type";
            Description = "Enforces using indexed accessors for keys declared using an indexed type";
        },
        [FlagParameter]@{
            Keys        = @("--noResolve");
            Name        = "Disallow ``import``s, ``require``s or ``<reference>``s from expanding the number of files TypeScript should add to a project.";
            Description = "Disallow ``import``s, ``require``s or ``<reference>``s from expanding the number of files TypeScript should add to a project.";
        },
        [FlagParameter]@{
            Keys        = @("--noUncheckedIndexedAccess");
            Name        = "Include 'undefined' in index signature results";
            Description = "Include 'undefined' in index signature results";
        },
        [FlagParameter]@{
            Keys        = @("--noUnusedLocals");
            Name        = "Enable error reporting when a local variables aren't read.";
            Description = "Enable error reporting when a local variables aren't read.";
        },
        [FlagParameter]@{
            Keys        = @("--noUnusedParameters");
            Name        = "Raise an error when a function parameter isn't read";
            Description = "Raise an error when a function parameter isn't read";
        },
        [ValueParameter]@{
            Keys        = @("--outDir");
            Name        = "Specify an output folder for all emitted files.";
            Description = "Specify an output folder for all emitted files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--outFile");
            Name        = "Specify a file that bundles all outputs into one JavaScript file. If ``declaration`` is true, also designates a file that bundles all .d.ts output.";
            Description = "Specify a file that bundles all outputs into one JavaScript file. If ``declaration`` is true, also designates a file that bundles all .d.ts output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--paths");
            Name        = "Specify a set of entries that re-map imports to additional lookup locations.";
            Description = "Specify a set of entries that re-map imports to additional lookup locations.";
        },
        [ValueParameter]@{
            Keys        = @("--plugins");
            Name        = "List of language service plugins.";
            Description = "List of language service plugins.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--preserveConstEnums");
            Name        = "Disable erasing ``const enum`` declarations in generated code.";
            Description = "Disable erasing ``const enum`` declarations in generated code.";
        },
        [FlagParameter]@{
            Keys        = @("--preserveSymlinks");
            Name        = "Disable resolving symlinks to their realpath. This correlates to the same flag in node.";
            Description = "Disable resolving symlinks to their realpath. This correlates to the same flag in node.";
        },
        [FlagParameter]@{
            Keys        = @("--preserveWatchOutput");
            Name        = "Disable wiping the console in watch mode";
            Description = "Disable wiping the console in watch mode";
        },
        [FlagParameter]@{
            Keys        = @("--pretty");
            Name        = "Enable color and formatting in TypeScript's output to make compiler errors easier to read";
            Description = "Enable color and formatting in TypeScript's output to make compiler errors easier to read";
        },
        [ValueParameter]@{
            Keys        = @("--reactNamespace");
            Name        = "Specify the object invoked for ``createElement``. This only applies when targeting ``react`` JSX emit.";
            Description = "Specify the object invoked for ``createElement``. This only applies when targeting ``react`` JSX emit.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--removeComments");
            Name        = "Disable emitting comments.";
            Description = "Disable emitting comments.";
        },
        [FlagParameter]@{
            Keys        = @("--resolveJsonModule");
            Name        = "Enable importing .json files";
            Description = "Enable importing .json files";
        },
        [ValueParameter]@{
            Keys        = @("--rootDir");
            Name        = "Specify the root folder within your source files.";
            Description = "Specify the root folder within your source files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--rootDirs");
            Name        = "Allow multiple folders to be treated as one when resolving modules.";
            Description = "Allow multiple folders to be treated as one when resolving modules.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--showConfig");
            Name        = "Print the final configuration instead of building.";
            Description = "Print the final configuration instead of building.";
        },
        [FlagParameter]@{
            Keys        = @("--skipDefaultLibCheck");
            Name        = "Skip type checking .d.ts files that are included with TypeScript.";
            Description = "Skip type checking .d.ts files that are included with TypeScript.";
        },
        [FlagParameter]@{
            Keys        = @("--skipLibCheck");
            Name        = "Skip type checking all .d.ts files.";
            Description = "Skip type checking all .d.ts files.";
        },
        [FlagParameter]@{
            Keys        = @("--sourceMap");
            Name        = "Create source map files for emitted JavaScript files.";
            Description = "Create source map files for emitted JavaScript files.";
        },
        [ValueParameter]@{
            Keys        = @("--sourceRoot");
            Name        = "Specify the root path for debuggers to find the reference source code.";
            Description = "Specify the root path for debuggers to find the reference source code.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--strict");
            Name        = "Enable all strict type-checking options.";
            Description = "Enable all strict type-checking options.";
        },
        [FlagParameter]@{
            Keys        = @("--strictBindCallApply");
            Name        = "Check that the arguments for ``bind``, ``call``, and ``apply`` methods match the original function.";
            Description = "Check that the arguments for ``bind``, ``call``, and ``apply`` methods match the original function.";
        },
        [FlagParameter]@{
            Keys        = @("--strictFunctionTypes");
            Name        = "When assigning functions, check to ensure parameters and the return values are subtype-compatible.";
            Description = "When assigning functions, check to ensure parameters and the return values are subtype-compatible.";
        },
        [FlagParameter]@{
            Keys        = @("--strictNullChecks");
            Name        = "When type checking, take into account ``null`` and ``undefined``.";
            Description = "When type checking, take into account ``null`` and ``undefined``.";
        },
        [FlagParameter]@{
            Keys        = @("--strictPropertyInitialization");
            Name        = "Check for class properties that are declared but not set in the constructor.";
            Description = "Check for class properties that are declared but not set in the constructor.";
        },
        [FlagParameter]@{
            Keys        = @("--stripInternal");
            Name        = "Disable emitting declarations that have ``@internal`` in their JSDoc comments.";
            Description = "Disable emitting declarations that have ``@internal`` in their JSDoc comments.";
        },
        [FlagParameter]@{
            Keys        = @("--synchronousWatchDirectory");
            Name        = "Synchronously call callbacks and update the state of directory watchers on platforms that don``t support recursive watching natively.";
            Description = "Synchronously call callbacks and update the state of directory watchers on platforms that don``t support recursive watching natively.";
        },
        [ValueParameter]@{
            Keys        = @("--target", "-t");
            Name        = "Set the JavaScript language version for emitted JavaScript and include compatible library declarations";
            Description = "Set the JavaScript language version for emitted JavaScript and include compatible library declarations";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--traceResolution");
            Name        = "Log paths used during the ``moduleResolution`` process.";
            Description = "Log paths used during the ``moduleResolution`` process.";
        },
        [ValueParameter]@{
            Keys        = @("--tsBuildInfoFile");
            Name        = "Specify the folder for .tsbuildinfo incremental compilation files.";
            Description = "Specify the folder for .tsbuildinfo incremental compilation files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--typeRoots");
            Name        = "Specify multiple folders that act like ``./node_modules/@types``.";
            Description = "Specify multiple folders that act like ``./node_modules/@types``.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--types");
            Name        = "Specify type package names to be included without being referenced in a source file.";
            Description = "Specify type package names to be included without being referenced in a source file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--useDefineForClassFields");
            Name        = "Emit ECMAScript-standard-compliant class fields.";
            Description = "Emit ECMAScript-standard-compliant class fields.";
        },
        [FlagParameter]@{
            Keys        = @("--useUnknownInCatchVariables");
            Name        = "Type catch clause variables as 'unknown' instead of 'any'.";
            Description = "Type catch clause variables as 'unknown' instead of 'any'.";
        },
        [ValueParameter]@{
            Keys        = @("--verbose");
            Name        = "Enable verbose logging";
            Description = "Enable verbose logging";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print the compiler's version.";
            Description = "Print the compiler's version.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--watch", "-w");
            Name        = "Watch input files.";
            Description = "Watch input files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--watchDirectory");
            Name        = "Specify how directories are watched on systems that lack recursive file-watching functionality.";
            Description = "Specify how directories are watched on systems that lack recursive file-watching functionality.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--watchFile");
            Name        = "Specify how the TypeScript watch mode works.";
            Description = "Specify how the TypeScript watch mode works.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
