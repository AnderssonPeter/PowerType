# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/masneyb/gftp";
    Keys        = @("gftp");
    Name        = "gftp";
    Description = "file transfer client for *NIX based machines";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display program usage.";
            Description = "Display program usage.";
        },
        [FlagParameter]@{
            Keys        = @("--info");
            Name        = "Display some information about how gFTP was built.";
            Description = "Display some information about how gFTP was built.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display the current version of gFTP.";
            Description = "Display the current version of gFTP.";
        }
    )
}
