# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://asciinema.org/";
    Keys        = @("asciinema");
    Name        = "asciinema";
    Description = "Record and share your terminal sessions, the right way.";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help message and exit";
            Description = "show this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "show program's version number and exit";
            Description = "show program's version number and exit";
        },
        [CommandParameter]@{
            Keys        = @("auth");
            Name        = "auth";
            Description = "Manage recordings on asciinema.org account";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("cat");
            Name        = "cat";
            Description = "Print full output of recorded session";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("play");
            Name        = "play";
            Description = "Replay terminal recording";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--idle-time-limit", "-i");
                    Name        = "limit idle time during playback to given number of seconds";
                    Description = "limit idle time during playback to given number of seconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--speed", "-s");
                    Name        = "playback speedup (can be fractional)";
                    Description = "playback speedup (can be fractional)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("rec");
            Name        = "rec";
            Description = "Record terminal session";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--append");
                    Name        = "append to existing recording";
                    Description = "append to existing recording";
                },
                [ValueParameter]@{
                    Keys        = @("--command", "-c");
                    Name        = "command to record, defaults to `$SHELL";
                    Description = "command to record, defaults to `$SHELL";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--env", "-e");
                    Name        = "list of environment variables to capture";
                    Description = "list of environment variables to capture";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                },
                [ValueParameter]@{
                    Keys        = @("--idle-time-limit", "-i");
                    Name        = "limit recorded idle time to given number of seconds";
                    Description = "limit recorded idle time to given number of seconds";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--overwrite");
                    Name        = "overwrite the file if it already exists";
                    Description = "overwrite the file if it already exists";
                },
                [FlagParameter]@{
                    Keys        = @("--quiet", "-q");
                    Name        = "be quiet, suppress all notices/warnings (implies -y)";
                    Description = "be quiet, suppress all notices/warnings (implies -y)";
                },
                [FlagParameter]@{
                    Keys        = @("--raw");
                    Name        = "save only raw stdout output";
                    Description = "save only raw stdout output";
                },
                [FlagParameter]@{
                    Keys        = @("--stdin");
                    Name        = "enable stdin recording, disabled by default";
                    Description = "enable stdin recording, disabled by default";
                },
                [ValueParameter]@{
                    Keys        = @("--title", "-t");
                    Name        = "title of the asciicast";
                    Description = "title of the asciicast";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--yes", "-y");
                    Name        = "answer `"yes`" to all prompts (e.g. upload confirmation)";
                    Description = "answer `"yes`" to all prompts (e.g. upload confirmation)";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("upload");
            Name        = "upload";
            Description = "Upload locally saved terminal session to asciinema.org";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "show this help message and exit";
                    Description = "show this help message and exit";
                }
            )
        }
    )
}
