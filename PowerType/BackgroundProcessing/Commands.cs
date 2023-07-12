using PowerType.Model;

namespace PowerType.BackgroundProcessing;

internal abstract record Command
{
    //Ugly hack to check on other thread if we are done!
    public volatile bool IsDone;
}
internal record InitializeDictionaryCommand(string File) : Command;
internal record CacheDictionaryDynamicSourcesCommand(PowerTypeDictionary Dictionary, string CurrentWorkingDirectory) : Command;
internal record CommandExecutedCommand(PowerTypeDictionary Dictionary, string CurrentWorkingDirectory, string Command) : Command;
