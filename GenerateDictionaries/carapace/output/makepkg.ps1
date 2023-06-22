# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://wiki.archlinux.org/title/Makepkg";
    Keys        = @("makepkg");
    Name        = "makepkg";
    Description = "make packages compatible for use with pacman";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--allsource");
            Name        = "Generate a source-only tarball including downloaded sources";
            Description = "Generate a source-only tarball including downloaded sources";
        },
        [FlagParameter]@{
            Keys        = @("--asdeps");
            Name        = "Install packages as non-explicitly installed";
            Description = "Install packages as non-explicitly installed";
        },
        [FlagParameter]@{
            Keys        = @("--check");
            Name        = "Run the check() function in the PKGBUILD";
            Description = "Run the check() function in the PKGBUILD";
        },
        [FlagParameter]@{
            Keys        = @("--clean", "-c");
            Name        = "Clean up work files after build";
            Description = "Clean up work files after build";
        },
        [ValueParameter]@{
            Keys        = @("--config");
            Name        = "Use an alternate config file (instead of '/etc/makepkg.conf')";
            Description = "Use an alternate config file (instead of '/etc/makepkg.conf')";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--force", "-f");
            Name        = "Overwrite existing package";
            Description = "Overwrite existing package";
        },
        [FlagParameter]@{
            Keys        = @("--geninteg", "-g");
            Name        = "Generate integrity checks for source files";
            Description = "Generate integrity checks for source files";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help message and exit";
            Description = "Show this help message and exit";
        },
        [FlagParameter]@{
            Keys        = @("--holdver");
            Name        = "Do not update VCS sources";
            Description = "Do not update VCS sources";
        },
        [FlagParameter]@{
            Keys        = @("--install", "-i");
            Name        = "Install package after successful build";
            Description = "Install package after successful build";
        },
        [ValueParameter]@{
            Keys        = @("--key");
            Name        = "Specify a key to use for gpg signing instead of the default";
            Description = "Specify a key to use for gpg signing instead of the default";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--log", "-L");
            Name        = "Log package build process";
            Description = "Log package build process";
        },
        [FlagParameter]@{
            Keys        = @("--needed");
            Name        = "Do not reinstall the targets that are already up to date";
            Description = "Do not reinstall the targets that are already up to date";
        },
        [FlagParameter]@{
            Keys        = @("--noarchive");
            Name        = "Do not create package archive";
            Description = "Do not create package archive";
        },
        [FlagParameter]@{
            Keys        = @("--nobuild", "-o");
            Name        = "Download and extract files only";
            Description = "Download and extract files only";
        },
        [FlagParameter]@{
            Keys        = @("--nocheck");
            Name        = "Do not run the check() function in the PKGBUILD";
            Description = "Do not run the check() function in the PKGBUILD";
        },
        [FlagParameter]@{
            Keys        = @("--nocolor", "-m");
            Name        = "Disable colorized output messages";
            Description = "Disable colorized output messages";
        },
        [FlagParameter]@{
            Keys        = @("--noconfirm");
            Name        = "Do not ask for confirmation when resolving dependencies";
            Description = "Do not ask for confirmation when resolving dependencies";
        },
        [FlagParameter]@{
            Keys        = @("--nodeps", "-d");
            Name        = "Skip all dependency checks";
            Description = "Skip all dependency checks";
        },
        [FlagParameter]@{
            Keys        = @("--noextract", "-e");
            Name        = "Do not extract source files (use existing `$srcdir/ dir)";
            Description = "Do not extract source files (use existing `$srcdir/ dir)";
        },
        [FlagParameter]@{
            Keys        = @("--noprepare");
            Name        = "Do not run the prepare() function in the PKGBUILD";
            Description = "Do not run the prepare() function in the PKGBUILD";
        },
        [FlagParameter]@{
            Keys        = @("--noprogressbar");
            Name        = "Do not show a progress bar when downloading files";
            Description = "Do not show a progress bar when downloading files";
        },
        [FlagParameter]@{
            Keys        = @("--nosign");
            Name        = "Do not create a signature for the package";
            Description = "Do not create a signature for the package";
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "Use an alternate build script (instead of 'PKGBUILD')";
            Description = "Use an alternate build script (instead of 'PKGBUILD')";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--packagelist");
            Name        = "Only list package filepaths that would be produced";
            Description = "Only list package filepaths that would be produced";
        },
        [FlagParameter]@{
            Keys        = @("--printsrcinfo");
            Name        = "Print the generated SRCINFO and exit";
            Description = "Print the generated SRCINFO and exit";
        },
        [FlagParameter]@{
            Keys        = @("--repackage", "-R");
            Name        = "Repackage contents of the package without rebuilding";
            Description = "Repackage contents of the package without rebuilding";
        },
        [FlagParameter]@{
            Keys        = @("--rmdeps", "-r");
            Name        = "Remove installed dependencies after a successful build";
            Description = "Remove installed dependencies after a successful build";
        },
        [FlagParameter]@{
            Keys        = @("--sign");
            Name        = "Sign the resulting package with gpg";
            Description = "Sign the resulting package with gpg";
        },
        [FlagParameter]@{
            Keys        = @("--skipchecksums");
            Name        = "Do not verify checksums of the source files";
            Description = "Do not verify checksums of the source files";
        },
        [FlagParameter]@{
            Keys        = @("--skipinteg");
            Name        = "Do not perform any verification checks on source files";
            Description = "Do not perform any verification checks on source files";
        },
        [FlagParameter]@{
            Keys        = @("--skippgpcheck");
            Name        = "Do not verify source files with PGP signatures";
            Description = "Do not verify source files with PGP signatures";
        },
        [FlagParameter]@{
            Keys        = @("--source", "-S");
            Name        = "Generate a source-only tarball without downloaded sources";
            Description = "Generate a source-only tarball without downloaded sources";
        },
        [FlagParameter]@{
            Keys        = @("--syncdeps", "-s");
            Name        = "Install missing dependencies with pacman";
            Description = "Install missing dependencies with pacman";
        },
        [FlagParameter]@{
            Keys        = @("--verifysource");
            Name        = "Download source files (if needed) and perform integrity checks";
            Description = "Download source files (if needed) and perform integrity checks";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Show version information and exit";
            Description = "Show version information and exit";
        }
    )
}
