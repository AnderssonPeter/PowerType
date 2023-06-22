# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://ffmpeg.org/";
    Keys        = @("ffmpeg");
    Name        = "ffmpeg";
    Description = "Hyper fast Audio and Video encoder";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--ab");
            Name        = "audio bitrate (please use -b:a)";
            Description = "audio bitrate (please use -b:a)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ac");
            Name        = "set number of audio channels";
            Description = "set number of audio channels";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--acodec");
            Name        = "force audio codec ('copy' to copy stream)";
            Description = "force audio codec ('copy' to copy stream)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--af");
            Name        = "set audio filters";
            Description = "set audio filters";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--aframes");
            Name        = "set the number of audio frames to output";
            Description = "set the number of audio frames to output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--an");
            Name        = "disable audio";
            Description = "disable audio";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--apad");
            Name        = "audio pad";
            Description = "audio pad";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--aq");
            Name        = "set audio quality (codec-specific)";
            Description = "set audio quality (codec-specific)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ar");
            Name        = "set audio sampling rate (in Hz)";
            Description = "set audio sampling rate (in Hz)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--aspect");
            Name        = "set aspect ratio (4:3, 16:9 or 1.3333, 1.7777)";
            Description = "set aspect ratio (4:3, 16:9 or 1.3333, 1.7777)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--b:a");
            Name        = "audio bitrate";
            Description = "audio bitrate";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--b:v");
            Name        = "video bitrate";
            Description = "video bitrate";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bits_per_raw_sample");
            Name        = "set the number of bits per raw sample";
            Description = "set the number of bits per raw sample";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--bsfs");
            Name        = "show available bit stream filters";
            Description = "show available bit stream filters";
        },
        [FlagParameter]@{
            Keys        = @("--buildconf");
            Name        = "show build configuration";
            Description = "show build configuration";
        },
        [ValueParameter]@{
            Keys        = @("--c");
            Name        = "codec name";
            Description = "codec name";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--c:a");
            Name        = "audio codec";
            Description = "audio codec";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--c:v");
            Name        = "video codec";
            Description = "video codec";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--canvas_size");
            Name        = "set canvas size (WxH or abbreviation)";
            Description = "set canvas size (WxH or abbreviation)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--codec");
            Name        = "codec name";
            Description = "codec name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--codecs");
            Name        = "show available codecs";
            Description = "show available codecs";
        },
        [FlagParameter]@{
            Keys        = @("--colors");
            Name        = "show available color names";
            Description = "show available color names";
        },
        [FlagParameter]@{
            Keys        = @("--decoders");
            Name        = "show available decoders";
            Description = "show available decoders";
        },
        [FlagParameter]@{
            Keys        = @("--demuxers");
            Name        = "show available demuxers";
            Description = "show available demuxers";
        },
        [FlagParameter]@{
            Keys        = @("--devices");
            Name        = "show available devices";
            Description = "show available devices";
        },
        [ValueParameter]@{
            Keys        = @("--discard");
            Name        = "discard";
            Description = "discard";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--disposition");
            Name        = "disposition";
            Description = "disposition";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dn");
            Name        = "disable data";
            Description = "disable data";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--encoders");
            Name        = "show available encoders";
            Description = "show available encoders";
        },
        [ValueParameter]@{
            Keys        = @("--f");
            Name        = "Force inputor output file format";
            Description = "Force inputor output file format";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--filter");
            Name        = "set stream filtergraph";
            Description = "set stream filtergraph";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--filter_complex_threads");
            Name        = "number of threads for -filter_complex";
            Description = "number of threads for -filter_complex";
        },
        [ValueParameter]@{
            Keys        = @("--filter_script");
            Name        = "read stream filtergraph description from a file";
            Description = "read stream filtergraph description from a file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--filter_threads");
            Name        = "number of non-complex filter threads";
            Description = "number of non-complex filter threads";
        },
        [FlagParameter]@{
            Keys        = @("--filters");
            Name        = "show available filters";
            Description = "show available filters";
        },
        [ValueParameter]@{
            Keys        = @("--fix_sub_duration");
            Name        = "fix subtitles duration";
            Description = "fix subtitles duration";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--formats");
            Name        = "show available formats";
            Description = "show available formats";
        },
        [ValueParameter]@{
            Keys        = @("--fpsmax");
            Name        = "set max frame rate (Hz value, fraction or abbreviation)";
            Description = "set max frame rate (Hz value, fraction or abbreviation)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--frames");
            Name        = "set the number of frames to output";
            Description = "set the number of frames to output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fs");
            Name        = "set the limit file size in bytes";
            Description = "set the limit file size in bytes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--help");
            Name        = "show help";
            Description = "show help";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--hide_banner");
            Name        = "Suppress printing banner";
            Description = "Suppress printing banner";
        },
        [ValueParameter]@{
            Keys        = @("--hwaccel");
            Name        = "use HW acceleration";
            Description = "use HW acceleration";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--hwaccels");
            Name        = "show available HW acceleration methods";
            Description = "show available HW acceleration methods";
        },
        [ValueParameter]@{
            Keys        = @("--i");
            Name        = "input file";
            Description = "input file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore_unknown");
            Name        = "Ignore unknown stream types";
            Description = "Ignore unknown stream types";
        },
        [FlagParameter]@{
            Keys        = @("--layouts");
            Name        = "show standard channel layouts";
            Description = "show standard channel layouts";
        },
        [ValueParameter]@{
            Keys        = @("--loglevel");
            Name        = "set logging level";
            Description = "set logging level";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--map_metadata");
            Name        = "set metadata information of outfile from infile";
            Description = "set metadata information of outfile from infile";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max_alloc");
            Name        = "set maximum size of a single allocated block";
            Description = "set maximum size of a single allocated block";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--metadata");
            Name        = "add metadata";
            Description = "add metadata";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--muxers");
            Name        = "show available muxers";
            Description = "show available muxers";
        },
        [FlagParameter]@{
            Keys        = @("--n");
            Name        = "Do not overwrite output files";
            Description = "Do not overwrite output files";
        },
        [ValueParameter]@{
            Keys        = @("--pass");
            Name        = "select the pass number (1 to 3)";
            Description = "select the pass number (1 to 3)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--pix_fmts");
            Name        = "show available pixel formats";
            Description = "show available pixel formats";
        },
        [ValueParameter]@{
            Keys        = @("--pre");
            Name        = "preset name";
            Description = "preset name";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--program");
            Name        = "add program with specified streams";
            Description = "add program with specified streams";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--protocols");
            Name        = "show available protocols";
            Description = "show available protocols";
        },
        [ValueParameter]@{
            Keys        = @("--reinit_filter");
            Name        = "reinit filtergraph on input parameter changes";
            Description = "reinit filtergraph on input parameter changes";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--report");
            Name        = "generate a report";
            Description = "generate a report";
        },
        [FlagParameter]@{
            Keys        = @("--sample_fmts");
            Name        = "show available audio sample formats";
            Description = "show available audio sample formats";
        },
        [ValueParameter]@{
            Keys        = @("--scodec");
            Name        = "force subtitle codec ('copy' to copy stream)";
            Description = "force subtitle codec ('copy' to copy stream)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--seek_timestamp");
            Name        = "enable/disable seeking by timestamp with -ss";
            Description = "enable/disable seeking by timestamp with -ss";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sinks");
            Name        = "list sinks of the output device";
            Description = "list sinks of the output device";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sn");
            Name        = "disable subtitle";
            Description = "disable subtitle";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sources");
            Name        = "list sources of the input device";
            Description = "list sources of the input device";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--spre");
            Name        = "set the subtitle options to the indicated preset";
            Description = "set the subtitle options to the indicated preset";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ss");
            Name        = "set the start time offset";
            Description = "set the start time offset";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sseof");
            Name        = "set the start time offset relative to EOF";
            Description = "set the start time offset relative to EOF";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--stag");
            Name        = "force subtitle tag/fourcc";
            Description = "force subtitle tag/fourcc";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stats");
            Name        = "print progress report during encoding";
            Description = "print progress report during encoding";
        },
        [ValueParameter]@{
            Keys        = @("--target");
            Name        = "specify target file type (`"vcd`", `"svcd`", `"dvd`", `"dv`" or `"dv50`" with optional prefixes `"pal-`", `"ntsc-`" or `"film-`")";
            Description = "specify target file type (`"vcd`", `"svcd`", `"dvd`", `"dv`" or `"dv50`" with optional prefixes `"pal-`", `"ntsc-`" or `"film-`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--timecode");
            Name        = "set initial TimeCode value.";
            Description = "set initial TimeCode value.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--timestamp");
            Name        = "set the recording timestamp ('now' to set the current time)";
            Description = "set the recording timestamp ('now' to set the current time)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--to");
            Name        = "record or transcode stop time";
            Description = "record or transcode stop time";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--vcodec");
            Name        = "force video codec ('copy' to copy stream)";
            Description = "force video codec ('copy' to copy stream)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show version";
            Description = "show version";
        },
        [ValueParameter]@{
            Keys        = @("--vf");
            Name        = "set video filters";
            Description = "set video filters";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--vframes");
            Name        = "set the number of video frames to output";
            Description = "set the number of video frames to output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--vn");
            Name        = "disable video";
            Description = "disable video";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--vol");
            Name        = "change audio volume (256=normal)";
            Description = "change audio volume (256=normal)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--y");
            Name        = "Overwrite output files without asking";
            Description = "Overwrite output files without asking";
        }
    )
}
