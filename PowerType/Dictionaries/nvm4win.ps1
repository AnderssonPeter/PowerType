$installedVersions = [DynamicSource]@{
    Name = "versions";
    Description = "All installed node versions";
    CommandExpression = {
        $hardcoded = @("latest", "lts")
        $list = nvm list | % { [regex]::match($_, '(\d+\.\d+\.\d+)').Groups[1].Value } | ? {$_.trim() -ne "" }
        $hardcoded + $list
    };
    Cache = [Cache]@{
        ByTime = New-TimeSpan -Seconds 10;
        ByCommand = @("install", "uninstall")
    }
}

$versionsToInstall = [StaticSource]@{
    Name = "Versions to install";
    Description = "";
    Items = @(
        [SourceItem]@{
            Name = "latest";
            Description = ""
        },
        [SourceItem]@{
            Name = "lts";
            Description = ""
        }
    )
}

$architecture = [StaticSource]@{
    Name = "architecture";
    Description = "";
    Items = @(
        [SourceItem]@{
            Name = "64";
            Description = "64 bit"
        }
        [SourceItem]@{
            Name = "32";
            Description = "32 bit"
        }
    )
}

$proxies = [StaticSource]@{
    Name = "Proxies";
    Description = "";
    Items = @(
        [SourceItem]@{
            Name = "none";
            Description = ""
        }
    )
}

[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Windows);
    State       = [DictionaryState]::Experimental -bor [DictionaryState]::Complete;
    Source      = "Hand crafted";
    Url         = "https://github.com/coreybutler/nvm-windows";
    Keys        = @("nvm");
    Name        = "nvm for windows";
    Description = "A node.js version management utility for Windows. Ironically written in Go.";
    Parameters  = @(
        [CommandParameter]@{
            Keys = @("arch");
            Name = "arch";
            Description = "Show if node is running in 32 or 64 bit mode";
        }
        [CommandParameter]@{
            Keys = @("current");
            Name = "current";
            Description = "Display active version";
        }
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "install specified node version";
            Parameters  = @(
                [ValueParameter]@{
                    Name = "version";
                    Description = "version to install";
                    Source = $versionsToInstall;
                }
                [ValueParameter]@{
                    Name = "architecture";
                    Description = "architecture to install";
                    Source = $architecture;
                    Condition = [ExclusiveParameterCondition]::new("version")
                }
            );
        }
        [CommandParameter]@{
            Keys        = @("list", "ls");
            Name        = "list";
            Description = "List the node.js installations";
            Parameters  = @(
                [FlagParameter]@{
                    Keys = @("available");
                    Name = "available";
                    Description = "see what can be installed";
                }
            );
        }
        [CommandParameter]@{
            Keys = @("on");
            Name = "on";
            Description = "Enable node.js version management";
        }
        [CommandParameter]@{
            Keys = @("off");
            Name = "off";
            Description = "Disable node.js version management";
        }
        [CommandParameter]@{
            Keys        = @("proxy");
            Name        = "proxy";
            Description = "Set a proxy to use for downloads. Leave [url] blank to see the current proxy";
            Parameters  = @(
                [ValueParameter]@{
                    Name = "url";
                    Description = "Set [url] to 'none' to remove the proxy";
                    Source = $proxies
                }
            );
        }
        [CommandParameter]@{
            Keys        = @("node_mirror");
            Name        = "node_mirror";
            Description = "Set the node mirror";
            Parameters  = @(
                [ValueParameter]@{
                    Name = "url";
                    Description = "Defaults to https://nodejs.org/dist/. Leave [url] blank to use default url";
                }
            );
        }
        [CommandParameter]@{
            Keys        = @("npm_mirror");
            Name        = "npm_mirror";
            Description = "Set the npm mirror";
            Parameters  = @(
                [ValueParameter]@{
                    Name = "url";
                    Description = "Defaults to https://github.com/npm/cli/archive/. Leave [url] blank to default url";
                }
            );
        }
        [CommandParameter]@{
            Keys        = @("uninstall");
            Name        = "uninstall";
            Description = "uninstall specified node version";
            Parameters  = @(
                [ValueParameter]@{
                    Name = "version";
                    Description = "version to install";
                    Source = $installedVersions;
                }
            );
        }
        [CommandParameter]@{
            Keys        = @("use");
            Name        = "use";
            Description = "Switch to use the specified version";
            Parameters  = @(
                [ValueParameter]@{
                    Name = "version";
                    Description = "";
                    Source = $installedVersions
                },
                [ValueParameter]@{
                    Name = "architecture";
                    Description = "architecture to install";
                    Source = $architecture;
                    Condition = [InclusiveParameterCondition]::new("version")
                }
            );
        }
        [CommandParameter]@{
            Keys        = @("root");
            Name        = "root";
            Description = "Set the directory where nvm should store different versions of node.js";
        }
        [CommandParameter]@{
            Keys        = @("version", "v");
            Name        = "version";
            Description = "Displays the current running version of nvm for Windows. Aliased as v";
        }
    )
}
