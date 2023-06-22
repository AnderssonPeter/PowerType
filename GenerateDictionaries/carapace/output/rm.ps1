# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/rm";
    Keys        = @("rm");
    Name        = "rm";
    Description = "remove files or directories";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-I");
            Name        = "prompt once before removing more than three files, or when removing recursively";
            Description = "prompt once before removing more than three files, or when removing recursively";
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "remove directories and their contents recursively";
            Description = "remove directories and their contents recursively";
        },
        [FlagParameter]@{
            Keys        = @("--dir", "-d");
            Name        = "remove empty directories";
            Description = "remove empty directories";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "ignore nonexistent files and arguments, never prompt";
            Description = "ignore nonexistent files and arguments, never prompt";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "prompt before every removal";
            Description = "prompt before every removal";
        },
        [ValueParameter]@{
            Keys        = @("--interactive");
            Name        = "prompt according to WHEN: never, once (-I), or always (-i); without WHEN, prompt always";
            Description = "prompt according to WHEN: never, once (-I), or always (-i); without WHEN, prompt always";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-preserve-root");
            Name        = "do not treat '/' specially";
            Description = "do not treat '/' specially";
        },
        [FlagParameter]@{
            Keys        = @("--one-file-system");
            Name        = "when removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument";
            Description = "when removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument";
        },
        [ValueParameter]@{
            Keys        = @("--preserve-root");
            Name        = "do not remove '/' (default); with 'all', reject any command line argument on a separate device from its parent";
            Description = "do not remove '/' (default); with 'all', reject any command line argument on a separate device from its parent";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-r");
            Name        = "remove directories and their contents recursively";
            Description = "remove directories and their contents recursively";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "explain what is being done";
            Description = "explain what is being done";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
