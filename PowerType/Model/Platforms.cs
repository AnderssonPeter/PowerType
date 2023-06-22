using System;

namespace PowerType.Model
{
    [Flags]
    public enum Platforms
    {
        All = Windows | MacOSX | Linux | FreeBSD,
        Windows = 1,
        MacOSX = 2,
        Linux = 4,
        FreeBSD = 8,
    }
}
