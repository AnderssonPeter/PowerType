# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://pandoc.org/";
    Keys        = @("pandoc");
    Name        = "pandoc";
    Description = "general markup converter";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--abbreviations");
            Name        = "Specifies a custom abbreviations file";
            Description = "Specifies a custom abbreviations file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ascii");
            Name        = "Use only ASCII characters in output";
            Description = "Use only ASCII characters in output";
        },
        [FlagParameter]@{
            Keys        = @("--bash-completion");
            Name        = "Generate a bash completion script";
            Description = "Generate a bash completion script";
        },
        [FlagParameter]@{
            Keys        = @("--biblatex");
            Name        = "Use biblatex for citations in LaTeX output";
            Description = "Use biblatex for citations in LaTeX output";
        },
        [ValueParameter]@{
            Keys        = @("--bibliography");
            Name        = "Set the bibliography field in the document’s metadata";
            Description = "Set the bibliography field in the document’s metadata";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--citation-abbreviations");
            Name        = "Set the citation-abbreviations field in the document’s metadata";
            Description = "Set the citation-abbreviations field in the document’s metadata";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--citeproc");
            Name        = "Process the citations in the file";
            Description = "Process the citations in the file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--columns");
            Name        = "Specify length of lines in characters";
            Description = "Specify length of lines in characters";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--csl");
            Name        = "Set the csl field in the document’s metadat";
            Description = "Set the csl field in the document’s metadat";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--data-dir");
            Name        = "Specify the user data directory";
            Description = "Specify the user data directory";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-image-extension");
            Name        = "Specify a default extension to use when image paths/URLs have no extension";
            Description = "Specify a default extension to use when image paths/URLs have no extension";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--defaults", "-d");
            Name        = "Specify a set of default option settings";
            Description = "Specify a set of default option settings";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dpi");
            Name        = "Specify the default dpi value for conversion";
            Description = "Specify the default dpi value for conversion";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dump-args");
            Name        = "Print information about command-line arguments to stdout";
            Description = "Print information about command-line arguments to stdout";
        },
        [ValueParameter]@{
            Keys        = @("--email-obfuscation");
            Name        = "Specify a method for obfuscating mailto";
            Description = "Specify a method for obfuscating mailto";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--eol");
            Name        = "Manually specify line endings";
            Description = "Manually specify line endings";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--epub-chapter-level");
            Name        = "Specify the heading level at which to split the EPUB into separate files";
            Description = "Specify the heading level at which to split the EPUB into separate files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--epub-cover-image");
            Name        = "Use the specified image as the EPUB cover";
            Description = "Use the specified image as the EPUB cover";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--epub-embed-font");
            Name        = "Embed the specified font in the EPUB";
            Description = "Embed the specified font in the EPUB";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--epub-metadata");
            Name        = "Look in the specified XML file for metadata for the EPUB";
            Description = "Look in the specified XML file for metadata for the EPUB";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--epub-subdirectory");
            Name        = "Specify the subdirectory that is to hold the EPUB-specific  contents";
            Description = "Specify the subdirectory that is to hold the EPUB-specific  contents";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extract-media");
            Name        = "Extract images and other media contained in or linked from the source document";
            Description = "Extract images and other media contained in or linked from the source document";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--fail-if-warnings");
            Name        = "Exit with error status if there are any warnings";
            Description = "Exit with error status if there are any warnings";
        },
        [FlagParameter]@{
            Keys        = @("--file-scope");
            Name        = "Parse each file individually before combining for multifile documents";
            Description = "Parse each file individually before combining for multifile documents";
        },
        [ValueParameter]@{
            Keys        = @("--filter", "-F");
            Name        = "Specify  an  executable  to  be used as a filter transforming the pandoc AST";
            Description = "Specify  an  executable  to  be used as a filter transforming the pandoc AST";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--from", "-f");
            Name        = "Specify input format";
            Description = "Specify input format";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--gladtex");
            Name        = "Enclose TeX math in <eq> tags in HTML output";
            Description = "Enclose TeX math in <eq> tags in HTML output";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Show usage message";
            Description = "Show usage message";
        },
        [ValueParameter]@{
            Keys        = @("--highlight-style");
            Name        = "Specifies the coloring style to be used in highlighted source code";
            Description = "Specifies the coloring style to be used in highlighted source code";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--html-q-tags");
            Name        = "Use <q> tags for quotes in HTML";
            Description = "Use <q> tags for quotes in HTML";
        },
        [ValueParameter]@{
            Keys        = @("--id-prefix");
            Name        = "Specify a prefix to be added to all identifiers and internal links";
            Description = "Specify a prefix to be added to all identifiers and internal links";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ignore-args");
            Name        = "Ignore command-line arguments";
            Description = "Ignore command-line arguments";
        },
        [ValueParameter]@{
            Keys        = @("--include-after-body", "-A");
            Name        = "Include contents of FILE after body";
            Description = "Include contents of FILE after body";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--include-before-body", "-B");
            Name        = "Include contents of FILE before body";
            Description = "Include contents of FILE before body";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--include-in-header", "-H");
            Name        = "Include contents of FILE in header";
            Description = "Include contents of FILE in header";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--incremental");
            Name        = "Make list items in slide shows display incrementally";
            Description = "Make list items in slide shows display incrementally";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--indented-code-classes");
            Name        = "Specify classes to use for indented code blocks";
            Description = "Specify classes to use for indented code blocks";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ipynb-output");
            Name        = "Determines how ipynb output cells are treated";
            Description = "Determines how ipynb output cells are treated";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--katex");
            Name        = "Use  KaTeX to display embedded TeX math in HTML output";
            Description = "Use  KaTeX to display embedded TeX math in HTML output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--list-extensions");
            Name        = "List  supported  extensions for FORMAT";
            Description = "List  supported  extensions for FORMAT";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--list-highlight-languages");
            Name        = "List supported languages for syntax highlighting";
            Description = "List supported languages for syntax highlighting";
        },
        [FlagParameter]@{
            Keys        = @("--list-highlight-styles");
            Name        = "List supported styles for syntax highlighting";
            Description = "List supported styles for syntax highlighting";
        },
        [FlagParameter]@{
            Keys        = @("--list-input-formats");
            Name        = "List supported input formats";
            Description = "List supported input formats";
        },
        [FlagParameter]@{
            Keys        = @("--list-output-formats");
            Name        = "List supported output formats";
            Description = "List supported output formats";
        },
        [FlagParameter]@{
            Keys        = @("--listings");
            Name        = "Use the listings package for LaTeX code blocks";
            Description = "Use the listings package for LaTeX code blocks";
        },
        [ValueParameter]@{
            Keys        = @("--log");
            Name        = "Write log messages in machine-readable JSON format to FILE";
            Description = "Write log messages in machine-readable JSON format to FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--lua-filter", "-L");
            Name        = "Transform the document in a similar fashion as JSON filters";
            Description = "Transform the document in a similar fashion as JSON filters";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--markdown-headings");
            Name        = "Specify heading style";
            Description = "Specify heading style";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mathjax");
            Name        = "Use  MathJax to display embedded TeX math in HTML output";
            Description = "Use  MathJax to display embedded TeX math in HTML output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--mathml");
            Name        = "Convert TeX math to MathML";
            Description = "Convert TeX math to MathML";
        },
        [ValueParameter]@{
            Keys        = @("--metadata-file");
            Name        = "Read metadata from the supplied YAML (or JSON) file";
            Description = "Read metadata from the supplied YAML (or JSON) file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--natbib");
            Name        = "Use natbib for citations in LaTeX output";
            Description = "Use natbib for citations in LaTeX output";
        },
        [FlagParameter]@{
            Keys        = @("--no-check-certificate");
            Name        = "Disable the certificate verification to allow access to unsecure HTTP resources";
            Description = "Disable the certificate verification to allow access to unsecure HTTP resources";
        },
        [FlagParameter]@{
            Keys        = @("--no-highlight");
            Name        = "Disables syntax highlighting for code blocks and inlines";
            Description = "Disables syntax highlighting for code blocks and inlines";
        },
        [ValueParameter]@{
            Keys        = @("--number-offset");
            Name        = "Offset for section headings in HTML output";
            Description = "Offset for section headings in HTML output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--number-sections");
            Name        = "Number section headings";
            Description = "Number section headings";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "Write output to FILE instead of stdout";
            Description = "Write output to FILE instead of stdout";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pdf-engine");
            Name        = "Use the specified engine when producing PDF output";
            Description = "Use the specified engine when producing PDF output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pdf-engine-opt");
            Name        = "Use the given string as a command-line argument to the pdf-engine";
            Description = "Use the given string as a command-line argument to the pdf-engine";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--preserve-tabs", "-p");
            Name        = "Preserve  tabs  instead  of  converting them to spaces";
            Description = "Preserve  tabs  instead  of  converting them to spaces";
        },
        [ValueParameter]@{
            Keys        = @("--print-default-data-file");
            Name        = "Print a system default data file";
            Description = "Print a system default data file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--print-default-template", "-D");
            Name        = "Print the system default template for an output FORMAT";
            Description = "Print the system default template for an output FORMAT";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--print-highlight-style");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--quiet");
            Name        = "Suppress warning messages.";
            Description = "Suppress warning messages.";
        },
        [ValueParameter]@{
            Keys        = @("--read", "-r");
            Name        = "Specify input format";
            Description = "Specify input format";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--reference-doc");
            Name        = "Use the specified file as a style reference";
            Description = "Use the specified file as a style reference";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--reference-links");
            Name        = "Use reference-style links";
            Description = "Use reference-style links";
        },
        [ValueParameter]@{
            Keys        = @("--reference-location");
            Name        = "Specify whether footnotes are placed";
            Description = "Specify whether footnotes are placed";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--request-header");
            Name        = "Set the request header NAME to the value VAL when making HTTP requests";
            Description = "Set the request header NAME to the value VAL when making HTTP requests";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--resource-path");
            Name        = "List of paths to search for images and other resources";
            Description = "List of paths to search for images and other resources";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--section-divs");
            Name        = "Wrap sections in <section> tags";
            Description = "Wrap sections in <section> tags";
        },
        [FlagParameter]@{
            Keys        = @("--self-contained");
            Name        = "Produce a standalone HTML file with no external dependencies";
            Description = "Produce a standalone HTML file with no external dependencies";
        },
        [ValueParameter]@{
            Keys        = @("--shift-heading-level-by");
            Name        = "Shift heading levels by a positive or negative integer";
            Description = "Shift heading levels by a positive or negative integer";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--slide-level");
            Name        = "Specifies that headings with the specified level create slides";
            Description = "Specifies that headings with the specified level create slides";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--standalone");
            Name        = "Produce  output with an appropriate header and footer";
            Description = "Produce  output with an appropriate header and footer";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--strip-comments");
            Name        = "Strip out HTML comments in the Markdown or Textile source";
            Description = "Strip out HTML comments in the Markdown or Textile source";
        },
        [ValueParameter]@{
            Keys        = @("--syntax-definition");
            Name        = "Instructs pandoc to load a KDE XML syntax definition file";
            Description = "Instructs pandoc to load a KDE XML syntax definition file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tab-stop");
            Name        = "Specify the number of spaces per tab (default is 4)";
            Description = "Specify the number of spaces per tab (default is 4)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--table-of-contents");
            Name        = "Include  an automatically generated table of contents";
            Description = "Include  an automatically generated table of contents";
        },
        [ValueParameter]@{
            Keys        = @("--template");
            Name        = "Use the specified file as a custom template for the  generated  document";
            Description = "Use the specified file as a custom template for the  generated  document";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--to", "-t");
            Name        = "Specify output format";
            Description = "Specify output format";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--toc");
            Name        = "Include  an automatically generated table of contents";
            Description = "Include  an automatically generated table of contents";
        },
        [ValueParameter]@{
            Keys        = @("--toc-depth");
            Name        = "Specify the number of section levels to include in the table of  contents";
            Description = "Specify the number of section levels to include in the table of  contents";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--top-level-division");
            Name        = "Treat top-level headings as the given division type";
            Description = "Treat top-level headings as the given division type";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--track-changes");
            Name        = "Specifies what to do with insertions, deletions, and comments";
            Description = "Specifies what to do with insertions, deletions, and comments";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Give verbose debugging output.";
            Description = "Give verbose debugging output.";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version";
            Description = "Print version";
        },
        [ValueParameter]@{
            Keys        = @("--webtex");
            Name        = "Convert TeX formulas to <img> tags";
            Description = "Convert TeX formulas to <img> tags";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--wrap");
            Name        = "Determine how text is wrapped in the output";
            Description = "Determine how text is wrapped in the output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--write", "-w");
            Name        = "Specify output format";
            Description = "Specify output format";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
