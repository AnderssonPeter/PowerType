# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://code.visualstudio.com/";
    Keys        = @("code");
    Name        = "code";
    Description = "Visual Studio Code";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--add", "-a");
            Name        = "Add folder(s) to the last active window.";
            Description = "Add folder(s) to the last active window.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--category");
            Name        = "Filters installed extensions by provided category, when using --list-extensions.";
            Description = "Filters installed extensions by provided category, when using --list-extensions.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--diff");
            Name        = "Compare two files with each other.";
            Description = "Compare two files with each other.";
        },
        [ValueParameter]@{
            Keys        = @("--disable-extension");
            Name        = "Disable an extension.";
            Description = "Disable an extension.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disable-extensions");
            Name        = "Disable all installed extensions.";
            Description = "Disable all installed extensions.";
        },
        [FlagParameter]@{
            Keys        = @("--disable-gpu");
            Name        = "Disable GPU hardware acceleration.";
            Description = "Disable GPU hardware acceleration.";
        },
        [ValueParameter]@{
            Keys        = @("--enable-proposed-api");
            Name        = "Enables proposed API features for extensions.";
            Description = "Enables proposed API features for extensions.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extensions-dir");
            Name        = "Set the root path for extensions.";
            Description = "Set the root path for extensions.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--goto", "-g");
            Name        = "Open a file at the path on the specified line and character position.";
            Description = "Open a file at the path on the specified line and character position.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print usage.";
            Description = "Print usage.";
        },
        [ValueParameter]@{
            Keys        = @("--inspect-brk-extensions");
            Name        = "Allow debugging and profiling of extensions with the extension host being paused after start.";
            Description = "Allow debugging and profiling of extensions with the extension host being paused after start.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--inspect-extensions");
            Name        = "Allow debugging and profiling of extensions.";
            Description = "Allow debugging and profiling of extensions.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--install-extension");
            Name        = "Installs or updates the extension.";
            Description = "Installs or updates the extension.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-extensions");
            Name        = "List the installed extensions.";
            Description = "List the installed extensions.";
        },
        [ValueParameter]@{
            Keys        = @("--locale");
            Name        = "The locale to use (e.g. en-US or zh-TW).";
            Description = "The locale to use (e.g. en-US or zh-TW).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log");
            Name        = "Log level to use.";
            Description = "Log level to use.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-memory");
            Name        = "Max memory size for a window (in Mbytes).";
            Description = "Max memory size for a window (in Mbytes).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--new-window", "-n");
            Name        = "Force to open a new window.";
            Description = "Force to open a new window.";
        },
        [FlagParameter]@{
            Keys        = @("--prof-startup");
            Name        = "Run CPU profiler during startup.";
            Description = "Run CPU profiler during startup.";
        },
        [FlagParameter]@{
            Keys        = @("--reuse-window", "-r");
            Name        = "Force to open a file or folder in an already opened window.";
            Description = "Force to open a file or folder in an already opened window.";
        },
        [FlagParameter]@{
            Keys        = @("--show-versions");
            Name        = "Show versions of installed extensions, when using --list-extensions.";
            Description = "Show versions of installed extensions, when using --list-extensions.";
        },
        [FlagParameter]@{
            Keys        = @("--status", "-s");
            Name        = "Print process usage and diagnostics information.";
            Description = "Print process usage and diagnostics information.";
        },
        [ValueParameter]@{
            Keys        = @("--sync");
            Name        = "Turn sync on or off.";
            Description = "Turn sync on or off.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--telemetry");
            Name        = "Shows all telemetry events which VS code collects.";
            Description = "Shows all telemetry events which VS code collects.";
        },
        [ValueParameter]@{
            Keys        = @("--uninstall-extension");
            Name        = "Uninstalls an extension.";
            Description = "Uninstalls an extension.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user-data-dir");
            Name        = "Specifies the directory that user data is kept in.";
            Description = "Specifies the directory that user data is kept in.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Print verbose output (implies --wait).";
            Description = "Print verbose output (implies --wait).";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version.";
            Description = "Print version.";
        },
        [FlagParameter]@{
            Keys        = @("--wait", "-w");
            Name        = "Wait for the files to be closed before returning.";
            Description = "Wait for the files to be closed before returning.";
        }
    )
}
