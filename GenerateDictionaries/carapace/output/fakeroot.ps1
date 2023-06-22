# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/fakeroot-sysv";
    Keys        = @("fakeroot");
    Name        = "fakeroot";
    Description = "run a command in an environment faking root privileges for file manipulation";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-b");
            Name        = "Specify  fd  base  (TCP  mode only).";
            Description = "Specify  fd  base  (TCP  mode only).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--faked");
            Name        = "Specify an alternative binary to use as faked.";
            Description = "Specify an alternative binary to use as faked.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "Display help.";
            Description = "Display help.";
        },
        [ValueParameter]@{
            Keys        = @("-i");
            Name        = "Load a fakeroot environment previously saved using -s from load-file.";
            Description = "Load a fakeroot environment previously saved using -s from load-file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--lib", "-l");
            Name        = "Specify an alternative wrapper library.";
            Description = "Specify an alternative wrapper library.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-s");
            Name        = "Save the fakeroot environment to save-file on exit.";
            Description = "Save the fakeroot environment to save-file on exit.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unknown-is-real", "-u");
            Name        = "Use the real ownership of files previously unknown to fakeroot.";
            Description = "Use the real ownership of files previously unknown to fakeroot.";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Display version.";
            Description = "Display version.";
        }
    )
}
