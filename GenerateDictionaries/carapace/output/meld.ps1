# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://meldmerge.org/";
    Keys        = @("meld");
    Name        = "meld";
    Description = "Meld is a file and directory comparison tool";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--auto-compare", "-a");
            Name        = "Automatically compare all differing files on startup";
            Description = "Automatically compare all differing files on startup";
        },
        [FlagParameter]@{
            Keys        = @("--auto-merge");
            Name        = "Automatically merge files";
            Description = "Automatically merge files";
        },
        [ValueParameter]@{
            Keys        = @("--comparison-file");
            Name        = "Load a saved comparison from a Meld comparison file";
            Description = "Load a saved comparison from a Meld comparison file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--diff");
            Name        = "Create a diff tab for the supplied files or folders";
            Description = "Create a diff tab for the supplied files or folders";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--label", "-l");
            Name        = "Set label to use instead of file name";
            Description = "Set label to use instead of file name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--newtab", "-n");
            Name        = "Open a new tab in an already running instance";
            Description = "Open a new tab in an already running instance";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "Set the target file for saving a merge result";
            Description = "Set the target file for saving a merge result";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unified", "-u");
            Name        = "Ignored for compatibility";
            Description = "Ignored for compatibility";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show program's version number and exit";
            Description = "show program's version number and exit";
        }
    )
}
