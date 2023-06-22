# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.lua.org/";
    Keys        = @("lua");
    Name        = "lua";
    Description = "Lua interpreter";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-E");
            Name        = "ignore environment variables";
            Description = "ignore environment variables";
        },
        [FlagParameter]@{
            Keys        = @("-W");
            Name        = "turn warnings on";
            Description = "turn warnings on";
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "execute string 'stat'";
            Description = "execute string 'stat'";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "enter interactive mode after executing 'script'";
            Description = "enter interactive mode after executing 'script'";
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "require library 'name' into global 'name'";
            Description = "require library 'name' into global 'name'";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "show version information";
            Description = "show version information";
        }
    )
}
