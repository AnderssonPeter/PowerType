# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://ktlint.github.io/";
    Keys        = @("ktlint");
    Name        = "ktlint";
    Description = "An anti-bikeshedding Kotlin linter with built-in formatter";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--android", "-a");
            Name        = "Turn on Android Kotlin Style Guide compatibility";
            Description = "Turn on Android Kotlin Style Guide compatibility";
        },
        [FlagParameter]@{
            Keys        = @("--apply-to-idea");
            Name        = "Update Intellij IDEA";
            Description = "Update Intellij IDEA";
        },
        [FlagParameter]@{
            Keys        = @("--apply-to-idea-project");
            Name        = "Update Intellij IDEA project";
            Description = "Update Intellij IDEA project";
        },
        [FlagParameter]@{
            Keys        = @("--color");
            Name        = "Make output colorful";
            Description = "Make output colorful";
        },
        [ValueParameter]@{
            Keys        = @("--color-name");
            Name        = "Customize the output color";
            Description = "Customize the output color";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Turn on debug output";
            Description = "Turn on debug output";
        },
        [ValueParameter]@{
            Keys        = @("--disabled_rules");
            Name        = "Comma-separated list of rules to globally disable";
            Description = "Comma-separated list of rules to globally disable";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--editorconfig");
            Name        = "Path to .editorconfig";
            Description = "Path to .editorconfig";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--experimental");
            Name        = "Enabled experimental rules (ktlint-ruleset-experimental)";
            Description = "Enabled experimental rules (ktlint-ruleset-experimental)";
        },
        [FlagParameter]@{
            Keys        = @("--format", "-F");
            Name        = "Fix any deviations from the code style";
            Description = "Fix any deviations from the code style";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help message and exit.";
            Description = "Show this help message and exit.";
        },
        [FlagParameter]@{
            Keys        = @("--install-git-pre-commit-hook");
            Name        = "Install git hook to automatically check files";
            Description = "Install git hook to automatically check files";
        },
        [FlagParameter]@{
            Keys        = @("--install-git-pre-push-hook");
            Name        = "Install git hook to automatically check files";
            Description = "Install git hook to automatically check files";
        },
        [ValueParameter]@{
            Keys        = @("--limit");
            Name        = "Maximum number of errors to show (default: show all)";
            Description = "Maximum number of errors to show (default: show all)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-ast");
            Name        = "Print AST";
            Description = "Print AST";
        },
        [FlagParameter]@{
            Keys        = @("--relative");
            Name        = "Print files relative to the working directory";
            Description = "Print files relative to the working directory";
        },
        [ValueParameter]@{
            Keys        = @("--reporter");
            Name        = "A reporter to use";
            Description = "A reporter to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ruleset", "-R");
            Name        = "A path to a JAR file containing additional ruleset(s)";
            Description = "A path to a JAR file containing additional ruleset(s)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--stdin");
            Name        = "Read file from stdin";
            Description = "Read file from stdin";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Show error codes";
            Description = "Show error codes";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print version information and exit.";
            Description = "Print version information and exit.";
        }
    )
}
