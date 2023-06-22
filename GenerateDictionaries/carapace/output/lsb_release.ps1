# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/lsb_release";
    Keys        = @("lsb_release");
    Name        = "lsb_release";
    Description = "prints certain LSB (Linux Standard Base) and Distribution information";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "Display all of the above information.";
            Description = "Display all of the above information.";
        },
        [FlagParameter]@{
            Keys        = @("--codename", "-c");
            Name        = "Display the codename according to the distribution release.";
            Description = "Display the codename according to the distribution release.";
        },
        [FlagParameter]@{
            Keys        = @("--description", "-d");
            Name        = "Display the single line text description of the distribution.";
            Description = "Display the single line text description of the distribution.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display this message.";
            Description = "Display this message.";
        },
        [FlagParameter]@{
            Keys        = @("--id", "-i");
            Name        = "Display the string id of the distributor.";
            Description = "Display the string id of the distributor.";
        },
        [FlagParameter]@{
            Keys        = @("--release", "-r");
            Name        = "Display the release number of the distribution.";
            Description = "Display the release number of the distribution.";
        },
        [FlagParameter]@{
            Keys        = @("--short", "-s");
            Name        = "Display all of the above information in short output format.";
            Description = "Display all of the above information in short output format.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Display the version of the LSB specification against which the distribution is compliant.";
            Description = "Display the version of the LSB specification against which the distribution is compliant.";
        }
    )
}
