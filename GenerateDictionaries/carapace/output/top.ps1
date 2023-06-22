# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://linux.die.net/man/1/top";
    Keys        = @("top");
    Name        = "top";
    Description = "display Linux processes";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-1");
            Name        = "Starts top with the last remembered Cpu States portion of the  summary  area  reversed.";
            Description = "Starts top with the last remembered Cpu States portion of the  summary  area  reversed.";
        },
        [ValueParameter]@{
            Keys        = @("-E");
            Name        = "Instructs top to force summary area memory to be scaled as";
            Description = "Instructs top to force summary area memory to be scaled as";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-H");
            Name        = "Instructs  top  to  display  individual  threads.";
            Description = "Instructs  top  to  display  individual  threads.";
        },
        [ValueParameter]@{
            Keys        = @("-O");
            Name        = "print available field names";
            Description = "print available field names";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-S");
            Name        = "Starts  top  with the last remembered ``S' state reversed.";
            Description = "Starts  top  with the last remembered ``S' state reversed.";
        },
        [ValueParameter]@{
            Keys        = @("-U");
            Name        = "Display  only  processes  with  a  user  id or user name matching that given.";
            Description = "Display  only  processes  with  a  user  id or user name matching that given.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-b");
            Name        = "Starts top in Batch mode";
            Description = "Starts top in Batch mode";
        },
        [FlagParameter]@{
            Keys        = @("-c");
            Name        = "Starts top with the last remembered ``c' state reversed";
            Description = "Starts top with the last remembered ``c' state reversed";
        },
        [ValueParameter]@{
            Keys        = @("-d");
            Name        = "Specifies the delay between screen updates";
            Description = "Specifies the delay between screen updates";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-e");
            Name        = "Instructs top to force task area memory to be scaled as";
            Description = "Instructs top to force task area memory to be scaled as";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-h");
            Name        = "show help";
            Description = "show help";
        },
        [FlagParameter]@{
            Keys        = @("-i");
            Name        = "Starts top with the last remembered ``i' state reversed";
            Description = "Starts top with the last remembered ``i' state reversed";
        },
        [ValueParameter]@{
            Keys        = @("-n");
            Name        = "Specifies  the  maximum  number  of  iterations,  or  frames, top should produce before ending.";
            Description = "Specifies  the  maximum  number  of  iterations,  or  frames, top should produce before ending.";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-o");
            Name        = "Specifies the name of the field on which tasks will be sorted";
            Description = "Specifies the name of the field on which tasks will be sorted";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-p");
            Name        = "Monitor  only  processes with specified process IDs";
            Description = "Monitor  only  processes with specified process IDs";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-s");
            Name        = "Starts top with secure mode forced, even for root.";
            Description = "Starts top with secure mode forced, even for root.";
        },
        [ValueParameter]@{
            Keys        = @("-u");
            Name        = "Display  only  processes  with  a  user  id or user name matching that given.";
            Description = "Display  only  processes  with  a  user  id or user name matching that given.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-v");
            Name        = "show version";
            Description = "show version";
        },
        [FlagParameter]@{
            Keys        = @("-w");
            Name        = "val    In Batch mode, when used without an argument top will format output using the  COLUMNS= and  LINES=  environment  variables, if  set.";
            Description = "val    In Batch mode, when used without an argument top will format output using the  COLUMNS= and  LINES=  environment  variables, if  set.";
        }
    )
}
