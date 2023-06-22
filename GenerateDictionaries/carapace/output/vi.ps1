# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Vi";
    Keys        = @("vi");
    Name        = "vi";
    Description = "screen oriented (visual) display editor based on ex";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "temporary file to open in recovery mode";
            Description = "temporary file to open in recovery mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-R");
            Name        = "Files are opened read-only when this option is given";
            Description = "Files are opened read-only when this option is given";
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "Echo command input to standard error, unless it originates from a terminal";
            Description = "Echo command input to standard error, unless it originates from a terminal";
        },
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Execute command when editing begins";
            Description = "Execute command when editing begins";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "Start in a special mode useful for the Lisp programming language";
            Description = "Start in a special mode useful for the Lisp programming language";
        },
        [ValueParameter]@{
            Keys        = @("-r");
            Name        = "temporary file to open in recovery mode";
            Description = "temporary file to open in recovery mode";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "Script mode, all feedback for interactive editing is disabled";
            Description = "Script mode, all feedback for interactive editing is disabled";
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "Read the tags file, then choose the file and position specified by tagstring for editing";
            Description = "Read the tags file, then choose the file and position specified by tagstring for editing";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-w");
            Name        = "Specify the size of the editing window for visual mode";
            Description = "Specify the size of the editing window for visual mode";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
