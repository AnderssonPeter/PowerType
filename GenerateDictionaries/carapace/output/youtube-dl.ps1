# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/ytdl-org/youtube-dl";
    Keys        = @("youtube-dl");
    Name        = "youtube-dl";
    Description = "download videos from youtube.com or other video platforms";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--abort-on-error");
            Name        = "Abort downloading of further videos (in the";
            Description = "Abort downloading of further videos (in the";
        },
        [FlagParameter]@{
            Keys        = @("--abort-on-unavailable-fragment");
            Name        = "Abort downloading when some fragment is not";
            Description = "Abort downloading when some fragment is not";
        },
        [ValueParameter]@{
            Keys        = @("--add-header");
            Name        = "Specify a custom HTTP header and its value,";
            Description = "Specify a custom HTTP header and its value,";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--add-metadata");
            Name        = "Write metadata to the video file";
            Description = "Write metadata to the video file";
        },
        [ValueParameter]@{
            Keys        = @("--age-limit");
            Name        = "Download only videos suitable for the given";
            Description = "Download only videos suitable for the given";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--all-formats");
            Name        = "Download all available video formats";
            Description = "Download all available video formats";
        },
        [FlagParameter]@{
            Keys        = @("--all-subs");
            Name        = "Download all the available subtitles of the";
            Description = "Download all the available subtitles of the";
        },
        [FlagParameter]@{
            Keys        = @("--ap-list-mso");
            Name        = "List all supported multiple-system";
            Description = "List all supported multiple-system";
        },
        [ValueParameter]@{
            Keys        = @("--ap-mso");
            Name        = "Adobe Pass multiple-system operator (TV";
            Description = "Adobe Pass multiple-system operator (TV";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ap-password");
            Name        = "Multiple-system operator account password.";
            Description = "Multiple-system operator account password.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ap-username");
            Name        = "Multiple-system operator account login";
            Description = "Multiple-system operator account login";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--audio-format");
            Name        = "Specify audio format: `"best`", `"aac`",";
            Description = "Specify audio format: `"best`", `"aac`",";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--audio-quality");
            Name        = "Specify ffmpeg/avconv audio quality, insert";
            Description = "Specify ffmpeg/avconv audio quality, insert";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--autonumber-start");
            Name        = "Specify the start value for %(autonumber)s";
            Description = "Specify the start value for %(autonumber)s";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--batch-file", "-a");
            Name        = "File containing URLs to download ('-' for";
            Description = "File containing URLs to download ('-' for";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--bidi-workaround");
            Name        = "Work around terminals that lack";
            Description = "Work around terminals that lack";
        },
        [ValueParameter]@{
            Keys        = @("--buffer-size");
            Name        = "Size of download buffer (e.g. 1024 or 16K)";
            Description = "Size of download buffer (e.g. 1024 or 16K)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cache-dir");
            Name        = "Location in the filesystem where youtube-dl";
            Description = "Location in the filesystem where youtube-dl";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--call-home", "-C");
            Name        = "Contact the youtube-dl server for debugging";
            Description = "Contact the youtube-dl server for debugging";
        },
        [ValueParameter]@{
            Keys        = @("--config-location");
            Name        = "Location of the configuration file; either";
            Description = "Location of the configuration file; either";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--console-title");
            Name        = "Display progress in console titlebar";
            Description = "Display progress in console titlebar";
        },
        [FlagParameter]@{
            Keys        = @("--continue", "-c");
            Name        = "Force resume of partially downloaded files.";
            Description = "Force resume of partially downloaded files.";
        },
        [ValueParameter]@{
            Keys        = @("--convert-subs");
            Name        = "Convert the subtitles to other format";
            Description = "Convert the subtitles to other format";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cookies");
            Name        = "File to read cookies from and dump cookie";
            Description = "File to read cookies from and dump cookie";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--date");
            Name        = "Download only videos uploaded in this date";
            Description = "Download only videos uploaded in this date";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dateafter");
            Name        = "Download only videos uploaded on or after";
            Description = "Download only videos uploaded on or after";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--datebefore");
            Name        = "Download only videos uploaded on or before";
            Description = "Download only videos uploaded on or before";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-search");
            Name        = "Use this prefix for unqualified URLs. For";
            Description = "Use this prefix for unqualified URLs. For";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--download-archive");
            Name        = "Download only videos not listed in the";
            Description = "Download only videos not listed in the";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dump-json", "-j");
            Name        = "Simulate, quiet but print JSON information.";
            Description = "Simulate, quiet but print JSON information.";
        },
        [FlagParameter]@{
            Keys        = @("--dump-pages");
            Name        = "Print downloaded pages encoded using base64";
            Description = "Print downloaded pages encoded using base64";
        },
        [FlagParameter]@{
            Keys        = @("--dump-single-json", "-J");
            Name        = "Simulate, quiet but print JSON information";
            Description = "Simulate, quiet but print JSON information";
        },
        [FlagParameter]@{
            Keys        = @("--dump-user-agent");
            Name        = "Display the current browser identification";
            Description = "Display the current browser identification";
        },
        [FlagParameter]@{
            Keys        = @("--embed-subs");
            Name        = "Embed subtitles in the video (only for mp4,";
            Description = "Embed subtitles in the video (only for mp4,";
        },
        [FlagParameter]@{
            Keys        = @("--embed-thumbnail");
            Name        = "Embed thumbnail in the audio as cover art";
            Description = "Embed thumbnail in the audio as cover art";
        },
        [ValueParameter]@{
            Keys        = @("--encoding");
            Name        = "Force the specified encoding (experimental)";
            Description = "Force the specified encoding (experimental)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exec");
            Name        = "Execute a command on the file after";
            Description = "Execute a command on the file after";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--external-downloader");
            Name        = "Use the specified external downloader.";
            Description = "Use the specified external downloader.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--external-downloader-args");
            Name        = "Give these arguments to the external";
            Description = "Give these arguments to the external";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--extract-audio", "-x");
            Name        = "Convert video files to audio-only files";
            Description = "Convert video files to audio-only files";
        },
        [FlagParameter]@{
            Keys        = @("--extractor-descriptions");
            Name        = "Output descriptions of all supported";
            Description = "Output descriptions of all supported";
        },
        [ValueParameter]@{
            Keys        = @("--ffmpeg-location");
            Name        = "Location of the ffmpeg/avconv binary;";
            Description = "Location of the ffmpeg/avconv binary;";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fixup");
            Name        = "Automatically correct known faults of the";
            Description = "Automatically correct known faults of the";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--flat-playlist");
            Name        = "Do not extract the videos of a playlist,";
            Description = "Do not extract the videos of a playlist,";
        },
        [FlagParameter]@{
            Keys        = @("--force-generic-extractor");
            Name        = "Force extraction to use the generic";
            Description = "Force extraction to use the generic";
        },
        [FlagParameter]@{
            Keys        = @("--force-ipv4", "-4");
            Name        = "Make all connections via IPv4";
            Description = "Make all connections via IPv4";
        },
        [FlagParameter]@{
            Keys        = @("--force-ipv6", "-6");
            Name        = "Make all connections via IPv6";
            Description = "Make all connections via IPv6";
        },
        [ValueParameter]@{
            Keys        = @("--format", "-f");
            Name        = "Video format code, see the `"FORMAT";
            Description = "Video format code, see the `"FORMAT";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fragment-retries");
            Name        = "Number of retries for a fragment (default";
            Description = "Number of retries for a fragment (default";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--geo-bypass");
            Name        = "Bypass geographic restriction via faking";
            Description = "Bypass geographic restriction via faking";
        },
        [ValueParameter]@{
            Keys        = @("--geo-bypass-country");
            Name        = "Force bypass geographic restriction with";
            Description = "Force bypass geographic restriction with";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--geo-bypass-ip-block");
            Name        = "Force bypass geographic restriction with";
            Description = "Force bypass geographic restriction with";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--geo-verification-proxy");
            Name        = "Use this proxy to verify the IP address for";
            Description = "Use this proxy to verify the IP address for";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--get-description");
            Name        = "Simulate, quiet but print video description";
            Description = "Simulate, quiet but print video description";
        },
        [FlagParameter]@{
            Keys        = @("--get-duration");
            Name        = "Simulate, quiet but print video length";
            Description = "Simulate, quiet but print video length";
        },
        [FlagParameter]@{
            Keys        = @("--get-filename");
            Name        = "Simulate, quiet but print output filename";
            Description = "Simulate, quiet but print output filename";
        },
        [FlagParameter]@{
            Keys        = @("--get-format");
            Name        = "Simulate, quiet but print output format";
            Description = "Simulate, quiet but print output format";
        },
        [FlagParameter]@{
            Keys        = @("--get-id");
            Name        = "Simulate, quiet but print id";
            Description = "Simulate, quiet but print id";
        },
        [FlagParameter]@{
            Keys        = @("--get-thumbnail");
            Name        = "Simulate, quiet but print thumbnail URL";
            Description = "Simulate, quiet but print thumbnail URL";
        },
        [FlagParameter]@{
            Keys        = @("--get-title", "-e");
            Name        = "Simulate, quiet but print title";
            Description = "Simulate, quiet but print title";
        },
        [FlagParameter]@{
            Keys        = @("--get-url", "-g");
            Name        = "Simulate, quiet but print URL";
            Description = "Simulate, quiet but print URL";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this help text and exit";
            Description = "Print this help text and exit";
        },
        [FlagParameter]@{
            Keys        = @("--hls-prefer-ffmpeg");
            Name        = "Use ffmpeg instead of the native HLS";
            Description = "Use ffmpeg instead of the native HLS";
        },
        [FlagParameter]@{
            Keys        = @("--hls-prefer-native");
            Name        = "Use the native HLS downloader instead of";
            Description = "Use the native HLS downloader instead of";
        },
        [FlagParameter]@{
            Keys        = @("--hls-use-mpegts");
            Name        = "Use the mpegts container for HLS videos,";
            Description = "Use the mpegts container for HLS videos,";
        },
        [ValueParameter]@{
            Keys        = @("--http-chunk-size");
            Name        = "Size of a chunk for chunk-based HTTP";
            Description = "Size of a chunk for chunk-based HTTP";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--id");
            Name        = "Use only video ID in file name";
            Description = "Use only video ID in file name";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-config");
            Name        = "Do not read configuration files. When given";
            Description = "Do not read configuration files. When given";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-errors", "-i");
            Name        = "Continue on download errors, for example to";
            Description = "Continue on download errors, for example to";
        },
        [FlagParameter]@{
            Keys        = @("--include-ads");
            Name        = "Download advertisements as well";
            Description = "Download advertisements as well";
        },
        [FlagParameter]@{
            Keys        = @("--keep-fragments");
            Name        = "Keep downloaded fragments on disk after";
            Description = "Keep downloaded fragments on disk after";
        },
        [FlagParameter]@{
            Keys        = @("--keep-video", "-k");
            Name        = "Keep the video file on disk after the post-";
            Description = "Keep the video file on disk after the post-";
        },
        [ValueParameter]@{
            Keys        = @("--limit-rate", "-r");
            Name        = "Maximum download rate in bytes per second";
            Description = "Maximum download rate in bytes per second";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-extractors");
            Name        = "List all supported extractors";
            Description = "List all supported extractors";
        },
        [FlagParameter]@{
            Keys        = @("--list-formats", "-F");
            Name        = "List all available formats of requested";
            Description = "List all available formats of requested";
        },
        [FlagParameter]@{
            Keys        = @("--list-subs");
            Name        = "List all available subtitles for the video";
            Description = "List all available subtitles for the video";
        },
        [FlagParameter]@{
            Keys        = @("--list-thumbnails");
            Name        = "Simulate and list all available thumbnail";
            Description = "Simulate and list all available thumbnail";
        },
        [ValueParameter]@{
            Keys        = @("--load-info-json");
            Name        = "JSON file containing the video information";
            Description = "JSON file containing the video information";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--mark-watched");
            Name        = "Mark videos watched (YouTube only)";
            Description = "Mark videos watched (YouTube only)";
        },
        [ValueParameter]@{
            Keys        = @("--match-filter");
            Name        = "Generic video filter. Specify any key (see";
            Description = "Generic video filter. Specify any key (see";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--match-title");
            Name        = "Download only matching titles (regex or";
            Description = "Download only matching titles (regex or";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-downloads");
            Name        = "Abort after downloading NUMBER files";
            Description = "Abort after downloading NUMBER files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-filesize");
            Name        = "Do not download any videos larger than SIZE";
            Description = "Do not download any videos larger than SIZE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-sleep-interval");
            Name        = "Upper bound of a range for randomized sleep";
            Description = "Upper bound of a range for randomized sleep";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--max-sleep-interval.");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--max-views");
            Name        = "Do not download any videos with more than";
            Description = "Do not download any videos with more than";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--merge-output-format");
            Name        = "If a merge is required (e.g.";
            Description = "If a merge is required (e.g.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--metadata-from-title");
            Name        = "Parse additional metadata like song title /";
            Description = "Parse additional metadata like song title /";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--min-filesize");
            Name        = "Do not download any videos smaller than";
            Description = "Do not download any videos smaller than";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--min-views");
            Name        = "Do not download any videos with less than";
            Description = "Do not download any videos with less than";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--netrc", "-n");
            Name        = "Use .netrc authentication data";
            Description = "Use .netrc authentication data";
        },
        [FlagParameter]@{
            Keys        = @("--newline");
            Name        = "Output progress bar as new lines";
            Description = "Output progress bar as new lines";
        },
        [FlagParameter]@{
            Keys        = @("--no-cache-dir");
            Name        = "Disable filesystem caching";
            Description = "Disable filesystem caching";
        },
        [FlagParameter]@{
            Keys        = @("--no-call-home");
            Name        = "Do NOT contact the youtube-dl server for";
            Description = "Do NOT contact the youtube-dl server for";
        },
        [FlagParameter]@{
            Keys        = @("--no-check-certificate");
            Name        = "Suppress HTTPS certificate validation";
            Description = "Suppress HTTPS certificate validation";
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "Do not emit color codes in output";
            Description = "Do not emit color codes in output";
        },
        [FlagParameter]@{
            Keys        = @("--no-continue");
            Name        = "Do not resume partially downloaded files";
            Description = "Do not resume partially downloaded files";
        },
        [FlagParameter]@{
            Keys        = @("--no-geo-bypass");
            Name        = "Do not bypass geographic restriction via";
            Description = "Do not bypass geographic restriction via";
        },
        [FlagParameter]@{
            Keys        = @("--no-mark-watched");
            Name        = "Do not mark videos watched (YouTube only)";
            Description = "Do not mark videos watched (YouTube only)";
        },
        [FlagParameter]@{
            Keys        = @("--no-mtime");
            Name        = "Do not use the Last-modified header to set";
            Description = "Do not use the Last-modified header to set";
        },
        [FlagParameter]@{
            Keys        = @("--no-overwrites", "-w");
            Name        = "Do not overwrite files";
            Description = "Do not overwrite files";
        },
        [FlagParameter]@{
            Keys        = @("--no-part");
            Name        = "Do not use .part files - write directly";
            Description = "Do not use .part files - write directly";
        },
        [FlagParameter]@{
            Keys        = @("--no-playlist");
            Name        = "Download only the video, if the URL refers";
            Description = "Download only the video, if the URL refers";
        },
        [FlagParameter]@{
            Keys        = @("--no-post-overwrites");
            Name        = "Do not overwrite post-processed files; the";
            Description = "Do not overwrite post-processed files; the";
        },
        [FlagParameter]@{
            Keys        = @("--no-progress");
            Name        = "Do not print progress bar";
            Description = "Do not print progress bar";
        },
        [FlagParameter]@{
            Keys        = @("--no-resize-buffer");
            Name        = "Do not automatically adjust the buffer";
            Description = "Do not automatically adjust the buffer";
        },
        [FlagParameter]@{
            Keys        = @("--no-warnings");
            Name        = "Ignore warnings";
            Description = "Ignore warnings";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "Output filename template, see the `"OUTPUT";
            Description = "Output filename template, see the `"OUTPUT";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--password", "-p");
            Name        = "Account password. If this option is left";
            Description = "Account password. If this option is left";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--playlist-end");
            Name        = "Playlist video to end at (default is last)";
            Description = "Playlist video to end at (default is last)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--playlist-items");
            Name        = "Playlist video items to download. Specify";
            Description = "Playlist video items to download. Specify";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--playlist-random");
            Name        = "Download playlist videos in random order";
            Description = "Download playlist videos in random order";
        },
        [FlagParameter]@{
            Keys        = @("--playlist-reverse");
            Name        = "Download playlist videos in reverse order";
            Description = "Download playlist videos in reverse order";
        },
        [ValueParameter]@{
            Keys        = @("--playlist-start");
            Name        = "Playlist video to start at (default is 1)";
            Description = "Playlist video to start at (default is 1)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--postprocessor-args");
            Name        = "Give these arguments to the postprocessor";
            Description = "Give these arguments to the postprocessor";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--prefer-avconv");
            Name        = "Prefer avconv over ffmpeg for running the";
            Description = "Prefer avconv over ffmpeg for running the";
        },
        [FlagParameter]@{
            Keys        = @("--prefer-ffmpeg");
            Name        = "Prefer ffmpeg over avconv for running the";
            Description = "Prefer ffmpeg over avconv for running the";
        },
        [FlagParameter]@{
            Keys        = @("--prefer-free-formats");
            Name        = "Prefer free video formats unless a specific";
            Description = "Prefer free video formats unless a specific";
        },
        [FlagParameter]@{
            Keys        = @("--prefer-insecure");
            Name        = "Use an unencrypted connection to retrieve";
            Description = "Use an unencrypted connection to retrieve";
        },
        [FlagParameter]@{
            Keys        = @("--print-json");
            Name        = "Be quiet and print the video information as";
            Description = "Be quiet and print the video information as";
        },
        [FlagParameter]@{
            Keys        = @("--print-traffic");
            Name        = "Display sent and read HTTP traffic";
            Description = "Display sent and read HTTP traffic";
        },
        [ValueParameter]@{
            Keys        = @("--proxy");
            Name        = "Use the specified HTTP/HTTPS/SOCKS proxy.";
            Description = "Use the specified HTTP/HTTPS/SOCKS proxy.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Activate quiet mode";
            Description = "Activate quiet mode";
        },
        [ValueParameter]@{
            Keys        = @("--recode-video");
            Name        = "Encode the video to another format if";
            Description = "Encode the video to another format if";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--referer");
            Name        = "Specify a custom referer, use if the video";
            Description = "Specify a custom referer, use if the video";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--reject-title");
            Name        = "Skip download for matching titles (regex or";
            Description = "Skip download for matching titles (regex or";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--restrict-filenames");
            Name        = "Restrict filenames to only ASCII";
            Description = "Restrict filenames to only ASCII";
        },
        [ValueParameter]@{
            Keys        = @("--retries", "-R");
            Name        = "Number of retries (default is 10), or";
            Description = "Number of retries (default is 10), or";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rm-cache-dir");
            Name        = "Delete all filesystem cache files";
            Description = "Delete all filesystem cache files";
        },
        [FlagParameter]@{
            Keys        = @("--simulate", "-s");
            Name        = "Do not download the video and do not write";
            Description = "Do not download the video and do not write";
        },
        [FlagParameter]@{
            Keys        = @("--skip-download");
            Name        = "Do not download the video";
            Description = "Do not download the video";
        },
        [FlagParameter]@{
            Keys        = @("--skip-unavailable-fragments");
            Name        = "Skip unavailable fragments (DASH, hlsnative";
            Description = "Skip unavailable fragments (DASH, hlsnative";
        },
        [ValueParameter]@{
            Keys        = @("--sleep-interval");
            Name        = "Number of seconds to sleep before each";
            Description = "Number of seconds to sleep before each";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--socket-timeout");
            Name        = "Time to wait before giving up, in seconds";
            Description = "Time to wait before giving up, in seconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--source-address");
            Name        = "Client-side IP address to bind to";
            Description = "Client-side IP address to bind to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sub-format");
            Name        = "Subtitle format, accepts formats";
            Description = "Subtitle format, accepts formats";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sub-lang");
            Name        = "Languages of the subtitles to download";
            Description = "Languages of the subtitles to download";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--twofactor", "-2");
            Name        = "Two-factor authentication code";
            Description = "Two-factor authentication code";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update", "-U");
            Name        = "Update this program to latest version. Make";
            Description = "Update this program to latest version. Make";
        },
        [ValueParameter]@{
            Keys        = @("--user-agent");
            Name        = "Specify a custom user agent";
            Description = "Specify a custom user agent";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--username", "-u");
            Name        = "Login with this account ID";
            Description = "Login with this account ID";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Print various debugging information";
            Description = "Print various debugging information";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Print program version and exit";
            Description = "Print program version and exit";
        },
        [ValueParameter]@{
            Keys        = @("--video-password");
            Name        = "Video password (vimeo, smotri, youku)";
            Description = "Video password (vimeo, smotri, youku)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--write-all-thumbnails");
            Name        = "Write all thumbnail image formats to disk";
            Description = "Write all thumbnail image formats to disk";
        },
        [FlagParameter]@{
            Keys        = @("--write-annotations");
            Name        = "Write video annotations to a";
            Description = "Write video annotations to a";
        },
        [FlagParameter]@{
            Keys        = @("--write-auto-sub");
            Name        = "Write automatically generated subtitle file";
            Description = "Write automatically generated subtitle file";
        },
        [FlagParameter]@{
            Keys        = @("--write-description");
            Name        = "Write video description to a .description";
            Description = "Write video description to a .description";
        },
        [FlagParameter]@{
            Keys        = @("--write-info-json");
            Name        = "Write video metadata to a .info.json file";
            Description = "Write video metadata to a .info.json file";
        },
        [FlagParameter]@{
            Keys        = @("--write-pages");
            Name        = "Write downloaded intermediary pages to";
            Description = "Write downloaded intermediary pages to";
        },
        [FlagParameter]@{
            Keys        = @("--write-sub");
            Name        = "Write subtitle file";
            Description = "Write subtitle file";
        },
        [FlagParameter]@{
            Keys        = @("--write-thumbnail");
            Name        = "Write thumbnail image to disk";
            Description = "Write thumbnail image to disk";
        },
        [FlagParameter]@{
            Keys        = @("--xattr-set-filesize");
            Name        = "Set file xattribute ytdl.filesize with";
            Description = "Set file xattribute ytdl.filesize with";
        },
        [FlagParameter]@{
            Keys        = @("--xattrs");
            Name        = "Write metadata to the video file's xattrs";
            Description = "Write metadata to the video file's xattrs";
        },
        [FlagParameter]@{
            Keys        = @("--yes-playlist");
            Name        = "Download the playlist, if the URL refers to";
            Description = "Download the playlist, if the URL refers to";
        },
        [FlagParameter]@{
            Keys        = @("--youtube-skip-dash-manifest");
            Name        = "Do not download the DASH manifests and";
            Description = "Do not download the DASH manifests and";
        }
    )
}
