# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/hexdump";
    Keys        = @("hexdump");
    Name        = "hexdump";
    Description = "Display file contents in hexadecimal, decimal, octal, or ascii";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--canonical", "-C");
            Name        = "canonical hex+ASCII display";
            Description = "canonical hex+ASCII display";
        },
        [ValueParameter]@{
            Keys        = @("--color", "-L");
            Name        = "interpret color formatting specifiers";
            Description = "interpret color formatting specifiers";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--format", "-e");
            Name        = "format string to be used for displaying data";
            Description = "format string to be used for displaying data";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--format-file", "-f");
            Name        = "file that contains format strings";
            Description = "file that contains format strings";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display this help";
            Description = "display this help";
        },
        [ValueParameter]@{
            Keys        = @("--length", "-n");
            Name        = "interpret only length bytes of input";
            Description = "interpret only length bytes of input";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-squeezing", "-v");
            Name        = "output identical lines";
            Description = "output identical lines";
        },
        [FlagParameter]@{
            Keys        = @("--one-byte-char", "-c");
            Name        = "one-byte character display";
            Description = "one-byte character display";
        },
        [FlagParameter]@{
            Keys        = @("--one-byte-octal", "-b");
            Name        = "one-byte octal display";
            Description = "one-byte octal display";
        },
        [ValueParameter]@{
            Keys        = @("--skip", "-s");
            Name        = "skip offset bytes from the beginning";
            Description = "skip offset bytes from the beginning";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--two-bytes-decimal", "-d");
            Name        = "two-byte decimal display";
            Description = "two-byte decimal display";
        },
        [FlagParameter]@{
            Keys        = @("--two-bytes-hex", "-x");
            Name        = "two-byte hexadecimal display";
            Description = "two-byte hexadecimal display";
        },
        [FlagParameter]@{
            Keys        = @("--two-bytes-octal", "-o");
            Name        = "two-byte octal display";
            Description = "two-byte octal display";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version";
            Description = "display version";
        }
    )
}
