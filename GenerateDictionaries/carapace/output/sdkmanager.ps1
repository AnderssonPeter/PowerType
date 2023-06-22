# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://developer.android.com/studio/command-line/sdkmanager";
    Keys        = @("sdkmanager");
    Name        = "sdkmanager";
    Description = "Android SDK manager";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--channel");
            Name        = "Include packages in channels up to <channelId>";
            Description = "Include packages in channels up to <channelId>";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "show help";
            Description = "show help";
        },
        [FlagParameter]@{
            Keys        = @("--include_obsolete");
            Name        = "show obsolete packages in the package listing";
            Description = "show obsolete packages in the package listing";
        },
        [FlagParameter]@{
            Keys        = @("--install");
            Name        = "installs or updates packages";
            Description = "installs or updates packages";
        },
        [FlagParameter]@{
            Keys        = @("--licenses");
            Name        = "show and offer the option to accept licenses for all available packages";
            Description = "show and offer the option to accept licenses for all available packages";
        },
        [FlagParameter]@{
            Keys        = @("--list");
            Name        = "all installed and available packages are printed out";
            Description = "all installed and available packages are printed out";
        },
        [FlagParameter]@{
            Keys        = @("--list_installed");
            Name        = "all installed packages are printed out";
            Description = "all installed packages are printed out";
        },
        [FlagParameter]@{
            Keys        = @("--no_https");
            Name        = "Force all connections to use http rather than https";
            Description = "Force all connections to use http rather than https";
        },
        [ValueParameter]@{
            Keys        = @("--package_file");
            Name        = "package file to use ";
            Description = "package file to use ";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy");
            Name        = "Connect via a proxy of the given type";
            Description = "Connect via a proxy of the given type";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy_host");
            Name        = "IP or DNS address of the proxy to use";
            Description = "IP or DNS address of the proxy to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy_port");
            Name        = "Proxy port to connect to";
            Description = "Proxy port to connect to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sdk_root");
            Name        = "Use the specified SDK root instead of the SDK containing this tool";
            Description = "Use the specified SDK root instead of the SDK containing this tool";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--uninstall");
            Name        = "uninstall the listed packages";
            Description = "uninstall the listed packages";
        },
        [FlagParameter]@{
            Keys        = @("--update");
            Name        = "all installed packages are updated to the latest version";
            Description = "all installed packages are updated to the latest version";
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Enable verbose output.";
            Description = "Enable verbose output.";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "prints the current version of sdkmanager";
            Description = "prints the current version of sdkmanager";
        }
    )
}
