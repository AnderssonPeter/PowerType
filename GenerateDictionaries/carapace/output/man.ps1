# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://man7.org/linux/man-pages/man1/man.1.html";
    Keys        = @("man");
    Name        = "man";
    Description = "an interface to the system reference manuals";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-S");
            Name        = "use colon separated section list";
            Description = "use colon separated section list";
        },
        [FlagParameter]@{
            Keys        = @("--all", "-a");
            Name        = "find all matching manual pages";
            Description = "find all matching manual pages";
        },
        [FlagParameter]@{
            Keys        = @("--apropos", "-k");
            Name        = "equivalent to apropos";
            Description = "equivalent to apropos";
        },
        [FlagParameter]@{
            Keys        = @("--ascii", "-7");
            Name        = "display ASCII translation of certain latin1 chars";
            Description = "display ASCII translation of certain latin1 chars";
        },
        [FlagParameter]@{
            Keys        = @("--catman", "-c");
            Name        = "used by catman to reformat out of date cat pages";
            Description = "used by catman to reformat out of date cat pages";
        },
        [ValueParameter]@{
            Keys        = @("--config-file", "-C");
            Name        = "use this user configuration file";
            Description = "use this user configuration file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-d");
            Name        = "emit debugging messages";
            Description = "emit debugging messages";
        },
        [FlagParameter]@{
            Keys        = @("--default", "-D");
            Name        = "reset all options to their default values";
            Description = "reset all options to their default values";
        },
        [FlagParameter]@{
            Keys        = @("--ditroff", "-Z");
            Name        = "use groff and force it to produce ditroff";
            Description = "use groff and force it to produce ditroff";
        },
        [ValueParameter]@{
            Keys        = @("--encoding", "-E");
            Name        = "use selected output encoding";
            Description = "use selected output encoding";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extension", "-e");
            Name        = "limit search to extension type EXTENSION";
            Description = "limit search to extension type EXTENSION";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--global-apropos", "-K");
            Name        = "search for text in all pages";
            Description = "search for text in all pages";
        },
        [ValueParameter]@{
            Keys        = @("--gxditview", "-X");
            Name        = "use groff and display through gxditview";
            Description = "use groff and display through gxditview";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "give this help list";
            Description = "give this help list";
        },
        [ValueParameter]@{
            Keys        = @("--html", "-H");
            Name        = "use  or BROWSER to display HTML output";
            Description = "use  or BROWSER to display HTML output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-case", "-i");
            Name        = "look for pages case-insensitively (default)";
            Description = "look for pages case-insensitively (default)";
        },
        [FlagParameter]@{
            Keys        = @("--local-file", "-l");
            Name        = "interpret PAGE argument(s) as local filename(s)";
            Description = "interpret PAGE argument(s) as local filename(s)";
        },
        [ValueParameter]@{
            Keys        = @("--locale", "-L");
            Name        = "define the locale for this particular man search";
            Description = "define the locale for this particular man search";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--location");
            Name        = "print physical location of man page(s)";
            Description = "print physical location of man page(s)";
        },
        [FlagParameter]@{
            Keys        = @("--location-cat");
            Name        = "print physical location of cat file(s)";
            Description = "print physical location of cat file(s)";
        },
        [ValueParameter]@{
            Keys        = @("--manpath", "-M");
            Name        = "set search path for manual pages to PATH";
            Description = "set search path for manual pages to PATH";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--match-case", "-I");
            Name        = "look for pages case-sensitively";
            Description = "look for pages case-sensitively";
        },
        [FlagParameter]@{
            Keys        = @("--names-only");
            Name        = "make --regex and --wildcard match page names only,";
            Description = "make --regex and --wildcard match page names only,";
        },
        [FlagParameter]@{
            Keys        = @("--nh");
            Name        = "turn off hyphenation";
            Description = "turn off hyphenation";
        },
        [FlagParameter]@{
            Keys        = @("--nj");
            Name        = "turn off justification";
            Description = "turn off justification";
        },
        [FlagParameter]@{
            Keys        = @("--no-hyphenation");
            Name        = "turn off hyphenation";
            Description = "turn off hyphenation";
        },
        [FlagParameter]@{
            Keys        = @("--no-justification");
            Name        = "turn off justification";
            Description = "turn off justification";
        },
        [FlagParameter]@{
            Keys        = @("--no-subpages");
            Name        = "don't try subpages, e.g. 'man foo bar' => 'man";
            Description = "don't try subpages, e.g. 'man foo bar' => 'man";
        },
        [ValueParameter]@{
            Keys        = @("--pager", "-P");
            Name        = "use program PAGER to display output";
            Description = "use program PAGER to display output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--path");
            Name        = "print physical location of man page(s)";
            Description = "print physical location of man page(s)";
        },
        [ValueParameter]@{
            Keys        = @("--preprocessor", "-p");
            Name        = "STRING indicates which preprocessors to run";
            Description = "STRING indicates which preprocessors to run";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--prompt", "-r");
            Name        = "provide the ``less' pager with a prompt";
            Description = "provide the ``less' pager with a prompt";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--recode", "-R");
            Name        = "output source page encoded in ENCODING";
            Description = "output source page encoded in ENCODING";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--regex");
            Name        = "show all pages matching regex";
            Description = "show all pages matching regex";
        },
        [ValueParameter]@{
            Keys        = @("--sections", "-s");
            Name        = "use colon separated section list";
            Description = "use colon separated section list";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--systems", "-m");
            Name        = "use manual pages from other systems";
            Description = "use manual pages from other systems";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--troff", "-t");
            Name        = "use groff to format pages";
            Description = "use groff to format pages";
        },
        [ValueParameter]@{
            Keys        = @("--troff-device", "-T");
            Name        = "use groff with selected device";
            Description = "use groff with selected device";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update", "-u");
            Name        = "force a cache consistency check";
            Description = "force a cache consistency check";
        },
        [FlagParameter]@{
            Keys        = @("--usage");
            Name        = "give a short usage message";
            Description = "give a short usage message";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "print program version";
            Description = "print program version";
        },
        [ValueParameter]@{
            Keys        = @("--warnings");
            Name        = "enable warnings from groff";
            Description = "enable warnings from groff";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--whatis", "-f");
            Name        = "equivalent to whatis";
            Description = "equivalent to whatis";
        },
        [FlagParameter]@{
            Keys        = @("--where", "-w");
            Name        = "print physical location of man page(s)";
            Description = "print physical location of man page(s)";
        },
        [FlagParameter]@{
            Keys        = @("--where-cat", "-W");
            Name        = "print physical location of cat file(s)";
            Description = "print physical location of cat file(s)";
        },
        [FlagParameter]@{
            Keys        = @("--wildcard");
            Name        = "show all pages matching wildcard";
            Description = "show all pages matching wildcard";
        }
    )
}
