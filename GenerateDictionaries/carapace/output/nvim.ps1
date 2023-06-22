# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://neovim.io/";
    Keys        = @("nvim");
    Name        = "nvim";
    Description = "edit text";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-M");
            Name        = "Modifications in text not allowed";
            Description = "Modifications in text not allowed";
        },
        [ValueParameter]@{
            Keys        = @("-O");
            Name        = "Open N vertical windows (default: one per file)";
            Description = "Open N vertical windows (default: one per file)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "Read-only mode";
            Description = "Read-only mode";
        },
        [ValueParameter]@{
            Keys        = @("-S");
            Name        = "Source <session> after loading the first file";
            Description = "Source <session> after loading the first file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-V");
            Name        = "Verbose [level][file]";
            Description = "Verbose [level][file]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-Z");
            Name        = "Restricted mode";
            Description = "Restricted mode";
        },
        [FlagParameter]@{
            Keys        = @("--api-info");
            Name        = "Write msgpack-encoded API metadata to stdout";
            Description = "Write msgpack-encoded API metadata to stdout";
        },
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "Binary mode";
            Description = "Binary mode";
        },
        [ValueParameter]@{
            Keys        = @("--cmd");
            Name        = "Execute <cmd> before any config";
            Description = "Execute <cmd> before any config";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "Diff mode";
            Description = "Diff mode";
        },
        [FlagParameter]@{
            Keys        = @("--embed");
            Name        = "Use stdin/stdout as a msgpack-rpc channel";
            Description = "Use stdin/stdout as a msgpack-rpc channel";
        },
        [FlagParameter]@{
            Keys        = @("--headless");
            Name        = "Don't start a user interface";
            Description = "Don't start a user interface";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this help message";
            Description = "Print this help message";
        },
        [ValueParameter]@{
            Keys        = @("-i");
            Name        = "Use this shada file";
            Description = "Use this shada file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--listen");
            Name        = "Serve RPC API from this address";
            Description = "Serve RPC API from this address";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-m");
            Name        = "Modifications (writing files) not allowed";
            Description = "Modifications (writing files) not allowed";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "No swap file, use memory only";
            Description = "No swap file, use memory only";
        },
        [FlagParameter]@{
            Keys        = @("--noplugin");
            Name        = "Don't load plugins";
            Description = "Don't load plugins";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "Open N windows (default: one per file)";
            Description = "Open N windows (default: one per file)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "Open N tab pages (default: one per file)";
            Description = "Open N tab pages (default: one per file)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-r");
            Name        = "Recover edit state for this file";
            Description = "Recover edit state for this file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-s");
            Name        = "Read Normal mode commands from <scriptin>";
            Description = "Read Normal mode commands from <scriptin>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--startuptime");
            Name        = "Write startup timing messages to <file>";
            Description = "Write startup timing messages to <file>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-u");
            Name        = "Use this config file";
            Description = "Use this config file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version information";
            Description = "Print version information";
        }
    )
}
