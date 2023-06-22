# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.videolan.org/vlc/";
    Keys        = @("vlc");
    Name        = "vlc";
    Description = "the VLC media player";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--advanced");
            Name        = "Show advanced options";
            Description = "Show advanced options";
        },
        [ValueParameter]@{
            Keys        = @("--aspect-ratio");
            Name        = "Source aspect ratio";
            Description = "Source aspect ratio";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--audio");
            Name        = "Enable audio";
            Description = "Enable audio";
        },
        [ValueParameter]@{
            Keys        = @("--audio-filter");
            Name        = "Audio filters";
            Description = "Audio filters";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--audio-language");
            Name        = "Audio language";
            Description = "Audio language";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--audio-replay-gain-default");
            Name        = "Default replay gain";
            Description = "Default replay gain";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--audio-replay-gain-mode");
            Name        = "Replay gain mode";
            Description = "Replay gain mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--audio-replay-gain-preamp");
            Name        = "VAL   Replay preamp";
            Description = "VAL   Replay preamp";
        },
        [FlagParameter]@{
            Keys        = @("--audio-time-stretch");
            Name        = "Enable time stretching audio";
            Description = "Enable time stretching audio";
        },
        [FlagParameter]@{
            Keys        = @("--audio-visual");
            Name        = "Audio visualizations";
            Description = "Audio visualizations";
        },
        [FlagParameter]@{
            Keys        = @("--auto-preparse");
            Name        = "Automatically preparse items";
            Description = "Automatically preparse items";
        },
        [FlagParameter]@{
            Keys        = @("--autoscale");
            Name        = "Video Auto Scaling";
            Description = "Video Auto Scaling";
        },
        [ValueParameter]@{
            Keys        = @("--bookmark1");
            Name        = "Playlist bookmark 1";
            Description = "Playlist bookmark 1";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark10");
            Name        = "Playlist bookmark 10";
            Description = "Playlist bookmark 10";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark2");
            Name        = "Playlist bookmark 2";
            Description = "Playlist bookmark 2";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark3");
            Name        = "Playlist bookmark 3";
            Description = "Playlist bookmark 3";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark4");
            Name        = "Playlist bookmark 4";
            Description = "Playlist bookmark 4";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark5");
            Name        = "Playlist bookmark 5";
            Description = "Playlist bookmark 5";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark6");
            Name        = "Playlist bookmark 6";
            Description = "Playlist bookmark 6";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark7");
            Name        = "Playlist bookmark 7";
            Description = "Playlist bookmark 7";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark8");
            Name        = "Playlist bookmark 8";
            Description = "Playlist bookmark 8";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bookmark9");
            Name        = "Playlist bookmark 9";
            Description = "Playlist bookmark 9";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config");
            Name        = "use alternate config file";
            Description = "use alternate config file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--control");
            Name        = "Control interfaces";
            Description = "Control interfaces";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--crop");
            Name        = "Video cropping";
            Description = "Video cropping";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--custom-aspect-ratios");
            Name        = "Custom aspect ratios list";
            Description = "Custom aspect ratios list";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--custom-crop-ratios");
            Name        = "Custom crop ratios list";
            Description = "Custom crop ratios list";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--deinterlace");
            Name        = "Deinterlace";
            Description = "Deinterlace";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--deinterlace-mode");
            Name        = "Deinterlace mode";
            Description = "Deinterlace mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dvd");
            Name        = "DVD device";
            Description = "DVD device";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extraintf");
            Name        = "Extra interface modules";
            Description = "Extra interface modules";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extrashort-jump-size");
            Name        = "Very short jump length";
            Description = "Very short jump length";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--force-dolby-surround");
            Name        = "Force detection of Dolby Surround";
            Description = "Force detection of Dolby Surround";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--full-help", "-H");
            Name        = "Exhaustive help for VLC and its modules";
            Description = "Exhaustive help for VLC and its modules";
        },
        [FlagParameter]@{
            Keys        = @("--fullscreen", "-f");
            Name        = "Fullscreen video output";
            Description = "Fullscreen video output";
        },
        [ValueParameter]@{
            Keys        = @("--global-key-aspect-ratio");
            Name        = "Cycle source aspect ratio";
            Description = "Cycle source aspect ratio";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-audio-track");
            Name        = "Cycle audio track";
            Description = "Cycle audio track";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-audiodevice-cycle");
            Name        = "Cycle through audio devices";
            Description = "Cycle through audio devices";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-crop");
            Name        = "Cycle video crop";
            Description = "Cycle video crop";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-decr-scalefactor");
            Name        = "Decrease scale factor";
            Description = "Decrease scale factor";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-deinterlace");
            Name        = "Toggle deinterlacing";
            Description = "Toggle deinterlacing";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-deinterlace-mode");
            Name        = "Cycle deinterlace modes";
            Description = "Cycle deinterlace modes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-faster");
            Name        = "Faster";
            Description = "Faster";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-frame-next");
            Name        = "Next frame";
            Description = "Next frame";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-incr-scalefactor");
            Name        = "Increase scale factor";
            Description = "Increase scale factor";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-intf-show");
            Name        = "Show controller in fullscreen";
            Description = "Show controller in fullscreen";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-jump+extrashort");
            Name        = "Very short forward jump";
            Description = "Very short forward jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-jump+long");
            Name        = "Long forward jump";
            Description = "Long forward jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-jump+medium");
            Name        = "Medium forward jump";
            Description = "Medium forward jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-jump+short");
            Name        = "Short forward jump";
            Description = "Short forward jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-jump-extrashort");
            Name        = "Very short backwards jump";
            Description = "Very short backwards jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-jump-long");
            Name        = "Long backwards jump";
            Description = "Long backwards jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-jump-medium");
            Name        = "Medium backwards jump";
            Description = "Medium backwards jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-jump-short");
            Name        = "Short backwards jump";
            Description = "Short backwards jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-leave-fullscreen");
            Name        = "Exit fullscreen";
            Description = "Exit fullscreen";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-loop");
            Name        = "Normal/Loop/Repeat";
            Description = "Normal/Loop/Repeat";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-next");
            Name        = "Next";
            Description = "Next";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-play-pause");
            Name        = "Play/Pause";
            Description = "Play/Pause";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-program-sid-next");
            Name        = "Cycle next program Service ID";
            Description = "Cycle next program Service ID";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-program-sid-prev");
            Name        = "Cycle previous program Service ID";
            Description = "Cycle previous program Service ID";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-quit");
            Name        = "Quit";
            Description = "Quit";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-random");
            Name        = "Random";
            Description = "Random";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-rate-faster-fine");
            Name        = "Faster (fine)";
            Description = "Faster (fine)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-rate-normal");
            Name        = "Normal rate";
            Description = "Normal rate";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-rate-slower-fine");
            Name        = "Slower (fine)";
            Description = "Slower (fine)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-slower");
            Name        = "Slower";
            Description = "Slower";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-subtitle-revtrack");
            Name        = "Cycle subtitle track in reverse order";
            Description = "Cycle subtitle track in reverse order";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-subtitle-toggle");
            Name        = "Toggle subtitles";
            Description = "Toggle subtitles";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-subtitle-track");
            Name        = "Cycle subtitle track";
            Description = "Cycle subtitle track";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-toggle-autoscale");
            Name        = "Toggle autoscaling";
            Description = "Toggle autoscaling";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-toggle-fullscreen");
            Name        = "Fullscreen";
            Description = "Fullscreen";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-vol-down");
            Name        = "Volume down";
            Description = "Volume down";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-vol-mute");
            Name        = "Mute";
            Description = "Mute";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-vol-up");
            Name        = "Volume up";
            Description = "Volume up";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-wallpaper");
            Name        = "Toggle wallpaper mode in video output";
            Description = "Toggle wallpaper mode in video output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-zoom-double");
            Name        = "2:1 Double";
            Description = "2:1 Double";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-zoom-half");
            Name        = "1:2 Half";
            Description = "1:2 Half";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-zoom-original");
            Name        = "1:1 Original";
            Description = "1:1 Original";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--global-key-zoom-quarter");
            Name        = "1:4 Quarter";
            Description = "1:4 Quarter";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "print help for VLC";
            Description = "print help for VLC";
        },
        [FlagParameter]@{
            Keys        = @("--help-verbose");
            Name        = "ask for extra verbosity when displaying help";
            Description = "ask for extra verbosity when displaying help";
        },
        [ValueParameter]@{
            Keys        = @("--hotkeys-x-wheel-mode");
            Name        = "Mouse wheel horizontal axis control";
            Description = "Mouse wheel horizontal axis control";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--hotkeys-y-wheel-mode");
            Name        = "Mouse wheel vertical axis control";
            Description = "Mouse wheel vertical axis control";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-config");
            Name        = "no configuration option will be loaded";
            Description = "no configuration option will be loaded";
        },
        [ValueParameter]@{
            Keys        = @("--ignore-filetypes");
            Name        = "Ignored extensions";
            Description = "Ignored extensions";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--input-fast-seek");
            Name        = "Fast seek";
            Description = "Fast seek";
        },
        [ValueParameter]@{
            Keys        = @("--input-repeat");
            Name        = "Input repetitions";
            Description = "Input repetitions";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--input-title-format");
            Name        = "Change title according to current media";
            Description = "Change title according to current media";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--interact");
            Name        = "Interface interaction";
            Description = "Interface interaction";
        },
        [ValueParameter]@{
            Keys        = @("--intf", "-I");
            Name        = "Interface module";
            Description = "Interface module";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-aspect-ratio");
            Name        = "Cycle source aspect ratio";
            Description = "Cycle source aspect ratio";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-audio-track");
            Name        = "Cycle audio track";
            Description = "Cycle audio track";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-audiodevice-cycle");
            Name        = "Cycle through audio devices";
            Description = "Cycle through audio devices";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-crop");
            Name        = "Cycle video crop";
            Description = "Cycle video crop";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-decr-scalefactor");
            Name        = "Decrease scale factor";
            Description = "Decrease scale factor";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-deinterlace");
            Name        = "Toggle deinterlacing";
            Description = "Toggle deinterlacing";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-deinterlace-mode");
            Name        = "Cycle deinterlace modes";
            Description = "Cycle deinterlace modes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-faster");
            Name        = "Faster";
            Description = "Faster";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-frame-next");
            Name        = "Next frame";
            Description = "Next frame";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-incr-scalefactor");
            Name        = "Increase scale factor";
            Description = "Increase scale factor";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-intf-show");
            Name        = "Show controller in fullscreen";
            Description = "Show controller in fullscreen";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-jump+extrashort");
            Name        = "Very short forward jump";
            Description = "Very short forward jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-jump+long");
            Name        = "Long forward jump";
            Description = "Long forward jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-jump+medium");
            Name        = "Medium forward jump";
            Description = "Medium forward jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-jump+short");
            Name        = "Short forward jump";
            Description = "Short forward jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-jump-extrashort");
            Name        = "Very short backwards jump";
            Description = "Very short backwards jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-jump-long");
            Name        = "Long backwards jump";
            Description = "Long backwards jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-jump-medium");
            Name        = "Medium backwards jump";
            Description = "Medium backwards jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-jump-short");
            Name        = "Short backwards jump";
            Description = "Short backwards jump";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-leave-fullscreen");
            Name        = "Exit fullscreen";
            Description = "Exit fullscreen";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-loop");
            Name        = "Normal/Loop/Repeat";
            Description = "Normal/Loop/Repeat";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-next");
            Name        = "Next";
            Description = "Next";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-play-pause");
            Name        = "Play/Pause";
            Description = "Play/Pause";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-prev");
            Name        = "Previous";
            Description = "Previous";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-program-sid-next");
            Name        = "Cycle next program Service ID";
            Description = "Cycle next program Service ID";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-program-sid-prev");
            Name        = "Cycle previous program Service ID";
            Description = "Cycle previous program Service ID";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-quit");
            Name        = "Quit";
            Description = "Quit";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-random");
            Name        = "Random";
            Description = "Random";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-rate-faster-fine");
            Name        = "Faster (fine)";
            Description = "Faster (fine)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-rate-normal");
            Name        = "Normal rate";
            Description = "Normal rate";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-rate-slower-fine");
            Name        = "Slower (fine)";
            Description = "Slower (fine)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-slower");
            Name        = "Slower";
            Description = "Slower";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-stop");
            Name        = "Stop";
            Description = "Stop";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-subtitle-revtrack");
            Name        = "Cycle subtitle track in reverse order";
            Description = "Cycle subtitle track in reverse order";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-subtitle-toggle");
            Name        = "Toggle subtitles";
            Description = "Toggle subtitles";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-subtitle-track");
            Name        = "Cycle subtitle track";
            Description = "Cycle subtitle track";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-toggle-autoscale");
            Name        = "Toggle autoscaling";
            Description = "Toggle autoscaling";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-toggle-fullscreen");
            Name        = "Fullscreen";
            Description = "Fullscreen";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-vol-down");
            Name        = "Volume down";
            Description = "Volume down";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-vol-mute");
            Name        = "Mute";
            Description = "Mute";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-vol-up");
            Name        = "Volume up";
            Description = "Volume up";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-wallpaper");
            Name        = "Toggle wallpaper mode in video output";
            Description = "Toggle wallpaper mode in video output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-zoom-double");
            Name        = "2:1 Double";
            Description = "2:1 Double";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-zoom-half");
            Name        = "1:2 Half";
            Description = "1:2 Half";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-zoom-original");
            Name        = "1:1 Original";
            Description = "1:1 Original";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key-zoom-quarter");
            Name        = "1:4 Quarter";
            Description = "1:4 Quarter";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list", "-l");
            Name        = "print a list of available modules";
            Description = "print a list of available modules";
        },
        [FlagParameter]@{
            Keys        = @("--list-verbose");
            Name        = "print a list of available modules with extra";
            Description = "print a list of available modules with extra";
        },
        [ValueParameter]@{
            Keys        = @("--long-jump-size");
            Name        = "Long jump length";
            Description = "Long jump length";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--longhelp");
            Name        = "print help for VLC and all its modules";
            Description = "print help for VLC and all its modules";
        },
        [FlagParameter]@{
            Keys        = @("--loop", "-L");
            Name        = "Repeat all";
            Description = "Repeat all";
        },
        [FlagParameter]@{
            Keys        = @("--media-library");
            Name        = "Use media library";
            Description = "Use media library";
        },
        [ValueParameter]@{
            Keys        = @("--medium-jump-size");
            Name        = "Medium jump length";
            Description = "Medium jump length";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--menu-language");
            Name        = "Menu language";
            Description = "Menu language";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--metadata-network-access");
            Name        = "Allow metadata network access";
            Description = "Allow metadata network access";
        },
        [ValueParameter]@{
            Keys        = @("--module", "-p");
            Name        = "print help on a specific module";
            Description = "print help on a specific module";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mouse-hide-timeout");
            Name        = "Hide cursor and fullscreen controller after x milliseconds";
            Description = "Hide cursor and fullscreen controller after x milliseconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-advanced");
            Name        = "Dont show advanced options";
            Description = "Dont show advanced options";
        },
        [FlagParameter]@{
            Keys        = @("--no-audio");
            Name        = "Disable audio";
            Description = "Disable audio";
        },
        [FlagParameter]@{
            Keys        = @("--no-audio-time-stretch");
            Name        = "Disable time stretching audio";
            Description = "Disable time stretching audio";
        },
        [FlagParameter]@{
            Keys        = @("--no-auto-preparse");
            Name        = "Dont automatically preparse items";
            Description = "Dont automatically preparse items";
        },
        [FlagParameter]@{
            Keys        = @("--no-autoscale");
            Name        = "Video Auto Scaling";
            Description = "Video Auto Scaling";
        },
        [FlagParameter]@{
            Keys        = @("--no-full-help");
            Name        = "Exhaustive help for VLC and its modules";
            Description = "Exhaustive help for VLC and its modules";
        },
        [FlagParameter]@{
            Keys        = @("--no-fullscreen");
            Name        = "No Fullscreen video output";
            Description = "No Fullscreen video output";
        },
        [FlagParameter]@{
            Keys        = @("--no-help");
            Name        = "print help for VLC";
            Description = "print help for VLC";
        },
        [FlagParameter]@{
            Keys        = @("--no-help-verbose");
            Name        = "ask for extra verbosity when displaying help";
            Description = "ask for extra verbosity when displaying help";
        },
        [FlagParameter]@{
            Keys        = @("--no-ignore-config");
            Name        = "no configuration option will be loaded";
            Description = "no configuration option will be loaded";
        },
        [FlagParameter]@{
            Keys        = @("--no-input-fast-seek");
            Name        = "Fast seek";
            Description = "Fast seek";
        },
        [FlagParameter]@{
            Keys        = @("--no-interact");
            Name        = "No interface interaction";
            Description = "No interface interaction";
        },
        [FlagParameter]@{
            Keys        = @("--no-list");
            Name        = "print a list of available modules";
            Description = "print a list of available modules";
        },
        [FlagParameter]@{
            Keys        = @("--no-list-verbose");
            Name        = "print a list of available modules with extra";
            Description = "print a list of available modules with extra";
        },
        [FlagParameter]@{
            Keys        = @("--no-longhelp");
            Name        = "print help for VLC and all its modules";
            Description = "print help for VLC and all its modules";
        },
        [FlagParameter]@{
            Keys        = @("--no-loop");
            Name        = "Dont repeat all";
            Description = "Dont repeat all";
        },
        [FlagParameter]@{
            Keys        = @("--no-media-library");
            Name        = "Use media library";
            Description = "Use media library";
        },
        [FlagParameter]@{
            Keys        = @("--no-metadata-network-access");
            Name        = "Dont allow metadata network access";
            Description = "Dont allow metadata network access";
        },
        [FlagParameter]@{
            Keys        = @("--no-osd");
            Name        = "No on Screen Display";
            Description = "No on Screen Display";
        },
        [FlagParameter]@{
            Keys        = @("--no-play-and-exit");
            Name        = "Play and exit";
            Description = "Play and exit";
        },
        [FlagParameter]@{
            Keys        = @("--no-play-and-stop");
            Name        = "Play and stop";
            Description = "Play and stop";
        },
        [FlagParameter]@{
            Keys        = @("--no-playlist-autostart");
            Name        = "Auto start";
            Description = "Auto start";
        },
        [FlagParameter]@{
            Keys        = @("--no-playlist-cork");
            Name        = "Pause on audio communication";
            Description = "Pause on audio communication";
        },
        [FlagParameter]@{
            Keys        = @("--no-playlist-tree");
            Name        = "Display playlist tree";
            Description = "Display playlist tree";
        },
        [FlagParameter]@{
            Keys        = @("--no-random");
            Name        = "Dont play files randomly forever";
            Description = "Dont play files randomly forever";
        },
        [FlagParameter]@{
            Keys        = @("--no-repeat");
            Name        = "Dont repeat current item";
            Description = "Dont repeat current item";
        },
        [FlagParameter]@{
            Keys        = @("--no-reset-config");
            Name        = "reset the current config to the default values";
            Description = "reset the current config to the default values";
        },
        [FlagParameter]@{
            Keys        = @("--no-reset-plugins-cache");
            Name        = "resets the current plugins cache";
            Description = "resets the current plugins cache";
        },
        [FlagParameter]@{
            Keys        = @("--no-show-hiddenfiles");
            Name        = "Dont show hidden files";
            Description = "Dont show hidden files";
        },
        [FlagParameter]@{
            Keys        = @("--no-snapshot-preview");
            Name        = "No Display video snapshot preview";
            Description = "No Display video snapshot preview";
        },
        [FlagParameter]@{
            Keys        = @("--no-snapshot-sequential");
            Name        = "Use sequential numbers instead of timestamps";
            Description = "Use sequential numbers instead of timestamps";
        },
        [FlagParameter]@{
            Keys        = @("--no-spu");
            Name        = "Disable sub-pictures";
            Description = "Disable sub-pictures";
        },
        [FlagParameter]@{
            Keys        = @("--no-start-paused");
            Name        = "Dont start paused";
            Description = "Dont start paused";
        },
        [FlagParameter]@{
            Keys        = @("--no-sub-autodetect-file");
            Name        = "Autodetect subtitle files";
            Description = "Autodetect subtitle files";
        },
        [FlagParameter]@{
            Keys        = @("--no-version");
            Name        = "print version information";
            Description = "print version information";
        },
        [FlagParameter]@{
            Keys        = @("--no-video-on-top");
            Name        = "Not always on top";
            Description = "Not always on top";
        },
        [FlagParameter]@{
            Keys        = @("--no-video-title-show");
            Name        = "Do not how media title on video";
            Description = "Do not how media title on video";
        },
        [FlagParameter]@{
            Keys        = @("--no-video-wallpaper");
            Name        = "Disable wallpaper mode";
            Description = "Disable wallpaper mode";
        },
        [ValueParameter]@{
            Keys        = @("--open");
            Name        = "Default stream";
            Description = "Default stream";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--osd");
            Name        = "On Screen Display";
            Description = "On Screen Display";
        },
        [ValueParameter]@{
            Keys        = @("--pidfile");
            Name        = "Write process id to file";
            Description = "Write process id to file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--play-and-exit");
            Name        = "Play and exit";
            Description = "Play and exit";
        },
        [FlagParameter]@{
            Keys        = @("--play-and-stop");
            Name        = "Play and stop";
            Description = "Play and stop";
        },
        [FlagParameter]@{
            Keys        = @("--playlist-autostart");
            Name        = "Auto start";
            Description = "Auto start";
        },
        [FlagParameter]@{
            Keys        = @("--playlist-cork");
            Name        = "Pause on audio communication";
            Description = "Pause on audio communication";
        },
        [FlagParameter]@{
            Keys        = @("--playlist-tree");
            Name        = "Display playlist tree";
            Description = "Display playlist tree";
        },
        [ValueParameter]@{
            Keys        = @("--preferred-resolution");
            Name        = "Preferred video resolution";
            Description = "Preferred video resolution";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--preparse-timeout");
            Name        = "Preparsing timeout";
            Description = "Preparsing timeout";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--random", "-Z");
            Name        = "Play files randomly forever";
            Description = "Play files randomly forever";
        },
        [FlagParameter]@{
            Keys        = @("--rate");
            Name        = "Playback speed";
            Description = "Playback speed";
        },
        [ValueParameter]@{
            Keys        = @("--recursive");
            Name        = "Subdirectory behavior";
            Description = "Subdirectory behavior";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--repeat", "-R");
            Name        = "Repeat current item";
            Description = "Repeat current item";
        },
        [FlagParameter]@{
            Keys        = @("--reset-config");
            Name        = "reset the current config to the default values";
            Description = "reset the current config to the default values";
        },
        [FlagParameter]@{
            Keys        = @("--reset-plugins-cache");
            Name        = "resets the current plugins cache";
            Description = "resets the current plugins cache";
        },
        [ValueParameter]@{
            Keys        = @("--short-jump-size");
            Name        = "Short jump length";
            Description = "Short jump length";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-hiddenfiles");
            Name        = "Show hidden files";
            Description = "Show hidden files";
        },
        [ValueParameter]@{
            Keys        = @("--snapshot-format");
            Name        = "Video snapshot format";
            Description = "Video snapshot format";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--snapshot-path");
            Name        = "Video snapshot directory (or filename)";
            Description = "Video snapshot directory (or filename)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--snapshot-prefix");
            Name        = "Video snapshot file prefix";
            Description = "Video snapshot file prefix";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--snapshot-preview");
            Name        = "Display video snapshot preview";
            Description = "Display video snapshot preview";
        },
        [FlagParameter]@{
            Keys        = @("--snapshot-sequential");
            Name        = "Use sequential numbers instead of timestamps";
            Description = "Use sequential numbers instead of timestamps";
        },
        [FlagParameter]@{
            Keys        = @("--spu");
            Name        = "Enable sub-pictures";
            Description = "Enable sub-pictures";
        },
        [FlagParameter]@{
            Keys        = @("--start-paused");
            Name        = "Start paused";
            Description = "Start paused";
        },
        [ValueParameter]@{
            Keys        = @("--stream-filter");
            Name        = "Stream filter module";
            Description = "Stream filter module";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sub-autodetect-file");
            Name        = "Autodetect subtitle files";
            Description = "Autodetect subtitle files";
        },
        [ValueParameter]@{
            Keys        = @("--sub-file");
            Name        = "Use subtitle file";
            Description = "Use subtitle file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sub-filter");
            Name        = "Subpictures filter module";
            Description = "Subpictures filter module";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sub-language");
            Name        = "Subtitle language";
            Description = "Subtitle language";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sub-source");
            Name        = "Subpictures source module";
            Description = "Subpictures source module";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sub-text-scale");
            Name        = "Subtitles text scaling factor";
            Description = "Subtitles text scaling factor";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--vcd");
            Name        = "VCD device";
            Description = "VCD device";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Verbosity";
            Description = "Verbosity";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "print version information";
            Description = "print version information";
        },
        [ValueParameter]@{
            Keys        = @("--video-filter");
            Name        = "Video filter module";
            Description = "Video filter module";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--video-on-top");
            Name        = "Always on top";
            Description = "Always on top";
        },
        [ValueParameter]@{
            Keys        = @("--video-splitter");
            Name        = "Video splitter module";
            Description = "Video splitter module";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--video-title-position");
            Name        = "Position of video title";
            Description = "Position of video title";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--video-title-show");
            Name        = "Show media title on video";
            Description = "Show media title on video";
        },
        [ValueParameter]@{
            Keys        = @("--video-title-timeout");
            Name        = "Show video title for x milliseconds";
            Description = "Show video title for x milliseconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--video-wallpaper");
            Name        = "Enable wallpaper mode";
            Description = "Enable wallpaper mode";
        }
    )
}
