# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/npm/node-semver";
    Keys        = @("semver");
    Name        = "semver";
    Description = "A JavaScript implementation of the https://semver.org/ specification";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--coerce", "-c");
            Name        = "Coerce a string into SemVer if possible";
            Description = "Coerce a string into SemVer if possible";
        },
        [FlagParameter]@{
            Keys        = @("--include-prerelease", "-p");
            Name        = "Always include prerelease versions in range matching";
            Description = "Always include prerelease versions in range matching";
        },
        [ValueParameter]@{
            Keys        = @("--increment", "-i");
            Name        = "Increment a version by the specified level.";
            Description = "Increment a version by the specified level.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--loose", "-l");
            Name        = "Interpret versions and ranges loosely";
            Description = "Interpret versions and ranges loosely";
        },
        [FlagParameter]@{
            Keys        = @("--ltr");
            Name        = "Coerce version strings left to right (default)";
            Description = "Coerce version strings left to right (default)";
        },
        [ValueParameter]@{
            Keys        = @("--preid");
            Name        = "Identifier to be used to prefix version increments.";
            Description = "Identifier to be used to prefix version increments.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--range", "-r");
            Name        = "Print versions that match the specified range.";
            Description = "Print versions that match the specified range.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rtl");
            Name        = "Coerce version strings right to left";
            Description = "Coerce version strings right to left";
        }
    )
}
