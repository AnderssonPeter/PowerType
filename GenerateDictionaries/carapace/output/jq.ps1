# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://stedolan.github.io/jq/";
    Keys        = @("jq");
    Name        = "jq";
    Description = "Command-line JSON processor";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "prepend a directory to the module search path";
            Description = "prepend a directory to the module search path";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--arg");
            Name        = "pre-set a variable to a string";
            Description = "pre-set a variable to a string";
        },
        [FlagParameter]@{
            Keys        = @("--argjson");
            Name        = "pre-set a variable to an object";
            Description = "pre-set a variable to an object";
        },
        [FlagParameter]@{
            Keys        = @("--args");
            Name        = "remaining arguments are string arguments, not files";
            Description = "remaining arguments are string arguments, not files";
        },
        [FlagParameter]@{
            Keys        = @("--ascii-output", "-a");
            Name        = "restrict output to ASCII";
            Description = "restrict output to ASCII";
        },
        [FlagParameter]@{
            Keys        = @("--color-output", "-C");
            Name        = "output in color";
            Description = "output in color";
        },
        [FlagParameter]@{
            Keys        = @("--compact-output", "-c");
            Name        = "don't pretty-print";
            Description = "don't pretty-print";
        },
        [FlagParameter]@{
            Keys        = @("--exit-status", "-e");
            Name        = "report `"false`" and `"null`" results via exit code";
            Description = "report `"false`" and `"null`" results via exit code";
        },
        [ValueParameter]@{
            Keys        = @("--from-file", "-f");
            Name        = "read filter from file";
            Description = "read filter from file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--indent");
            Name        = "indent output using given number of spaces";
            Description = "indent output using given number of spaces";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--join-output", "-j");
            Name        = "like -r, without newlines between outputs";
            Description = "like -r, without newlines between outputs";
        },
        [FlagParameter]@{
            Keys        = @("--jsonargs");
            Name        = "remaining arguments are JSON arguments, not files";
            Description = "remaining arguments are JSON arguments, not files";
        },
        [FlagParameter]@{
            Keys        = @("--monochrome-output", "-M");
            Name        = "output without color";
            Description = "output without color";
        },
        [FlagParameter]@{
            Keys        = @("--null-input", "-n");
            Name        = "input is ignored";
            Description = "input is ignored";
        },
        [FlagParameter]@{
            Keys        = @("--raw-input", "-R");
            Name        = "consider each input line as a JSON strings";
            Description = "consider each input line as a JSON strings";
        },
        [FlagParameter]@{
            Keys        = @("--raw-output", "-r");
            Name        = "don't JSON-quote output if it's a string";
            Description = "don't JSON-quote output if it's a string";
        },
        [FlagParameter]@{
            Keys        = @("--rawfile");
            Name        = "pre-set a variable to the contents of a file";
            Description = "pre-set a variable to the contents of a file";
        },
        [FlagParameter]@{
            Keys        = @("--seq");
            Name        = "use application/json-seq ASCII RS/LF scheme in input and output";
            Description = "use application/json-seq ASCII RS/LF scheme in input and output";
        },
        [FlagParameter]@{
            Keys        = @("--slurp", "-s");
            Name        = "join input JSON objects to array before filtering";
            Description = "join input JSON objects to array before filtering";
        },
        [FlagParameter]@{
            Keys        = @("--slurpfile");
            Name        = "pre-set a variable to an array of JSON texts read from a file";
            Description = "pre-set a variable to an array of JSON texts read from a file";
        },
        [FlagParameter]@{
            Keys        = @("--sort-keys", "-S");
            Name        = "output object keys in sorted order";
            Description = "output object keys in sorted order";
        },
        [FlagParameter]@{
            Keys        = @("--stream");
            Name        = "parse input streamily (changes output)";
            Description = "parse input streamily (changes output)";
        },
        [FlagParameter]@{
            Keys        = @("--tab");
            Name        = "indent output using TAB characters";
            Description = "indent output using TAB characters";
        },
        [FlagParameter]@{
            Keys        = @("--unbuffered");
            Name        = "flush output after each JSON object";
            Description = "flush output after each JSON object";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output jq's version number";
            Description = "output jq's version number";
        }
    )
}
