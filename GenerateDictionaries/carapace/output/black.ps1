# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/psf/black";
    Keys        = @("black");
    Name        = "black";
    Description = "The uncompromising code formatter";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--check");
            Name        = "Don't write the files back , just return the status.";
            Description = "Don't write the files back , just return the status.";
        },
        [ValueParameter]@{
            Keys        = @("--code", "-c");
            Name        = "Format the code passed in as a string.";
            Description = "Format the code passed in as a string.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--color");
            Name        = "Show colored diff";
            Description = "Show colored diff";
        },
        [ValueParameter]@{
            Keys        = @("--config");
            Name        = "Read configuration from FILE path.";
            Description = "Read configuration from FILE path.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--diff");
            Name        = "Don't write the files back, just output a diff for each file on stdout.";
            Description = "Don't write the files back, just output a diff for each file on stdout.";
        },
        [ValueParameter]@{
            Keys        = @("--exclude");
            Name        = "A regular expression that matches files and directories that should be excluded.";
            Description = "A regular expression that matches files and directories that should be excluded.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extend-exclude");
            Name        = "Like --exclude, but adds additional files and directories on top of the excluded ones.";
            Description = "Like --exclude, but adds additional files and directories on top of the excluded ones.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fast");
            Name        = "Skip temporary sanity checks.";
            Description = "Skip temporary sanity checks.";
        },
        [ValueParameter]@{
            Keys        = @("--force-exclude");
            Name        = "Like --exclude, but files and directories matching this regex will be excluded.";
            Description = "Like --exclude, but files and directories matching this regex will be excluded.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this message and exit.";
            Description = "Show this message and exit.";
        },
        [ValueParameter]@{
            Keys        = @("--include");
            Name        = "A regular expression that matches files and directories that should be included.";
            Description = "A regular expression that matches files and directories that should be included.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ipynb");
            Name        = "Format all input files like Jupyter Notebooks";
            Description = "Format all input files like Jupyter Notebooks";
        },
        [ValueParameter]@{
            Keys        = @("--line-length", "-l");
            Name        = "How many characters per line to allow.";
            Description = "How many characters per line to allow.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "Do not show colored diff";
            Description = "Do not show colored diff";
        },
        [FlagParameter]@{
            Keys        = @("--pyi");
            Name        = "Format all input files like typing stubs regardless of file extension ";
            Description = "Format all input files like typing stubs regardless of file extension ";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Don't emit non-error messages to stderr.";
            Description = "Don't emit non-error messages to stderr.";
        },
        [ValueParameter]@{
            Keys        = @("--required-version");
            Name        = "Require a specific version of Black to be running.";
            Description = "Require a specific version of Black to be running.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--safe");
            Name        = "Do not skip temporary sanity checks.";
            Description = "Do not skip temporary sanity checks.";
        },
        [FlagParameter]@{
            Keys        = @("--skip-magic-trailing-comma", "-C");
            Name        = "Don't use trailing commas as a reason to split lines.";
            Description = "Don't use trailing commas as a reason to split lines.";
        },
        [FlagParameter]@{
            Keys        = @("--skip-string-normalization", "-S");
            Name        = "Don't normalize string quotes or prefixes.";
            Description = "Don't normalize string quotes or prefixes.";
        },
        [ValueParameter]@{
            Keys        = @("--stdin-filename");
            Name        = "The name of the file when passing it through stdin.";
            Description = "The name of the file when passing it through stdin.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target-version", "-t");
            Name        = "Python versions that should be supported by Black's output.";
            Description = "Python versions that should be supported by Black's output.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Also emit messages to stderr about files that were not changed.";
            Description = "Also emit messages to stderr about files that were not changed.";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show the version and exit.";
            Description = "Show the version and exit.";
        }
    )
}
