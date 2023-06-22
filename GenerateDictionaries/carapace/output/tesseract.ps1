# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/tesseract-ocr/tessdoc";
    Keys        = @("tesseract");
    Name        = "tesseract";
    Description = "command-line OCR engine";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-c");
            Name        = "Set value for parameter CONFIGVAR to VALUE.";
            Description = "Set value for parameter CONFIGVAR to VALUE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dpi");
            Name        = "Specify the resolution N in DPI for the input image(s).";
            Description = "Specify the resolution N in DPI for the input image(s).";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show help message.";
            Description = "Show help message.";
        },
        [FlagParameter]@{
            Keys        = @("--help-extra");
            Name        = "Show extra help for advanced users.";
            Description = "Show extra help for advanced users.";
        },
        [FlagParameter]@{
            Keys        = @("--help-oem");
            Name        = "Show OCR Engine modes.";
            Description = "Show OCR Engine modes.";
        },
        [FlagParameter]@{
            Keys        = @("--help-psm");
            Name        = "Show page segmentation modes.";
            Description = "Show page segmentation modes.";
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "The language or script to use.";
            Description = "The language or script to use.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-langs");
            Name        = "List available languages for tesseract engine.";
            Description = "List available languages for tesseract engine.";
        },
        [ValueParameter]@{
            Keys        = @("--oem");
            Name        = "Specify OCR Engine mode.";
            Description = "Specify OCR Engine mode.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-parameters");
            Name        = "Print tesseract parameters.";
            Description = "Print tesseract parameters.";
        },
        [ValueParameter]@{
            Keys        = @("--psm");
            Name        = "Set Tesseract to only run a subset of layout analysis and assume a certain form of image.";
            Description = "Set Tesseract to only run a subset of layout analysis and assume a certain form of image.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tessdata-dir");
            Name        = "Specify the location of tessdata path.";
            Description = "Specify the location of tessdata path.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user-patterns");
            Name        = "Specify the location of user patterns file.";
            Description = "Specify the location of user patterns file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--user-words");
            Name        = "Specify the location of user words file.";
            Description = "Specify the location of user words file.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Returns the current version of the tesseract(1) executable.";
            Description = "Returns the current version of the tesseract(1) executable.";
        }
    )
}
