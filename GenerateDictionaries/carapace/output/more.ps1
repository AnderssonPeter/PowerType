# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/more";
    Keys        = @("more");
    Name        = "more";
    Description = "file perusal filter for crt viewing";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--clean-print", "-p");
            Name        = "do not scroll, clean screen and display text";
            Description = "do not scroll, clean screen and display text";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [ValueParameter]@{
            Keys        = @("--lines", "-n");
            Name        = "the number of lines per screenful";
            Description = "the number of lines per screenful";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--logical", "-f");
            Name        = "count logical rather than screen lines";
            Description = "count logical rather than screen lines";
        },
        [FlagParameter]@{
            Keys        = @("--no-pause", "-l");
            Name        = "suppress pause after form feed";
            Description = "suppress pause after form feed";
        },
        [FlagParameter]@{
            Keys        = @("--plain", "-u");
            Name        = "suppress underlining and bold";
            Description = "suppress underlining and bold";
        },
        [FlagParameter]@{
            Keys        = @("--print-over", "-c");
            Name        = "do not scroll, display text and clean line ends";
            Description = "do not scroll, display text and clean line ends";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-d");
            Name        = "display help instead of ringing bell";
            Description = "display help instead of ringing bell";
        },
        [FlagParameter]@{
            Keys        = @("--squeeze", "-s");
            Name        = "squeeze multiple blank lines into one";
            Description = "squeeze multiple blank lines into one";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
