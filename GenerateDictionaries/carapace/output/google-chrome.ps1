# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.google.com/chrome/index.html";
    Keys        = @("google-chrome");
    Name        = "google-chrome";
    Description = "chrome browser";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--app");
            Name        = "Runs URL in app mode";
            Description = "Runs URL in app mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--new-window");
            Name        = "If PATH or URL is given, open it in a new window.";
            Description = "If PATH or URL is given, open it in a new window.";
        },
        [FlagParameter]@{
            Keys        = @("--no-proxy-server");
            Name        = "Disables  the  proxy  server";
            Description = "Disables  the  proxy  server";
        },
        [ValueParameter]@{
            Keys        = @("--password-store");
            Name        = "Set the password store to use";
            Description = "Set the password store to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--proxy-auto-detect");
            Name        = "Autodetect proxy configuration";
            Description = "Autodetect proxy configuration";
        },
        [ValueParameter]@{
            Keys        = @("--proxy-pac-url");
            Name        = "Specify proxy autoconfiguration URL";
            Description = "Specify proxy autoconfiguration URL";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--proxy-server");
            Name        = "Specify the HTTP/SOCKS4/SOCKS5 proxy server to use for requests.";
            Description = "Specify the HTTP/SOCKS4/SOCKS5 proxy server to use for requests.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user-data-dir");
            Name        = "Specifies the directory that user data is  kept  in";
            Description = "Specifies the directory that user data is  kept  in";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show version information.";
            Description = "Show version information.";
        }
    )
}
