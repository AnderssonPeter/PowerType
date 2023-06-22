# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://docs.codecov.com/docs/codecov-uploader";
    Keys        = @("codecov");
    Name        = "codecov";
    Description = "codecov uploader";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--CL");
            Name        = "Display a link for the current changelog";
            Description = "Display a link for the current changelog";
        },
        [ValueParameter]@{
            Keys        = @("--branch", "-B");
            Name        = "Specify the branch manually";
            Description = "Specify the branch manually";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--build", "-b");
            Name        = "Specify the build number manually";
            Description = "Specify the build number manually";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--changelog");
            Name        = "Display a link for the current changelog";
            Description = "Display a link for the current changelog";
        },
        [FlagParameter]@{
            Keys        = @("--clean", "-c");
            Name        = "Move discovered coverage reports to the trash";
            Description = "Move discovered coverage reports to the trash";
        },
        [ValueParameter]@{
            Keys        = @("--dir", "-s");
            Name        = "Directory to search for coverage reports.";
            Description = "Directory to search for coverage reports.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dryRun", "-d");
            Name        = "Don't upload files to Codecov";
            Description = "Don't upload files to Codecov";
        },
        [ValueParameter]@{
            Keys        = @("--env", "-e");
            Name        = "Specify environment variables to be included with this build.";
            Description = "Specify environment variables to be included with this build.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--feature", "-X");
            Name        = "Toggle functionalities";
            Description = "Toggle functionalities";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file", "-f");
            Name        = "Target file(s) to upload";
            Description = "Target file(s) to upload";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--flags", "-F");
            Name        = "Flag the upload to group coverage metrics";
            Description = "Flag the upload to group coverage metrics";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help";
            Description = "Show help";
        },
        [ValueParameter]@{
            Keys        = @("--name", "-n");
            Name        = "Custom defined name of the upload.";
            Description = "Custom defined name of the upload.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--nonZero", "-Z");
            Name        = "Should errors exit with a non-zero";
            Description = "Should errors exit with a non-zero";
        },
        [ValueParameter]@{
            Keys        = @("--parent", "-N");
            Name        = "The commit SHA of the parent for which you are uploading coverage.";
            Description = "The commit SHA of the parent for which you are uploading coverage.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pr", "-P");
            Name        = "Specify the pull request number mannually";
            Description = "Specify the pull request number mannually";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--rootDir", "-R");
            Name        = "Specify the project root directory when not in a git repo";
            Description = "Specify the project root directory when not in a git repo";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sha", "-C");
            Name        = "Specify the commit SHA mannually";
            Description = "Specify the commit SHA mannually";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--slug", "-r");
            Name        = "Specify the slug manually (Enterprise use)";
            Description = "Specify the slug manually (Enterprise use)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--source", "-Q");
            Name        = "Used internally by Codecov, this argument helps track wrappers of the uploader";
            Description = "Used internally by Codecov, this argument helps track wrappers of the uploader";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tag", "-T");
            Name        = "Specify the git tag";
            Description = "Specify the git tag";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--token", "-t");
            Name        = "Codecov upload token";
            Description = "Codecov upload token";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--url", "-u");
            Name        = "Change the upload host (Enterprise use)";
            Description = "Change the upload host (Enterprise use)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Run with verbose logging";
            Description = "Run with verbose logging";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Show version number";
            Description = "Show version number";
        }
    )
}
