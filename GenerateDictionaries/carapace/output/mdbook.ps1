# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/rust-lang/mdBook";
    Keys        = @("mdbook");
    Name        = "mdbook";
    Description = "Creates a book from markdown files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Prints help information";
            Description = "Prints help information";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Prints version information";
            Description = "Prints version information";
        },
        [CommandParameter]@{
            Keys        = @("build");
            Name        = "build";
            Description = "Builds a book from its markdown files";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--dest-dir", "-d");
                    Name        = "Output directory for the book";
                    Description = "Output directory for the book";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--open", "-o");
                    Name        = "Opens the compiled book in a web browser";
                    Description = "Opens the compiled book in a web browser";
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "Deletes a built book";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--dest-dir", "-d");
                    Name        = "Output directory for the book";
                    Description = "Output directory for the book";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("init");
            Name        = "init";
            Description = "Creates the boilerplate structure and files for a new book";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--force");
                    Name        = "Skips confirmation prompts";
                    Description = "Skips confirmation prompts";
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--theme");
                    Name        = "Copies the default theme into your source folder";
                    Description = "Copies the default theme into your source folder";
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("serve");
            Name        = "serve";
            Description = "Serves a book at http://localhost:3000, and rebuilds it on changes";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--dest-dir", "-d");
                    Name        = "Output directory for the book";
                    Description = "Output directory for the book";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--hostname", "-n");
                    Name        = "Hostname to listen on for HTTP connections [default: localhost]";
                    Description = "Hostname to listen on for HTTP connections [default: localhost]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--open", "-o");
                    Name        = "Opens the book server in a web browser";
                    Description = "Opens the book server in a web browser";
                },
                [ValueParameter]@{
                    Keys        = @("--port", "-p");
                    Name        = "Port to use for HTTP connections [default: 3000]";
                    Description = "Port to use for HTTP connections [default: 3000]";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("test");
            Name        = "test";
            Description = "Tests that a book's Rust code samples compile";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--dest-dir", "-d");
                    Name        = "Output directory for the book";
                    Description = "Output directory for the book";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [ValueParameter]@{
                    Keys        = @("--library-path", "-L");
                    Name        = "A comma-separated list of directories to add to ";
                    Description = "A comma-separated list of directories to add to ";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("watch");
            Name        = "watch";
            Description = "Watches a book's files and rebuilds it on changes";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--dest-dir", "-d");
                    Name        = "Output directory for the book";
                    Description = "Output directory for the book";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("--help", "-h");
                    Name        = "Prints help information";
                    Description = "Prints help information";
                },
                [FlagParameter]@{
                    Keys        = @("--open", "-o");
                    Name        = "Open the compiled book in a web browser";
                    Description = "Open the compiled book in a web browser";
                },
                [FlagParameter]@{
                    Keys        = @("--version", "-V");
                    Name        = "Prints version information";
                    Description = "Prints version information";
                }
            )
        }
    )
}
