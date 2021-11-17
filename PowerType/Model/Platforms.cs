using System;

namespace PowerType.Model
{
    [Flags]
    public enum Platforms
    {
        All = Windows | MacOS | Linux,
        Windows = 1,
        MacOS = 2,
        Linux = 4
    }
}
