# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://www.gimp.org/";
    Keys        = @("gimp");
    Name        = "gimp";
    Description = "an image manipulation and paint program";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--as-new", "-a");
            Name        = "Open images as new";
            Description = "Open images as new";
        },
        [ValueParameter]@{
            Keys        = @("--batch", "-b");
            Name        = "Batch command to run (can be used multiple times)";
            Description = "Batch command to run (can be used multiple times)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--batch-interpreter");
            Name        = "The procedure to process batch commands with";
            Description = "The procedure to process batch commands with";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--class");
            Name        = "Program class as used by the window manager";
            Description = "Program class as used by the window manager";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--console-messages", "-c");
            Name        = "Send messages to console instead of using a dialog";
            Description = "Send messages to console instead of using a dialog";
        },
        [FlagParameter]@{
            Keys        = @("--debug-handlers");
            Name        = "Enable non-fatal debugging signal handlers";
            Description = "Enable non-fatal debugging signal handlers";
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dump-gimprc");
            Name        = "Output a gimprc file with default settings";
            Description = "Output a gimprc file with default settings";
        },
        [FlagParameter]@{
            Keys        = @("--g-fatal-warnings");
            Name        = "Make all warnings fatal";
            Description = "Make all warnings fatal";
        },
        [ValueParameter]@{
            Keys        = @("--gegl-cache-size");
            Name        = "How much memory to (approximately) use for caching imagery";
            Description = "How much memory to (approximately) use for caching imagery";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--gegl-disable-opencl");
            Name        = "Disable OpenCL";
            Description = "Disable OpenCL";
        },
        [ValueParameter]@{
            Keys        = @("--gegl-quality");
            Name        = "The quality of rendering, a value between 0.0 (fast) and 1.0 (reference)";
            Description = "The quality of rendering, a value between 0.0 (fast) and 1.0 (reference)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gegl-swap");
            Name        = "Where GEGL stores its swap";
            Description = "Where GEGL stores its swap";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gegl-swap-compression");
            Name        = "Compression algorithm used for data stored in the swap";
            Description = "Compression algorithm used for data stored in the swap";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gegl-threads");
            Name        = "The number of concurrent processing threads to use";
            Description = "The number of concurrent processing threads to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gegl-tile-size");
            Name        = "Default size of tiles in GeglBuffers";
            Description = "Default size of tiles in GeglBuffers";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gimprc", "-g");
            Name        = "Use an alternate user gimprc file";
            Description = "Use an alternate user gimprc file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--gtk-g-fatal-warnings");
            Name        = "Make all warnings fatal";
            Description = "Make all warnings fatal";
        },
        [ValueParameter]@{
            Keys        = @("--gtk-module");
            Name        = "Load additional GTK+ modules";
            Description = "Load additional GTK+ modules";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help options";
            Description = "Show help options";
        },
        [FlagParameter]@{
            Keys        = @("--help-all");
            Name        = "Show all help options";
            Description = "Show all help options";
        },
        [FlagParameter]@{
            Keys        = @("--help-gegl");
            Name        = "Show GEGL Options";
            Description = "Show GEGL Options";
        },
        [FlagParameter]@{
            Keys        = @("--help-gtk");
            Name        = "Show GTK+ Options";
            Description = "Show GTK+ Options";
        },
        [FlagParameter]@{
            Keys        = @("--license");
            Name        = "Show license information and exit";
            Description = "Show license information and exit";
        },
        [ValueParameter]@{
            Keys        = @("--name");
            Name        = "Program name as used by the window manager";
            Description = "Program name as used by the window manager";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--new-instance", "-n");
            Name        = "Start a new GIMP instance";
            Description = "Start a new GIMP instance";
        },
        [FlagParameter]@{
            Keys        = @("--no-cpu-accel");
            Name        = "Do not use special CPU acceleration functions";
            Description = "Do not use special CPU acceleration functions";
        },
        [FlagParameter]@{
            Keys        = @("--no-data", "-d");
            Name        = "Do not load brushes, gradients, patterns, ...";
            Description = "Do not load brushes, gradients, patterns, ...";
        },
        [FlagParameter]@{
            Keys        = @("--no-fonts", "-f");
            Name        = "Do not load any fonts";
            Description = "Do not load any fonts";
        },
        [FlagParameter]@{
            Keys        = @("--no-interface", "-i");
            Name        = "Run without a user interface";
            Description = "Run without a user interface";
        },
        [FlagParameter]@{
            Keys        = @("--no-shm");
            Name        = "Do not use shared memory between GIMP and plug-ins";
            Description = "Do not use shared memory between GIMP and plug-ins";
        },
        [FlagParameter]@{
            Keys        = @("--no-splash", "-s");
            Name        = "Do not show a splash screen";
            Description = "Do not show a splash screen";
        },
        [ValueParameter]@{
            Keys        = @("--pdb-compat-mode");
            Name        = "PDB compatibility mode (off|on|warn)";
            Description = "PDB compatibility mode (off|on|warn)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--screen");
            Name        = "X screen to use";
            Description = "X screen to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--session");
            Name        = "Use an alternate sessionrc file";
            Description = "Use an alternate sessionrc file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--show-playground");
            Name        = "Show a preferences page with experimental features";
            Description = "Show a preferences page with experimental features";
        },
        [ValueParameter]@{
            Keys        = @("--stack-trace-mode");
            Name        = "Debug in case of a crash (never|query|always)";
            Description = "Debug in case of a crash (never|query|always)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--sync");
            Name        = "Make X calls synchronous";
            Description = "Make X calls synchronous";
        },
        [ValueParameter]@{
            Keys        = @("--system-gimprc");
            Name        = "Use an alternate system gimprc file";
            Description = "Use an alternate system gimprc file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Be more verbose";
            Description = "Be more verbose";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Show version information and exit";
            Description = "Show version information and exit";
        }
    )
}
