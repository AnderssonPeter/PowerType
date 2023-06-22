# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/8/apt-get";
    Keys        = @("apt-get");
    Name        = "apt-get";
    Description = "APT package handling utility";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--allow-downgrades");
            Name        = "Continue without prompting if it is doing downgrades.";
            Description = "Continue without prompting if it is doing downgrades.";
        },
        [FlagParameter]@{
            Keys        = @("--allow-releaseinfo-change");
            Name        = "Allow the update command to continue downloading data from a repository which changed its information";
            Description = "Allow the update command to continue downloading data from a repository which changed its information";
        },
        [FlagParameter]@{
            Keys        = @("--allow-remove-essential");
            Name        = "Force yes";
            Description = "Force yes";
        },
        [FlagParameter]@{
            Keys        = @("--allow-unauthenticated");
            Name        = "Ignore if packages can't be authenticated and don't prompt about it.";
            Description = "Ignore if packages can't be authenticated and don't prompt about it.";
        },
        [FlagParameter]@{
            Keys        = @("--arch-only");
            Name        = "Only process architecture-dependent build-dependencies.";
            Description = "Only process architecture-dependent build-dependencies.";
        },
        [FlagParameter]@{
            Keys        = @("--assume-no");
            Name        = "Automatic `"no`" to all prompts";
            Description = "Automatic `"no`" to all prompts";
        },
        [FlagParameter]@{
            Keys        = @("--assume-yes");
            Name        = "Automatic yes to prompts";
            Description = "Automatic yes to prompts";
        },
        [FlagParameter]@{
            Keys        = @("--auto-remove");
            Name        = "acts like running the autoremove command";
            Description = "acts like running the autoremove command";
        },
        [FlagParameter]@{
            Keys        = @("--autoremove");
            Name        = "acts like running the autoremove command";
            Description = "acts like running the autoremove command";
        },
        [FlagParameter]@{
            Keys        = @("--build");
            Name        = "Compile source packages after downloading them.";
            Description = "Compile source packages after downloading them.";
        },
        [FlagParameter]@{
            Keys        = @("--build-profiles", "-P");
            Name        = "This option controls the activated build profiles";
            Description = "This option controls the activated build profiles";
        },
        [FlagParameter]@{
            Keys        = @("--compile", "-b");
            Name        = "Compile source packages after downloading them.";
            Description = "Compile source packages after downloading them.";
        },
        [FlagParameter]@{
            Keys        = @("--config-file", "-c");
            Name        = "Configuration File";
            Description = "Configuration File";
        },
        [FlagParameter]@{
            Keys        = @("--default-release");
            Name        = "This option controls the default input to the policy engine";
            Description = "This option controls the default input to the policy engine";
        },
        [FlagParameter]@{
            Keys        = @("--diff-only");
            Name        = "Download only the diff file of a source archive.";
            Description = "Download only the diff file of a source archive.";
        },
        [FlagParameter]@{
            Keys        = @("--download-only", "-d");
            Name        = "Download only";
            Description = "Download only";
        },
        [FlagParameter]@{
            Keys        = @("--dry-run");
            Name        = "No action";
            Description = "No action";
        },
        [FlagParameter]@{
            Keys        = @("--dsc-only");
            Name        = "Download only the dsc file of a source archive.";
            Description = "Download only the dsc file of a source archive.";
        },
        [ValueParameter]@{
            Keys        = @("--error-on");
            Name        = "Fail the update command if any error occured, even a transient one.";
            Description = "Fail the update command if any error occured, even a transient one.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fix-broken", "-f");
            Name        = "Fix";
            Description = "Fix";
        },
        [FlagParameter]@{
            Keys        = @("--fix-missing");
            Name        = "Ignore missing packages";
            Description = "Ignore missing packages";
        },
        [FlagParameter]@{
            Keys        = @("--force-yes");
            Name        = "Force yes";
            Description = "Force yes";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show a short usage summary.";
            Description = "Show a short usage summary.";
        },
        [FlagParameter]@{
            Keys        = @("--host-architecture", "-a");
            Name        = "This option controls the architecture packages are built for";
            Description = "This option controls the architecture packages are built for";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-hold");
            Name        = "Ignore package holds";
            Description = "Ignore package holds";
        },
        [FlagParameter]@{
            Keys        = @("--ignore-missing", "-m");
            Name        = "Ignore missing packages";
            Description = "Ignore missing packages";
        },
        [FlagParameter]@{
            Keys        = @("--indep-only");
            Name        = "Only process architecture-independent build-dependencies.";
            Description = "Only process architecture-independent build-dependencies.";
        },
        [FlagParameter]@{
            Keys        = @("--install-suggests");
            Name        = "Consider suggested packages as a dependency for installing.";
            Description = "Consider suggested packages as a dependency for installing.";
        },
        [FlagParameter]@{
            Keys        = @("--just-print");
            Name        = "No action";
            Description = "No action";
        },
        [FlagParameter]@{
            Keys        = @("--list-cleanup");
            Name        = "Automatically manage the contents of /var/lib/apt/lists";
            Description = "Automatically manage the contents of /var/lib/apt/lists";
        },
        [FlagParameter]@{
            Keys        = @("--no-act");
            Name        = "No action";
            Description = "No action";
        },
        [FlagParameter]@{
            Keys        = @("--no-allow-insecure-repositories");
            Name        = "Forbid the update command to acquire unverifiable data from configured sources.";
            Description = "Forbid the update command to acquire unverifiable data from configured sources.";
        },
        [FlagParameter]@{
            Keys        = @("--no-download");
            Name        = "Disables downloading of packages.";
            Description = "Disables downloading of packages.";
        },
        [FlagParameter]@{
            Keys        = @("--no-install-recommends");
            Name        = "Do not consider recommended packages as a dependency for installing.";
            Description = "Do not consider recommended packages as a dependency for installing.";
        },
        [FlagParameter]@{
            Keys        = @("--no-remove");
            Name        = "If any packages are to be removed apt-get immediately aborts without prompting.";
            Description = "If any packages are to be removed apt-get immediately aborts without prompting.";
        },
        [FlagParameter]@{
            Keys        = @("--no-show-upgraded");
            Name        = "Do not show a list of all packages that are to be upgraded.";
            Description = "Do not show a list of all packages that are to be upgraded.";
        },
        [FlagParameter]@{
            Keys        = @("--no-upgrade");
            Name        = "Do not upgrade packages";
            Description = "Do not upgrade packages";
        },
        [FlagParameter]@{
            Keys        = @("--only-source");
            Name        = "Indicates that the given source names are not to be mapped through the binary table.";
            Description = "Indicates that the given source names are not to be mapped through the binary table.";
        },
        [FlagParameter]@{
            Keys        = @("--only-upgrade");
            Name        = "Do not install new packages";
            Description = "Do not install new packages";
        },
        [FlagParameter]@{
            Keys        = @("--option", "-o");
            Name        = "Set a Configuration Option";
            Description = "Set a Configuration Option";
        },
        [FlagParameter]@{
            Keys        = @("--print-uris");
            Name        = "Instead of fetching the files to install their URIs are printed.";
            Description = "Instead of fetching the files to install their URIs are printed.";
        },
        [FlagParameter]@{
            Keys        = @("--purge");
            Name        = "Use purge instead of remove for anything that would be removed.";
            Description = "Use purge instead of remove for anything that would be removed.";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "Quiet";
            Description = "Quiet";
        },
        [FlagParameter]@{
            Keys        = @("--recon");
            Name        = "No action";
            Description = "No action";
        },
        [FlagParameter]@{
            Keys        = @("--reinstall");
            Name        = "Re-install packages that are already installed and at the newest version.";
            Description = "Re-install packages that are already installed and at the newest version.";
        },
        [FlagParameter]@{
            Keys        = @("--show-progress");
            Name        = "Show user friendly progress information in the terminal window when packages are installed";
            Description = "Show user friendly progress information in the terminal window when packages are installed";
        },
        [FlagParameter]@{
            Keys        = @("--simulate", "-s");
            Name        = "No action";
            Description = "No action";
        },
        [FlagParameter]@{
            Keys        = @("--tar-only");
            Name        = "Download only the tar file of a source archive.";
            Description = "Download only the tar file of a source archive.";
        },
        [FlagParameter]@{
            Keys        = @("--target-release", "-t");
            Name        = "This option controls the default input to the policy engine";
            Description = "This option controls the default input to the policy engine";
        },
        [FlagParameter]@{
            Keys        = @("--trivial-only");
            Name        = "Only perform operations that are 'trivial'.";
            Description = "Only perform operations that are 'trivial'.";
        },
        [FlagParameter]@{
            Keys        = @("--verbose-versions", "-V");
            Name        = "Show full versions for upgraded and installed packages.";
            Description = "Show full versions for upgraded and installed packages.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Show the program version.";
            Description = "Show the program version.";
        },
        [FlagParameter]@{
            Keys        = @("--with-new-pkgs");
            Name        = "Allow installing new packages when used in conjunction with upgrade.";
            Description = "Allow installing new packages when used in conjunction with upgrade.";
        },
        [ValueParameter]@{
            Keys        = @("--with-source");
            Name        = "Adds the given file as a source for metadata.";
            Description = "Adds the given file as a source for metadata.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--yes", "-y");
            Name        = "Automatic yes to prompts";
            Description = "Automatic yes to prompts";
        },
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        ,
        [CommandParameter]@{
            Keys        = @("autoclean");
            Name        = "autoclean";
            Description = "Like clean, but only removes package files that can no longer be downloaded";
        },
        [CommandParameter]@{
            Keys        = @("autoremove");
            Name        = "autoremove";
            Description = "autoremove is used to remove packages that were automatically installed";
        },
        [CommandParameter]@{
            Keys        = @("build-dep");
            Name        = "build-dep";
            Description = "build-dep causes apt-get to install/remove packages in an attempt to satisfy the build dependencies";
        },
        [CommandParameter]@{
            Keys        = @("changelog");
            Name        = "changelog";
            Description = "changelog tries to download the changelog of a package";
        },
        [CommandParameter]@{
            Keys        = @("check");
            Name        = "check";
            Description = "check is a diagnostic tool";
        },
        [CommandParameter]@{
            Keys        = @("clean");
            Name        = "clean";
            Description = "clean clears out the local repository of retrieved package files";
        },
        [CommandParameter]@{
            Keys        = @("dist-upgrade");
            Name        = "dist-upgrade";
            Description = "dist-upgrade in addition to performing the function of upgrade";
        },
        [CommandParameter]@{
            Keys        = @("download");
            Name        = "download";
            Description = "download will download the given binary package into the current directory";
        },
        [CommandParameter]@{
            Keys        = @("dselect-upgrade");
            Name        = "dselect-upgrade";
            Description = "dselect-upgrade is used in conjunction with the traditional Debian packaging front-end";
        },
        [CommandParameter]@{
            Keys        = @("indextargets");
            Name        = "indextargets";
            Description = "Displays by default a deb822 formatted listing of information";
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "install is followed by one or more packages desired for installation or upgrading";
        },
        [CommandParameter]@{
            Keys        = @("purge");
            Name        = "purge";
            Description = "purge is identical to remove except that packages are removed and purged";
        },
        [CommandParameter]@{
            Keys        = @("reinstall");
            Name        = "reinstall";
            Description = "reinstall is an alias for install --reinstall";
        },
        [CommandParameter]@{
            Keys        = @("remove");
            Name        = "remove";
            Description = "remove is identical to install except that packages are removed";
        },
        [CommandParameter]@{
            Keys        = @("satisfy");
            Name        = "satisfy";
            Description = "satisfy causes apt-get to satisfy the given dependency strings";
        },
        [CommandParameter]@{
            Keys        = @("source");
            Name        = "source";
            Description = "source causes apt-get to fetch source packages";
        },
        [CommandParameter]@{
            Keys        = @("update");
            Name        = "update";
            Description = "resynchronize the package index files";
        },
        [CommandParameter]@{
            Keys        = @("upgrade");
            Name        = "upgrade";
            Description = "install the newest versions of all packages currently installed";
        }
    )
}
