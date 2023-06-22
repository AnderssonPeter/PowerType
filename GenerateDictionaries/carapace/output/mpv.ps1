# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://mpv.io/";
    Keys        = @("mpv");
    Name        = "mpv";
    Description = "a media player";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--fs");
            Name        = "fullscreen playback";
            Description = "fullscreen playback";
        },
        [FlagParameter]@{
            Keys        = @("--list-options");
            Name        = "list all mpv options";
            Description = "list all mpv options";
        },
        [FlagParameter]@{
            Keys        = @("--no-audio");
            Name        = "do not play sound";
            Description = "do not play sound";
        },
        [FlagParameter]@{
            Keys        = @("--no-video");
            Name        = "do not play video";
            Description = "do not play video";
        },
        [ValueParameter]@{
            Keys        = @("--playlist");
            Name        = "specify playlist file";
            Description = "specify playlist file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--start");
            Name        = "seek to given (percent, seconds, or hh:mm:ss) position";
            Description = "seek to given (percent, seconds, or hh:mm:ss) position";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sub-file");
            Name        = "specify subtitle file to use";
            Description = "specify subtitle file to use";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
