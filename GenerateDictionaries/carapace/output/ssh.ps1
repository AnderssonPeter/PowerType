# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/ssh";
    Keys        = @("ssh");
    Name        = "ssh";
    Description = "OpenSSH remote login client";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "Forces ssh to use IPv4 addresses only";
            Description = "Forces ssh to use IPv4 addresses only";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "Forces ssh to use IPv6 addresses only";
            Description = "Forces ssh to use IPv6 addresses only";
        },
        [FlagParameter]@{
            Keys        = @("-A");
            Name        = "Enables forwarding of connections from an authentication agent";
            Description = "Enables forwarding of connections from an authentication agent";
        },
        [ValueParameter]@{
            Keys        = @("-B");
            Name        = "Bind to given address before attempting to connect";
            Description = "Bind to given address before attempting to connect";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-C");
            Name        = "Requests compression of all data";
            Description = "Requests compression of all data";
        },
        [ValueParameter]@{
            Keys = @("-D");
            Name = "Specifies a local “dynamic” application-level port forwarding";
            Description = "Specifies a local “dynamic” application-level port forwarding";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-E");
            Name        = "Append debug logs to log_file instead of standard error";
            Description = "Append debug logs to log_file instead of standard error";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-F");
            Name        = "Specifies an alternative per-user configuration file";
            Description = "Specifies an alternative per-user configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-G");
            Name        = "Causes ssh to print its configuration after evaluating Host and Match blocks and exit";
            Description = "Causes ssh to print its configuration after evaluating Host and Match blocks and exit";
        },
        [ValueParameter]@{
            Keys        = @("-I");
            Name        = "Specify the PKCS#11 shared library ssh should use";
            Description = "Specify the PKCS#11 shared library ssh should use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-J");
            Name        = "Connect to the target host by using given jump host";
            Description = "Connect to the target host by using given jump host";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-K");
            Name        = "Enables GSSAPI-based authentication and forwarding of GSSAPI credentials";
            Description = "Enables GSSAPI-based authentication and forwarding of GSSAPI credentials";
        },
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "Specifies that connections are to be forwarded";
            Description = "Specifies that connections are to be forwarded";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys = @("-M");
            Name = "Places the ssh client into “master” mode for connection sharing";
            Description = "Places the ssh client into “master” mode for connection sharing";
        },
        [FlagParameter]@{
            Keys        = @("-N");
            Name        = "Do not execute a remote command.  This is useful for just forwarding ports.";
            Description = "Do not execute a remote command.  This is useful for just forwarding ports.";
        },
        [ValueParameter]@{
            Keys        = @("-O");
            Name        = "Control an active connection multiplexing master process";
            Description = "Control an active connection multiplexing master process";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-Q");
            Name        = "Queries ssh for the algorithms supported";
            Description = "Queries ssh for the algorithms supported";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-R");
            Name        = "Specifies that connections ar to be forwarded";
            Description = "Specifies that connections ar to be forwarded";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-S");
            Name        = "Specifies the location of a control socket";
            Description = "Specifies the location of a control socket";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-T");
            Name        = "Disable pseudo-terminal allocation";
            Description = "Disable pseudo-terminal allocation";
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "Display the version number and exit";
            Description = "Display the version number and exit";
        },
        [ValueParameter]@{
            Keys        = @("-W");
            Name        = "Requests that standard input and output on the client be forwarded";
            Description = "Requests that standard input and output on the client be forwarded";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-X");
            Name        = "Enables X11 forwarding";
            Description = "Enables X11 forwarding";
        },
        [FlagParameter]@{
            Keys        = @("-Y");
            Name        = "Enables trusted X11 forwarding";
            Description = "Enables trusted X11 forwarding";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "Disables forwarding of the authentication agent connection.";
            Description = "Disables forwarding of the authentication agent connection.";
        },
        [ValueParameter]@{
            Keys        = @("-b");
            Name        = "Use bind_address on the local machine as the source address of the connection";
            Description = "Use bind_address on the local machine as the source address of the connection";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Selects the cipher specification for encrypting the session";
            Description = "Selects the cipher specification for encrypting the session";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "Sets the escape character for sessions with a pty";
            Description = "Sets the escape character for sessions with a pty";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "Requests ssh to go to background just before command execution";
            Description = "Requests ssh to go to background just before command execution";
        },
        [FlagParameter]@{
            Keys        = @("-g");
            Name        = "Allows remote hosts to connect to local forwarded ports";
            Description = "Allows remote hosts to connect to local forwarded ports";
        },
        [ValueParameter]@{
            Keys        = @("-i");
            Name        = "Selects a file from which the identity (private key) is read";
            Description = "Selects a file from which the identity (private key) is read";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-k");
            Name        = "Disables forwarding of GSSAPI credentials to the server";
            Description = "Disables forwarding of GSSAPI credentials to the server";
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "Specifies the user to log in as on the remote machine";
            Description = "Specifies the user to log in as on the remote machine";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-m");
            Name        = "A comma-separated list of MAC algorithms";
            Description = "A comma-separated list of MAC algorithms";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "Redirects stdin from /dev/null";
            Description = "Redirects stdin from /dev/null";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "Can be used to give options in the format used in the configuration file";
            Description = "Can be used to give options in the format used in the configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "Port to connect to on the remote host";
            Description = "Port to connect to on the remote host";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "Quiet mode";
            Description = "Quiet mode";
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "May be used to request invocation of a subsystem on the remote system";
            Description = "May be used to request invocation of a subsystem on the remote system";
        },
        [FlagParameter]@{
            Keys        = @("-t");
            Name        = "Force pseudo-terminal allocation";
            Description = "Force pseudo-terminal allocation";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Verbose mode";
            Description = "Verbose mode";
        },
        [ValueParameter]@{
            Keys        = @("-w");
            Name        = "Requests tunnel device forwarding";
            Description = "Requests tunnel device forwarding";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-x");
            Name        = "Disables X11 forwarding";
            Description = "Disables X11 forwarding";
        },
        [FlagParameter]@{
            Keys        = @("-y");
            Name        = "Send log information using the syslog system module";
            Description = "Send log information using the syslog system module";
        }
    )
}
