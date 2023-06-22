# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/qmk/qmk_cli";
    Keys        = @("qmk");
    Name        = "qmk";
    Description = "CLI wrapper for running QMK commands";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--color");
            Name        = "Enable color in output";
            Description = "Enable color in output";
        },
        [ValueParameter]@{
            Keys        = @("--config-file");
            Name        = "The location for the configuration file";
            Description = "The location for the configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--datetime-fmt");
            Name        = "Format string for datetimes";
            Description = "Format string for datetimes";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--interactive");
            Name        = "Force interactive mode even when stdout is not a tty.";
            Description = "Force interactive mode even when stdout is not a tty.";
        },
        [ValueParameter]@{
            Keys        = @("--log-file");
            Name        = "File to write log messages to";
            Description = "File to write log messages to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-file-fmt");
            Name        = "Format string for log file.";
            Description = "Format string for log file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-file-level");
            Name        = "Logging level for log file.";
            Description = "Logging level for log file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-fmt");
            Name        = "Format string for printed log output";
            Description = "Format string for printed log output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "Disable color in output";
            Description = "Disable color in output";
        },
        [FlagParameter]@{
            Keys        = @("--no-unicode");
            Name        = "Disable unicode loglevels";
            Description = "Disable unicode loglevels";
        },
        [FlagParameter]@{
            Keys        = @("--unicode");
            Name        = "Enable unicode loglevels";
            Description = "Enable unicode loglevels";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Make the logging more verbose";
            Description = "Make the logging more verbose";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Display the version and exit";
            Description = "Display the version and exit";
        },
        [CommandParameter]@{
            Keys        = @("c2json");
            Name        = "c2json";
            Description = "Creates a keymap.json from a keymap.c file";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "The keyboard's name";
                    Description = "The keyboard's name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keymap");
                    Name        = "The keymap's name";
                    Description = "The keymap's name";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no-cpp");
                    Name        = "Do not use 'cpp' on keymap.c";
                    Description = "Do not use 'cpp' on keymap.c";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "File to write to";
                    Description = "File to write to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Quiet mode, only output error messages";
                    Description = "Quiet mode, only output error messages";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cd");
            Name        = "cd";
            Description = "Go to QMK Home";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("chibios-confmigrate");
            Name        = "chibios-confmigrate";
            Description = "Generates a migrated ChibiOS configuration file";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--delete", "-d");
                    Name        = "migration will delete the input file";
                    Description = "migration will delete the input file";
                },
                [FlagParameter]@{
                    Keys        = @("--force", "-f");
                    Name        = "Re-migrates an already migrated file";
                    Description = "Re-migrates an already migrated file";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--input", "-i");
                    Name        = "Specify input config file.";
                    Description = "Specify input config file.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite", "-o");
                    Name        = "Overwrites the input file during migration.";
                    Description = "Overwrites the input file during migration.";
                },
                [ValueParameter]@{
                    Keys        = @("--reference", "-r");
                    Name        = "Specify the reference file to compare against";
                    Description = "Specify the reference file to compare against";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "Clean the QMK firmware folder of build artifacts";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Remove *.hex and *.bin files in the QMK root as well.";
                    Description = "Remove *.hex and *.bin files in the QMK root as well.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clone");
            Name        = "clone";
            Description = "Clone a qmk_firmware fork";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--baseurl");
                    Name        = "The URL all git operations start from";
                    Description = "The URL all git operations start from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--branch", "-b");
                    Name        = "The branch to clone";
                    Description = "The branch to clone";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("compile");
            Name        = "compile";
            Description = "Compile a QMK Firmware";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--clean", "-c");
                    Name        = "Remove object files before compiling.";
                    Description = "Remove object files before compiling.";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-n");
                    Name        = "Don't actually build, just show the make command to be run.";
                    Description = "Don't actually build, just show the make command to be run.";
                },
                [ValueParameter]@{
                    Keys        = @("--env", "-e");
                    Name        = "Set a variable to be passed to make.";
                    Description = "Set a variable to be passed to make.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "The keyboard to build a firmware for.";
                    Description = "The keyboard to build a firmware for.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keymap");
                    Name        = "The keymap to build a firmware for.";
                    Description = "The keymap to build a firmware for.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel", "-j");
                    Name        = "Set the number of parallel make jobs.";
                    Description = "Set the number of parallel make jobs.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("config");
            Name        = "config";
            Description = "Read and write configuration settings";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--all", "-a");
                    Name        = "Show all configuration options.";
                    Description = "Show all configuration options.";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [FlagParameter]@{
                    Keys        = @("--read-only");
                    Name        = "Operate in read-only mode.";
                    Description = "Operate in read-only mode.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("doctor");
            Name        = "doctor";
            Description = "Basic QMK environment checks";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [FlagParameter]@{
                    Keys        = @("--no", "-n");
                    Name        = "Answer no to all questions.";
                    Description = "Answer no to all questions.";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Answer yes to all questions.";
                    Description = "Answer yes to all questions.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("env");
            Name        = "env";
            Description = "Prints environment information";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("flash");
            Name        = "flash";
            Description = "QMK Flash";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--bootloader");
                    Name        = "The flash command, corresponding to qmk's make options of bootloaders.";
                    Description = "The flash command, corresponding to qmk's make options of bootloaders.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--bootloaders", "-b");
                    Name        = "List the available bootloaders.";
                    Description = "List the available bootloaders.";
                },
                [FlagParameter]@{
                    Keys        = @("--clean", "-c");
                    Name        = "Remove object files before compiling.";
                    Description = "Remove object files before compiling.";
                },
                [FlagParameter]@{
                    Keys        = @("--dry-run", "-n");
                    Name        = "Don't actually build";
                    Description = "Don't actually build";
                },
                [ValueParameter]@{
                    Keys        = @("--env", "-e");
                    Name        = "Set a variable to be passed to make.";
                    Description = "Set a variable to be passed to make.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "The keyboard to build a firmware for";
                    Description = "The keyboard to build a firmware for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keymap");
                    Name        = "The keymap to build a firmware for";
                    Description = "The keymap to build a firmware for";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--parallel", "-j");
                    Name        = "Set the number of parallel make jobs";
                    Description = "Set the number of parallel make jobs";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("generate-rgb-breathe-table");
            Name        = "generate-rgb-breathe-table";
            Description = "Generates an RGB Light breathing table header";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--center", "-c");
                    Name        = "The breathing center value";
                    Description = "The breathing center value";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--max", "-m");
                    Name        = "The breathing maximum value";
                    Description = "The breathing maximum value";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "File to write to";
                    Description = "File to write to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Quiet mode, only output error messages";
                    Description = "Quiet mode, only output error messages";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("info");
            Name        = "info";
            Description = "Keyboard information";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--ascii");
                    Name        = "Render layout box drawings in ASCII only.";
                    Description = "Render layout box drawings in ASCII only.";
                },
                [ValueParameter]@{
                    Keys        = @("--format", "-f");
                    Name        = "Format to display the data in";
                    Description = "Format to display the data in";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "Keyboard to show info for.";
                    Description = "Keyboard to show info for.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keymap");
                    Name        = "Show the layers for a JSON keymap too.";
                    Description = "Show the layers for a JSON keymap too.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--layouts", "-l");
                    Name        = "Render the layouts.";
                    Description = "Render the layouts.";
                },
                [FlagParameter]@{
                    Keys        = @("--matrix", "-m");
                    Name        = "Render the layouts with matrix information.";
                    Description = "Render the layouts with matrix information.";
                },
                [FlagParameter]@{
                    Keys        = @("--rules-mk", "-r");
                    Name        = "Render the parsed values of the keyboard's rules.mk file.";
                    Description = "Render the parsed values of the keyboard's rules.mk file.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("json2c");
            Name        = "json2c";
            Description = "Creates a keymap.c from a QMK Configurator export";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--output", "-o");
                    Name        = "File to write to";
                    Description = "File to write to";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "Quiet mode, only output error messages";
                    Description = "Quiet mode, only output error messages";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("lint");
            Name        = "lint";
            Description = "Check keyboard and keymap for common mistakes";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "The keyboard to check.";
                    Description = "The keyboard to check.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keymap");
                    Name        = "The keymap to check.";
                    Description = "The keymap to check.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--strict");
                    Name        = "Treat warnings as errors.";
                    Description = "Treat warnings as errors.";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list-keyboards");
            Name        = "list-keyboards";
            Description = "List the keyboards currently defined within QMK";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list-keymaps");
            Name        = "list-keymaps";
            Description = "List the keymaps for a specific keyboard";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "Specify keyboard name.";
                    Description = "Specify keyboard name.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("list-keymaps");
            Name        = "list-keymaps";
            Description = "List the layouts for a specific keyboard";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "Specify keyboard name.";
                    Description = "Specify keyboard name.";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("new-keyboard");
            Name        = "new-keyboard";
            Description = "Creates a new keyboard directory";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "Specify the name for the new keyboard directory";
                    Description = "Specify the name for the new keyboard directory";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--realname", "-n");
                    Name        = "Specify your real name if you want to use that.";
                    Description = "Specify your real name if you want to use that.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--type", "-t");
                    Name        = "Specify the keyboard type";
                    Description = "Specify the keyboard type";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--username", "-u");
                    Name        = "Specify your username";
                    Description = "Specify your username";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("new-keymap");
            Name        = "new-keymap";
            Description = "Creates a new keymap for the keyboard of your choosing";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--keyboard");
                    Name        = "Specify keyboard name.";
                    Description = "Specify keyboard name.";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--keymap");
                    Name        = "Specify the name for the new keymap directory";
                    Description = "Specify the name for the new keymap directory";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("setup");
            Name        = "setup";
            Description = "Setup your computer for qmk_firmware";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--baseurl");
                    Name        = "The URL all git operations start from";
                    Description = "The URL all git operations start from";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--branch", "-b");
                    Name        = "The branch to clone";
                    Description = "The branch to clone";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--home", "-H");
                    Name        = "The location for QMK Firmware";
                    Description = "The location for QMK Firmware";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--no", "-n");
                    Name        = "Answer no to all questions";
                    Description = "Answer no to all questions";
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "Answer yes to all questions";
                    Description = "Answer yes to all questions";
                }
            )
        }
    )
}
