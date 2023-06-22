# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://developer.android.com/studio/command-line/avdmanager";
    Keys        = @("avdmanager");
    Name        = "avdmanager";
    Description = "create and manage Android Virtual Devices";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--clear-cache");
            Name        = "Clear the SDK Manager repository manifest cache.";
            Description = "Clear the SDK Manager repository manifest cache.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Help on a specific command.";
            Description = "Help on a specific command.";
        },
        [FlagParameter]@{
            Keys        = @("--silent", "-s");
            Name        = "Silent mode, shows errors only.";
            Description = "Silent mode, shows errors only.";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Verbose mode, shows errors, warnings and all messages.";
            Description = "Verbose mode, shows errors, warnings and all messages.";
        },
        [CommandParameter]@{
            Keys        = @("create");
            Name        = "create";
            Description = "Creates a new Android Virtual Device";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("avd");
                    Name        = "avd";
                    Description = "Creates a new Android Virtual Device";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--abi", "-b");
                            Name        = "The ABI to use for the AVD.";
                            Description = "The ABI to use for the AVD.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--device", "-d");
                            Name        = "The optional device definition to use.";
                            Description = "The optional device definition to use.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [FlagParameter]@{
                            Keys        = @("--force", "-f");
                            Name        = "Forces creation (overwrites an existing AVD)";
                            Description = "Forces creation (overwrites an existing AVD)";
                        },
                        [ValueParameter]@{
                            Keys        = @("--name", "-n");
                            Name        = "Name of the new AVD.";
                            Description = "Name of the new AVD.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--package", "-k");
                            Name        = "Package path of the system image for this AVD";
                            Description = "Package path of the system image for this AVD";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--path", "-p");
                            Name        = "Directory where the new AVD will be created.";
                            Description = "Directory where the new AVD will be created.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--sdcard", "-c");
                            Name        = "Path to a shared SD card image, or size of a new sdcard for the new AVD.";
                            Description = "Path to a shared SD card image, or size of a new sdcard for the new AVD.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--snapshot", "-a");
                            Name        = "Place a snapshots file in the AVD, to enable persistence.";
                            Description = "Place a snapshots file in the AVD, to enable persistence.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--tag", "-g");
                            Name        = "The sys-img tag to use for the AVD.";
                            Description = "The sys-img tag to use for the AVD.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("delete");
            Name        = "delete";
            Description = "Deletes an Android Virtual Device";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("avd");
                    Name        = "avd";
                    Description = "Deletes an Android Virtual Device";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--name", "-n");
                            Name        = "Name of the AVD to delete.";
                            Description = "Name of the AVD to delete.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list");
            Name        = "list";
            Description = "Lists existing targets or virtual devices";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("avd");
                    Name        = "avd";
                    Description = "Lists existing Android Virtual Devices";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--compact", "-c");
                            Name        = "Compact output (suitable for scripts)";
                            Description = "Compact output (suitable for scripts)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null", "-0");
                            Name        = "Terminates lines with \0 instead of \n (e.g. for xargs -0).";
                            Description = "Terminates lines with \0 instead of \n (e.g. for xargs -0).";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("device");
                    Name        = "device";
                    Description = "Lists existing devices";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--compact", "-c");
                            Name        = "Compact output (suitable for scripts)";
                            Description = "Compact output (suitable for scripts)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null", "-0");
                            Name        = "Terminates lines with \0 instead of \n (e.g. for xargs -0).";
                            Description = "Terminates lines with \0 instead of \n (e.g. for xargs -0).";
                        }
                    )
                },
                [CommandParameter]@{
                    Keys        = @("target");
                    Name        = "target";
                    Description = "Lists existing targets";
                    Parameters  = @(
                        [FlagParameter]@{
                            Keys        = @("--compact", "-c");
                            Name        = "Compact output (suitable for scripts)";
                            Description = "Compact output (suitable for scripts)";
                        },
                        [FlagParameter]@{
                            Keys        = @("--null", "-0");
                            Name        = "Terminates lines with \0 instead of \n (e.g. for xargs -0).";
                            Description = "Terminates lines with \0 instead of \n (e.g. for xargs -0).";
                        }
                    )
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("move");
            Name        = "move";
            Description = "Moves or renames an Android Virtual Device";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("avd");
                    Name        = "avd";
                    Description = "Moves or renames an Android Virtual Device";
                    Parameters  = @(
                        [ValueParameter]@{
                            Keys        = @("--name", "-n");
                            Name        = "Name of the AVD to move or rename.";
                            Description = "Name of the AVD to move or rename.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--path", "-p");
                            Name        = "Path to the AVD's new directory.";
                            Description = "Path to the AVD's new directory.";
                            # Source = $?? # todo: Fix or remove this!
                        },
                        [ValueParameter]@{
                            Keys        = @("--rename", "-r");
                            Name        = "New name of the AVD.";
                            Description = "New name of the AVD.";
                            # Source = $?? # todo: Fix or remove this!
                        }
                    )
                }
            )
        }
    )
}
