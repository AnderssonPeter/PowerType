# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://github.com/openSUSE/hwinfo";
    Keys        = @("hwinfo");
    Name        = "hwinfo";
    Description = "Probe for hardware";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--all");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--arch");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--bios");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--block");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--bluetooth");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--braille");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--bridge");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--camera");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--cdrom");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--chipcard");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--cpu");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [ValueParameter]@{
            Keys        = @("--debug");
            Name        = "Set debug level to N.";
            Description = "Set debug level to N.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--disk");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--dsl");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [ValueParameter]@{
            Keys        = @("--dump-db");
            Name        = "Dump hardware data base.";
            Description = "Dump hardware data base.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--dvb");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--fingerprint");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--floppy");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--framebuffer");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--gfxcard");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Print usage.";
            Description = "Print usage.";
        },
        [FlagParameter]@{
            Keys        = @("--hub");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--ide");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--isapnp");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--isdn");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--joystick");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--keyboard");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--listmd");
            Name        = "Normally hwinfo does not report RAID devices.";
            Description = "Normally hwinfo does not report RAID devices.";
        },
        [ValueParameter]@{
            Keys        = @("--log");
            Name        = "Write log info to FILE.";
            Description = "Write log info to FILE.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--map");
            Name        = "If disk names have  changed this prints a list of disk name mappings.";
            Description = "If disk names have  changed this prints a list of disk name mappings.";
        },
        [FlagParameter]@{
            Keys        = @("--memory");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--mmc-ctrl");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--modem");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--monitor");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--mouse");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--netcard");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--network");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [ValueParameter]@{
            Keys        = @("--only");
            Name        = "This option can be given more than once.";
            Description = "This option can be given more than once.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--partition");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--pci");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--pcmcia");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--pcmcia-ctrl");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--pppoe");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--printer");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--reallyall");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--redasd");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [ValueParameter]@{
            Keys        = @("--save-config");
            Name        = "Store config for a particular device below /var/lib/hardware.";
            Description = "Store config for a particular device below /var/lib/hardware.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--scanner");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--scsi");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--short");
            Name        = "Show only a summary.";
            Description = "Show only a summary.";
        },
        [ValueParameter]@{
            Keys        = @("--show-config");
            Name        = "Show saved config data for a particular device.";
            Description = "Show saved config data for a particular device.";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--smp");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--sound");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--storage-ctrl");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--sys");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--tape");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--tv");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--uml");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--usb");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--usb-ctrl");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--vbe");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--verbose");
            Name        = "Increase verbosity.";
            Description = "Increase verbosity.";
        },
        [FlagParameter]@{
            Keys        = @("--version");
            Name        = "Print libhd version.";
            Description = "Print libhd version.";
        },
        [FlagParameter]@{
            Keys        = @("--wlan");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--xen");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        },
        [FlagParameter]@{
            Keys        = @("--zip");
            Name        = "probe for particular hardware item";
            Description = "probe for particular hardware item";
        }
    )
}
