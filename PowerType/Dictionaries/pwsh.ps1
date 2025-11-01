[PowerTypeDictionary]@{
    Keys        = @("pwsh");
    Name        = "pwsh";
    Description = "PowerShell 7 executable options and flags.";
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Hand crafted";
    Url         = "https://learn.microsoft.com/en-us/powershell/";
    Version     = [Version]::Parse("0.1.0");

    Parameters  = @(
        [CommandParameter]@{
            Keys = @("-Command", "-c");
            Name = "Command";
            Description = "Executes the specified commands and then exits.";
        },
        [CommandParameter]@{
            Keys = @("-File", "-f");
            Name = "File";
            Description = "Runs a script file with optional parameters.";
        },
        [CommandParameter]@{
            Keys = @("-ExecutionPolicy", "-ex", "-ep");
            Name = "ExecutionPolicy";
            Description = "Sets the execution policy for the current session.";
        },
        [CommandParameter]@{
            Keys = @("-OutputFormat", "-o", "-of");
            Name = "OutputFormat";
            Description = "Determines output format (Text or XML).";
        },
        [CommandParameter]@{
            Keys = @("-InputFormat", "-inp", "-if");
            Name = "InputFormat";
            Description = "Describes the format of input data (Text or XML).";
        },
        [CommandParameter]@{
            Keys = @("-WorkingDirectory", "-wd");
            Name = "WorkingDirectory";
            Description = "Sets the initial working directory.";
        },
        [CommandParameter]@{
            Keys = @("-WindowStyle", "-w");
            Name = "WindowStyle";
            Description = "Sets the window style for the session.";
        },
        [CommandParameter]@{
            Keys = @("-NoExit", "-noe");
            Name = "NoExit";
            Description = "Does not exit after running startup commands.";
        },
        [CommandParameter]@{
            Keys = @("-NoProfile", "-nop");
            Name = "NoProfile";
            Description = "Does not load PowerShell profiles.";
        },
        [CommandParameter]@{
            Keys = @("-NoLogo", "-nol");
            Name = "NoLogo";
            Description = "Hides the startup banner text.";
        },
        [CommandParameter]@{
            Keys = @("-Interactive", "-i");
            Name = "Interactive";
            Description = "Starts PowerShell in interactive mode.";
        },
        [CommandParameter]@{
            Keys = @("-NonInteractive", "-noni");
            Name = "NonInteractive";
            Description = "Disables interactive prompts and input.";
        },
        [CommandParameter]@{
            Keys = @("-Login", "-l");
            Name = "Login";
            Description = "Starts PowerShell as a login shell (Linux/macOS only).";
        },
        [CommandParameter]@{
            Keys = @("-STA");
            Name = "STA";
            Description = "Starts PowerShell in a single-threaded apartment.";
        },
        [CommandParameter]@{
            Keys = @("-MTA");
            Name = "MTA";
            Description = "Starts PowerShell in a multi-threaded apartment.";
        },
        [CommandParameter]@{
            Keys = @("-EncodedCommand", "-e", "-ec");
            Name = "EncodedCommand";
            Description = "Runs a Base64-encoded PowerShell command.";
        },
        [CommandParameter]@{
            Keys = @("-Version", "-v");
            Name = "Version";
            Description = "Displays the PowerShell version.";
        },
        [CommandParameter]@{
            Keys = @("-Help", "-?", "/?");
            Name = "Help";
            Description = "Displays this help message.";
        }
    )
}
