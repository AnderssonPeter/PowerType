# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/scp";
    Keys        = @("scp");
    Name        = "scp";
    Description = "OpenSSH secure file copy";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-3");
            Name        = "Copies between two remote hosts are transferred through the local host.";
            Description = "Copies between two remote hosts are transferred through the local host.";
        },
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "Forces scp to use IPv4 addresses only.";
            Description = "Forces scp to use IPv4 addresses only.";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "Forces scp to use IPv6 addresses only.";
            Description = "Forces scp to use IPv6 addresses only.";
        },
        [FlagParameter]@{
            Keys        = @("-A");
            Name        = "Allows forwarding of ssh-agent(1) to the remote system.";
            Description = "Allows forwarding of ssh-agent(1) to the remote system.";
        },
        [FlagParameter]@{
            Keys        = @("-B");
            Name        = "Selects batch mode (prevents asking for passwords or passphrases).";
            Description = "Selects batch mode (prevents asking for passwords or passphrases).";
        },
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "Compression enable.";
            Description = "Compression enable.";
        },
        [ValueParameter]@{
            Keys        = @("-F");
            Name        = "Specifies an alternative per-user configuration file for ssh.";
            Description = "Specifies an alternative per-user configuration file for ssh.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-J");
            Name        = "Connect to the target host by first making an scp connection to the jump host.";
            Description = "Connect to the target host by first making an scp connection to the jump host.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-P");
            Name        = "Specifies the port to connect to on the remote host.";
            Description = "Specifies the port to connect to on the remote host.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-S");
            Name        = "Name of program to use for the encrypted connection.";
            Description = "Name of program to use for the encrypted connection.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-T");
            Name        = "Disable strict filename checking.";
            Description = "Disable strict filename checking.";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Selects the cipher to use for encrypting the data transfer.";
            Description = "Selects the cipher to use for encrypting the data transfer.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-i");
            Name        = "Selects the file from which the identity (private key) for public key authentication is read.";
            Description = "Selects the file from which the identity (private key) for public key authentication is read.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "Limits the used bandwidth, specified in Kbit/s.";
            Description = "Limits the used bandwidth, specified in Kbit/s.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "Can be used to pass options to ssh in the format used in ssh_config.";
            Description = "Can be used to pass options to ssh in the format used in ssh_config.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "Preserves modification times, access times, and modes from the original file.";
            Description = "Preserves modification times, access times, and modes from the original file.";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "Quiet mode.";
            Description = "Quiet mode.";
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "Recursively copy entire directories.";
            Description = "Recursively copy entire directories.";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Verbose mode.";
            Description = "Verbose mode.";
        }
    )
}
