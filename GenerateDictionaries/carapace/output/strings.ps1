# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/strings";
    Keys        = @("strings");
    Name        = "strings";
    Description = "print the sequences of printable characters in files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "Scan the entire file, not just the data section [default]";
            Description = "Scan the entire file, not just the data section [default]";
        },
        [ValueParameter]@{
            Keys        = @("--bytes", "-n");
            Name        = "Locate & print any NUL-terminated sequence of at";
            Description = "Locate & print any NUL-terminated sequence of at";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--data", "-d");
            Name        = "Only scan the data sections in the file";
            Description = "Only scan the data sections in the file";
        },
        [ValueParameter]@{
            Keys        = @("--encoding", "-e");
            Name        = "Select character size and endianness:";
            Description = "Select character size and endianness:";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display this information";
            Description = "Display this information";
        },
        [FlagParameter]@{
            Keys        = @("--include-all-whitespace", "-w");
            Name        = "Include all whitespace as valid string characters";
            Description = "Include all whitespace as valid string characters";
        },
        [FlagParameter]@{
            Keys        = @("-o");
            Name        = "An alias for --radix=o";
            Description = "An alias for --radix=o";
        },
        [ValueParameter]@{
            Keys        = @("--output-separator", "-s");
            Name        = "String used to separate strings in output.";
            Description = "String used to separate strings in output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-file-name", "-f");
            Name        = "Print the name of the file before each string";
            Description = "Print the name of the file before each string";
        },
        [ValueParameter]@{
            Keys        = @("--radix", "-t");
            Name        = "Print the location of the string in base 8, 10 or 16";
            Description = "Print the location of the string in base 8, 10 or 16";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target", "-T");
            Name        = "Specify the binary file format";
            Description = "Specify the binary file format";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print the program's version number";
            Description = "Print the program's version number";
        }
    )
}
