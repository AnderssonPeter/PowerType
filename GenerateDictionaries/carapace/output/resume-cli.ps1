# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/jsonresume/resume-cli";
    Keys        = @("resume-cli");
    Name        = "resume-cli";
    Description = "command line tool for JSON Resume";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display help for command";
            Description = "display help for command";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "output the version number";
            Description = "output the version number";
        },
        [CommandParameter]@{
            Keys        = @("export");
            Name        = "export";
            Description = "";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force", "-F");
                    Name        = "bypass schema testing";
                    Description = "bypass schema testing";
                },
                [ValueParameter]@{
                    Keys        = @("--format", "-f");
                    Name        = "output format";
                    Description = "output format";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "display help for command";
                    Description = "display help for command";
                },
                [ValueParameter]@{
                    Keys        = @("--theme", "-t");
                    Name        = "theme name";
                    Description = "theme name";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "";
        },
        [CommandParameter]@{
            Keys        = @("serve");
            Name        = "serve";
            Description = "";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--dir", "-d");
                    Name        = "indicate a public directory path";
                    Description = "indicate a public directory path";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "display help for command";
                    Description = "display help for command";
                },
                [ValueParameter]@{
                    Keys        = @("--port", "-p");
                    Name        = "port used (default: 4000)";
                    Description = "port used (default: 4000)";
                    # Source = $?? # todo: Fix or remove this!
                },
                [ValueParameter]@{
                    Keys        = @("--resume", "-r");
                    Name        = "resume file";
                    Description = "resume file";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--silent", "-s");
                    Name        = "open browser";
                    Description = "open browser";
                },
                [ValueParameter]@{
                    Keys        = @("--theme", "-t");
                    Name        = "theme name";
                    Description = "theme name";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "display help for command";
                    Description = "display help for command";
                },
                [ValueParameter]@{
                    Keys        = @("--schema");
                    Name        = "validate against common schema";
                    Description = "validate against common schema";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        }
    )
}
