# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://gitlab.redox-os.org/redox-os/ion/";
    Keys        = @("ion");
    Name        = "ion";
    Description = "The Ion Shell";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Evaluate given commands instead of reading from the commandline";
            Description = "Evaluate given commands instead of reading from the commandline";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fake-interactive", "-f");
            Name        = "Use a fake interactive mode, where errors don't exit the shell";
            Description = "Use a fake interactive mode, where errors don't exit the shell";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "Force interactive mode";
            Description = "Force interactive mode";
        },
        [FlagParameter]@{
            Keys        = @("--no-execute", "-n");
            Name        = "Do not execute any commands, perform only syntax checking";
            Description = "Do not execute any commands, perform only syntax checking";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "Shortcut layout.";
            Description = "Shortcut layout.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print the version, platform and revision of Ion then exit";
            Description = "Print the version, platform and revision of Ion then exit";
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "Print commands before execution";
            Description = "Print commands before execution";
        }
    )
}
