# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.python.org/";
    Keys        = @("python");
    Name        = "python";
    Description = "an interpreted, interactive, object-oriented programming language";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-B");
            Name        = "don't write .pyc files on import";
            Description = "don't write .pyc files on import";
        },
        [FlagParameter]@{
            Keys        = @("-E");
            Name        = "ignore PYTHON* environment variables";
            Description = "ignore PYTHON* environment variables";
        },
        [FlagParameter]@{
            Keys        = @("-I");
            Name        = "isolate Python from the user's environment";
            Description = "isolate Python from the user's environment";
        },
        [ValueParameter]@{
            Keys        = @("-O");
            Name        = "remove assert and __debug__-dependent statements";
            Description = "remove assert and __debug__-dependent statements";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-S");
            Name        = "don't imply 'import site' on initialization";
            Description = "don't imply 'import site' on initialization";
        },
        [ValueParameter]@{
            Keys        = @("-V");
            Name        = "print the Python version number and exit";
            Description = "print the Python version number and exit";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-W");
            Name        = "warning control";
            Description = "warning control";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-X");
            Name        = "set implementation-specific option";
            Description = "set implementation-specific option";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "issue warnings about str(bytes_instance), str(bytearray_instance) and comparing bytes/bytearray with str";
            Description = "issue warnings about str(bytes_instance), str(bytearray_instance) and comparing bytes/bytearray with str";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "program passed in as string";
            Description = "program passed in as string";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--check-hash-based-pycs");
            Name        = "control how Python invalidates hash-based .pyc files";
            Description = "control how Python invalidates hash-based .pyc files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "turn on parser debugging output";
            Description = "turn on parser debugging output";
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "print this help message and exit";
            Description = "print this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "inspect interactively after running script";
            Description = "inspect interactively after running script";
        },
        [ValueParameter]@{
            Keys        = @("-m");
            Name        = "run library module as a script";
            Description = "run library module as a script";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "don't print version and copyright messages on interactive startup";
            Description = "don't print version and copyright messages on interactive startup";
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "don't add user site directory to sys.path";
            Description = "don't add user site directory to sys.path";
        },
        [FlagParameter]@{
            Keys        = @("-u");
            Name        = "force the stdout and stderr streams to be unbuffered";
            Description = "force the stdout and stderr streams to be unbuffered";
        },
        [ValueParameter]@{
            Keys        = @("-v");
            Name        = "verbose (trace import statements)";
            Description = "verbose (trace import statements)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "skip first line of source";
            Description = "skip first line of source";
        }
    )
}
