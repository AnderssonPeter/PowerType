# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.gnu.org/software/bash/";
    Keys        = @("bash");
    Name        = "bash";
    Description = "GNU Bourne-Again SHell";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-c");
            Name        = "commands are read from the first non-option argument command_string";
            Description = "commands are read from the first non-option argument command_string";
        },
        [FlagParameter]@{
            Keys        = @("--debugger");
            Name        = "Arrange for the debugger profile to be executed before the shell  starts.";
            Description = "Arrange for the debugger profile to be executed before the shell  starts.";
        },
        [FlagParameter]@{
            Keys        = @("--dump-po-strings");
            Name        = "Equivalent to -D, but the output is in the GNU gettext po file format";
            Description = "Equivalent to -D, but the output is in the GNU gettext po file format";
        },
        [FlagParameter]@{
            Keys        = @("--dump-strings", "-D");
            Name        = "A  list of all double-quoted strings preceded by `$ is printed on the standard output.";
            Description = "A  list of all double-quoted strings preceded by `$ is printed on the standard output.";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "If the -i option is present, the shell is interactive.";
            Description = "If the -i option is present, the shell is interactive.";
        },
        [ValueParameter]@{
            Keys        = @("--init-file");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--login", "-l");
            Name        = "act as if  invoked as a login shell";
            Description = "act as if  invoked as a login shell";
        },
        [FlagParameter]@{
            Keys        = @("--noediting");
            Name        = "do not use the GNU readline library to read command lines";
            Description = "do not use the GNU readline library to read command lines";
        },
        [FlagParameter]@{
            Keys        = @("--noprofile");
            Name        = "skip profile initialization files";
            Description = "skip profile initialization files";
        },
        [FlagParameter]@{
            Keys        = @("--norc");
            Name        = "skip ~/.bashrc";
            Description = "skip ~/.bashrc";
        },
        [FlagParameter]@{
            Keys        = @("--posix");
            Name        = "match posix behavior";
            Description = "match posix behavior";
        },
        [FlagParameter]@{
            Keys        = @("-r");
            Name        = "restricted shell";
            Description = "restricted shell";
        },
        [ValueParameter]@{
            Keys        = @("--rcfile");
            Name        = "execute  commands  from  file instead of the default";
            Description = "execute  commands  from  file instead of the default";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--restricted");
            Name        = "The shell becomes restricted.";
            Description = "The shell becomes restricted.";
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "then commands are read from the standard input";
            Description = "then commands are read from the standard input";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbose mode";
            Description = "verbose mode";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show version information ";
            Description = "Show version information ";
        }
    )
}
