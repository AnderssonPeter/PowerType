# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/apt-cache";
    Keys        = @("apt-cache");
    Name        = "apt-cache";
    Description = "query the APT cache";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all-names");
            Name        = "Make pkgnames print all names";
            Description = "Make pkgnames print all names";
        },
        [FlagParameter]@{
            Keys        = @("--all-versions", "-a");
            Name        = "Print full records for all available versions";
            Description = "Print full records for all available versions";
        },
        [ValueParameter]@{
            Keys        = @("--config-file", "-c");
            Name        = "Configuration File";
            Description = "Configuration File";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--full", "-f");
            Name        = "Print full package records when searching";
            Description = "Print full package records when searching";
        },
        [FlagParameter]@{
            Keys        = @("--generate", "-g");
            Name        = "Perform automatic package cache regeneration";
            Description = "Perform automatic package cache regeneration";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show a short usage summary";
            Description = "Show a short usage summary";
        },
        [FlagParameter]@{
            Keys        = @("--implicit");
            Name        = "Per default depends and rdepends print only dependencies explicitly expressed in the metadata";
            Description = "Per default depends and rdepends print only dependencies explicitly expressed in the metadata";
        },
        [FlagParameter]@{
            Keys        = @("--important", "-i");
            Name        = "Print only important dependencies";
            Description = "Print only important dependencies";
        },
        [FlagParameter]@{
            Keys        = @("--installed");
            Name        = "Limit the output of depends and rdepends to packages which are currently installed";
            Description = "Limit the output of depends and rdepends to packages which are currently installed";
        },
        [FlagParameter]@{
            Keys        = @("--names-only,", "-n");
            Name        = "Only search on the package and provided package names";
            Description = "Only search on the package and provided package names";
        },
        [FlagParameter]@{
            Keys        = @("--no-breaks");
            Name        = "Omit breaks";
            Description = "Omit breaks";
        },
        [FlagParameter]@{
            Keys        = @("--no-conflicts");
            Name        = "Omit conflicts";
            Description = "Omit conflicts";
        },
        [FlagParameter]@{
            Keys        = @("--no-depends");
            Name        = "Omit depends";
            Description = "Omit depends";
        },
        [FlagParameter]@{
            Keys        = @("--no-enhances");
            Name        = "Omit enhances";
            Description = "Omit enhances";
        },
        [FlagParameter]@{
            Keys        = @("--no-pre-depends");
            Name        = "Omit pre-depends";
            Description = "Omit pre-depends";
        },
        [FlagParameter]@{
            Keys        = @("--no-recommends");
            Name        = "Omit recommends";
            Description = "Omit recommends";
        },
        [FlagParameter]@{
            Keys        = @("--no-replaces");
            Name        = "Omit replaces";
            Description = "Omit replaces";
        },
        [FlagParameter]@{
            Keys        = @("--no-suggests");
            Name        = "Omit suggests";
            Description = "Omit suggests";
        },
        [ValueParameter]@{
            Keys        = @("--option", "-o");
            Name        = "Set a Configuration Option";
            Description = "Set a Configuration Option";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pkg-cache", "-p");
            Name        = "Select the file to store the package cache";
            Description = "Select the file to store the package cache";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Quiet";
            Description = "Quiet";
        },
        [FlagParameter]@{
            Keys        = @("--recurse");
            Name        = "Make depends and rdepends recursive so that all packages mentioned are printed once";
            Description = "Make depends and rdepends recursive so that all packages mentioned are printed once";
        },
        [ValueParameter]@{
            Keys        = @("--src-cache", "-s");
            Name        = "Select the file to store the source cache";
            Description = "Select the file to store the source cache";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Show the program version";
            Description = "Show the program version";
        },
        [ValueParameter]@{
            Keys        = @("--with-source");
            Name        = "Adds the given file as a source for metadata";
            Description = "Adds the given file as a source for metadata";
            # Source = $?? # todo: Fix or remove this!
        },
        [CommandParameter]@{
            Keys        = @("depends");
            Name        = "depends";
            Description = "shows a listing of each dependency";
        },
        [CommandParameter]@{
            Keys        = @("dotty");
            Name        = "dotty";
            Description = "generates output suitable for use by dotty";
        },
        [CommandParameter]@{
            Keys        = @("dump");
            Name        = "dump";
            Description = "shows a short listing of every package in the cache";
        },
        [CommandParameter]@{
            Keys        = @("dumpavail");
            Name        = "dumpavail";
            Description = "prints out an available list to stdout";
        },
        [CommandParameter]@{
            Keys        = @("gencaches");
            Name        = "gencaches";
            Description = "gencaches creates APT's package cache";
        },
        [CommandParameter]@{
            Keys        = @("madison");
            Name        = "madison";
            Description = "mimic the output format of the Debian madison tool";
        },
        [CommandParameter]@{
            Keys        = @("pkgnames");
            Name        = "pkgnames";
            Description = "print the name of each package";
        },
        [CommandParameter]@{
            Keys        = @("policy");
            Name        = "policy";
            Description = "debug issues relating to the preferences file";
        },
        [CommandParameter]@{
            Keys        = @("rdepends");
            Name        = "rdepends";
            Description = "shows a listing of each dependency";
        },
        [CommandParameter]@{
            Keys        = @("search");
            Name        = "search";
            Description = "search performs a full text search";
        },
        [CommandParameter]@{
            Keys        = @("show");
            Name        = "show";
            Description = "displays the package records for the named packages";
        },
        [CommandParameter]@{
            Keys        = @("showpkg");
            Name        = "showpkg";
            Description = "showpkg displays information about the packages";
        },
        [CommandParameter]@{
            Keys        = @("showsrc");
            Name        = "showsrc";
            Description = "showsrc displays all the source package records";
        },
        [CommandParameter]@{
            Keys        = @("stats");
            Name        = "stats";
            Description = "stats displays some statistics about the cache";
        },
        [CommandParameter]@{
            Keys        = @("unmet");
            Name        = "unmet";
            Description = "unmet displays a summary of all unmet dependencies";
        },
        [CommandParameter]@{
            Keys        = @("xvcg");
            Name        = "xvcg";
            Description = "generates output suitable for use by xvcg";
        }
    )
}
