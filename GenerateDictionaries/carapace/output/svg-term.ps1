# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/marionebl/svg-term-cli";
    Keys        = @("svg-term");
    Name        = "svg-term";
    Description = "Share terminal sessions as razor-sharp animated SVG everywhere";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--at");
            Name        = "timestamp of frame to render in ms [number]";
            Description = "timestamp of frame to render in ms [number]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cast");
            Name        = "asciinema cast id to download [string], required if no stdin provided [string]";
            Description = "asciinema cast id to download [string], required if no stdin provided [string]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--command");
            Name        = "command to record [string]";
            Description = "command to record [string]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--from");
            Name        = "lower range of timeline to render in ms [number]";
            Description = "lower range of timeline to render in ms [number]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--height");
            Name        = "height in lines [number]";
            Description = "height in lines [number]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "print this help [boolean]";
            Description = "print this help [boolean]";
        },
        [ValueParameter]@{
            Keys        = @("--in");
            Name        = "json file to use as input [string]";
            Description = "json file to use as input [string]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-cursor");
            Name        = "disable cursor rendering [boolean]";
            Description = "disable cursor rendering [boolean]";
        },
        [FlagParameter]@{
            Keys        = @("--no-optimize");
            Name        = "disable svgo optimization [boolean]";
            Description = "disable svgo optimization [boolean]";
        },
        [ValueParameter]@{
            Keys        = @("--out");
            Name        = "output file, emits to stdout if omitted, [string]";
            Description = "output file, emits to stdout if omitted, [string]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--padding");
            Name        = "distance between text and image bounds, [number]";
            Description = "distance between text and image bounds, [number]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--padding-x");
            Name        = "distance between text and image bounds on x axis [number]";
            Description = "distance between text and image bounds on x axis [number]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--padding-y");
            Name        = "distance between text and image bounds on y axis [number]";
            Description = "distance between text and image bounds on y axis [number]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--profile");
            Name        = "terminal profile file to use, requires --term [string]";
            Description = "terminal profile file to use, requires --term [string]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--term");
            Name        = "terminal profile format, requires --profile [string]";
            Description = "terminal profile format, requires --profile [string]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--to");
            Name        = "upper range of timeline to render in ms [number]";
            Description = "upper range of timeline to render in ms [number]";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--width");
            Name        = "width in columns [number]";
            Description = "width in columns [number]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--window");
            Name        = "render with window decorations [boolean]";
            Description = "render with window decorations [boolean]";
        }
    )
}
