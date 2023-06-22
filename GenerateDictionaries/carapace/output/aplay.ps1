# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Aplay";
    Keys        = @("aplay");
    Name        = "aplay";
    Description = "command-line sound recorder and player for ALSA soundcard driver";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--avail-min", "-A");
            Name        = "min available space for wakeup is # microseconds";
            Description = "min available space for wakeup is # microseconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--buffer-size");
            Name        = "buffer duration is # frames";
            Description = "buffer duration is # frames";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--buffer-time", "-B");
            Name        = "buffer duration is # microseconds";
            Description = "buffer duration is # microseconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--channels", "-c");
            Name        = "channels";
            Description = "channels";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--chmap", "-m");
            Name        = "Give the channel map to override or follow";
            Description = "Give the channel map to override or follow";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--device", "-D");
            Name        = "select PCM by name";
            Description = "select PCM by name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disable-channels");
            Name        = "disable automatic channel conversions";
            Description = "disable automatic channel conversions";
        },
        [FlagParameter]@{
            Keys        = @("--disable-format");
            Name        = "disable automatic format conversions";
            Description = "disable automatic format conversions";
        },
        [FlagParameter]@{
            Keys        = @("--disable-resample");
            Name        = "disable automatic rate resample";
            Description = "disable automatic rate resample";
        },
        [FlagParameter]@{
            Keys        = @("--disable-softvol");
            Name        = "disable software volume control (softvol)";
            Description = "disable software volume control (softvol)";
        },
        [FlagParameter]@{
            Keys        = @("--dump-hw-params");
            Name        = "dump hw_params of the device";
            Description = "dump hw_params of the device";
        },
        [ValueParameter]@{
            Keys        = @("--duration", "-d");
            Name        = "interrupt after # seconds";
            Description = "interrupt after # seconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fatal-errors");
            Name        = "treat all errors as fatal";
            Description = "treat all errors as fatal";
        },
        [ValueParameter]@{
            Keys        = @("--file-type", "-t");
            Name        = "file type (voc, wav, raw or au)";
            Description = "file type (voc, wav, raw or au)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--format", "-f");
            Name        = "sample format (case insensitive)";
            Description = "sample format (case insensitive)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "help";
            Description = "help";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "allow interactive operation from stdin";
            Description = "allow interactive operation from stdin";
        },
        [FlagParameter]@{
            Keys        = @("--list-devices", "-l");
            Name        = "list all soundcards and digital audio devices";
            Description = "list all soundcards and digital audio devices";
        },
        [FlagParameter]@{
            Keys        = @("--list-pcms", "-L");
            Name        = "list device names";
            Description = "list device names";
        },
        [ValueParameter]@{
            Keys        = @("--max-file-time");
            Name        = "start another output file when the old file has recorded for this many seconds";
            Description = "start another output file when the old file has recorded for this many seconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--mmap", "-M");
            Name        = "mmap stream";
            Description = "mmap stream";
        },
        [FlagParameter]@{
            Keys        = @("--nonblock", "-N");
            Name        = "nonblocking mode";
            Description = "nonblocking mode";
        },
        [ValueParameter]@{
            Keys        = @("--period-size");
            Name        = "distance between interrupts is # frames";
            Description = "distance between interrupts is # frames";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--period-time", "-F");
            Name        = "distance between interrupts is # microseconds";
            Description = "distance between interrupts is # microseconds";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--process-id-file");
            Name        = "write the process ID here";
            Description = "write the process ID here";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "quiet mode";
            Description = "quiet mode";
        },
        [ValueParameter]@{
            Keys        = @("--rate", "-r");
            Name        = "sample rate";
            Description = "sample rate";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--samples", "-s");
            Name        = "interrupt after # samples per channel";
            Description = "interrupt after # samples per channel";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--start-delay", "-R");
            Name        = "delay for automatic PCM start is # microseconds ";
            Description = "delay for automatic PCM start is # microseconds ";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--stop-delay", "-T");
            Name        = "delay for automatic PCM stop is # microseconds from xrun";
            Description = "delay for automatic PCM stop is # microseconds from xrun";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--test-coef");
            Name        = "test coefficient for ring buffer position (default 8)";
            Description = "test coefficient for ring buffer position (default 8)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--test-nowait");
            Name        = "do not wait for ring buffer - eats whole CPU";
            Description = "do not wait for ring buffer - eats whole CPU";
        },
        [FlagParameter]@{
            Keys        = @("--test-position");
            Name        = "test ring buffer position";
            Description = "test ring buffer position";
        },
        [FlagParameter]@{
            Keys        = @("--use-strftime");
            Name        = "apply the strftime facility to the output file name";
            Description = "apply the strftime facility to the output file name";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "show PCM structure and setup (accumulative)";
            Description = "show PCM structure and setup (accumulative)";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "print current version";
            Description = "print current version";
        },
        [ValueParameter]@{
            Keys        = @("--vumeter", "-V");
            Name        = "enable VU meter (TYPE: mono or stereo)";
            Description = "enable VU meter (TYPE: mono or stereo)";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
