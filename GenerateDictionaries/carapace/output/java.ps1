# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://en.wikipedia.org/wiki/Java_(programming_language)";
    Keys        = @("java");
    Name        = "java";
    Description = "Launches a Java application";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--?");
            Name        = "print help message";
            Description = "print help message";
        },
        [ValueParameter]@{
            Keys        = @("--D");
            Name        = "set a system property";
            Description = "set a system property";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--X");
            Name        = "print help on non-standard options";
            Description = "print help on non-standard options";
        },
        [ValueParameter]@{
            Keys        = @("--XX");
            Name        = "Advanced options";
            Description = "Advanced options";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--Xbatch");
            Name        = "disable background compilation";
            Description = "disable background compilation";
        },
        [ValueParameter]@{
            Keys        = @("--Xbootclasspath");
            Name        = "set search path for bootstrap classes and resources";
            Description = "set search path for bootstrap classes and resources";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--Xbootclasspath/a");
            Name        = "append to end of bootstrap class path";
            Description = "append to end of bootstrap class path";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--Xbootclasspath/p");
            Name        = "prepend in front of bootstrap class path";
            Description = "prepend in front of bootstrap class path";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--Xcheck");
            Name        = "perform additional checks";
            Description = "perform additional checks";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--Xdiag");
            Name        = "show additional diagnostic messages";
            Description = "show additional diagnostic messages";
        },
        [FlagParameter]@{
            Keys        = @("--Xfuture");
            Name        = "enable strictest checks, anticipating future default";
            Description = "enable strictest checks, anticipating future default";
        },
        [FlagParameter]@{
            Keys        = @("--Xincgc");
            Name        = "enable incremental garbage collection";
            Description = "enable incremental garbage collection";
        },
        [FlagParameter]@{
            Keys        = @("--Xint");
            Name        = "interpreted mode execution only";
            Description = "interpreted mode execution only";
        },
        [ValueParameter]@{
            Keys        = @("--Xloggc");
            Name        = "log GC status to a file with time stamps";
            Description = "log GC status to a file with time stamps";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--Xmixed");
            Name        = "mixed mode execution (default)";
            Description = "mixed mode execution (default)";
        },
        [ValueParameter]@{
            Keys        = @("--Xms");
            Name        = "set initial Java heap size";
            Description = "set initial Java heap size";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--Xmx");
            Name        = "set maximum Java heap size";
            Description = "set maximum Java heap size";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--Xnoclassgc");
            Name        = "disable class garbage collection";
            Description = "disable class garbage collection";
        },
        [FlagParameter]@{
            Keys        = @("--Xprof");
            Name        = "output cpu profiling data";
            Description = "output cpu profiling data";
        },
        [FlagParameter]@{
            Keys        = @("--Xrs");
            Name        = "reduce use of OS signals by Java/VM (see documentation)";
            Description = "reduce use of OS signals by Java/VM (see documentation)";
        },
        [ValueParameter]@{
            Keys        = @("--Xshare");
            Name        = "set shared data usage";
            Description = "set shared data usage";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--XshowSettings");
            Name        = "show all settings and continue";
            Description = "show all settings and continue";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--Xss");
            Name        = "set java thread stack size";
            Description = "set java thread stack size";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--agentlib");
            Name        = "load native agent library";
            Description = "load native agent library";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--agentpath");
            Name        = "load native agent library by full pathname";
            Description = "load native agent library by full pathname";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--classpath");
            Name        = "class search path of directories and zip/jar files";
            Description = "class search path of directories and zip/jar files";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cp");
            Name        = "class search path of directories and zip/jar files";
            Description = "class search path of directories and zip/jar files";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--d32");
            Name        = "use a 32-bit data model if available";
            Description = "use a 32-bit data model if available";
        },
        [FlagParameter]@{
            Keys        = @("--d64");
            Name        = "use a 64-bit data model if available";
            Description = "use a 64-bit data model if available";
        },
        [ValueParameter]@{
            Keys        = @("--da");
            Name        = "disable assertions with specified granularity";
            Description = "disable assertions with specified granularity";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--disableassertions");
            Name        = "disable assertions with specified granularity";
            Description = "disable assertions with specified granularity";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disablesystemassertions");
            Name        = "disable system assertions";
            Description = "disable system assertions";
        },
        [FlagParameter]@{
            Keys        = @("--dsa");
            Name        = "disable system assertions";
            Description = "disable system assertions";
        },
        [ValueParameter]@{
            Keys        = @("--ea");
            Name        = "enable assertions with specified granularity";
            Description = "enable assertions with specified granularity";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--enableassertions");
            Name        = "enable assertions with specified granularity";
            Description = "enable assertions with specified granularity";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--enablesystemassertions");
            Name        = "enable system assertions";
            Description = "enable system assertions";
        },
        [FlagParameter]@{
            Keys        = @("--esa");
            Name        = "enable system assertions";
            Description = "enable system assertions";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "print help message";
            Description = "print help message";
        },
        [ValueParameter]@{
            Keys        = @("--jar");
            Name        = "jar file to execute";
            Description = "jar file to execute";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--javaagent");
            Name        = "load Java programming language agent, see java.lang.instrument";
            Description = "load Java programming language agent, see java.lang.instrument";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--server");
            Name        = "to select the `"server`" VM";
            Description = "to select the `"server`" VM";
        },
        [FlagParameter]@{
            Keys        = @("--showversion");
            Name        = "print product version and continue";
            Description = "print product version and continue";
        },
        [ValueParameter]@{
            Keys        = @("--splash");
            Name        = "show splash screen with specified image";
            Description = "show splash screen with specified image";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--verbose");
            Name        = "enable verbose output";
            Description = "enable verbose output";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "print product version and exit";
            Description = "print product version and exit";
        }
    )
}
