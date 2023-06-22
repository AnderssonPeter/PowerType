# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/nl";
    Keys        = @("nl");
    Name        = "nl";
    Description = "number lines of files";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--body-numbering", "-b");
            Name        = "use STYLE for numbering body lines";
            Description = "use STYLE for numbering body lines";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--footer-numbering", "-f");
            Name        = "use STYLE for numbering footer lines";
            Description = "use STYLE for numbering footer lines";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--header-numbering", "-h");
            Name        = "use STYLE for numbering header lines";
            Description = "use STYLE for numbering header lines";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--join-blank-lines", "-l");
            Name        = "group of NUMBER empty lines counted as one";
            Description = "group of NUMBER empty lines counted as one";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--line-increment", "-i");
            Name        = "line number increment at each line";
            Description = "line number increment at each line";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-renumber", "-p");
            Name        = "do not reset line numbers for each section";
            Description = "do not reset line numbers for each section";
        },
        [ValueParameter]@{
            Keys        = @("--number-format", "-n");
            Name        = "insert line numbers according to FORMAT";
            Description = "insert line numbers according to FORMAT";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--number-separator", "-s");
            Name        = "add STRING after (possible) line number";
            Description = "add STRING after (possible) line number";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--number-width", "-w");
            Name        = "use NUMBER columns for line numbers";
            Description = "use NUMBER columns for line numbers";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--section-delimiter", "-d");
            Name        = "use CC for logical page delimiters";
            Description = "use CC for logical page delimiters";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--starting-line-number", "-v");
            Name        = "first line number for each section";
            Description = "first line number for each section";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
