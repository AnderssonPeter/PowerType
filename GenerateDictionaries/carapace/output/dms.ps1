# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/anacrolix/dms";
    Keys        = @("dms");
    Name        = "dms";
    Description = "A UPnP DLNA Digital Media Server";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--allowedIps");
            Name        = "allowed ip of clients, separated by comma";
            Description = "allowed ip of clients, separated by comma";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config");
            Name        = "json configuration file";
            Description = "json configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--deviceIcon");
            Name        = "device icon";
            Description = "device icon";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fFprobeCachePath");
            Name        = "path to FFprobe cache file (default `"~/.dms-ffprobe-cache`")";
            Description = "path to FFprobe cache file (default `"~/.dms-ffprobe-cache`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--forceTranscodeTo");
            Name        = "force transcoding to certain format, supported: 'chromecast', 'vp8', 'web'";
            Description = "force transcoding to certain format, supported: 'chromecast', 'vp8', 'web'";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--friendlyName");
            Name        = "server friendly name";
            Description = "server friendly name";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--http");
            Name        = "http server port (default `":1338`")";
            Description = "http server port (default `":1338`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ifname");
            Name        = "specific SSDP network interface";
            Description = "specific SSDP network interface";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignoreHidden");
            Name        = "ignore hidden files and directories";
            Description = "ignore hidden files and directories";
        },
        [FlagParameter]@{
            Keys        = @("--ignoreUnreadable");
            Name        = "ignore unreadable files and directories";
            Description = "ignore unreadable files and directories";
        },
        [FlagParameter]@{
            Keys        = @("--logHeaders");
            Name        = "log HTTP headers";
            Description = "log HTTP headers";
        },
        [FlagParameter]@{
            Keys        = @("--noProbe");
            Name        = "disable media probing with ffprobe";
            Description = "disable media probing with ffprobe";
        },
        [FlagParameter]@{
            Keys        = @("--noTranscode");
            Name        = "disable transcoding";
            Description = "disable transcoding";
        },
        [ValueParameter]@{
            Keys        = @("--notifyInterval");
            Name        = "interval between SSPD announces (default 30s)";
            Description = "interval between SSPD announces (default 30s)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--path");
            Name        = "browse root path";
            Description = "browse root path";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stallEventSubscribe");
            Name        = "workaround for some bad event subscribers";
            Description = "workaround for some bad event subscribers";
        }
    )
}
