# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://upx.github.io/";
    Keys        = @("upx");
    Name        = "upx";
    Description = "compress or expand executable files";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-1");
            Name        = "compress faster";
            Description = "compress faster";
        },
        [FlagParameter]@{
            Keys        = @("-2");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("-3");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("-4");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("-5");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("-6");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("-7");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("-8");
            Name        = "";
            Description = "";
        },
        [FlagParameter]@{
            Keys        = @("--8-bit");
            Name        = "uses 8 bit size compression [default: 32 bit]";
            Description = "uses 8 bit size compression [default: 32 bit]";
        },
        [FlagParameter]@{
            Keys        = @("--8086");
            Name        = "make compressed exe/sys/com work on any 8086";
            Description = "make compressed exe/sys/com work on any 8086";
        },
        [FlagParameter]@{
            Keys        = @("--8mib-ram");
            Name        = "8 megabyte memory limit [default: 2 MiB]";
            Description = "8 megabyte memory limit [default: 2 MiB]";
        },
        [FlagParameter]@{
            Keys        = @("-9");
            Name        = "compress better";
            Description = "compress better";
        },
        [FlagParameter]@{
            Keys        = @("-L");
            Name        = "display software license";
            Description = "display software license";
        },
        [FlagParameter]@{
            Keys        = @("-V");
            Name        = "display version number";
            Description = "display version number";
        },
        [FlagParameter]@{
            Keys        = @("--backup", "-k");
            Name        = "keep backup files";
            Description = "keep backup files";
        },
        [FlagParameter]@{
            Keys        = @("--boot-only");
            Name        = "disables client/host transfer compatibility";
            Description = "disables client/host transfer compatibility";
        },
        [FlagParameter]@{
            Keys        = @("--brute");
            Name        = "try all available compression methods & filters [slow]";
            Description = "try all available compression methods & filters [slow]";
        },
        [FlagParameter]@{
            Keys        = @("--coff");
            Name        = "produce COFF output";
            Description = "produce COFF output";
        },
        [FlagParameter]@{
            Keys        = @("--color");
            Name        = "change look";
            Description = "change look";
        },
        [ValueParameter]@{
            Keys        = @("--compress-exports");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--compress-icons");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--compress-resources");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "decompress";
            Description = "decompress";
        },
        [FlagParameter]@{
            Keys        = @("-f");
            Name        = "force compression of suspicious files";
            Description = "force compression of suspicious files";
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "give this help";
            Description = "give this help";
        },
        [ValueParameter]@{
            Keys        = @("--keep-resource");
            Name        = "do not compress resources specified by list";
            Description = "do not compress resources specified by list";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-l");
            Name        = "list compressed file";
            Description = "list compressed file";
        },
        [FlagParameter]@{
            Keys        = @("--le");
            Name        = "produce LE output [default: EXE]";
            Description = "produce LE output [default: EXE]";
        },
        [FlagParameter]@{
            Keys        = @("--mono");
            Name        = "change look";
            Description = "change look";
        },
        [FlagParameter]@{
            Keys        = @("--no-align");
            Name        = "don't align to 2048 bytes [enables: --console-run]";
            Description = "don't align to 2048 bytes [enables: --console-run]";
        },
        [FlagParameter]@{
            Keys        = @("--no-backup");
            Name        = "no backup files [default]";
            Description = "no backup files [default]";
        },
        [FlagParameter]@{
            Keys        = @("--no-color");
            Name        = "change look";
            Description = "change look";
        },
        [FlagParameter]@{
            Keys        = @("--no-progress");
            Name        = "change look";
            Description = "change look";
        },
        [FlagParameter]@{
            Keys        = @("--no-reloc");
            Name        = "put no relocations in to the exe header";
            Description = "put no relocations in to the exe header";
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "write output to file";
            Description = "write output to file";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--overlay");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--preserve-build-id");
            Name        = "copy .gnu.note.build-id to compressed output";
            Description = "copy .gnu.note.build-id to compressed output";
        },
        [FlagParameter]@{
            Keys        = @("-q");
            Name        = "be quiet";
            Description = "be quiet";
        },
        [ValueParameter]@{
            Keys        = @("--strip-relocs");
            Name        = "";
            Description = "";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-t");
            Name        = "test compressed file";
            Description = "test compressed file";
        },
        [FlagParameter]@{
            Keys        = @("--ultra-brute");
            Name        = "try even more compression variants [very slow]";
            Description = "try even more compression variants [very slow]";
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "be verbose";
            Description = "be verbose";
        }
    )
}
