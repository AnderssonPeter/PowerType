# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/which";
    Keys        = @("which");
    Name        = "which";
    Description = "Write the full path of COMMAND(s) to standard output";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all,", "-a");
            Name        = "Print all matches in PATH, not just the first";
            Description = "Print all matches in PATH, not just the first";
        },
        [FlagParameter]@{
            Keys        = @("--help,");
            Name        = "Print this help and exit successfully.";
            Description = "Print this help and exit successfully.";
        },
        [FlagParameter]@{
            Keys        = @("--read-alias,", "-i");
            Name        = "Read list of aliases from stdin.";
            Description = "Read list of aliases from stdin.";
        },
        [FlagParameter]@{
            Keys        = @("--read-functions");
            Name        = "Read shell functions from stdin.";
            Description = "Read shell functions from stdin.";
        },
        [FlagParameter]@{
            Keys        = @("--show-dot");
            Name        = "Don't expand a dot to current directory in output.";
            Description = "Don't expand a dot to current directory in output.";
        },
        [FlagParameter]@{
            Keys        = @("--show-tilde");
            Name        = "Output a tilde for HOME directory for non-root.";
            Description = "Output a tilde for HOME directory for non-root.";
        },
        [FlagParameter]@{
            Keys        = @("--skip-alias");
            Name        = "Ignore option --read-alias; don't read stdin.";
            Description = "Ignore option --read-alias; don't read stdin.";
        },
        [FlagParameter]@{
            Keys        = @("--skip-dot");
            Name        = "Skip directories in PATH that start with a dot.";
            Description = "Skip directories in PATH that start with a dot.";
        },
        [FlagParameter]@{
            Keys        = @("--skip-functions");
            Name        = "Ignore option --read-functions; don't read stdin.";
            Description = "Ignore option --read-functions; don't read stdin.";
        },
        [FlagParameter]@{
            Keys        = @("--skip-tilde");
            Name        = "Skip directories in PATH that start with a tilde.";
            Description = "Skip directories in PATH that start with a tilde.";
        },
        [FlagParameter]@{
            Keys        = @("--tty-only");
            Name        = "Stop processing options on the right if not on tty.";
            Description = "Stop processing options on the right if not on tty.";
        },
        [FlagParameter]@{
            Keys        = @("--version,", "-v");
            Name        = "Print version and exit successfully.";
            Description = "Print version and exit successfully.";
        }
    )
}
