# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.gnome.org/Projects/GnomeKeyring/";
    Keys        = @("gnome-keyring");
    Name        = "gnome-keyring";
    Description = "The gnome-keyring commandline tool";
    Parameters  = @(
        [CommandParameter]@{
            Keys        = @("import");
            Name        = "import";
            Description = "Import keys or certificates from a PKCS file";
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "Print the version number and exit";
        }
    )
}
