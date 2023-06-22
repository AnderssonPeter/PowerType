# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://doc.rust-lang.org/rustc/index.html";
    Keys        = @("rustc");
    Name        = "rustc";
    Description = "compiler for the Rust programming language";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "Add a directory to the library search path";
            Description = "Add a directory to the library search path";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-O");
            Name        = "Equivalent to -C opt-level=2";
            Description = "Equivalent to -C opt-level=2";
        },
        [ValueParameter]@{
            Keys        = @("--allow", "-A");
            Name        = "Set lint allowed";
            Description = "Set lint allowed";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cap-lints");
            Name        = "Set the most restrictive lint level";
            Description = "Set the most restrictive lint level";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cfg");
            Name        = "Configure the compilation environment";
            Description = "Configure the compilation environment";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--codegen", "-C");
            Name        = "Set a codegen option";
            Description = "Set a codegen option";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--crate-name");
            Name        = "Specify the name of the crate being built";
            Description = "Specify the name of the crate being built";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--crate-type");
            Name        = "separated list of types of crates for the compiler to emit";
            Description = "separated list of types of crates for the compiler to emit";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--deny", "-D");
            Name        = "Set lint denied";
            Description = "Set lint denied";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--edition");
            Name        = "Specify which edition of the compiler to use when compiling code";
            Description = "Specify which edition of the compiler to use when compiling code";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--emit");
            Name        = "Comma separated list of types of output for the compiler to emit";
            Description = "Comma separated list of types of output for the compiler to emit";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--explain");
            Name        = "Provide a detailed explanation of an error message";
            Description = "Provide a detailed explanation of an error message";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--forbid", "-F");
            Name        = "Set lint forbidden";
            Description = "Set lint forbidden";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-g");
            Name        = "Equivalent to -C debuginfo=2";
            Description = "Equivalent to -C debuginfo=2";
        },
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "Display this message";
            Description = "Display this message";
        },
        [ValueParameter]@{
            Keys        = @("-l");
            Name        = "Link the generated crate(s) to the specified native library NAME";
            Description = "Link the generated crate(s) to the specified native library NAME";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "Write output to <filename>";
            Description = "Write output to <filename>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--out-dir");
            Name        = "Write output to compiler-chosen filename in <dir>";
            Description = "Write output to compiler-chosen filename in <dir>";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--print");
            Name        = "Compiler information to print on stdout";
            Description = "Compiler information to print on stdout";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target");
            Name        = "Target triple for which the code is compiled";
            Description = "Target triple for which the code is compiled";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--test");
            Name        = "Build a test harness";
            Description = "Build a test harness";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "Use verbose output";
            Description = "Use verbose output";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-V");
            Name        = "Print version info and exit";
            Description = "Print version info and exit";
        },
        [ValueParameter]@{
            Keys        = @("--warn", "-W");
            Name        = "Set lint warnings";
            Description = "Set lint warnings";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
