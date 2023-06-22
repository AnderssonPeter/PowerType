# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://picard.musicbrainz.org/";
    Keys        = @("picard");
    Name        = "picard";
    Description = "Picard is a cross-platform music tagger written in Python";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--config-file", "-c");
            Name        = "location of the configuration file";
            Description = "location of the configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "enable debug-level logging";
            Description = "enable debug-level logging";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--long-version", "-V");
            Name        = "display long version information and exit";
            Description = "display long version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--no-player", "-M");
            Name        = "disable built-in media player";
            Description = "disable built-in media player";
        },
        [FlagParameter]@{
            Keys        = @("--no-plugins", "-P");
            Name        = "do not load any plugins";
            Description = "do not load any plugins";
        },
        [FlagParameter]@{
            Keys        = @("--no-restore", "-N");
            Name        = "do not restore positions and/or sizes";
            Description = "do not restore positions and/or sizes";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "display version information and exit";
            Description = "display version information and exit";
        }
    )
}
