# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/ptx";
    Keys        = @("ptx");
    Name        = "ptx";
    Description = "produce a permuted index of file contents";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-O");
            Name        = "generate output as roff directives";
            Description = "generate output as roff directives";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-T");
            Name        = "generate output as TeX directives";
            Description = "generate output as TeX directives";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--auto-reference", "-A");
            Name        = "output automatically generated references";
            Description = "output automatically generated references";
        },
        [ValueParameter]@{
            Keys        = @("--break-file", "-b");
            Name        = "word break characters in this FILE";
            Description = "word break characters in this FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--flag-truncation", "-F");
            Name        = "use STRING for flagging line truncations.";
            Description = "use STRING for flagging line truncations.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--format");
            Name        = "generate output as given directives";
            Description = "generate output as given directives";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gap-size", "-g");
            Name        = "gap size in columns between output fields";
            Description = "gap size in columns between output fields";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-f");
            Name        = "fold lower case to upper case for sorting";
            Description = "fold lower case to upper case for sorting";
        },
        [ValueParameter]@{
            Keys        = @("--ignore-file", "-i");
            Name        = "read ignore word list from FILE";
            Description = "read ignore word list from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--macro-name", "-M");
            Name        = "macro name to use instead of 'xx'";
            Description = "macro name to use instead of 'xx'";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--only-file", "-o");
            Name        = "read only word list from this FILE";
            Description = "read only word list from this FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--references", "-r");
            Name        = "first field of each line is a reference";
            Description = "first field of each line is a reference";
        },
        [FlagParameter]@{
            Keys        = @("--right-side-refs", "-R");
            Name        = "put references at right, not counted in -w";
            Description = "put references at right, not counted in -w";
        },
        [ValueParameter]@{
            Keys        = @("--sentence-regexp", "-S");
            Name        = "for end of lines or end of sentences";
            Description = "for end of lines or end of sentences";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--traditional", "-G");
            Name        = "behave more like System V 'ptx'";
            Description = "behave more like System V 'ptx'";
        },
        [FlagParameter]@{
            Keys        = @("--typeset-mode", "-t");
            Name        = "- not implemented -";
            Description = "- not implemented -";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--width", "-w");
            Name        = "output width in columns, reference excluded";
            Description = "output width in columns, reference excluded";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--word-regexp", "-W");
            Name        = "use REGEXP to match each keyword";
            Description = "use REGEXP to match each keyword";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
