# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.palemoon.org/";
    Keys        = @("palemoon");
    Name        = "palemoon";
    Description = "Pale Moon browser";
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
        [ValueParameter]@{
            Keys        = @("--UILocale");
            Name        = "Start with <locale> resources as UI Locale.";
            Description = "Start with <locale> resources as UI Locale.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--browser");
            Name        = "Open a browser window.";
            Description = "Open a browser window.";
        },
        [FlagParameter]@{
            Keys        = @("--browserconsole");
            Name        = "Open the Browser Console.";
            Description = "Open the Browser Console.";
        },
        [FlagParameter]@{
            Keys        = @("--devtools");
            Name        = "Open DevTools on initial load.";
            Description = "Open DevTools on initial load.";
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use.";
            Description = "X display to use.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--g-fatal-warnings");
            Name        = "Make all warnings fatal.";
            Description = "Make all warnings fatal.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this message.";
            Description = "Print this message.";
        },
        [FlagParameter]@{
            Keys        = @("--jsconsole");
            Name        = "Open the Error console.";
            Description = "Open the Error console.";
        },
        [FlagParameter]@{
            Keys        = @("--jsdebugger");
            Name        = "Open the Browser Toolbox.";
            Description = "Open the Browser Toolbox.";
        },
        [FlagParameter]@{
            Keys        = @("--new-instance");
            Name        = "Open new instance";
            Description = "Open new instance";
        },
        [ValueParameter]@{
            Keys        = @("--new-tab");
            Name        = "Open <url> in a new tab.";
            Description = "Open <url> in a new tab.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--new-window");
            Name        = "Open <url> in a new window.";
            Description = "Open <url> in a new window.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-remote");
            Name        = "Do not accept or send remote commands;";
            Description = "Do not accept or send remote commands;";
        },
        [FlagParameter]@{
            Keys        = @("--preferences");
            Name        = "Open Preferences dialog.";
            Description = "Open Preferences dialog.";
        },
        [ValueParameter]@{
            Keys        = @("--private-window");
            Name        = "Open <url> in a new private window.";
            Description = "Open <url> in a new private window.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile");
            Name        = "Start with profile at <path>.";
            Description = "Start with profile at <path>.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--recording");
            Name        = "Record drawing for a given URL.";
            Description = "Record drawing for a given URL.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--recording-output");
            Name        = "Specify destination file for a drawing recording.";
            Description = "Specify destination file for a drawing recording.";
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
        [FlagParameter]@{
            Keys        = @("--setDefaultBrowser");
            Name        = "Set this app as the default browser.";
            Description = "Set this app as the default browser.";
        },
        [ValueParameter]@{
            Keys        = @("--start-debugger-server");
            Name        = "Start the debugger server on a TCP port or socket.";
            Description = "Start the debugger server on a TCP port or socket.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sync");
            Name        = "Make X calls synchronous.";
            Description = "Make X calls synchronous.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print Pale Moon version.";
            Description = "Print Pale Moon version.";
        }
    )
}
