$cleanupMode = [StaticSource]@{
	Name = "cleanup mode";
	Description = "Determines how the supplied commit messaged should be cleaned up before committing";
	Items = @(
		[SourceItem]@{ 
			Name = "strip";
			Description = "Strip leading and trailing empty lines, trailing whitepace, commentary and collapse consecutive empty lines" 
		},
		[SourceItem]@{
			Name = "whitespace";
			Description = "Same as strip except #commentary is not removed"
		},
		[SourceItem]@{
			Name = "verbatim";
			Description = "Do not change the message at all"
		},
		[SourceItem]@{
			Name = "scissors";
			Description = "Same as whitespace except that everything from (and including) the line found below is truncated"
		},
		[SourceItem]@{
			Name = "default";
			Description = "Same as strip if the message is to be edited. Otherwise whitespace"
		}
	)
}

$allRepositories = [DynamicSource]@{
	Name = "AllRepositories";
	Description = "Local and remote repositories";
	CommandExpression = {
		git --no-optional-locks branch -a --no-color  | % { $_.trim(' *$(') } | % { $_.StartsWith("remotes/origin/") ? $_.Substring(15) : $_ } | Where-Object { !$_.StartsWith("HEAD") } | Get-Unique
	};
	Cache = [Cache]@{
		ByCurrentWorkingDirectory = $true;
		ByTime = New-TimeSpan -Seconds 10
	}
}


# Should we remove the Parameter part? CommandParameter -> Command?
$dictionary = [PowerTypeDictionary]@{
	Keys = @("test");
	Name = "test";
	Description = "fast, scalable, distributed revision control system";
	Platforms = [Platforms]::All;
	Parameters = @(
		[CommandParameter]@{
			Keys = @("commit");
			Name = "Commit";
			Description = "Save changes to the local repository";
			Parameters = @(
				[ValueParameter]@{
					Keys = @("--message", "-m");
					Name = "Message";
					Description = "Commit message";
					Type = [ParameterType]::String
				},
				[FlagParameter]@{
					Keys = @("--verbose", "-v");
					Name = "Verbose";
					Description = ""
				},
				[FlagParameter]@{
					Keys = @("--squash");
					Name = "Squash";
					Description = ""
				},
				[ValueParameter]@{
					Keys = @("--cleanup");
					Name = "Cleanup";
					Description = "This option determines how the supplied commit message should be cleaned";
					Type = [ParameterType]::String;
					Source = $cleanupMode
				}
			)
		},
		[CommandParameter]@{
			Keys = @("checkout");
			Name = "Checkout";
			Description = "Change branch";
			Parameters = @(
				[FlagParameter]@{
					Keys = @("--quite", "-q");
					Name = "Quite";
					Description = "Suppress feedback message"
				},
				[ValueParameter]@{
					Name = "Repository";
					Description = "What repository to checkout";
					Source = $allRepositories
				}
			)
		},
		[FlagParameter]@{
			Keys = @("--version");
			Name = "Version";
			Description = "Display version"
		},
		[FlagParameter]@{
			Keys = @("--help");
			Name = "Help";
			Description = "Display help";
			Recursive = $true
		}	
	)
}

Add-PowerTypeDictionary -Dictionary $dictionary