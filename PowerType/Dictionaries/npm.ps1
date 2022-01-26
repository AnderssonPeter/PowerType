$scripts = [DynamicSource]@{
    Name = "Scripts";
    Description = "A list of all scripts defined in package.json";
    CommandExpression = {
        $packageFile = Find-FileRecursive $pwd.Path 'package.json'
        if ($packageFile) {
            (Get-Content $packageFile | ConvertFrom-Json).scripts.PSObject.Properties | % { $_.Name }
        }
    };
    Cache = [Cache]@{
        ByCurrentWorkingDirectory = $true;
        ByTime = New-TimeSpan -Seconds 10
    }
}

[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Hand crafted";
    Url         = "https://www.npmjs.com/";
    Keys        = @("npm");
    Name        = "npm";
    Description = "the package manager for JavaScript";
    Parameters  = @(
        [CommandParameter]@{
            Keys = @("start");
            Name = "start";
            Description = "Alias for 'npm run start'";
        }
        [CommandParameter]@{
            Keys        = @("run", "run-script", "rum", "urn");
            Name        = "run";
            Description = "Run the specified npm script";
            Parameters  = @(
                [ValueParameter]@{
                    Name = "script";
                    Description = "What script to run";
                    Source = $scripts;
                }
            );
        }
    )
}
