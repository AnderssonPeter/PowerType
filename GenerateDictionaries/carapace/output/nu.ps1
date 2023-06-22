# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.nushell.sh/";
    Keys        = @("nu");
    Name        = "nu";
    Description = "Nushell";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--commands", "-c");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--develop");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [ValueParameter]@{
            Keys        = @("--loglevel", "-l");
            Name        = "[possible values: error, warn, info, debug, trace]";
            Description = "[possible values: error, warn, info, debug, trace]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stdin");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Prints version information";
            Description = "Prints version information";
        }
    )
}
