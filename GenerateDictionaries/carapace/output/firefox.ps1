# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.mozilla.org/en-US/firefox/new/";
    Keys        = @("firefox");
    Name        = "firefox";
    Description = "Firefox Browser";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-P");
            Name        = "Start with <profile>.";
            Description = "Start with <profile>.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ProfileManager");
            Name        = "Start with ProfileManager.";
            Description = "Start with ProfileManager.";
        },
        [FlagParameter]@{
            Keys        = @("--allow-downgrade");
            Name        = "Allows downgrading a profile.";
            Description = "Allows downgrading a profile.";
        },
        [FlagParameter]@{
            Keys        = @("--browser");
            Name        = "Open a browser window.";
            Description = "Open a browser window.";
        },
        [FlagParameter]@{
            Keys        = @("--devtools");
            Name        = "Open DevTools on initial load.";
            Description = "Open DevTools on initial load.";
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--first-startup");
            Name        = "Run post-install actions before opening a new window.";
            Description = "Run post-install actions before opening a new window.";
        },
        [FlagParameter]@{
            Keys        = @("--full-version");
            Name        = "Print Firefox version, build and platform build ids.";
            Description = "Print Firefox version, build and platform build ids.";
        },
        [FlagParameter]@{
            Keys        = @("--headless");
            Name        = "Run without a GUI.";
            Description = "Run without a GUI.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this message.";
            Description = "Print this message.";
        },
        [FlagParameter]@{
            Keys        = @("--jsconsole");
            Name        = "Open the Browser Console.";
            Description = "Open the Browser Console.";
        },
        [FlagParameter]@{
            Keys        = @("--migration");
            Name        = "Start with migration wizard.";
            Description = "Start with migration wizard.";
        },
        [FlagParameter]@{
            Keys        = @("--new-instance");
            Name        = "Open new instance, not a new window in running instance.";
            Description = "Open new instance, not a new window in running instance.";
        },
        [ValueParameter]@{
            Keys        = @("--new-tab");
            Name        = "Open <url> in a new tab.";
            Description = "Open <url> in a new tab.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-remote");
            Name        = "Do not accept or send remote commands";
            Description = "Do not accept or send remote commands";
        },
        [FlagParameter]@{
            Keys        = @("--preferences");
            Name        = "Open Preferences dialog.";
            Description = "Open Preferences dialog.";
        },
        [ValueParameter]@{
            Keys        = @("--profile");
            Name        = "Start with profile at <path>.";
            Description = "Start with profile at <path>.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--safe-mode");
            Name        = "Disables extensions and themes for this session.";
            Description = "Disables extensions and themes for this session.";
        },
        [ValueParameter]@{
            Keys        = @("--search");
            Name        = "Search <term> with your default search engine.";
            Description = "Search <term> with your default search engine.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ssb");
            Name        = "Open a site specific browser for <uri>.";
            Description = "Open a site specific browser for <uri>.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--start-debugger-server");
            Name        = "Start the devtools server";
            Description = "Start the devtools server";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sync");
            Name        = "Make X calls synchronous";
            Description = "Make X calls synchronous";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print Firefox version.";
            Description = "Print Firefox version.";
        }
    )
}
