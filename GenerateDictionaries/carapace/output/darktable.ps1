# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://darktable-org.github.io/dtdocs/en-us/";
    Keys        = @("darktable");
    Name        = "darktable";
    Description = "a digital photography workflow application";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cachedir");
            Name        = "user cache directory";
            Description = "user cache directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--conf");
            Name        = "override config values";
            Description = "override config values";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--configdir");
            Name        = "user config directory";
            Description = "user config directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-d");
            Name        = "enable debug output";
            Description = "enable debug output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--datadir");
            Name        = "data directory";
            Description = "data directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disable-opencl");
            Name        = "prevent OpenCL initialization";
            Description = "prevent OpenCL initialization";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--library");
            Name        = "library file";
            Description = "library file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--localedir");
            Name        = "locale directory";
            Description = "locale directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--luacmd");
            Name        = "lua command";
            Description = "lua command";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--moduledir");
            Name        = "module directory";
            Description = "module directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--noiseprofiles");
            Name        = "noiseprofiles json file";
            Description = "noiseprofiles json file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "num openmp threads";
            Description = "num openmp threads";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tmpdir");
            Name        = "tmp directory";
            Description = "tmp directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "print version number";
            Description = "print version number";
        }
    )
}
