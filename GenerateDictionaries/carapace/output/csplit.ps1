# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/csplit";
    Keys        = @("csplit");
    Name        = "csplit";
    Description = "split a file into sections determined by context lines";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--digits", "-n");
            Name        = "use specified number of digits instead of 2";
            Description = "use specified number of digits instead of 2";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--elide-empty-files", "-z");
            Name        = "remove empty output files";
            Description = "remove empty output files";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--keep-files", "-k");
            Name        = "do not remove output files on errors";
            Description = "do not remove output files on errors";
        },
        [ValueParameter]@{
            Keys        = @("--prefix", "-f");
            Name        = "use PREFIX instead of 'xx'";
            Description = "use PREFIX instead of 'xx'";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--quiet", "-s");
            Name        = "do not print counts of output file sizes";
            Description = "do not print counts of output file sizes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--suffix-format", "-b");
            Name        = "use sprintf FORMAT instead of %02d";
            Description = "use sprintf FORMAT instead of %02d";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--suppress-matched");
            Name        = "suppress the lines matching PATTERN";
            Description = "suppress the lines matching PATTERN";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
