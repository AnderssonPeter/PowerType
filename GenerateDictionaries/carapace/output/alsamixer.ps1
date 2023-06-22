# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Alsamixer";
    Keys        = @("alsamixer");
    Name        = "alsamixer";
    Description = "soundcard mixer for ALSA soundcard driver, with ncurses interface";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--abstraction", "-a");
            Name        = "mixer abstraction level: none/basic";
            Description = "mixer abstraction level: none/basic";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--card", "-c");
            Name        = "sound card number or id";
            Description = "sound card number or id";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config", "-f");
            Name        = "configuration file";
            Description = "configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--device", "-D");
            Name        = "mixer device name";
            Description = "mixer device name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "this help";
            Description = "this help";
        },
        [FlagParameter]@{
            Keys        = @("--mouse", "-m");
            Name        = "enable mouse";
            Description = "enable mouse";
        },
        [FlagParameter]@{
            Keys        = @("--no-color", "-g");
            Name        = "toggle using of colors";
            Description = "toggle using of colors";
        },
        [FlagParameter]@{
            Keys        = @("--no-config", "-F");
            Name        = "do not load configuration file";
            Description = "do not load configuration file";
        },
        [FlagParameter]@{
            Keys        = @("--no-mouse", "-M");
            Name        = "disable mouse";
            Description = "disable mouse";
        },
        [ValueParameter]@{
            Keys        = @("--view", "-V");
            Name        = "starting view mode: playback/capture/all";
            Description = "starting view mode: playback/capture/all";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
