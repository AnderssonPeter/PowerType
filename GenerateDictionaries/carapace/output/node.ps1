# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://nodejs.org/en/";
    Keys        = @("node");
    Name        = "node";
    Description = "server-side JavaScript runtime";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--abort-on-uncaught-exception");
            Name        = "Aborting instead of exiting causes a core file to be generated for analysis.";
            Description = "Aborting instead of exiting causes a core file to be generated for analysis.";
        },
        [FlagParameter]@{
            Keys        = @("--check", "-c");
            Name        = "Check the script's syntax without executing it.";
            Description = "Check the script's syntax without executing it.";
        },
        [FlagParameter]@{
            Keys        = @("--completion-bash");
            Name        = "Print source-able bash completion script for Node.js.";
            Description = "Print source-able bash completion script for Node.js.";
        },
        [ValueParameter]@{
            Keys        = @("--conditions");
            Name        = "Use custom conditional exports conditions.";
            Description = "Use custom conditional exports conditions.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cpu-prof");
            Name        = "Start the V8 CPU profiler on start up";
            Description = "Start the V8 CPU profiler on start up";
        },
        [ValueParameter]@{
            Keys        = @("--cpu-prof-dir");
            Name        = "The directory where the CPU profiles will be placed.";
            Description = "The directory where the CPU profiles will be placed.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cpu-prof-interval");
            Name        = "The sampling interval in microseconds for the CPU profiles.";
            Description = "The sampling interval in microseconds for the CPU profiles.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cpu-prof-name");
            Name        = "File name of the V8 CPU profile.";
            Description = "File name of the V8 CPU profile.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--diagnostic-dir");
            Name        = "Set the directory for all diagnostic output files.";
            Description = "Set the directory for all diagnostic output files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--disable-proto");
            Name        = "Disable the ``Object.prototype.__proto__`` property.";
            Description = "Disable the ``Object.prototype.__proto__`` property.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disallow-code-generation-from-strings");
            Name        = "Make built-in language features that generate code from strings throw an exception instead.";
            Description = "Make built-in language features that generate code from strings throw an exception instead.";
        },
        [FlagParameter]@{
            Keys        = @("--enable-fips");
            Name        = "Enable FIPS-compliant crypto at startup.";
            Description = "Enable FIPS-compliant crypto at startup.";
        },
        [FlagParameter]@{
            Keys        = @("--enable-source-maps");
            Name        = "Enable Source Map V3 support for stack traces.";
            Description = "Enable Source Map V3 support for stack traces.";
        },
        [ValueParameter]@{
            Keys        = @("--eval", "-e");
            Name        = "Evaluate string as JavaScript.";
            Description = "Evaluate string as JavaScript.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--experimental-import-meta-resolve");
            Name        = "Enable experimental ES modules support for import.meta.resolve().";
            Description = "Enable experimental ES modules support for import.meta.resolve().";
        },
        [FlagParameter]@{
            Keys        = @("--experimental-json-modules");
            Name        = "Enable experimental JSON interop support for the ES Module loader.";
            Description = "Enable experimental JSON interop support for the ES Module loader.";
        },
        [ValueParameter]@{
            Keys        = @("--experimental-loader");
            Name        = "Specify the module to use as a custom module loader.";
            Description = "Specify the module to use as a custom module loader.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--experimental-policy");
            Name        = "Use the specified file as a security policy.";
            Description = "Use the specified file as a security policy.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--experimental-repl-await");
            Name        = "Enable experimental top-level await keyword support in REPL.";
            Description = "Enable experimental top-level await keyword support in REPL.";
        },
        [ValueParameter]@{
            Keys        = @("--experimental-specifier-resolution");
            Name        = "Select extension resolution algorithm for ES Modules.";
            Description = "Select extension resolution algorithm for ES Modules.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--experimental-vm-modules");
            Name        = "Enable experimental ES module support in VM module.";
            Description = "Enable experimental ES module support in VM module.";
        },
        [FlagParameter]@{
            Keys        = @("--experimental-wasi-unstable-preview1");
            Name        = "Enable experimental WebAssembly System Interface support.";
            Description = "Enable experimental WebAssembly System Interface support.";
        },
        [FlagParameter]@{
            Keys        = @("--experimental-wasm-modules");
            Name        = "Enable experimental WebAssembly module support.";
            Description = "Enable experimental WebAssembly module support.";
        },
        [FlagParameter]@{
            Keys        = @("--force-context-aware");
            Name        = "Disable loading native addons that are not context-aware.";
            Description = "Disable loading native addons that are not context-aware.";
        },
        [FlagParameter]@{
            Keys        = @("--force-fips");
            Name        = "Force FIPS-compliant crypto on startup.";
            Description = "Force FIPS-compliant crypto on startup.";
        },
        [FlagParameter]@{
            Keys        = @("--frozen-intrinsics");
            Name        = "Enable experimental frozen intrinsics support.";
            Description = "Enable experimental frozen intrinsics support.";
        },
        [FlagParameter]@{
            Keys        = @("--heap-prof");
            Name        = "Start the V8 heap profiler on start up.";
            Description = "Start the V8 heap profiler on start up.";
        },
        [ValueParameter]@{
            Keys        = @("--heap-prof-dir");
            Name        = "The directory where the heap profiles will be placed.";
            Description = "The directory where the heap profiles will be placed.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--heap-prof-interval");
            Name        = "The average sampling interval in bytes for the heap profiles.";
            Description = "The average sampling interval in bytes for the heap profiles.";
        },
        [ValueParameter]@{
            Keys        = @("--heap-prof-name");
            Name        = "File name of the V8 heap profile.";
            Description = "File name of the V8 heap profile.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--heapsnapshot-near-heap-limit");
            Name        = "Generate heap snapshot when the V8 heap usage is approaching the heap limit.";
            Description = "Generate heap snapshot when the V8 heap usage is approaching the heap limit.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--heapsnapshot-signal");
            Name        = "Generate heap snapshot on specified signal.";
            Description = "Generate heap snapshot on specified signal.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print command-line options.";
            Description = "Print command-line options.";
        },
        [ValueParameter]@{
            Keys        = @("--icu-data-dir");
            Name        = "Specify ICU data load path.";
            Description = "Specify ICU data load path.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--input-type");
            Name        = "Set the module resolution type for input via --eval, --print or STDIN.";
            Description = "Set the module resolution type for input via --eval, --print or STDIN.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--insecure-http-parser");
            Name        = "Use an insecure HTTP parser that accepts invalid HTTP headers.";
            Description = "Use an insecure HTTP parser that accepts invalid HTTP headers.";
        },
        [ValueParameter]@{
            Keys        = @("--inspect");
            Name        = "Activate inspector on host:port.";
            Description = "Activate inspector on host:port.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--inspect-brk");
            Name        = "Activate inspector on host:port and break at start of user script.";
            Description = "Activate inspector on host:port and break at start of user script.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--inspect-port");
            Name        = "Set the host:port to be used when the inspector is activated.";
            Description = "Set the host:port to be used when the inspector is activated.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--inspect-publish-uid");
            Name        = "Specify how the inspector WebSocket URL is exposed.";
            Description = "Specify how the inspector WebSocket URL is exposed.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "Open the REPL even if stdin does not appear to be a terminal.";
            Description = "Open the REPL even if stdin does not appear to be a terminal.";
        },
        [FlagParameter]@{
            Keys        = @("--jitless");
            Name        = "Disable runtime allocation of executable memory.";
            Description = "Disable runtime allocation of executable memory.";
        },
        [ValueParameter]@{
            Keys        = @("--max-http-header-size");
            Name        = "Specify the maximum size of HTTP headers in bytes.";
            Description = "Specify the maximum size of HTTP headers in bytes.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--napi-modules");
            Name        = "This option is a no-op.";
            Description = "This option is a no-op.";
        },
        [FlagParameter]@{
            Keys        = @("--no-deprecation");
            Name        = "Silence deprecation warnings.";
            Description = "Silence deprecation warnings.";
        },
        [FlagParameter]@{
            Keys        = @("--no-force-async-hooks-checks");
            Name        = "Disable runtime checks for ``async_hooks``.";
            Description = "Disable runtime checks for ``async_hooks``.";
        },
        [FlagParameter]@{
            Keys        = @("--no-warnings");
            Name        = "Silence all process warnings (including deprecations).";
            Description = "Silence all process warnings (including deprecations).";
        },
        [FlagParameter]@{
            Keys        = @("--node-memory-debug");
            Name        = "Enable extra debug checks for memory leaks in Node.js internals.";
            Description = "Enable extra debug checks for memory leaks in Node.js internals.";
        },
        [ValueParameter]@{
            Keys        = @("--openssl-config");
            Name        = "Load an OpenSSL configuration file on startup.";
            Description = "Load an OpenSSL configuration file on startup.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--pending-deprecation");
            Name        = "Emit pending deprecation warnings.";
            Description = "Emit pending deprecation warnings.";
        },
        [ValueParameter]@{
            Keys        = @("--policy-integrity");
            Name        = "Instructs Node.js to error prior to running any code if the policy does not have the specified integrity.";
            Description = "Instructs Node.js to error prior to running any code if the policy does not have the specified integrity.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--preserve-symlinks");
            Name        = "Instructs the module loader to preserve symbolic links when resolving and caching modules other than the main module.";
            Description = "Instructs the module loader to preserve symbolic links when resolving and caching modules other than the main module.";
        },
        [FlagParameter]@{
            Keys        = @("--preserve-symlinks-main");
            Name        = "Instructs the module loader to preserve symbolic links when resolving and caching the main module.";
            Description = "Instructs the module loader to preserve symbolic links when resolving and caching the main module.";
        },
        [ValueParameter]@{
            Keys        = @("--print", "-p");
            Name        = "Identical to -e, but prints the result.";
            Description = "Identical to -e, but prints the result.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--prof");
            Name        = "Generate V8 profiler output.";
            Description = "Generate V8 profiler output.";
        },
        [FlagParameter]@{
            Keys        = @("--prof-process");
            Name        = "Process V8 profiler output generated using the V8 option --prof.";
            Description = "Process V8 profiler output generated using the V8 option --prof.";
        },
        [ValueParameter]@{
            Keys        = @("--redirect-warnings");
            Name        = "Write process warnings to the given file instead of printing to stderr.";
            Description = "Write process warnings to the given file instead of printing to stderr.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--report-compact");
            Name        = "Write diagnostic reports in a compact format, single-line JSON.";
            Description = "Write diagnostic reports in a compact format, single-line JSON.";
        },
        [FlagParameter]@{
            Keys        = @("--report-dir");
            Name        = "Location at which the diagnostic report will be generated.";
            Description = "Location at which the diagnostic report will be generated.";
        },
        [FlagParameter]@{
            Keys        = @("--report-directory");
            Name        = "Location at which the diagnostic report will be generated.";
            Description = "Location at which the diagnostic report will be generated.";
        },
        [FlagParameter]@{
            Keys        = @("--report-filename");
            Name        = "Name of the file to which the diagnostic report will be written.";
            Description = "Name of the file to which the diagnostic report will be written.";
        },
        [FlagParameter]@{
            Keys        = @("--report-on-fatalerror");
            Name        = "Enables the diagnostic report to be triggered on fatal errors.";
            Description = "Enables the diagnostic report to be triggered on fatal errors.";
        },
        [FlagParameter]@{
            Keys        = @("--report-on-signal");
            Name        = "Enables diagnostic report to be generated upon receiving the specified signal.";
            Description = "Enables diagnostic report to be generated upon receiving the specified signal.";
        },
        [FlagParameter]@{
            Keys        = @("--report-signal");
            Name        = "Sets or resets the signal for diagnostic report generation.";
            Description = "Sets or resets the signal for diagnostic report generation.";
        },
        [FlagParameter]@{
            Keys        = @("--report-uncaught-exception");
            Name        = "Enables diagnostic report to be generated on un-caught exceptions.";
            Description = "Enables diagnostic report to be generated on un-caught exceptions.";
        },
        [ValueParameter]@{
            Keys        = @("--require", "-r");
            Name        = "Preload the specified module at startup.";
            Description = "Preload the specified module at startup.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--secure-heap");
            Name        = "Specify the size of the OpenSSL secure heap.";
            Description = "Specify the size of the OpenSSL secure heap.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--secure-heap-min");
            Name        = "Specify the minimum allocation from the OpenSSL secure heap.";
            Description = "Specify the minimum allocation from the OpenSSL secure heap.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--throw-deprecation");
            Name        = "Throw errors for deprecations.";
            Description = "Throw errors for deprecations.";
        },
        [ValueParameter]@{
            Keys        = @("--title");
            Name        = "Specify process.title on startup.";
            Description = "Specify process.title on startup.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tls-cipher-list");
            Name        = "Specify an alternative default TLS cipher list.";
            Description = "Specify an alternative default TLS cipher list.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tls-keylog");
            Name        = "Log TLS key material to a file.";
            Description = "Log TLS key material to a file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tls-max-v1.2");
            Name        = "Set default  maxVersion to 'TLSv1.2'.";
            Description = "Set default  maxVersion to 'TLSv1.2'.";
        },
        [FlagParameter]@{
            Keys        = @("--tls-max-v1.3");
            Name        = "Set default  maxVersion to 'TLSv1.3'.";
            Description = "Set default  maxVersion to 'TLSv1.3'.";
        },
        [FlagParameter]@{
            Keys        = @("--tls-min-v1.0");
            Name        = "Set default minVersion to 'TLSv1'.";
            Description = "Set default minVersion to 'TLSv1'.";
        },
        [FlagParameter]@{
            Keys        = @("--tls-min-v1.1");
            Name        = "Set default minVersion to 'TLSv1.1'.";
            Description = "Set default minVersion to 'TLSv1.1'.";
        },
        [FlagParameter]@{
            Keys        = @("--tls-min-v1.2");
            Name        = "Set default minVersion to 'TLSv1.2'.";
            Description = "Set default minVersion to 'TLSv1.2'.";
        },
        [FlagParameter]@{
            Keys        = @("--tls-min-v1.3");
            Name        = "Set default minVersion to 'TLSv1.3'.";
            Description = "Set default minVersion to 'TLSv1.3'.";
        },
        [FlagParameter]@{
            Keys        = @("--trace-atomics-wait");
            Name        = "Print short summaries of calls to Atomics.wait().";
            Description = "Print short summaries of calls to Atomics.wait().";
        },
        [FlagParameter]@{
            Keys        = @("--trace-deprecation");
            Name        = "Print stack traces for deprecations.";
            Description = "Print stack traces for deprecations.";
        },
        [ValueParameter]@{
            Keys        = @("--trace-event-categories");
            Name        = "A comma-separated list of categories that should be traced when trace event tracing is enabled.";
            Description = "A comma-separated list of categories that should be traced when trace event tracing is enabled.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--trace-event-file-pattern");
            Name        = "Template string specifying the filepath for the trace event data.";
            Description = "Template string specifying the filepath for the trace event data.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--trace-events-enabled");
            Name        = "Enable the collection of trace event tracing information.";
            Description = "Enable the collection of trace event tracing information.";
        },
        [FlagParameter]@{
            Keys        = @("--trace-exit");
            Name        = "Prints a stack trace whenever an environment is exited proactively.";
            Description = "Prints a stack trace whenever an environment is exited proactively.";
        },
        [FlagParameter]@{
            Keys        = @("--trace-sigint");
            Name        = "Prints a stack trace on SIGINT.";
            Description = "Prints a stack trace on SIGINT.";
        },
        [FlagParameter]@{
            Keys        = @("--trace-sync-io");
            Name        = "Print a stack trace whenever synchronous I/O is detected after the first turn of the event loop.";
            Description = "Print a stack trace whenever synchronous I/O is detected after the first turn of the event loop.";
        },
        [FlagParameter]@{
            Keys        = @("--trace-tls");
            Name        = "Prints TLS packet trace information to stderr.";
            Description = "Prints TLS packet trace information to stderr.";
        },
        [FlagParameter]@{
            Keys        = @("--trace-uncaught");
            Name        = "Print stack traces for uncaught exceptions.";
            Description = "Print stack traces for uncaught exceptions.";
        },
        [FlagParameter]@{
            Keys        = @("--trace-warnings");
            Name        = "Print stack traces for process warnings (including deprecations).";
            Description = "Print stack traces for process warnings (including deprecations).";
        },
        [FlagParameter]@{
            Keys        = @("--track-heap-objects");
            Name        = "Track heap object allocations for heap snapshots.";
            Description = "Track heap object allocations for heap snapshots.";
        },
        [ValueParameter]@{
            Keys        = @("--unhandled-rejections");
            Name        = "Define the behavior for unhandled rejections.";
            Description = "Define the behavior for unhandled rejections.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--use-bundled-ca");
            Name        = "Use bundled Mozilla CA store as supplied by current Node.js version or use OpenSSL's default CA store.";
            Description = "Use bundled Mozilla CA store as supplied by current Node.js version or use OpenSSL's default CA store.";
        },
        [ValueParameter]@{
            Keys        = @("--use-largepages");
            Name        = "Re-map the Node.js static code to large memory pages at startup.";
            Description = "Re-map the Node.js static code to large memory pages at startup.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--use-openssl-ca");
            Name        = "Use bundled Mozilla CA store as supplied by current Node.js version or use OpenSSL's default CA store.";
            Description = "Use bundled Mozilla CA store as supplied by current Node.js version or use OpenSSL's default CA store.";
        },
        [FlagParameter]@{
            Keys        = @("--v8-options");
            Name        = "Print V8 command-line options.";
            Description = "Print V8 command-line options.";
        },
        [ValueParameter]@{
            Keys        = @("--v8-pool-size");
            Name        = "Set V8's thread pool size which will be used to allocate background jobs.";
            Description = "Set V8's thread pool size which will be used to allocate background jobs.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print node's version.";
            Description = "Print node's version.";
        },
        [FlagParameter]@{
            Keys        = @("--zero-fill-buffers");
            Name        = "Automatically zero-fills all newly allocated Buffer and SlowBuffer instances.";
            Description = "Automatically zero-fills all newly allocated Buffer and SlowBuffer instances.";
        }
    )
}
