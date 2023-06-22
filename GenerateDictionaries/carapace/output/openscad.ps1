# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://openscad.org/";
    Keys        = @("openscad");
    Name        = "openscad";
    Description = "script file based graphical CAD environment";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--D", "-D");
            Name        = "pre-define variables";
            Description = "pre-define variables";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--P", "-P");
            Name        = "customizer parameter set";
            Description = "customizer parameter set";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--autocenter");
            Name        = "adjust camera to look at object's center";
            Description = "adjust camera to look at object's center";
        },
        [ValueParameter]@{
            Keys        = @("--camera");
            Name        = "camera parameters when exporting png: ";
            Description = "camera parameters when exporting png: ";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--check-parameter-ranges");
            Name        = "configure the parameter range check for builtin modules";
            Description = "configure the parameter range check for builtin modules";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--check-parameters");
            Name        = "configure the parameter check for user modules and functions";
            Description = "configure the parameter check for user modules and functions";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--colorscheme");
            Name        = "colorscheme";
            Description = "colorscheme";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--csglimit");
            Name        = "stop rendering at n CSG elements";
            Description = "stop rendering at n CSG elements";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--d", "-d");
            Name        = "generate a dependency file for make";
            Description = "generate a dependency file for make";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--debug");
            Name        = "special debug info";
            Description = "special debug info";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--hardwarnings");
            Name        = "Stop on the first warning";
            Description = "Stop on the first warning";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "print this help message and exit";
            Description = "print this help message and exit";
        },
        [ValueParameter]@{
            Keys        = @("--imgsize");
            Name        = "width,height of exported png";
            Description = "width,height of exported png";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--info");
            Name        = "print information about the build process";
            Description = "print information about the build process";
        },
        [ValueParameter]@{
            Keys        = @("--m", "-m");
            Name        = "runs make_cmd file if file is missing";
            Description = "runs make_cmd file if file is missing";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--o", "-o");
            Name        = "output specified file instead of running the GUI";
            Description = "output specified file instead of running the GUI";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--p", "-p");
            Name        = "customizer parameter file";
            Description = "customizer parameter file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--preview");
            Name        = "preview ";
            Description = "preview ";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--projection");
            Name        = "=(o)rtho or (p)erspective when exporting png";
            Description = "=(o)rtho or (p)erspective when exporting png";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "quiet mode";
            Description = "quiet mode";
        },
        [ValueParameter]@{
            Keys        = @("--render");
            Name        = "for full geometry evaluation when exporting png";
            Description = "for full geometry evaluation when exporting png";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "print the version";
            Description = "print the version";
        },
        [ValueParameter]@{
            Keys        = @("--view");
            Name        = "view option";
            Description = "view option";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--viewall");
            Name        = "adjust camera to fit object";
            Description = "adjust camera to fit object";
        }
    )
}
