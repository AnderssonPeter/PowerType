# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/tldr-pages/tldr-python-client";
    Keys        = @("tldr");
    Name        = "tldr";
    Description = "Python command line client for tldr";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--color", "-c");
            Name        = "Override color stripping";
            Description = "Override color stripping";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--language", "-L");
            Name        = "Override the default language";
            Description = "Override the default language";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "List all available commands for operating system";
            Description = "List all available commands for operating system";
        },
        [ValueParameter]@{
            Keys        = @("--platform", "-p");
            Name        = "Override the operating system";
            Description = "Override the operating system";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--render", "-r");
            Name        = "Render local markdown files";
            Description = "Render local markdown files";
        },
        [ValueParameter]@{
            Keys        = @("--source", "-s");
            Name        = "Override the default page source";
            Description = "Override the default page source";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update_cache", "-u");
            Name        = "Update the local cache of pages and exit";
            Description = "Update the local cache of pages and exit";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "show program's version number and exit";
            Description = "show program's version number and exit";
        }
    )
}
