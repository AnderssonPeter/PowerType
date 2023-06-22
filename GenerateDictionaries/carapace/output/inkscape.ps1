# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://inkscape.org/";
    Keys        = @("inkscape");
    Name        = "inkscape";
    Description = "an SVG (Scalable Vector Graphics) editing program";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--action-list");
            Name        = "List all available actions";
            Description = "List all available actions";
        },
        [ValueParameter]@{
            Keys        = @("--actions");
            Name        = "List of actions (with optional arguments) to execute";
            Description = "List of actions (with optional arguments) to execute";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--batch-process");
            Name        = "Close GUI after executing all actions/verbs";
            Description = "Close GUI after executing all actions/verbs";
        },
        [ValueParameter]@{
            Keys        = @("--class");
            Name        = "Program class as used by the window manager";
            Description = "Program class as used by the window manager";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--convert-dpi-method");
            Name        = "Method used to convert pre-0.92 document dpi";
            Description = "Method used to convert pre-0.92 document dpi";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dbus-listen");
            Name        = "Enter a listening loop for D-Bus messages in console mode";
            Description = "Enter a listening loop for D-Bus messages in console mode";
        },
        [ValueParameter]@{
            Keys        = @("--dbus-name");
            Name        = "Specify the D-Bus name; default is 'org.inkscape'";
            Description = "Specify the D-Bus name; default is 'org.inkscape'";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--display");
            Name        = "X display to use";
            Description = "X display to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--export-area", "-a");
            Name        = "Area to export in SVG user units";
            Description = "Area to export in SVG user units";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--export-area-drawing", "-D");
            Name        = "Area to export is whole drawing (ignoring page size)";
            Description = "Area to export is whole drawing (ignoring page size)";
        },
        [FlagParameter]@{
            Keys        = @("--export-area-page", "-C");
            Name        = "Area to export is page";
            Description = "Area to export is page";
        },
        [FlagParameter]@{
            Keys        = @("--export-area-snap");
            Name        = "Snap the bitmap export area outwards to the nearest integer values";
            Description = "Snap the bitmap export area outwards to the nearest integer values";
        },
        [ValueParameter]@{
            Keys        = @("--export-background", "-b");
            Name        = "Background color for exported bitmaps (any SVG color string)";
            Description = "Background color for exported bitmaps (any SVG color string)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--export-background-opacity", "-y");
            Name        = "Background opacity for exported bitmaps (0.0 to 1.0, or 1 to 255)";
            Description = "Background opacity for exported bitmaps (0.0 to 1.0, or 1 to 255)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--export-dpi", "-d");
            Name        = "Resolution for bitmaps and rasterized filters; default is 96";
            Description = "Resolution for bitmaps and rasterized filters; default is 96";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--export-filename", "-o");
            Name        = "Output file name (file type is guessed from extension)";
            Description = "Output file name (file type is guessed from extension)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--export-height", "-h");
            Name        = "Bitmap height in pixels (overrides --export-dpi)";
            Description = "Bitmap height in pixels (overrides --export-dpi)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--export-id", "-i");
            Name        = "ID(s) of object(s) to export";
            Description = "ID(s) of object(s) to export";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--export-id-only", "-j");
            Name        = "Hide all objects except object with ID selected by export-id";
            Description = "Hide all objects except object with ID selected by export-id";
        },
        [FlagParameter]@{
            Keys        = @("--export-ignore-filters");
            Name        = "Render objects without filters instead of rasterizing (PS/EPS/PDF)";
            Description = "Render objects without filters instead of rasterizing (PS/EPS/PDF)";
        },
        [FlagParameter]@{
            Keys        = @("--export-latex");
            Name        = "Export text separately to LaTeX file (PS/EPS/PDF)";
            Description = "Export text separately to LaTeX file (PS/EPS/PDF)";
        },
        [ValueParameter]@{
            Keys        = @("--export-margin");
            Name        = "Margin around export area: units of page size for SVG, mm for PS/EPS/PDF";
            Description = "Margin around export area: units of page size for SVG, mm for PS/EPS/PDF";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--export-overwrite");
            Name        = "Overwrite input file";
            Description = "Overwrite input file";
        },
        [ValueParameter]@{
            Keys        = @("--export-pdf-version");
            Name        = "PDF version (1.4 or 1.5)";
            Description = "PDF version (1.4 or 1.5)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--export-plain-svg", "-l");
            Name        = "Remove Inkscape-specific SVG attributes/properties";
            Description = "Remove Inkscape-specific SVG attributes/properties";
        },
        [ValueParameter]@{
            Keys        = @("--export-ps-level");
            Name        = "Postscript level (2 or 3); default is 3";
            Description = "Postscript level (2 or 3); default is 3";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--export-text-to-path", "-T");
            Name        = "Convert text to paths (PS/EPS/PDF/SVG)";
            Description = "Convert text to paths (PS/EPS/PDF/SVG)";
        },
        [ValueParameter]@{
            Keys        = @("--export-type");
            Name        = "File type(s) to export";
            Description = "File type(s) to export";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--export-use-hints", "-t");
            Name        = "Use stored filename and DPI hints when exporting object selected by --export-id";
            Description = "Use stored filename and DPI hints when exporting object selected by --export-id";
        },
        [ValueParameter]@{
            Keys        = @("--export-width", "-w");
            Name        = "Bitmap width in pixels (overrides --export-dpi)";
            Description = "Bitmap width in pixels (overrides --export-dpi)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--g-fatal-warnings");
            Name        = "Make all warnings fatal";
            Description = "Make all warnings fatal";
        },
        [FlagParameter]@{
            Keys        = @("--gapplication-service");
            Name        = "Enter GApplication service mode (use from D-Bus service files)";
            Description = "Enter GApplication service mode (use from D-Bus service files)";
        },
        [ValueParameter]@{
            Keys        = @("--gdk-debug");
            Name        = "GDK debugging flags to set";
            Description = "GDK debugging flags to set";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gdk-no-debug");
            Name        = "GDK debugging flags to unset";
            Description = "GDK debugging flags to unset";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gtk-debug");
            Name        = "GTK+ debugging flags to set";
            Description = "GTK+ debugging flags to set";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gtk-module");
            Name        = "Load additional GTK+ modules";
            Description = "Load additional GTK+ modules";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--gtk-no-debug");
            Name        = "GTK+ debugging flags to unset";
            Description = "GTK+ debugging flags to unset";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-?");
            Name        = "Show help options";
            Description = "Show help options";
        },
        [FlagParameter]@{
            Keys        = @("--help-all");
            Name        = "Show all help options";
            Description = "Show all help options";
        },
        [FlagParameter]@{
            Keys        = @("--help-gapplication");
            Name        = "Show GApplication options";
            Description = "Show GApplication options";
        },
        [FlagParameter]@{
            Keys        = @("--help-gtk");
            Name        = "Show GTK+ Options";
            Description = "Show GTK+ Options";
        },
        [ValueParameter]@{
            Keys        = @("--name");
            Name        = "Program name as used by the window manager";
            Description = "Program name as used by the window manager";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-convert-text-baseline-spacing");
            Name        = "Do not fix pre-0.92 document's text baseline spacing on opening";
            Description = "Do not fix pre-0.92 document's text baseline spacing on opening";
        },
        [ValueParameter]@{
            Keys        = @("--pdf-page");
            Name        = "PDF page number to import";
            Description = "PDF page number to import";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--pdf-poppler");
            Name        = "Use poppler when importing via commandline";
            Description = "Use poppler when importing via commandline";
        },
        [FlagParameter]@{
            Keys        = @("--pipe", "-p");
            Name        = "Read input file from standard input (stdin)";
            Description = "Read input file from standard input (stdin)";
        },
        [FlagParameter]@{
            Keys        = @("--query-all", "-S");
            Name        = "Print bounding boxes of all objects";
            Description = "Print bounding boxes of all objects";
        },
        [FlagParameter]@{
            Keys        = @("--query-height", "-H");
            Name        = "Height of drawing or object (if specified by --query-id)";
            Description = "Height of drawing or object (if specified by --query-id)";
        },
        [ValueParameter]@{
            Keys        = @("--query-id", "-I");
            Name        = "ID(s) of object(s) to be queried";
            Description = "ID(s) of object(s) to be queried";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--query-width", "-W");
            Name        = "Width of drawing or object (if specified by --query-id)";
            Description = "Width of drawing or object (if specified by --query-id)";
        },
        [FlagParameter]@{
            Keys        = @("--query-x", "-X");
            Name        = "X coordinate of drawing or object (if specified by --query-id)";
            Description = "X coordinate of drawing or object (if specified by --query-id)";
        },
        [FlagParameter]@{
            Keys        = @("--query-y", "-Y");
            Name        = "Y coordinate of drawing or object (if specified by --query-id)";
            Description = "Y coordinate of drawing or object (if specified by --query-id)";
        },
        [ValueParameter]@{
            Keys        = @("--select");
            Name        = "Select objects: comma-separated list of IDs";
            Description = "Select objects: comma-separated list of IDs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--shell");
            Name        = "Start Inkscape in interactive shell mode";
            Description = "Start Inkscape in interactive shell mode";
        },
        [FlagParameter]@{
            Keys        = @("--system-data-directory");
            Name        = "Print system data directory";
            Description = "Print system data directory";
        },
        [FlagParameter]@{
            Keys        = @("--user-data-directory");
            Name        = "Print user data directory";
            Description = "Print user data directory";
        },
        [FlagParameter]@{
            Keys        = @("--vacuum-defs");
            Name        = "Remove unused definitions from the <defs> section(s) of document";
            Description = "Remove unused definitions from the <defs> section(s) of document";
        },
        [ValueParameter]@{
            Keys        = @("--verb");
            Name        = "List of verbs to execute";
            Description = "List of verbs to execute";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verb-list");
            Name        = "List all available verbs";
            Description = "List all available verbs";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print Inkscape version";
            Description = "Print Inkscape version";
        },
        [FlagParameter]@{
            Keys        = @("--with-gui", "-g");
            Name        = "With graphical user interface (required by some actions/verbs)";
            Description = "With graphical user interface (required by some actions/verbs)";
        }
    )
}
