# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://calibre-ebook.com/";
    Keys        = @("calibre");
    Name        = "calibre";
    Description = "Comprehensive e-book software";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--detach");
            Name        = "Detach from the controlling terminal, if any (Linux only)";
            Description = "Detach from the controlling terminal, if any (Linux only)";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-plugins");
            Name        = "Ignore custom plugins";
            Description = "Ignore custom plugins";
        },
        [FlagParameter]@{
            Keys        = @("--no-update-check");
            Name        = "Do not check for updates";
            Description = "Do not check for updates";
        },
        [FlagParameter]@{
            Keys        = @("--shutdown-running-calibre", "-s");
            Name        = "Cause a running calibre instance, if any, to be shutdown.";
            Description = "Cause a running calibre instance, if any, to be shutdown.";
        },
        [FlagParameter]@{
            Keys        = @("--start-in-tray");
            Name        = "Start minimized to system tray.";
            Description = "Start minimized to system tray.";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Ignored, do not use. Present only for legacy reasons";
            Description = "Ignored, do not use. Present only for legacy reasons";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show program's version number and exit";
            Description = "show program's version number and exit";
        },
        [ValueParameter]@{
            Keys        = @("--with-library");
            Name        = "Use the library located at the specified path.";
            Description = "Use the library located at the specified path.";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
