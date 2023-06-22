# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Javac";
    Keys        = @("javac");
    Name        = "javac";
    Description = "Reads Java class and interface definitions and compiles them into bytecode and class files";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--A");
            Name        = "Options to pass to annotation processors";
            Description = "Options to pass to annotation processors";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--J");
            Name        = "Pass flag directly to the runtime system";
            Description = "Pass flag directly to the runtime system";
        },
        [FlagParameter]@{
            Keys        = @("--Werror");
            Name        = "Terminate compilation if warnings occur";
            Description = "Terminate compilation if warnings occur";
        },
        [ValueParameter]@{
            Keys        = @("--bootclasspath");
            Name        = "Override location of bootstrap class files";
            Description = "Override location of bootstrap class files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--classpath");
            Name        = "Specify where to find user class files and annotation processors";
            Description = "Specify where to find user class files and annotation processors";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cp");
            Name        = "Specify where to find user class files and annotation processors";
            Description = "Specify where to find user class files and annotation processors";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--d");
            Name        = "Specify where to place generated class files";
            Description = "Specify where to place generated class files";
        },
        [FlagParameter]@{
            Keys        = @("--deprecation");
            Name        = "Output source locations where deprecated APIs are used";
            Description = "Output source locations where deprecated APIs are used";
        },
        [ValueParameter]@{
            Keys        = @("--encoding");
            Name        = "Specify character encoding used by source files";
            Description = "Specify character encoding used by source files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--endorseddirs");
            Name        = "Override location of endorsed standards path";
            Description = "Override location of endorsed standards path";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--extdirs");
            Name        = "Override location of installed extensions";
            Description = "Override location of installed extensions";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--g");
            Name        = "Generates all debugging information";
            Description = "Generates all debugging information";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--h");
            Name        = "Specify where to place generated native header files";
            Description = "Specify where to place generated native header files";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Print a synopsis of standard options";
            Description = "Print a synopsis of standard options";
        },
        [ValueParameter]@{
            Keys        = @("--implicit");
            Name        = "Specify whether or not to generate class files for implicitly referenced files";
            Description = "Specify whether or not to generate class files for implicitly referenced files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--nowarn");
            Name        = "Generate no warnings";
            Description = "Generate no warnings";
        },
        [FlagParameter]@{
            Keys        = @("--parameters");
            Name        = "Generate metadata for reflection on method parameters";
            Description = "Generate metadata for reflection on method parameters";
        },
        [ValueParameter]@{
            Keys        = @("--proc");
            Name        = "Control whether annotation processing and/or compilation is done.";
            Description = "Control whether annotation processing and/or compilation is done.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--processor");
            Name        = "Names of the annotation processors to run; bypasses default discovery process";
            Description = "Names of the annotation processors to run; bypasses default discovery process";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--processorpath");
            Name        = "Specify where to find annotation processors";
            Description = "Specify where to find annotation processors";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile");
            Name        = "Check that API used is available in the specified profile";
            Description = "Check that API used is available in the specified profile";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--s");
            Name        = "Specify where to place generated source files";
            Description = "Specify where to place generated source files";
        },
        [ValueParameter]@{
            Keys        = @("--source");
            Name        = "Provide source compatibility with specified release";
            Description = "Provide source compatibility with specified release";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--sourcepath");
            Name        = "Specify where to find input source files";
            Description = "Specify where to find input source files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target");
            Name        = "Generate class files for specific VM version";
            Description = "Generate class files for specific VM version";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Output messages about what the compiler is doing";
            Description = "Output messages about what the compiler is doing";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Version information";
            Description = "Version information";
        }
    )
}
