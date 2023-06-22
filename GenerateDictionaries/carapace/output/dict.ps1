# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/dict";
    Keys        = @("dict");
    Name        = "dict";
    Description = "Query a dictd server for the definition of a word";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "forces dict to use IPv4 addresses only.";
            Description = "forces dict to use IPv4 addresses only.";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "forces dict to use IPv6 addresses only.";
            Description = "forces dict to use IPv6 addresses only.";
        },
        [ValueParameter]@{
            Keys        = @("--client");
            Name        = "additional text for client command";
            Description = "additional text for client command";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config", "-c");
            Name        = "specify configuration file";
            Description = "specify configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--database", "-d");
            Name        = "select a database to search";
            Description = "select a database to search";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dbs", "-D");
            Name        = "show available databases";
            Description = "show available databases";
        },
        [ValueParameter]@{
            Keys        = @("--debug");
            Name        = "set debugging flag";
            Description = "set debugging flag";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--formatted", "-f");
            Name        = "use strict tabbed format of output";
            Description = "use strict tabbed format of output";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help";
            Description = "display this help";
        },
        [ValueParameter]@{
            Keys        = @("--host", "-h");
            Name        = "specify server";
            Description = "specify server";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--info", "-i");
            Name        = "show information about a database";
            Description = "show information about a database";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--key", "-k");
            Name        = "shared secret for authentication";
            Description = "shared secret for authentication";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--license", "-L");
            Name        = "display copyright and license information";
            Description = "display copyright and license information";
        },
        [FlagParameter]@{
            Keys        = @("--match", "-m");
            Name        = "match instead of define";
            Description = "match instead of define";
        },
        [FlagParameter]@{
            Keys        = @("--mime", "-M");
            Name        = "send OPTION MIME command if server supports it";
            Description = "send OPTION MIME command if server supports it";
        },
        [FlagParameter]@{
            Keys        = @("--noauth", "-a");
            Name        = "disable authentication";
            Description = "disable authentication";
        },
        [FlagParameter]@{
            Keys        = @("--nocorrect", "-C");
            Name        = "disable attempted spelling correction";
            Description = "disable attempted spelling correction";
        },
        [ValueParameter]@{
            Keys        = @("--pipesize");
            Name        = "specify buffer size for pipelining (256)";
            Description = "specify buffer size for pipelining (256)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--port", "-p");
            Name        = "specify port";
            Description = "specify port";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--raw", "-r");
            Name        = "trace raw transaction";
            Description = "trace raw transaction";
        },
        [FlagParameter]@{
            Keys        = @("--serverhelp", "-H");
            Name        = "show server help";
            Description = "show server help";
        },
        [FlagParameter]@{
            Keys        = @("--serverinfo", "-I");
            Name        = "show information about the server";
            Description = "show information about the server";
        },
        [ValueParameter]@{
            Keys        = @("--strategy", "-s");
            Name        = "strategy for matching or defining";
            Description = "strategy for matching or defining";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--strats", "-S");
            Name        = "show available search strategies";
            Description = "show available search strategies";
        },
        [ValueParameter]@{
            Keys        = @("--user", "-u");
            Name        = "username for authentication";
            Description = "username for authentication";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "be verbose";
            Description = "be verbose";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display version information";
            Description = "display version information";
        }
    )
}
