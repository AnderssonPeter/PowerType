# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.gnu.org/software/sed/manual/sed.html";
    Keys        = @("sed");
    Name        = "sed";
    Description = "stream editor for filtering and transforming text";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-E");
            Name        = "use extended regular expressions in the script";
            Description = "use extended regular expressions in the script";
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "annotate program execution";
            Description = "annotate program execution";
        },
        [ValueParameter]@{
            Keys        = @("--expression", "-e");
            Name        = "add the script to the commands to be executed";
            Description = "add the script to the commands to be executed";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "add the contents of script-file to the commands to be executed";
            Description = "add the contents of script-file to the commands to be executed";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--follow-symlinks");
            Name        = "follow symlinks when processing in place";
            Description = "follow symlinks when processing in place";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "display this help and exit";
            Description = "display this help and exit";
        },
        [ValueParameter]@{
            Keys        = @("--in-place", "-i");
            Name        = "edit files in place (makes backup if SUFFIX supplied)";
            Description = "edit files in place (makes backup if SUFFIX supplied)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--line-length", "-l");
            Name        = "specify the desired line-wrap length for the l command";
            Description = "specify the desired line-wrap length for the l command";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--null-data", "-z");
            Name        = "separate lines by NUL characters";
            Description = "separate lines by NUL characters";
        },
        [FlagParameter]@{
            Keys        = @("--posix");
            Name        = "disable all GNU extensions";
            Description = "disable all GNU extensions";
        },
        [ValueParameter]@{
            Keys        = @("--quiet", "-n");
            Name        = "suppress automatic printing of pattern space";
            Description = "suppress automatic printing of pattern space";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--regexp-extended", "-r");
            Name        = "use extended regular expressions in the script";
            Description = "use extended regular expressions in the script";
        },
        [FlagParameter]@{
            Keys        = @("--sandbox");
            Name        = "operate in sandbox mode (disable e/r/w commands)";
            Description = "operate in sandbox mode (disable e/r/w commands)";
        },
        [FlagParameter]@{
            Keys        = @("--seperate", "-s");
            Name        = "consider files as separate rather than as a single, continuous long stream.";
            Description = "consider files as separate rather than as a single, continuous long stream.";
        },
        [ValueParameter]@{
            Keys        = @("--silent");
            Name        = "suppress automatic printing of pattern space";
            Description = "suppress automatic printing of pattern space";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unbuffered", "-u");
            Name        = "load minimal amounts of data from the input files and flush the output buffers more often";
            Description = "load minimal amounts of data from the input files and flush the output buffers more often";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "output version information and exit";
            Description = "output version information and exit";
        }
    )
}
