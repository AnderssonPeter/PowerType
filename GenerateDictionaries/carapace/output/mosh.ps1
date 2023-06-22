# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://mosh.org/";
    Keys        = @("mosh");
    Name        = "mosh";
    Description = "mobile shell with roaming and intelligent local echo";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "use IPv4 only";
            Description = "use IPv4 only";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "use IPv6 only";
            Description = "use IPv6 only";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "use local echo even on fast links";
            Description = "use local echo even on fast links";
        },
        [ValueParameter]@{
            Keys        = @("--bind-server");
            Name        = "ask the server to reply from an IP address";
            Description = "ask the server to reply from an IP address";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--client");
            Name        = "mosh client on local machine";
            Description = "mosh client on local machine";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--experimental-remote-ip");
            Name        = "select the method for discovering the remote IP address";
            Description = "select the method for discovering the remote IP address";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--family");
            Name        = "net family ";
            Description = "net family ";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "show help message";
            Description = "show help message";
        },
        [FlagParameter]@{
            Keys        = @("--local");
            Name        = "run mosh-server locally without using ssh";
            Description = "run mosh-server locally without using ssh";
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "never use local echo";
            Description = "never use local echo";
        },
        [FlagParameter]@{
            Keys        = @("--no-init");
            Name        = "do not send terminal initialization string";
            Description = "do not send terminal initialization string";
        },
        [FlagParameter]@{
            Keys        = @("--no-ssh-pty");
            Name        = "do not allocate a pseudo tty on ssh connection";
            Description = "do not allocate a pseudo tty on ssh connection";
        },
        [ValueParameter]@{
            Keys        = @("--port", "-p");
            Name        = "server-side UDP port or range";
            Description = "server-side UDP port or range";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--predict");
            Name        = "predict setting";
            Description = "predict setting";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--server");
            Name        = "mosh server on remote machine";
            Description = "mosh server on remote machine";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ssh");
            Name        = "ssh command to run when setting up session";
            Description = "ssh command to run when setting up session";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "version and copyright information";
            Description = "version and copyright information";
        }
    )
}
