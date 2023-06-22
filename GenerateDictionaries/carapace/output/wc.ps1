# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/wc";
    Keys        = @("wc");
    Name        = "wc";
    Description = "print newline, word, and byte counts for each file";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--bytes", "-c");
            Name        = "print the byte counts";
            Description = "print the byte counts";
        },
        [FlagParameter]@{
            Keys        = @("--chars", "-m");
            Name        = "print the character counts";
            Description = "print the character counts";
        },
        [ValueParameter]@{
            Keys        = @("--files0-from");
            Name        = "read input from the files specified by";
            Description = "read input from the files specified by";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--lines", "-l");
            Name        = "print the newline counts";
            Description = "print the newline counts";
        },
        [FlagParameter]@{
            Keys        = @("--max-line-length", "-L");
            Name        = "print the maximum display width";
            Description = "print the maximum display width";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--words", "-w");
            Name        = "print the word counts";
            Description = "print the word counts";
        }
    )
}
