# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamav-config");
    Name        = "clamav-config";
    Description = "clamav config";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--cflags");
            Name        = "print pre-processor and compiler flags";
            Description = "print pre-processor and compiler flags";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--libs");
            Name        = "print library linking information";
            Description = "print library linking information";
        },
        [ValueParameter]@{
            Keys        = @("--prefix");
            Name        = "change libclamav prefix [default /usr]";
            Description = "change libclamav prefix [default /usr]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information";
            Description = "output version information";
        }
    )
}
