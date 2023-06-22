# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://pkg.go.dev/cmd/gofmt";
    Keys        = @("gofmt");
    Name        = "gofmt";
    Description = "format Go source code";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cpuprofile");
            Name        = "write cpu profile to this file";
            Description = "write cpu profile to this file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "display diffs instead of rewriting files";
            Description = "display diffs instead of rewriting files";
        },
        [FlagParameter]@{
            Keys        = @("-e");
            Name        = "report all errors (not just the first 10 on different lines)";
            Description = "report all errors (not just the first 10 on different lines)";
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "list files whose formatting differs from gofmt's";
            Description = "list files whose formatting differs from gofmt's";
        },
        [ValueParameter]@{
            Keys        = @("-r");
            Name        = "rewrite rule";
            Description = "rewrite rule";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "simplify code";
            Description = "simplify code";
        },
        [FlagParameter]@{
            Keys        = @("-w");
            Name        = "write result to (source) file instead of stdout";
            Description = "write result to (source) file instead of stdout";
        }
    )
}
