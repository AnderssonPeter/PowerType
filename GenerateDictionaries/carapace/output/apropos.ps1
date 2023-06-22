# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/apropos";
    Keys        = @("apropos");
    Name        = "apropos";
    Description = "search the manual page names and descriptions";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--and", "-a");
            Name        = "require all keywords to match";
            Description = "require all keywords to match";
        },
        [ValueParameter]@{
            Keys        = @("--config-file", "-C");
            Name        = "use this user configuration file";
            Description = "use this user configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "emit debugging messages";
            Description = "emit debugging messages";
        },
        [FlagParameter]@{
            Keys        = @("--exact", "-e");
            Name        = "search each keyword for exact match";
            Description = "search each keyword for exact match";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "give this help list";
            Description = "give this help list";
        },
        [ValueParameter]@{
            Keys        = @("--locale", "-L");
            Name        = "define the locale for this search";
            Description = "define the locale for this search";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--long", "-l");
            Name        = "do not trim output to terminal width";
            Description = "do not trim output to terminal width";
        },
        [ValueParameter]@{
            Keys        = @("--manpath", "-M");
            Name        = "set search path for manual pages to PATH";
            Description = "set search path for manual pages to PATH";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--regex", "-r");
            Name        = "interpret each keyword as a regex";
            Description = "interpret each keyword as a regex";
        },
        [ValueParameter]@{
            Keys        = @("--section");
            Name        = "search only these sections (colon-separated)";
            Description = "search only these sections (colon-separated)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sections", "-s");
            Name        = "search only these sections (colon-separated)";
            Description = "search only these sections (colon-separated)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--systems", "-m");
            Name        = "use manual pages from other systems";
            Description = "use manual pages from other systems";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--usage");
            Name        = "give a short usage message";
            Description = "give a short usage message";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "print verbose warning messages";
            Description = "print verbose warning messages";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "print program version";
            Description = "print program version";
        },
        [FlagParameter]@{
            Keys        = @("--wildcard", "-w");
            Name        = "the keyword(s) contain wildcards";
            Description = "the keyword(s) contain wildcards";
        }
    )
}
