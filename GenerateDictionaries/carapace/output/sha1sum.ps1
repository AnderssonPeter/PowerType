# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/sha1sum";
    Keys        = @("sha1sum");
    Name        = "sha1sum";
    Description = "compute and check SHA1 message digest";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--binary", "-b");
            Name        = "read in binary mode";
            Description = "read in binary mode";
        },
        [FlagParameter]@{
            Keys        = @("--check", "-c");
            Name        = "read SHA1 sums from the FILEs and check them";
            Description = "read SHA1 sums from the FILEs and check them";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-missing");
            Name        = "don't fail or report status for missing files";
            Description = "don't fail or report status for missing files";
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "don't print OK for each successfully verified file";
            Description = "don't print OK for each successfully verified file";
        },
        [FlagParameter]@{
            Keys        = @("--status");
            Name        = "don't output anything, status code shows success";
            Description = "don't output anything, status code shows success";
        },
        [FlagParameter]@{
            Keys        = @("--strict");
            Name        = "exit non-zero for improperly formatted checksum lines";
            Description = "exit non-zero for improperly formatted checksum lines";
        },
        [FlagParameter]@{
            Keys        = @("--tag");
            Name        = "create a BSD-style checksum";
            Description = "create a BSD-style checksum";
        },
        [FlagParameter]@{
            Keys        = @("--text", "-t");
            Name        = "read in text mode (default)";
            Description = "read in text mode (default)";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--warn", "-w");
            Name        = "warn about improperly formatted checksum lines";
            Description = "warn about improperly formatted checksum lines";
        },
        [FlagParameter]@{
            Keys        = @("--zero", "-z");
            Name        = "end each output line with NUL, not newline,";
            Description = "end each output line with NUL, not newline,";
        }
    )
}
