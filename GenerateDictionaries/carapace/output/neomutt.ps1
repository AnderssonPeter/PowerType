# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://neomutt.org/";
    Keys        = @("neomutt");
    Name        = "neomutt";
    Description = "The NeoMutt Mail User Agent";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-A");
            Name        = "Print an expanded version of the given alias to stdout and exit";
            Description = "Print an expanded version of the given alias to stdout and exit";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-B");
            Name        = "Run in batch mode (do not start the ncurses UI)";
            Description = "Run in batch mode (do not start the ncurses UI)";
        },
        [FlagParameter]@{
            Keys        = @("-D");
            Name        = "Dump all config variables as 'name=value' pairs to stdout";
            Description = "Dump all config variables as 'name=value' pairs to stdout";
        },
        [FlagParameter]@{
            Keys        = @("-E");
            Name        = "Edit draft (-H) or include (-i) file during message composition";
            Description = "Edit draft (-H) or include (-i) file during message composition";
        },
        [ValueParameter]@{
            Keys        = @("-F");
            Name        = "Specify an alternative initialization file to read";
            Description = "Specify an alternative initialization file to read";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-G");
            Name        = "Start NeoMutt with a listing of subscribed newsgroups";
            Description = "Start NeoMutt with a listing of subscribed newsgroups";
        },
        [ValueParameter]@{
            Keys        = @("-H");
            Name        = "Specify a draft file with header and body for message composing";
            Description = "Specify a draft file with header and body for message composing";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "Open mailbox in read-only mode";
            Description = "Open mailbox in read-only mode";
        },
        [FlagParameter]@{
            Keys        = @("-Z");
            Name        = "Open the first mailbox with new message or exit immediately";
            Description = "Open the first mailbox with new message or exit immediately";
        },
        [ValueParameter]@{
            Keys        = @("-a");
            Name        = "Attach one or more files to a message (must be the last option)";
            Description = "Attach one or more files to a message (must be the last option)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-b");
            Name        = "Specify a blind carbon copy (Bcc) recipient";
            Description = "Specify a blind carbon copy (Bcc) recipient";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Specify a carbon copy (Cc) recipient";
            Description = "Specify a carbon copy (Cc) recipient";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-d");
            Name        = "Log debugging output to a file (default is `"~/.neomuttdebug0`")";
            Description = "Log debugging output to a file (default is `"~/.neomuttdebug0`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "Specify a command to be run after reading the config files";
            Description = "Specify a command to be run after reading the config files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-f");
            Name        = "Specify a mailbox (as defined with 'mailboxes' command) to load";
            Description = "Specify a mailbox (as defined with 'mailboxes' command) to load";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-g");
            Name        = "Like -G, but start at specified news server";
            Description = "Like -G, but start at specified news server";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "Print this help message and exit";
            Description = "Print this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("-i");
            Name        = "Specify an include file to be embedded in the body of a message";
            Description = "Specify an include file to be embedded in the body of a message";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "Specify a file for debugging output (default `"~/.neomuttdebug0`")";
            Description = "Specify a file for debugging output (default `"~/.neomuttdebug0`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-m");
            Name        = "Specify a default mailbox format type for newly created folders";
            Description = "Specify a default mailbox format type for newly created folders";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-n");
            Name        = "Do not read the system-wide configuration file";
            Description = "Do not read the system-wide configuration file";
        },
        [FlagParameter]@{
            Keys        = @("-p");
            Name        = "Resume a prior postponed message, if any";
            Description = "Resume a prior postponed message, if any";
        },
        [ValueParameter]@{
            Keys        = @("-s");
            Name        = "Specify a subject (must be enclosed in quotes if it has spaces)";
            Description = "Specify a subject (must be enclosed in quotes if it has spaces)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "Print the NeoMutt version and compile-time definitions and exit";
            Description = "Print the NeoMutt version and compile-time definitions and exit";
        },
        [FlagParameter]@{
            Keys        = @("-y");
            Name        = "Start NeoMutt with a listing of all defined mailboxes";
            Description = "Start NeoMutt with a listing of all defined mailboxes";
        },
        [FlagParameter]@{
            Keys        = @("-z");
            Name        = "Open the first or specified (-f) mailbox if it holds any message";
            Description = "Open the first or specified (-f) mailbox if it holds any message";
        }
    )
}
