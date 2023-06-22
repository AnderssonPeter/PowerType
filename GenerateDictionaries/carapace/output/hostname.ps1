# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/hostname";
    Keys        = @("hostname");
    Name        = "hostname";
    Description = "show or set system host name";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--aliases", "-a");
            Name        = "alias names";
            Description = "alias names";
        },
        [FlagParameter]@{
            Keys        = @("--domain", "-d");
            Name        = "DNS domain name";
            Description = "DNS domain name";
        },
        [ValueParameter]@{
            Keys        = @("--file", "-F");
            Name        = "set host name or NIS domain name from FILE";
            Description = "set host name or NIS domain name from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fqdn,", "-f");
            Name        = "DNS host name or FQDN";
            Description = "DNS host name or FQDN";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "give this help list";
            Description = "give this help list";
        },
        [FlagParameter]@{
            Keys        = @("--ip-addresses", "-i");
            Name        = "addresses for the host name";
            Description = "addresses for the host name";
        },
        [FlagParameter]@{
            Keys        = @("--short", "-s");
            Name        = "short host name";
            Description = "short host name";
        },
        [FlagParameter]@{
            Keys        = @("--usage");
            Name        = "give a short usage message";
            Description = "give a short usage message";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "print program version";
            Description = "print program version";
        },
        [ValueParameter]@{
            Keys        = @("--yp,", "-y");
            Name        = "NIS/YP domain name";
            Description = "NIS/YP domain name";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
