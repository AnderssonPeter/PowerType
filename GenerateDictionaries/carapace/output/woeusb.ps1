# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/WoeUSB/WoeUSB-ng";
    Keys        = @("woeusb");
    Name        = "woeusb";
    Description = "A Linux program to create a Windows USB stick installer";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--about");
            Name        = "Show info about this application";
            Description = "Show info about this application";
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Enable script debugging";
            Description = "Enable script debugging";
        },
        [FlagParameter]@{
            Keys        = @("--device", "-d");
            Name        = "Completely WIPE the entire USB storage device";
            Description = "Completely WIPE the entire USB storage device";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--label", "-l");
            Name        = "Specify label for the newly created file system";
            Description = "Specify label for the newly created file system";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "Disable message coloring";
            Description = "Disable message coloring";
        },
        [FlagParameter]@{
            Keys        = @("--partition", "-p");
            Name        = "Copy Windows files to an existing partition";
            Description = "Copy Windows files to an existing partition";
        },
        [ValueParameter]@{
            Keys        = @("--target-filesystem");
            Name        = "Specify the filesystem to use as the target";
            Description = "Specify the filesystem to use as the target";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tgt-fs");
            Name        = "Specify the filesystem to use as the target";
            Description = "Specify the filesystem to use as the target";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Verbose mode";
            Description = "Verbose mode";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print application version";
            Description = "Print application version";
        },
        [FlagParameter]@{
            Keys        = @("--workaround-bios-boot-flag");
            Name        = "Workaround BIOS bug that won't include the device in boot menu";
            Description = "Workaround BIOS bug that won't include the device in boot menu";
        }
    )
}
