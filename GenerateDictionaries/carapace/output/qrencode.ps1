# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/qrencode";
    Keys        = @("qrencode");
    Name        = "qrencode";
    Description = "Encode input data in a QR Code and save as a PNG or EPS image";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--8bit", "-8");
            Name        = "encode entire data in 8-bit mode. -k, -c and -i will be ignored.";
            Description = "encode entire data in 8-bit mode. -k, -c and -i will be ignored.";
        },
        [ValueParameter]@{
            Keys        = @("--background");
            Name        = "specify foreground/background color in hexadecimal notation.";
            Description = "specify foreground/background color in hexadecimal notation.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--casesensitive", "-c");
            Name        = "encode lower-case alphabet characters in 8-bit mode.";
            Description = "encode lower-case alphabet characters in 8-bit mode.";
        },
        [ValueParameter]@{
            Keys        = @("--dpi", "-d");
            Name        = "specify the DPI of the generated PNG.";
            Description = "specify the DPI of the generated PNG.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--foreground");
            Name        = "specify foreground/background color in hexadecimal notation.";
            Description = "specify foreground/background color in hexadecimal notation.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "display the help message.";
            Description = "display the help message.";
        },
        [FlagParameter]@{
            Keys        = @("--ignorecase", "-i");
            Name        = "ignore case distinctions and use only upper-case characters.";
            Description = "ignore case distinctions and use only upper-case characters.";
        },
        [FlagParameter]@{
            Keys        = @("--inline");
            Name        = "only useful for SVG output, generates an SVG without the XML tag.";
            Description = "only useful for SVG output, generates an SVG without the XML tag.";
        },
        [FlagParameter]@{
            Keys        = @("--kanji", "-k");
            Name        = "assume that the input text contains kanji (shift-jis).";
            Description = "assume that the input text contains kanji (shift-jis).";
        },
        [ValueParameter]@{
            Keys        = @("--level", "-l");
            Name        = "specify error correction level from L (lowest) to H (highest).";
            Description = "specify error correction level from L (lowest) to H (highest).";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--margin", "-m");
            Name        = "specify the width of the margins.";
            Description = "specify the width of the margins.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--micro", "-M");
            Name        = "encode in a Micro QR Code.";
            Description = "encode in a Micro QR Code.";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "write image to FILENAME.";
            Description = "write image to FILENAME.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--read-from", "-r");
            Name        = "read input data from FILENAME.";
            Description = "read input data from FILENAME.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rle");
            Name        = "enable run-length encoding for SVG.";
            Description = "enable run-length encoding for SVG.";
        },
        [ValueParameter]@{
            Keys        = @("--size", "-s");
            Name        = "specify module size in dots (pixels).";
            Description = "specify module size in dots (pixels).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--strict-version");
            Name        = "disable automatic version number adjustment.";
            Description = "disable automatic version number adjustment.";
        },
        [FlagParameter]@{
            Keys        = @("--structured", "-S");
            Name        = "make structured symbols.";
            Description = "make structured symbols.";
        },
        [FlagParameter]@{
            Keys        = @("--svg-path");
            Name        = "use single path to draw modules for SVG.";
            Description = "use single path to draw modules for SVG.";
        },
        [ValueParameter]@{
            Keys        = @("--symversion", "-v");
            Name        = "specify the minimum version of the symbol.";
            Description = "specify the minimum version of the symbol.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--type", "-t");
            Name        = "specify the type of the generated image.";
            Description = "specify the type of the generated image.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "display verbose information to stderr.";
            Description = "display verbose information to stderr.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "display the version number and copyrights of the qrencode.";
            Description = "display the version number and copyrights of the qrencode.";
        }
    )
}
