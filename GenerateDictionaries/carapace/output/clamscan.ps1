# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "http://www.clamav.net/";
    Keys        = @("clamscan");
    Name        = "clamscan";
    Description = "scan files and directories for viruses";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--alert-broken");
            Name        = "Alert on broken executable files (PE & ELF)";
            Description = "Alert on broken executable files (PE & ELF)";
        },
        [FlagParameter]@{
            Keys        = @("--alert-broken-media");
            Name        = "Alert on broken graphics files (JPEG, TIFF, PNG, GIF)";
            Description = "Alert on broken graphics files (JPEG, TIFF, PNG, GIF)";
        },
        [FlagParameter]@{
            Keys        = @("--alert-encrypted");
            Name        = "Alert on encrypted archives and documents";
            Description = "Alert on encrypted archives and documents";
        },
        [FlagParameter]@{
            Keys        = @("--alert-encrypted-archive");
            Name        = "Alert on encrypted archives";
            Description = "Alert on encrypted archives";
        },
        [FlagParameter]@{
            Keys        = @("--alert-encrypted-doc");
            Name        = "Alert on encrypted documents";
            Description = "Alert on encrypted documents";
        },
        [FlagParameter]@{
            Keys        = @("--alert-exceeds-max");
            Name        = "Alert on files that exceed max file size, max scan size, or max recursion limit";
            Description = "Alert on files that exceed max file size, max scan size, or max recursion limit";
        },
        [FlagParameter]@{
            Keys        = @("--alert-macros");
            Name        = "Alert on OLE2 files containing VBA macros";
            Description = "Alert on OLE2 files containing VBA macros";
        },
        [FlagParameter]@{
            Keys        = @("--alert-partition-intersection");
            Name        = "Alert on raw DMG image files containing partition intersections";
            Description = "Alert on raw DMG image files containing partition intersections";
        },
        [FlagParameter]@{
            Keys        = @("--alert-phishing-cloak");
            Name        = "Alert on emails containing cloaked URLs";
            Description = "Alert on emails containing cloaked URLs";
        },
        [FlagParameter]@{
            Keys        = @("--alert-phishing-ssl");
            Name        = "Alert on emails containing SSL mismatches in URLs";
            Description = "Alert on emails containing SSL mismatches in URLs";
        },
        [FlagParameter]@{
            Keys        = @("--allmatch", "-z");
            Name        = "Continue scanning within file after finding a match";
            Description = "Continue scanning within file after finding a match";
        },
        [FlagParameter]@{
            Keys        = @("--archive-verbose", "-a");
            Name        = "Show filenames inside scanned archives";
            Description = "Show filenames inside scanned archives";
        },
        [FlagParameter]@{
            Keys        = @("--bell");
            Name        = "Sound bell on virus detection";
            Description = "Sound bell on virus detection";
        },
        [FlagParameter]@{
            Keys        = @("--bytecode");
            Name        = "Load bytecode from the database";
            Description = "Load bytecode from the database";
        },
        [ValueParameter]@{
            Keys        = @("--bytecode-timeout");
            Name        = "Set bytecode timeout (in milliseconds)";
            Description = "Set bytecode timeout (in milliseconds)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--bytecode-unsigned");
            Name        = "Load unsigned bytecode";
            Description = "Load unsigned bytecode";
        },
        [ValueParameter]@{
            Keys        = @("--copy");
            Name        = "Copy infected files into DIRECTORY";
            Description = "Copy infected files into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cross-fs");
            Name        = "Scan files and directories on other filesystems";
            Description = "Scan files and directories on other filesystems";
        },
        [ValueParameter]@{
            Keys        = @("--database", "-d");
            Name        = "Load virus database from FILE or load all supported db files from DIR";
            Description = "Load virus database from FILE or load all supported db files from DIR";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug");
            Name        = "Enable libclamav's debug messages";
            Description = "Enable libclamav's debug messages";
        },
        [FlagParameter]@{
            Keys        = @("--detect-pua");
            Name        = "Detect Possibly Unwanted Applications";
            Description = "Detect Possibly Unwanted Applications";
        },
        [FlagParameter]@{
            Keys        = @("--detect-structured");
            Name        = "Detect structured data (SSN, Credit Card)";
            Description = "Detect structured data (SSN, Credit Card)";
        },
        [FlagParameter]@{
            Keys        = @("--disable-cache");
            Name        = "Disable caching and cache checks for hash sums of scanned files.";
            Description = "Disable caching and cache checks for hash sums of scanned files.";
        },
        [FlagParameter]@{
            Keys        = @("--dumpcerts");
            Name        = "Dump authenticode certificate chain in PE files";
            Description = "Dump authenticode certificate chain in PE files";
        },
        [ValueParameter]@{
            Keys        = @("--exclude");
            Name        = "Don't scan file names matching REGEX";
            Description = "Don't scan file names matching REGEX";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-dir");
            Name        = "Don't scan directories matching REGEX";
            Description = "Don't scan directories matching REGEX";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exclude-pua");
            Name        = "Skip PUA sigs of category CAT";
            Description = "Skip PUA sigs of category CAT";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--file-list", "-f");
            Name        = "Scan files from FILE";
            Description = "Scan files from FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--follow-dir-symlinks");
            Name        = "Follow directory symlinks (0 = never, 1 = direct, 2 = always)";
            Description = "Follow directory symlinks (0 = never, 1 = direct, 2 = always)";
        },
        [FlagParameter]@{
            Keys        = @("--follow-file-symlinks");
            Name        = "Follow file symlinks (0 = never, 1 = direct, 2 = always)";
            Description = "Follow file symlinks (0 = never, 1 = direct, 2 = always)";
        },
        [FlagParameter]@{
            Keys        = @("--gen-json");
            Name        = "Generate JSON metadata for the scanned file(s). For testing & development use ONLY.";
            Description = "Generate JSON metadata for the scanned file(s). For testing & development use ONLY.";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show this help";
            Description = "Show this help";
        },
        [FlagParameter]@{
            Keys        = @("--heuristic-alerts");
            Name        = "Heuristic alerts";
            Description = "Heuristic alerts";
        },
        [FlagParameter]@{
            Keys        = @("--heuristic-scan-precedence");
            Name        = "Stop scanning as soon as a heuristic match is found";
            Description = "Stop scanning as soon as a heuristic match is found";
        },
        [ValueParameter]@{
            Keys        = @("--include");
            Name        = "Only scan file names matching REGEX";
            Description = "Only scan file names matching REGEX";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--include-dir");
            Name        = "Only scan directories matching REGEX";
            Description = "Only scan directories matching REGEX";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--include-pua");
            Name        = "Load PUA sigs of category CAT";
            Description = "Load PUA sigs of category CAT";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--infected", "-i");
            Name        = "Only print infected files";
            Description = "Only print infected files";
        },
        [FlagParameter]@{
            Keys        = @("--leave-temps");
            Name        = "Do not remove temporary files";
            Description = "Do not remove temporary files";
        },
        [ValueParameter]@{
            Keys        = @("--log", "-l");
            Name        = "Save scan report to FILE";
            Description = "Save scan report to FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-dir-recursion");
            Name        = "Maximum directory recursion level";
            Description = "Maximum directory recursion level";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-embeddedpe");
            Name        = "Maximum size file to check for embedded PE";
            Description = "Maximum size file to check for embedded PE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-files");
            Name        = "The maximum number of files to scan for each container file (**)";
            Description = "The maximum number of files to scan for each container file (**)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-filesize");
            Name        = "Files larger than this will be skipped and assumed clean";
            Description = "Files larger than this will be skipped and assumed clean";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-htmlnormalize");
            Name        = "Maximum size of HTML file to normalize";
            Description = "Maximum size of HTML file to normalize";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-htmlnotags");
            Name        = "Maximum size of normalized HTML file to scan";
            Description = "Maximum size of normalized HTML file to scan";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-iconspe");
            Name        = "Maximum number of icons in PE file to be scanned";
            Description = "Maximum number of icons in PE file to be scanned";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-partitions");
            Name        = "Maximum number of partitions in disk image to be scanned";
            Description = "Maximum number of partitions in disk image to be scanned";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-rechwp3");
            Name        = "Maximum recursive calls to HWP3 parsing function";
            Description = "Maximum recursive calls to HWP3 parsing function";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-recursion");
            Name        = "Maximum archive recursion level for container file (**)";
            Description = "Maximum archive recursion level for container file (**)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-scansize");
            Name        = "The maximum amount of data to scan for each container file (**)";
            Description = "The maximum amount of data to scan for each container file (**)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-scantime");
            Name        = "Scan time longer than this will be skipped and assumed clean (milliseconds)";
            Description = "Scan time longer than this will be skipped and assumed clean (milliseconds)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-scriptnormalize");
            Name        = "Maximum size of script file to normalize";
            Description = "Maximum size of script file to normalize";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-ziptypercg");
            Name        = "Maximum size zip to type reanalyze";
            Description = "Maximum size zip to type reanalyze";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--move");
            Name        = "Move infected files into DIRECTORY";
            Description = "Move infected files into DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-summary");
            Name        = "Disable summary at end of scanning";
            Description = "Disable summary at end of scanning";
        },
        [FlagParameter]@{
            Keys        = @("--nocerts");
            Name        = "Disable authenticode certificate chain verification in PE files";
            Description = "Disable authenticode certificate chain verification in PE files";
        },
        [FlagParameter]@{
            Keys        = @("--normalize");
            Name        = "Normalize html, script, and text files. Use normalize=no for yara compatibility";
            Description = "Normalize html, script, and text files. Use normalize=no for yara compatibility";
        },
        [FlagParameter]@{
            Keys        = @("--official-db-only");
            Name        = "Only load official signatures";
            Description = "Only load official signatures";
        },
        [ValueParameter]@{
            Keys        = @("--pcre-match-limit");
            Name        = "Maximum calls to the PCRE match function.";
            Description = "Maximum calls to the PCRE match function.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pcre-max-filesize");
            Name        = "Maximum size file to perform PCRE subsig matching.";
            Description = "Maximum size file to perform PCRE subsig matching.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pcre-recmatch-limit");
            Name        = "Maximum recursive calls to the PCRE match function.";
            Description = "Maximum recursive calls to the PCRE match function.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--phishing-scan-urls");
            Name        = "Enable URL signature-based phishing detection";
            Description = "Enable URL signature-based phishing detection";
        },
        [FlagParameter]@{
            Keys        = @("--phishing-sigs");
            Name        = "Enable email signature-based phishing detection";
            Description = "Enable email signature-based phishing detection";
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "Only output error messages";
            Description = "Only output error messages";
        },
        [FlagParameter]@{
            Keys        = @("--recursive", "-r");
            Name        = "Scan subdirectories recursively";
            Description = "Scan subdirectories recursively";
        },
        [FlagParameter]@{
            Keys        = @("--remove");
            Name        = "Remove infected files. Be careful!";
            Description = "Remove infected files. Be careful!";
        },
        [FlagParameter]@{
            Keys        = @("--scan-archive");
            Name        = "Scan archive files (supported by libclamav)";
            Description = "Scan archive files (supported by libclamav)";
        },
        [FlagParameter]@{
            Keys        = @("--scan-elf");
            Name        = "Scan ELF files";
            Description = "Scan ELF files";
        },
        [FlagParameter]@{
            Keys        = @("--scan-html");
            Name        = "Scan HTML files";
            Description = "Scan HTML files";
        },
        [FlagParameter]@{
            Keys        = @("--scan-hwp3");
            Name        = "Scan HWP3 files";
            Description = "Scan HWP3 files";
        },
        [FlagParameter]@{
            Keys        = @("--scan-mail");
            Name        = "Scan mail files";
            Description = "Scan mail files";
        },
        [FlagParameter]@{
            Keys        = @("--scan-ole2");
            Name        = "Scan OLE2 containers";
            Description = "Scan OLE2 containers";
        },
        [FlagParameter]@{
            Keys        = @("--scan-pdf");
            Name        = "Scan PDF files";
            Description = "Scan PDF files";
        },
        [FlagParameter]@{
            Keys        = @("--scan-pe");
            Name        = "Scan PE files";
            Description = "Scan PE files";
        },
        [FlagParameter]@{
            Keys        = @("--scan-swf");
            Name        = "Scan SWF files";
            Description = "Scan SWF files";
        },
        [FlagParameter]@{
            Keys        = @("--scan-xmldocs");
            Name        = "Scan xml-based document files";
            Description = "Scan xml-based document files";
        },
        [FlagParameter]@{
            Keys        = @("--statistics");
            Name        = "Collect and print execution statistics";
            Description = "Collect and print execution statistics";
        },
        [FlagParameter]@{
            Keys        = @("--stdout");
            Name        = "Write to stdout instead of stderr. Does not affect 'debug' messages.";
            Description = "Write to stdout instead of stderr. Does not affect 'debug' messages.";
        },
        [ValueParameter]@{
            Keys        = @("--structured-cc-count");
            Name        = "Min CC count to generate a detect";
            Description = "Min CC count to generate a detect";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--structured-cc-mode");
            Name        = "CC mode (0=credit debit and private label, 1=credit cards only";
            Description = "CC mode (0=credit debit and private label, 1=credit cards only";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--structured-ssn-count");
            Name        = "Min SSN count to generate a detect";
            Description = "Min SSN count to generate a detect";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--structured-ssn-format");
            Name        = "SSN format (0=normal,1=stripped,2=both)";
            Description = "SSN format (0=normal,1=stripped,2=both)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--suppress-ok-results", "-o");
            Name        = "Skip printing OK files";
            Description = "Skip printing OK files";
        },
        [ValueParameter]@{
            Keys        = @("--tempdir");
            Name        = "Create temporary files in DIRECTORY";
            Description = "Create temporary files in DIRECTORY";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Be verbose";
            Description = "Be verbose";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print version number";
            Description = "Print version number";
        }
    )
}
