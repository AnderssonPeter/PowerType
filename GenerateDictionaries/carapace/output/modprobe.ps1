# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/modprobe";
    Keys        = @("modprobe");
    Name        = "modprobe";
    Description = "Add and remove modules from the Linux Kernel";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "Consider every non-argument to be a module name";
            Description = "Consider every non-argument to be a module name";
        },
        [ValueParameter]@{
            Keys        = @("--config", "-C");
            Name        = "Use FILE instead of default search paths";
            Description = "Use FILE instead of default search paths";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dirname", "-d");
            Name        = "Use DIR as filesystem root for /lib/modules";
            Description = "Use DIR as filesystem root for /lib/modules";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dry-run", "-n");
            Name        = "Do not execute operations, just print out";
            Description = "Do not execute operations, just print out";
        },
        [FlagParameter]@{
            Keys        = @("--dump-modversions");
            Name        = "Same as --show-modversions";
            Description = "Same as --show-modversions";
        },
        [FlagParameter]@{
            Keys        = @("--first-time");
            Name        = "Fail if module already inserted or removed";
            Description = "Fail if module already inserted or removed";
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "Force module insertion or removal.";
            Description = "Force module insertion or removal.";
        },
        [FlagParameter]@{
            Keys        = @("--force-modversion");
            Name        = "Ignore module's version";
            Description = "Ignore module's version";
        },
        [FlagParameter]@{
            Keys        = @("--force-vermagic");
            Name        = "Ignore module's version magic";
            Description = "Ignore module's version magic";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "show this help";
            Description = "show this help";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "Ignore commands";
            Description = "Ignore commands";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-install");
            Name        = "Ignore install commands";
            Description = "Ignore install commands";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-remove");
            Name        = "Ignore remove commands";
            Description = "Ignore remove commands";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "disable messages";
            Description = "disable messages";
        },
        [FlagParameter]@{
            Keys        = @("--remove", "-r");
            Name        = "Remove modules instead of inserting";
            Description = "Remove modules instead of inserting";
        },
        [FlagParameter]@{
            Keys        = @("--remove-dependencies");
            Name        = "Also remove modules depending on it";
            Description = "Also remove modules depending on it";
        },
        [FlagParameter]@{
            Keys        = @("--resolve-alias", "-R");
            Name        = "Only lookup and print alias and exit";
            Description = "Only lookup and print alias and exit";
        },
        [ValueParameter]@{
            Keys        = @("--set-version", "-S");
            Name        = "Use VERSION instead of ``uname -r``";
            Description = "Use VERSION instead of ``uname -r``";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show");
            Name        = "Same as --dry-run";
            Description = "Same as --dry-run";
        },
        [FlagParameter]@{
            Keys        = @("--show-config");
            Name        = "Same as --showconfig";
            Description = "Same as --showconfig";
        },
        [FlagParameter]@{
            Keys        = @("--show-depends", "-D");
            Name        = "Only print module dependencies and exit";
            Description = "Only print module dependencies and exit";
        },
        [FlagParameter]@{
            Keys        = @("--show-exports");
            Name        = "Only print module exported symbol versions and exit";
            Description = "Only print module exported symbol versions and exit";
        },
        [FlagParameter]@{
            Keys        = @("--show-modversions");
            Name        = "Dump module symbol version and exit";
            Description = "Dump module symbol version and exit";
        },
        [FlagParameter]@{
            Keys        = @("--showconfig", "-c");
            Name        = "Print out known configuration and exit";
            Description = "Print out known configuration and exit";
        },
        [FlagParameter]@{
            Keys        = @("--syslog", "-s");
            Name        = "print to syslog, not stderr";
            Description = "print to syslog, not stderr";
        },
        [FlagParameter]@{
            Keys        = @("--use-blacklist", "-b");
            Name        = "Apply blacklist to resolved alias.";
            Description = "Apply blacklist to resolved alias.";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "enables more messages";
            Description = "enables more messages";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "show version";
            Description = "show version";
        }
    )
}
