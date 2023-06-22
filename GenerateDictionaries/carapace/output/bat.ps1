# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/sharkdp/bat";
    Keys        = @("bat");
    Name        = "bat";
    Description = "a cat clone with syntax highlighting and Git integration";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "Specify when to use colored output.";
            Description = "Specify when to use colored output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--decorations");
            Name        = "Specify when to use the decorations that have been specified via '--style'.";
            Description = "Specify when to use the decorations that have been specified via '--style'.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--diff", "-d");
            Name        = "Only show lines that have been added/removed/modified with respect to the Git index.";
            Description = "Only show lines that have been added/removed/modified with respect to the Git index.";
        },
        [ValueParameter]@{
            Keys        = @("--diff-context");
            Name        = "Include N lines of context around added/removed/modified lines when using '--diff'.";
            Description = "Include N lines of context around added/removed/modified lines when using '--diff'.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file-name");
            Name        = "Specify the name to display for a file.";
            Description = "Specify the name to display for a file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Print this help message.";
            Description = "Print this help message.";
        },
        [ValueParameter]@{
            Keys        = @("--highlight-line", "-H");
            Name        = "Highlight the specified line ranges with a different background color.";
            Description = "Highlight the specified line ranges with a different background color.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--italic-text");
            Name        = "Specify when to use ANSI sequences for italic text in the output.";
            Description = "Specify when to use ANSI sequences for italic text in the output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--language", "-l");
            Name        = "Explicitly set the language for syntax highlighting.";
            Description = "Explicitly set the language for syntax highlighting.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--line-range", "-r");
            Name        = "Only print the specified range of lines for each file.";
            Description = "Only print the specified range of lines for each file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-languages", "-L");
            Name        = "Display a list of supported languages for syntax highlighting.";
            Description = "Display a list of supported languages for syntax highlighting.";
        },
        [FlagParameter]@{
            Keys        = @("--list-themes");
            Name        = "Display a list of supported themes for syntax highlighting.";
            Description = "Display a list of supported themes for syntax highlighting.";
        },
        [ValueParameter]@{
            Keys        = @("--map-syntax", "-m");
            Name        = "Map a glob pattern to an existing syntax name.";
            Description = "Map a glob pattern to an existing syntax name.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--number", "-n");
            Name        = "Only show line numbers, no other decorations.";
            Description = "Only show line numbers, no other decorations.";
        },
        [ValueParameter]@{
            Keys        = @("--pager");
            Name        = "Determine which pager is used.";
            Description = "Determine which pager is used.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--paging");
            Name        = "Specify when to use the pager.";
            Description = "Specify when to use the pager.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--plain", "-p");
            Name        = "Only show plain style, no decorations. This is an alias for '--style=plain'.";
            Description = "Only show plain style, no decorations. This is an alias for '--style=plain'.";
        },
        [FlagParameter]@{
            Keys        = @("--show-all", "-A");
            Name        = "Show non-printable characters like space, tab or newline.";
            Description = "Show non-printable characters like space, tab or newline.";
        },
        [ValueParameter]@{
            Keys        = @("--style");
            Name        = "Configure which elements to display in addition to the file contents.";
            Description = "Configure which elements to display in addition to the file contents.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tabs");
            Name        = "Set the tab width to T spaces.";
            Description = "Set the tab width to T spaces.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--terminal-width");
            Name        = "Explicitly set the width of the terminal instead of determining it automatically.";
            Description = "Explicitly set the width of the terminal instead of determining it automatically.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--theme");
            Name        = "Set the theme for syntax highlighting.";
            Description = "Set the theme for syntax highlighting.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--unbuffered", "-u");
            Name        = "This option exists for POSIX-compliance reasons ('u' is for 'unbuffered').";
            Description = "This option exists for POSIX-compliance reasons ('u' is for 'unbuffered').";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version information.";
            Description = "Show version information.";
        },
        [ValueParameter]@{
            Keys        = @("--wrap");
            Name        = "Specify the text-wrapping mode (*auto*, never, character).";
            Description = "Specify the text-wrapping mode (*auto*, never, character).";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
