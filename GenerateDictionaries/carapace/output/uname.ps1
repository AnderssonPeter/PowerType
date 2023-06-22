# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/uname";
    Keys        = @("uname");
    Name        = "uname";
    Description = "print system information";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "print all information, in the following order,";
            Description = "print all information, in the following order,";
        },
        [FlagParameter]@{
            Keys        = @("--hardware-platform", "-i");
            Name        = "print the hardware platform (non-portable)";
            Description = "print the hardware platform (non-portable)";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--kernel-name", "-s");
            Name        = "print the kernel name";
            Description = "print the kernel name";
        },
        [FlagParameter]@{
            Keys        = @("--kernel-release", "-r");
            Name        = "print the kernel release";
            Description = "print the kernel release";
        },
        [FlagParameter]@{
            Keys        = @("--kernel-version", "-v");
            Name        = "print the kernel version";
            Description = "print the kernel version";
        },
        [FlagParameter]@{
            Keys        = @("--machine", "-m");
            Name        = "print the machine hardware name";
            Description = "print the machine hardware name";
        },
        [FlagParameter]@{
            Keys        = @("--nodename", "-n");
            Name        = "print the network node hostname";
            Description = "print the network node hostname";
        },
        [FlagParameter]@{
            Keys        = @("--operating-system", "-o");
            Name        = "print the operating system";
            Description = "print the operating system";
        },
        [FlagParameter]@{
            Keys        = @("--processor", "-p");
            Name        = "print the processor type (non-portable)";
            Description = "print the processor type (non-portable)";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
