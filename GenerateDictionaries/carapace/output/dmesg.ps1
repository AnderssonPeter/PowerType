# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/dmesg";
    Keys        = @("dmesg");
    Name        = "dmesg";
    Description = "Display or control the kernel ring buffer";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--buffer-size", "-s");
            Name        = "buffer size to query the kernel ring buffer";
            Description = "buffer size to query the kernel ring buffer";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--clear", "-C");
            Name        = "clear the kernel ring buffer";
            Description = "clear the kernel ring buffer";
        },
        [ValueParameter]@{
            Keys        = @("--color", "-L");
            Name        = "colorize messages(auto, always or never)";
            Description = "colorize messages(auto, always or never)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--console-level", "-n");
            Name        = "set level of messages printed to console";
            Description = "set level of messages printed to console";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--console-off", "-D");
            Name        = "disable printing messages to console";
            Description = "disable printing messages to console";
        },
        [FlagParameter]@{
            Keys        = @("--console-on", "-E");
            Name        = "enable printing messages to console";
            Description = "enable printing messages to console";
        },
        [FlagParameter]@{
            Keys        = @("--ctime", "-T");
            Name        = "show human-readable timestamp (may be inaccurate!)";
            Description = "show human-readable timestamp (may be inaccurate!)";
        },
        [FlagParameter]@{
            Keys        = @("--decode", "-x");
            Name        = "decode facility and level to readable string";
            Description = "decode facility and level to readable string";
        },
        [ValueParameter]@{
            Keys        = @("--facility", "-f");
            Name        = "restrict output to defined facilities";
            Description = "restrict output to defined facilities";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file", "-F");
            Name        = "use the file instead of the kernel log buffer";
            Description = "use the file instead of the kernel log buffer";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--follow", "-w");
            Name        = "wait for new messages";
            Description = "wait for new messages";
        },
        [FlagParameter]@{
            Keys        = @("--follow-new", "-W");
            Name        = "wait and print only new messages";
            Description = "wait and print only new messages";
        },
        [FlagParameter]@{
            Keys        = @("--force-prefix", "-p");
            Name        = "force timestamp output on each line of multi-line messages";
            Description = "force timestamp output on each line of multi-line messages";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [FlagParameter]@{
            Keys        = @("--human", "-H");
            Name        = "human readable output";
            Description = "human readable output";
        },
        [FlagParameter]@{
            Keys        = @("--kernel", "-k");
            Name        = "display kernel messages";
            Description = "display kernel messages";
        },
        [ValueParameter]@{
            Keys        = @("--level", "-l");
            Name        = "restrict output to defined levels";
            Description = "restrict output to defined levels";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--noescape");
            Name        = "don't escape unprintable character";
            Description = "don't escape unprintable character";
        },
        [FlagParameter]@{
            Keys        = @("--nopager", "-P");
            Name        = "do not pipe output into a pager";
            Description = "do not pipe output into a pager";
        },
        [FlagParameter]@{
            Keys        = @("--notime", "-t");
            Name        = "don't show any timestamp with messages";
            Description = "don't show any timestamp with messages";
        },
        [FlagParameter]@{
            Keys        = @("--raw", "-r");
            Name        = "print the raw message buffer";
            Description = "print the raw message buffer";
        },
        [FlagParameter]@{
            Keys        = @("--read-clear", "-c");
            Name        = "read and clear all messages";
            Description = "read and clear all messages";
        },
        [FlagParameter]@{
            Keys        = @("--reltime", "-e");
            Name        = "show local time and time delta in readable format";
            Description = "show local time and time delta in readable format";
        },
        [FlagParameter]@{
            Keys        = @("--show-delta", "-d");
            Name        = "show time delta between printed messages";
            Description = "show time delta between printed messages";
        },
        [ValueParameter]@{
            Keys        = @("--since");
            Name        = "display the lines since the specified time";
            Description = "display the lines since the specified time";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--syslog", "-S");
            Name        = "force to use syslog(2) rather than /dev/kmsg";
            Description = "force to use syslog(2) rather than /dev/kmsg";
        },
        [ValueParameter]@{
            Keys        = @("--time-format");
            Name        = "show timestamp using the given format:";
            Description = "show timestamp using the given format:";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--until");
            Name        = "display the lines until the specified time";
            Description = "display the lines until the specified time";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--userspace", "-u");
            Name        = "display userspace messages";
            Description = "display userspace messages";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
