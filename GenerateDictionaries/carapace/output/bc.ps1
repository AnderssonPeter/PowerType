# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/bc";
    Keys        = @("bc");
    Name        = "bc";
    Description = "An arbitrary precision calculator language";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--help", "-h");
            Name        = "print this usage and exit";
            Description = "print this usage and exit";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "force interactive mode";
            Description = "force interactive mode";
        },
        [FlagParameter]@{
            Keys        = @("--mathlib", "-l");
            Name        = "use the predefined math routines";
            Description = "use the predefined math routines";
        },
        [FlagParameter]@{
            Keys        = @("--quiet", "-q");
            Name        = "don't print initial banner";
            Description = "don't print initial banner";
        },
        [FlagParameter]@{
            Keys        = @("--standard", "-s");
            Name        = "non-standard bc constructs are errors";
            Description = "non-standard bc constructs are errors";
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "print version information and exit";
            Description = "print version information and exit";
        },
        [FlagParameter]@{
            Keys        = @("--warn", "-w");
            Name        = "warn about non-standard bc constructs";
            Description = "warn about non-standard bc constructs";
        }
    )
}
