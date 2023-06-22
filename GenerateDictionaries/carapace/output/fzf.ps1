# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/junegunn/fzf";
    Keys        = @("fzf");
    Name        = "fzf";
    Description = "a command-line fuzzy finder";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--algo");
            Name        = "Fuzzy matching algorithm";
            Description = "Fuzzy matching algorithm";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ansi");
            Name        = "Enable processing of ANSI color codes";
            Description = "Enable processing of ANSI color codes";
        },
        [ValueParameter]@{
            Keys        = @("--bind");
            Name        = "Custom key bindings";
            Description = "Custom key bindings";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--border");
            Name        = "Draw border around the finder";
            Description = "Draw border around the finder";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--color");
            Name        = "Base scheme";
            Description = "Base scheme";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cycle");
            Name        = "Enable cyclic scroll";
            Description = "Enable cyclic scroll";
        },
        [ValueParameter]@{
            Keys        = @("--delimiter", "-d");
            Name        = "Field delimiter regex";
            Description = "Field delimiter regex";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--exact", "-e");
            Name        = "Enable Exact-match";
            Description = "Enable Exact-match";
        },
        [FlagParameter]@{
            Keys        = @("--exit-0", "-0");
            Name        = "Exit immediately when there's no match";
            Description = "Exit immediately when there's no match";
        },
        [ValueParameter]@{
            Keys        = @("--expect");
            Name        = "Comma-separated list of keys to complete fzf";
            Description = "Comma-separated list of keys to complete fzf";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--extended", "-x");
            Name        = "Extended-search mode";
            Description = "Extended-search mode";
        },
        [FlagParameter]@{
            Keys        = @("--filepath-word");
            Name        = "Make word-wise movements respect path separators";
            Description = "Make word-wise movements respect path separators";
        },
        [ValueParameter]@{
            Keys        = @("--filter", "-f");
            Name        = "Filter mode";
            Description = "Filter mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--header");
            Name        = "String to print as header";
            Description = "String to print as header";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--header-lines");
            Name        = "The first N lines of the input are treated as header";
            Description = "The first N lines of the input are treated as header";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--height");
            Name        = "Display fzf window below the cursor with the given height";
            Description = "Display fzf window below the cursor with the given height";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--history");
            Name        = "History file";
            Description = "History file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--history-size");
            Name        = "Maximum number of history entries";
            Description = "Maximum number of history entries";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--hscroll-off");
            Name        = "Number of screen columns to keep to the right";
            Description = "Number of screen columns to keep to the right";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "Case-insensitive match";
            Description = "Case-insensitive match";
        },
        [ValueParameter]@{
            Keys        = @("--info");
            Name        = "Finder info style [default|inline|hidden]";
            Description = "Finder info style [default|inline|hidden]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--jump-labels");
            Name        = "Label characters for jump and jump-accept";
            Description = "Label characters for jump and jump-accept";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--keep-right");
            Name        = "Keep the right end of the line visible on overflow";
            Description = "Keep the right end of the line visible on overflow";
        },
        [ValueParameter]@{
            Keys        = @("--layout");
            Name        = "Choose layout";
            Description = "Choose layout";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--literal");
            Name        = "Do not normalize latin script letters before matching";
            Description = "Do not normalize latin script letters before matching";
        },
        [ValueParameter]@{
            Keys        = @("--margin");
            Name        = "Screen margin";
            Description = "Screen margin";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--marker");
            Name        = "Multi-select marker";
            Description = "Multi-select marker";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--min-height");
            Name        = "Minimum height when --height is given in percent";
            Description = "Minimum height when --height is given in percent";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--multi", "-m");
            Name        = "Enable multi-select with tab/shift-tab";
            Description = "Enable multi-select with tab/shift-tab";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-bold");
            Name        = "Do not use bold text";
            Description = "Do not use bold text";
        },
        [FlagParameter]@{
            Keys        = @("--no-hscroll");
            Name        = "Disable horizontal scroll";
            Description = "Disable horizontal scroll";
        },
        [FlagParameter]@{
            Keys        = @("--no-mouse");
            Name        = "Disable mouse";
            Description = "Disable mouse";
        },
        [ValueParameter]@{
            Keys        = @("--nth", "-n");
            Name        = "Comma-separated list of field index expressions";
            Description = "Comma-separated list of field index expressions";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--padding");
            Name        = "Padding inside border";
            Description = "Padding inside border";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--phony");
            Name        = "Do not perform search";
            Description = "Do not perform search";
        },
        [ValueParameter]@{
            Keys        = @("--pointer");
            Name        = "Pointer to the current line";
            Description = "Pointer to the current line";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--preview");
            Name        = "Command to preview highlighted line";
            Description = "Command to preview highlighted line";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--preview-window");
            Name        = "Preview window layout";
            Description = "Preview window layout";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-query");
            Name        = "Print query as the first line";
            Description = "Print query as the first line";
        },
        [FlagParameter]@{
            Keys        = @("--print0");
            Name        = "Print output delimited by ASCII NUL characters";
            Description = "Print output delimited by ASCII NUL characters";
        },
        [ValueParameter]@{
            Keys        = @("--prompt");
            Name        = "Input prompt";
            Description = "Input prompt";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--query", "-q");
            Name        = "Start the finder with the given query";
            Description = "Start the finder with the given query";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--read0");
            Name        = "Read input delimited by ASCII NUL characters";
            Description = "Read input delimited by ASCII NUL characters";
        },
        [FlagParameter]@{
            Keys        = @("--select-1", "-1");
            Name        = "Automatically select the only match";
            Description = "Automatically select the only match";
        },
        [FlagParameter]@{
            Keys        = @("--sync");
            Name        = "Synchronous search for multi-staged filtering";
            Description = "Synchronous search for multi-staged filtering";
        },
        [ValueParameter]@{
            Keys        = @("--tabstop");
            Name        = "Number of spaces for a tab character";
            Description = "Number of spaces for a tab character";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tac");
            Name        = "Reverse the order of the input";
            Description = "Reverse the order of the input";
        },
        [ValueParameter]@{
            Keys        = @("--tiebreak");
            Name        = "Comma-separated list of sort criteria to apply";
            Description = "Comma-separated list of sort criteria to apply";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Display version information and exit";
            Description = "Display version information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--with-nth");
            Name        = "Transform the presentation of each line using field index expressions";
            Description = "Transform the presentation of each line using field index expressions";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
