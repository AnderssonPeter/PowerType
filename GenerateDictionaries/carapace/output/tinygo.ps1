# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://tinygo.org/";
    Keys        = @("tinygo");
    Name        = "tinygo";
    Description = "TinyGo is a Go compiler for small places";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--cpuprofile");
            Name        = "cpuprofile output";
            Description = "cpuprofile output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dumpssa");
            Name        = "dump internal Go SSA";
            Description = "dump internal Go SSA";
        },
        [ValueParameter]@{
            Keys        = @("--gc");
            Name        = "garbage collector to use";
            Description = "garbage collector to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ldflags");
            Name        = "Go link tool compatible ldflags";
            Description = "Go link tool compatible ldflags";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--llvm-features");
            Name        = "comma separated LLVM features to enable";
            Description = "comma separated LLVM features to enable";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-debug");
            Name        = "strip debug information";
            Description = "strip debug information";
        },
        [ValueParameter]@{
            Keys        = @("--o");
            Name        = "output";
            Description = "output";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ocd-commands");
            Name        = "OpenOCD commands, overriding target spec";
            Description = "OpenOCD commands, overriding target spec";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ocd-output");
            Name        = "print OCD daemon output during debug";
            Description = "print OCD daemon output during debug";
        },
        [ValueParameter]@{
            Keys        = @("--opt");
            Name        = "optimization level";
            Description = "optimization level";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--panic");
            Name        = "panic strategy";
            Description = "panic strategy";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--port");
            Name        = "flash port";
            Description = "flash port";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--print-allocs");
            Name        = "regular expression of functions for which heap allocations should be printed";
            Description = "regular expression of functions for which heap allocations should be printed";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-stacks");
            Name        = "print stack sizes of goroutines";
            Description = "print stack sizes of goroutines";
        },
        [FlagParameter]@{
            Keys        = @("--printir");
            Name        = "print LLVM IR";
            Description = "print LLVM IR";
        },
        [ValueParameter]@{
            Keys        = @("--programmer");
            Name        = "which hardware programmer to use";
            Description = "which hardware programmer to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--scheduler");
            Name        = "which scheduler to use";
            Description = "which scheduler to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--serial");
            Name        = "which serial output to use";
            Description = "which serial output to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--size");
            Name        = "print sizes";
            Description = "print sizes";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tags");
            Name        = "a space-separated list of extra build tags";
            Description = "a space-separated list of extra build tags";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--target");
            Name        = "chip/board name or JSON target specification file";
            Description = "chip/board name or JSON target specification file";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--verifyir");
            Name        = "run extra verification steps on LLVM IR";
            Description = "run extra verification steps on LLVM IR";
        },
        [ValueParameter]@{
            Keys        = @("--wasm-abi");
            Name        = "WebAssembly ABI conventions";
            Description = "WebAssembly ABI conventions";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--x");
            Name        = "Print commands";
            Description = "Print commands";
        }
    )
}
