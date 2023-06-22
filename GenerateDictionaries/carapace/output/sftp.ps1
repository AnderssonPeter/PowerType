# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/sftp";
    Keys        = @("sftp");
    Name        = "sftp";
    Description = "OpenSSH secure file transfer";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "Forces sftp to use IPv4 addresses only.";
            Description = "Forces sftp to use IPv4 addresses only.";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "Forces sftp to use IPv6 addresses only.";
            Description = "Forces sftp to use IPv6 addresses only.";
        },
        [FlagParameter]@{
            Keys        = @("-A");
            Name        = "Allows forwarding of ssh-agent(1) to the remote system.";
            Description = "Allows forwarding of ssh-agent(1) to the remote system.";
        },
        [ValueParameter]@{
            Keys        = @("-B");
            Name        = "Specify the size of the buffer that sftp uses when transferring files.";
            Description = "Specify the size of the buffer that sftp uses when transferring files.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "Enables compression (via ssh's -C flag).";
            Description = "Enables compression (via ssh's -C flag).";
        },
        [ValueParameter]@{
            Keys        = @("-D");
            Name        = "Connect directly to a local sftp server (rather than via ssh(1)).";
            Description = "Connect directly to a local sftp server (rather than via ssh(1)).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-F");
            Name        = "Specifies an alternative per-user configuration file for ssh(1).";
            Description = "Specifies an alternative per-user configuration file for ssh(1).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-J");
            Name        = "Connect to the target host by first making an sftp connection to the jump host described by destination.";
            Description = "Connect to the target host by first making an sftp connection to the jump host described by destination.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-N");
            Name        = "Disables quiet mode, e.g. to override the implicit quiet mode set by the -b flag.";
            Description = "Disables quiet mode, e.g. to override the implicit quiet mode set by the -b flag.";
        },
        [ValueParameter]@{
            Keys        = @("-P");
            Name        = "Specifies the port to connect to on the remote host.";
            Description = "Specifies the port to connect to on the remote host.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-R");
            Name        = "Specify how many requests may be outstanding at any one time.";
            Description = "Specify how many requests may be outstanding at any one time.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-S");
            Name        = "Name of the program to use for the encrypted connection.";
            Description = "Name of the program to use for the encrypted connection.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "Attempt to continue interrupted transfers rather than overwriting existing partial or complete copies of files.";
            Description = "Attempt to continue interrupted transfers rather than overwriting existing partial or complete copies of files.";
        },
        [ValueParameter]@{
            Keys        = @("-b");
            Name        = "Batch mode reads a series of commands from an input batchfile instead of stdin.";
            Description = "Batch mode reads a series of commands from an input batchfile instead of stdin.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Selects the cipher to use for encrypting the data transfers.";
            Description = "Selects the cipher to use for encrypting the data transfers.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "Requests that files be flushed to disk immediately after transfer.";
            Description = "Requests that files be flushed to disk immediately after transfer.";
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
            Name        = "Can be used to pass options to ssh in the format used in ssh_config(5).";
            Description = "Can be used to pass options to ssh in the format used in ssh_config(5).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "Preserves modification times, access times, and modes from the original files transferred.";
            Description = "Preserves modification times, access times, and modes from the original files transferred.";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "Quiet mode: disables the progress meter as well as warning and diagnostic messages from ssh(1).";
            Description = "Quiet mode: disables the progress meter as well as warning and diagnostic messages from ssh(1).";
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "Recursively copy entire directories when uploading and downloading.";
            Description = "Recursively copy entire directories when uploading and downloading.";
        },
        [ValueParameter]@{
            Keys        = @("-s");
            Name        = "Specifies the SSH2 subsystem or the path for an sftp server on the remote host.";
            Description = "Specifies the SSH2 subsystem or the path for an sftp server on the remote host.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Raise logging level.  This option is also passed to ssh.";
            Description = "Raise logging level.  This option is also passed to ssh.";
        }
    )
}
