# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.nano-editor.org/";
    Keys        = @("nano");
    Name        = "nano";
    Description = "Nano's ANOther editor, inspired by Pico";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--afterends", "-y");
            Name        = "Make Ctrl+Right stop at word ends";
            Description = "Make Ctrl+Right stop at word ends";
        },
        [FlagParameter]@{
            Keys        = @("--atblanks", "-a");
            Name        = "When soft-wrapping, do it at whitespace";
            Description = "When soft-wrapping, do it at whitespace";
        },
        [FlagParameter]@{
            Keys        = @("--autoindent", "-i");
            Name        = "Automatically indent new lines";
            Description = "Automatically indent new lines";
        },
        [FlagParameter]@{
            Keys        = @("--backup", "-B");
            Name        = "Save backups of existing files";
            Description = "Save backups of existing files";
        },
        [ValueParameter]@{
            Keys        = @("--backupdir", "-C");
            Name        = "Directory for saving unique backup files";
            Description = "Directory for saving unique backup files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--boldtext", "-D");
            Name        = "Use bold instead of reverse video text";
            Description = "Use bold instead of reverse video text";
        },
        [FlagParameter]@{
            Keys        = @("--bookstyle", "-O");
            Name        = "Leading whitespace means new paragraph";
            Description = "Leading whitespace means new paragraph";
        },
        [FlagParameter]@{
            Keys        = @("--breaklonglines", "-b");
            Name        = "Automatically hard-wrap overlong lines";
            Description = "Automatically hard-wrap overlong lines";
        },
        [FlagParameter]@{
            Keys        = @("--constantshow", "-c");
            Name        = "Constantly show cursor position";
            Description = "Constantly show cursor position";
        },
        [FlagParameter]@{
            Keys        = @("--cutfromcursor", "-k");
            Name        = "Cut from cursor to end of line";
            Description = "Cut from cursor to end of line";
        },
        [FlagParameter]@{
            Keys        = @("--emptyline", "-e");
            Name        = "Keep the line below the title bar empty";
            Description = "Keep the line below the title bar empty";
        },
        [ValueParameter]@{
            Keys        = @("--fill", "-r");
            Name        = "Set width for hard-wrap and justify";
            Description = "Set width for hard-wrap and justify";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--guidestripe", "-J");
            Name        = "Show a guiding bar at this column";
            Description = "Show a guiding bar at this column";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help text and exit";
            Description = "Show this help text and exit";
        },
        [FlagParameter]@{
            Keys        = @("--historylog", "-H");
            Name        = "Log & read search/replace string history";
            Description = "Log & read search/replace string history";
        },
        [FlagParameter]@{
            Keys        = @("--ignorercfiles", "-I");
            Name        = "Don't look at nanorc files";
            Description = "Don't look at nanorc files";
        },
        [FlagParameter]@{
            Keys        = @("--indicator", "-q");
            Name        = "Show a position+portion indicator";
            Description = "Show a position+portion indicator";
        },
        [FlagParameter]@{
            Keys        = @("--jumpyscrolling", "-j");
            Name        = "Scroll per half-screen, not per line";
            Description = "Scroll per half-screen, not per line";
        },
        [FlagParameter]@{
            Keys        = @("--linenumbers", "-l");
            Name        = "Show line numbers in front of the text";
            Description = "Show line numbers in front of the text";
        },
        [FlagParameter]@{
            Keys        = @("--locking", "-G");
            Name        = "Use (vim-style) lock files";
            Description = "Use (vim-style) lock files";
        },
        [FlagParameter]@{
            Keys        = @("--magic", "-!");
            Name        = "Also try magic to determine syntax";
            Description = "Also try magic to determine syntax";
        },
        [FlagParameter]@{
            Keys        = @("--minibar", "-_");
            Name        = "Show a feedback bar at the bottom";
            Description = "Show a feedback bar at the bottom";
        },
        [FlagParameter]@{
            Keys        = @("--mouse", "-m");
            Name        = "Enable the use of the mouse";
            Description = "Enable the use of the mouse";
        },
        [FlagParameter]@{
            Keys        = @("--multibuffer", "-F");
            Name        = "Read a file into a new buffer by default";
            Description = "Read a file into a new buffer by default";
        },
        [FlagParameter]@{
            Keys        = @("--noconvert", "-N");
            Name        = "Don't convert files from DOS/Mac format";
            Description = "Don't convert files from DOS/Mac format";
        },
        [FlagParameter]@{
            Keys        = @("--nohelp", "-x");
            Name        = "Don't show the two help lines";
            Description = "Don't show the two help lines";
        },
        [FlagParameter]@{
            Keys        = @("--nonewlines", "-L");
            Name        = "Don't add an automatic newline";
            Description = "Don't add an automatic newline";
        },
        [FlagParameter]@{
            Keys        = @("--noread", "-n");
            Name        = "Do not read the file (only write it)";
            Description = "Do not read the file (only write it)";
        },
        [FlagParameter]@{
            Keys        = @("--nowrap", "-w");
            Name        = "Don't hard-wrap long lines [default]";
            Description = "Don't hard-wrap long lines [default]";
        },
        [ValueParameter]@{
            Keys        = @("--operatingdir", "-o");
            Name        = "Set operating directory";
            Description = "Set operating directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--positionlog", "-P");
            Name        = "Log & read location of cursor position";
            Description = "Log & read location of cursor position";
        },
        [FlagParameter]@{
            Keys        = @("--preserve", "-p");
            Name        = "Preserve XON (^Q) and XOFF (^S) keys";
            Description = "Preserve XON (^Q) and XOFF (^S) keys";
        },
        [FlagParameter]@{
            Keys        = @("--quickblank", "-U");
            Name        = "Wipe status bar upon next keystroke";
            Description = "Wipe status bar upon next keystroke";
        },
        [ValueParameter]@{
            Keys        = @("--quotestr", "-Q");
            Name        = "Regular expression to match quoting";
            Description = "Regular expression to match quoting";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rawsequences", "-K");
            Name        = "Fix numeric keypad key confusion problem";
            Description = "Fix numeric keypad key confusion problem";
        },
        [ValueParameter]@{
            Keys        = @("--rcfile", "-f");
            Name        = "Use only this file for configuring nano";
            Description = "Use only this file for configuring nano";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rebinddelete", "-d");
            Name        = "Fix Backspace/Delete confusion problem";
            Description = "Fix Backspace/Delete confusion problem";
        },
        [FlagParameter]@{
            Keys        = @("--restricted", "-R");
            Name        = "Restrict access to the filesystem";
            Description = "Restrict access to the filesystem";
        },
        [FlagParameter]@{
            Keys        = @("--saveonexit", "-t");
            Name        = "Save changes on exit, don't prompt";
            Description = "Save changes on exit, don't prompt";
        },
        [FlagParameter]@{
            Keys        = @("--showcursor", "-g");
            Name        = "Show cursor in file browser & help text";
            Description = "Show cursor in file browser & help text";
        },
        [FlagParameter]@{
            Keys        = @("--smarthome", "-A");
            Name        = "Enable smart home key";
            Description = "Enable smart home key";
        },
        [FlagParameter]@{
            Keys        = @("--softwrap", "-S");
            Name        = "Display overlong lines on multiple rows";
            Description = "Display overlong lines on multiple rows";
        },
        [ValueParameter]@{
            Keys        = @("--speller", "-s");
            Name        = "Use this alternative spell checker";
            Description = "Use this alternative spell checker";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stateflags", "-%");
            Name        = "Show some states on the title bar";
            Description = "Show some states on the title bar";
        },
        [FlagParameter]@{
            Keys        = @("--suspendable", "-z");
            Name        = "Enable suspension";
            Description = "Enable suspension";
        },
        [ValueParameter]@{
            Keys        = @("--syntax", "-Y");
            Name        = "Syntax definition to use for coloring";
            Description = "Syntax definition to use for coloring";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tabsize", "-T");
            Name        = "Make a tab this number of columns wide";
            Description = "Make a tab this number of columns wide";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tabstospaces", "-E");
            Name        = "Convert typed tabs to spaces";
            Description = "Convert typed tabs to spaces";
        },
        [FlagParameter]@{
            Keys        = @("--trimblanks", "-M");
            Name        = "Trim tail spaces when hard-wrapping";
            Description = "Trim tail spaces when hard-wrapping";
        },
        [FlagParameter]@{
            Keys        = @("--unix", "-u");
            Name        = "Save a file by default in Unix format";
            Description = "Save a file by default in Unix format";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print version information and exit";
            Description = "Print version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--view", "-v");
            Name        = "View mode (read-only)";
            Description = "View mode (read-only)";
        },
        [FlagParameter]@{
            Keys        = @("--wordbounds", "-W");
            Name        = "Detect word boundaries more accurately";
            Description = "Detect word boundaries more accurately";
        },
        [ValueParameter]@{
            Keys        = @("--wordchars", "-X");
            Name        = "Which other characters are word parts";
            Description = "Which other characters are word parts";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--zap", "-Z");
            Name        = "Let Bsp and Del erase a marked region";
            Description = "Let Bsp and Del erase a marked region";
        }
    )
}
