# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/watch";
    Keys        = @("watch");
    Name        = "watch";
    Description = "execute a program periodically, showing output fullscreen";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--beep", "-b");
            Name        = "beep if command has a non-zero exit";
            Description = "beep if command has a non-zero exit";
        },
        [FlagParameter]@{
            Keys        = @("--chgexit", "-g");
            Name        = "exit when output from command changes";
            Description = "exit when output from command changes";
        },
        [FlagParameter]@{
            Keys        = @("--color", "-c");
            Name        = "interpret ANSI color and style sequences";
            Description = "interpret ANSI color and style sequences";
        },
        [ValueParameter]@{
            Keys        = @("--differences", "-d");
            Name        = "highlight changes between updates";
            Description = "highlight changes between updates";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--errexit", "-e");
            Name        = "exit if command has a non-zero exit";
            Description = "exit if command has a non-zero exit";
        },
        [FlagParameter]@{
            Keys        = @("--exec", "-x");
            Name        = "pass command to exec instead of `"sh -c`"";
            Description = "pass command to exec instead of `"sh -c`"";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--interval", "-n");
            Name        = "seconds to wait between updates";
            Description = "seconds to wait between updates";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-title", "-t");
            Name        = "turn off header";
            Description = "turn off header";
        },
        [FlagParameter]@{
            Keys        = @("--no-wrap", "-w");
            Name        = "turn off line wrapping";
            Description = "turn off line wrapping";
        },
        [FlagParameter]@{
            Keys        = @("--precise", "-p");
            Name        = "attempt run command in precise intervals";
            Description = "attempt run command in precise intervals";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
