# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/cat";
    Keys        = @("cat");
    Name        = "cat";
    Description = "concatenate files and print on the standard output";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-e");
            Name        = "equivalent to -vE";
            Description = "equivalent to -vE";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--number", "-n");
            Name        = "number all output lines";
            Description = "number all output lines";
        },
        [FlagParameter]@{
            Keys        = @("--number-nonblank", "-b");
            Name        = "number nonempty output lines, overrides -n";
            Description = "number nonempty output lines, overrides -n";
        },
        [FlagParameter]@{
            Keys        = @("--show-all", "-A");
            Name        = "equivalent to -vET";
            Description = "equivalent to -vET";
        },
        [FlagParameter]@{
            Keys        = @("--show-ends", "-E");
            Name        = "display `$ at end of each line";
            Description = "display `$ at end of each line";
        },
        [FlagParameter]@{
            Keys        = @("--show-nonprinting", "-v");
            Name        = "use ^ and M- notation, except for LFD and TAB";
            Description = "use ^ and M- notation, except for LFD and TAB";
        },
        [FlagParameter]@{
            Keys        = @("--show-tabs", "-T");
            Name        = "display TAB characters as ^I";
            Description = "display TAB characters as ^I";
        },
        [FlagParameter]@{
            Keys        = @("--squeeze-blank", "-s");
            Name        = "suppress repeated empty output lines";
            Description = "suppress repeated empty output lines";
        },
        [FlagParameter]@{
            Keys        = @("-t");
            Name        = "equivalent to -vT";
            Description = "equivalent to -vT";
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "(ignored)";
            Description = "(ignored)";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
