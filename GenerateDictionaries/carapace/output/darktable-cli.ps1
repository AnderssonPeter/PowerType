# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://darktable-org.github.io/dtdocs/en-us/special-topics/program-invocation/darktable-cli/";
    Keys        = @("darktable-cli");
    Name        = "darktable-cli";
    Description = "a command line darktable variant";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--apply-custom-presets");
            Name        = "custom preset";
            Description = "custom preset";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bpp");
            Name        = "bit depth";
            Description = "bit depth";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--height");
            Name        = "max height";
            Description = "max height";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help,-h");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--hq");
            Name        = "high quality resampling";
            Description = "high quality resampling";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--style");
            Name        = "style name";
            Description = "style name";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--style-overwrite");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--upscale");
            Name        = "upscaling";
            Description = "upscaling";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "";
            Description = "";
        },
        [ValueParameter]@{
            Keys        = @("--width");
            Name        = "max width";
            Description = "max width";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
