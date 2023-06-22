using System.Runtime.InteropServices;
using PowerType.Model;

namespace PowerType.BackgroundProcessing;

internal static class PlatformIdentification
{
    static private readonly Dictionary<Platforms, OSPlatform> platforms = new Dictionary<Platforms, OSPlatform> {
        { Platforms.Windows, OSPlatform.Windows },
        { Platforms.Linux, OSPlatform.Linux },
        { Platforms.FreeBSD, OSPlatform.FreeBSD },
        { Platforms.MacOSX, OSPlatform.OSX },
    };
    
    public static readonly Platforms CurrentPlatform;

    static PlatformIdentification()
    {
        foreach (var platform in platforms)
        {
            if (RuntimeInformation.IsOSPlatform(platform.Value))
            {
                CurrentPlatform = platform.Key;
                return;
            }
        }
        throw new NotImplementedException("Could not identify OSPlatform");
    }

}
