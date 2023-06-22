# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/fmt";
    Keys        = @("fmt");
    Name        = "fmt";
    Description = "simple optimal text formatter";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--crown-margin", "-c");
            Name        = "preserve indentation of first two lines";
            Description = "preserve indentation of first two lines";
        },
        [ValueParameter]@{
            Keys        = @("--goal", "-g");
            Name        = "goal width (default of 93% of width)";
            Description = "goal width (default of 93% of width)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--prefix", "-p");
            Name        = "reformat only lines beginning with STRING,";
            Description = "reformat only lines beginning with STRING,";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--split-only", "-s");
            Name        = "split long lines, but do not refill";
            Description = "split long lines, but do not refill";
        },
        [FlagParameter]@{
            Keys        = @("--tagged-paragraph", "-t");
            Name        = "indentation of first line different from second";
            Description = "indentation of first line different from second";
        },
        [FlagParameter]@{
            Keys        = @("--uniform-spacing", "-u");
            Name        = "one space between words, two after sentences";
            Description = "one space between words, two after sentences";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--width", "-w");
            Name        = "maximum line width (default of 75 columns)";
            Description = "maximum line width (default of 75 columns)";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
