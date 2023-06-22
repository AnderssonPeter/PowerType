# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/od";
    Keys        = @("od");
    Name        = "od";
    Description = "dump files in octal and other formats";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--address-radix", "-A");
            Name        = "output format for file offsets; RADIX is one";
            Description = "output format for file offsets; RADIX is one";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--endian");
            Name        = "swap input bytes according the specified order";
            Description = "swap input bytes according the specified order";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--format", "-t");
            Name        = "select output format or formats";
            Description = "select output format or formats";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--output-duplicates", "-v");
            Name        = "do not use * to mark line suppression";
            Description = "do not use * to mark line suppression";
        },
        [ValueParameter]@{
            Keys        = @("--read-bytes", "-N");
            Name        = "limit dump to BYTES input bytes";
            Description = "limit dump to BYTES input bytes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--skip-bytes", "-j");
            Name        = "skip BYTES input bytes first";
            Description = "skip BYTES input bytes first";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--traditional");
            Name        = "accept arguments in third form above";
            Description = "accept arguments in third form above";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
