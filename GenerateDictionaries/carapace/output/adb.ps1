# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://developer.android.com/studio/command-line/adb";
    Keys        = @("adb");
    Name        = "adb";
    Description = "Android Debug Bridge";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("-H");
            Name        = "name of adb server host [default=localhost]";
            Description = "name of adb server host [default=localhost]";
        },
        [ValueParameter]@{
            Keys        = @("-L");
            Name        = "listen on given socket for adb server [default=tcp:localhost:5037]";
            Description = "listen on given socket for adb server [default=tcp:localhost:5037]";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("-P");
            Name        = "port of adb server [default=5037]";
            Description = "port of adb server [default=5037]";
        },
        [FlagParameter]@{
            Keys        = @("-a");
            Name        = "listen on all network interfaces, not just localhost";
            Description = "listen on all network interfaces, not just localhost";
        },
        [FlagParameter]@{
            Keys        = @("-d");
            Name        = "use USB device (error if multiple devices connected)";
            Description = "use USB device (error if multiple devices connected)";
        },
        [FlagParameter]@{
            Keys        = @("-e");
            Name        = "use TCP/IP device (error if multiple TCP/IP devices available)";
            Description = "use TCP/IP device (error if multiple TCP/IP devices available)";
        },
        [ValueParameter]@{
            Keys        = @("-s");
            Name        = "use device with given serial (overrides `$ANDROID_SERIAL)";
            Description = "use device with given serial (overrides `$ANDROID_SERIAL)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("-t");
            Name        = "use device with given transport id";
            Description = "use device with given transport id";
            # Source = $?? # todo: Fix or remove this!
        },
        [CommandParameter]@{
            Keys        = @("bugreport");
            Name        = "bugreport";
            Description = "write bugreport go given path";
        },
        [CommandParameter]@{
            Keys        = @("connect");
            Name        = "connect";
            Description = "connect to a device via TCP/IP";
        },
        [CommandParameter]@{
            Keys        = @("devices");
            Name        = "devices";
            Description = "list connected devices";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-l");
                    Name        = "long output";
                    Description = "long output";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("disable-verity");
            Name        = "disable-verity";
            Description = "disable dm-verity checking on userdebug builds";
        },
        [CommandParameter]@{
            Keys        = @("disconnect");
            Name        = "disconnect";
            Description = "disconnect from given TCP/IP device or all";
        },
        [CommandParameter]@{
            Keys        = @("emu");
            Name        = "emu";
            Description = "run emulator console command";
        },
        [CommandParameter]@{
            Keys        = @("enable-verity");
            Name        = "enable-verity";
            Description = "re-enable dm-verity checking on userdebug builds";
        },
        [CommandParameter]@{
            Keys        = @("forward");
            Name        = "forward";
            Description = "forward socket connection";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--list");
                    Name        = "list all forward socket connections";
                    Description = "list all forward socket connections";
                },
                [FlagParameter]@{
                    Keys        = @("--no-rebind");
                    Name        = "don't replace existing connection";
                    Description = "don't replace existing connection";
                },
                [FlagParameter]@{
                    Keys        = @("--remove");
                    Name        = "remove specific forward socket connections";
                    Description = "remove specific forward socket connections";
                },
                [FlagParameter]@{
                    Keys        = @("--remove-all");
                    Name        = "remove all forward socket connections";
                    Description = "remove all forward socket connections";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("get-devpath");
            Name        = "get-devpath";
            Description = "print <device-path>";
        },
        [CommandParameter]@{
            Keys        = @("get-serialno");
            Name        = "get-serialno";
            Description = "print <serial-number>";
        },
        [CommandParameter]@{
            Keys        = @("get-state");
            Name        = "get-state";
            Description = "print offline | bootloader | device";
        },
        [CommandParameter]@{
            Keys        = @("help");
            Name        = "help";
            Description = "show help message";
        },
        [CommandParameter]@{
            Keys        = @("install");
            Name        = "install";
            Description = "push a single package to the device and install it";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-d");
                    Name        = "TODO no flag description";
                    Description = "TODO no flag description";
                },
                [FlagParameter]@{
                    Keys        = @("-g");
                    Name        = "grant all runtime permissions";
                    Description = "grant all runtime permissions";
                },
                [FlagParameter]@{
                    Keys        = @("--instant");
                    Name        = "cause the app to be installed as an ephemeral install app";
                    Description = "cause the app to be installed as an ephemeral install app";
                },
                [FlagParameter]@{
                    Keys        = @("-l");
                    Name        = "TODO no flag description";
                    Description = "TODO no flag description";
                },
                [FlagParameter]@{
                    Keys        = @("-r");
                    Name        = "replace existing application";
                    Description = "replace existing application";
                },
                [FlagParameter]@{
                    Keys        = @("-s");
                    Name        = "TODO no flag description";
                    Description = "TODO no flag description";
                },
                [FlagParameter]@{
                    Keys        = @("-t");
                    Name        = "allow test packages";
                    Description = "allow test packages";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install-multi-package");
            Name        = "install-multi-package";
            Description = "push one or more packages to the device and install them atomically";
            Parameters  = @(
                [ValueParameter]@{
                    Keys        = @("--abi");
                    Name        = "override platform's default ABI";
                    Description = "override platform's default ABI";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("-d");
                    Name        = "allow version code downgrade (debuggable packages only)";
                    Description = "allow version code downgrade (debuggable packages only)";
                },
                [FlagParameter]@{
                    Keys        = @("--date-check-agent");
                    Name        = "update deployment agent when local version is newer and using fast deploy";
                    Description = "update deployment agent when local version is newer and using fast deploy";
                },
                [FlagParameter]@{
                    Keys        = @("--fastdeploy");
                    Name        = "use fast deploy";
                    Description = "use fast deploy";
                },
                [FlagParameter]@{
                    Keys        = @("--force-agent");
                    Name        = "force update of deployment agent when using fast deploy";
                    Description = "force update of deployment agent when using fast deploy";
                },
                [FlagParameter]@{
                    Keys        = @("-g");
                    Name        = "grant all runtime permissions";
                    Description = "grant all runtime permissions";
                },
                [FlagParameter]@{
                    Keys        = @("--instant");
                    Name        = "cause the app to be installed as an ephemeral install app";
                    Description = "cause the app to be installed as an ephemeral install app";
                },
                [FlagParameter]@{
                    Keys        = @("--local-agent");
                    Name        = "locate agent files from local source build (instead of SDK location)";
                    Description = "locate agent files from local source build (instead of SDK location)";
                },
                [FlagParameter]@{
                    Keys        = @("--no-fastdeploy");
                    Name        = "prevent use of fast deploy";
                    Description = "prevent use of fast deploy";
                },
                [FlagParameter]@{
                    Keys        = @("--no-streaming");
                    Name        = "always push APK to device and invoke Package Manager as separate steps";
                    Description = "always push APK to device and invoke Package Manager as separate steps";
                },
                [FlagParameter]@{
                    Keys        = @("-p");
                    Name        = "partial application install (install-multiple only)";
                    Description = "partial application install (install-multiple only)";
                },
                [FlagParameter]@{
                    Keys        = @("-r");
                    Name        = "replace existing application";
                    Description = "replace existing application";
                },
                [FlagParameter]@{
                    Keys        = @("--streaming");
                    Name        = "force streaming APK directly into Package Manager";
                    Description = "force streaming APK directly into Package Manager";
                },
                [FlagParameter]@{
                    Keys        = @("-t");
                    Name        = "allow test packages";
                    Description = "allow test packages";
                },
                [FlagParameter]@{
                    Keys        = @("--version-check-agent");
                    Name        = "update deployment agent when local version has different version code and using fast deploy";
                    Description = "update deployment agent when local version has different version code and using fast deploy";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("install-multiple");
            Name        = "install-multiple";
            Description = "push multiple APKs to the device for a single package and install them";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-d");
                    Name        = "TODO no flag description";
                    Description = "TODO no flag description";
                },
                [FlagParameter]@{
                    Keys        = @("-g");
                    Name        = "grant all runtime permissions";
                    Description = "grant all runtime permissions";
                },
                [FlagParameter]@{
                    Keys        = @("--instant");
                    Name        = "cause the app to be installed as an ephemeral install app";
                    Description = "cause the app to be installed as an ephemeral install app";
                },
                [FlagParameter]@{
                    Keys        = @("-l");
                    Name        = "TODO no flag description";
                    Description = "TODO no flag description";
                },
                [FlagParameter]@{
                    Keys        = @("-r");
                    Name        = "replace existing application";
                    Description = "replace existing application";
                },
                [FlagParameter]@{
                    Keys        = @("-s");
                    Name        = "TODO no flag description";
                    Description = "TODO no flag description";
                },
                [FlagParameter]@{
                    Keys        = @("-t");
                    Name        = "allow test packages";
                    Description = "allow test packages";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("jdwp");
            Name        = "jdwp";
            Description = "list pids of processes hosting a JDWP transport";
        },
        [CommandParameter]@{
            Keys        = @("keygen");
            Name        = "keygen";
            Description = "generate adb public/private key";
        },
        [CommandParameter]@{
            Keys        = @("kill-server");
            Name        = "kill-server";
            Description = "kill the server if it is running";
        },
        [CommandParameter]@{
            Keys        = @("logcat");
            Name        = "logcat";
            Description = "show device log";
        },
        [CommandParameter]@{
            Keys        = @("mdns");
            Name        = "mdns";
            Description = "manage mdns";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("check");
                    Name        = "check";
                    Description = "check if mdns discovery is available";
                },
                [CommandParameter]@{
                    Keys        = @("services");
                    Name        = "services";
                    Description = "list all discovered services";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("pair");
            Name        = "pair";
            Description = "pair with a device for secure TCP/IP communication";
        },
        [CommandParameter]@{
            Keys        = @("ppp");
            Name        = "ppp";
            Description = "run PPP over USB";
        },
        [CommandParameter]@{
            Keys        = @("pull");
            Name        = "pull";
            Description = "copy files/dirs from device";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-Z");
                    Name        = "disable compression";
                    Description = "disable compression";
                },
                [FlagParameter]@{
                    Keys        = @("-a");
                    Name        = "preserve file timestamp and mode";
                    Description = "preserve file timestamp and mode";
                },
                [ValueParameter]@{
                    Keys        = @("-z");
                    Name        = "enable compression with a specified algorithm (any, none, brotli)";
                    Description = "enable compression with a specified algorithm (any, none, brotli)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("push");
            Name        = "push";
            Description = "copy local files/directories to device";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-Z");
                    Name        = "disable compression";
                    Description = "disable compression";
                },
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "dry run: push files to device without storing to the filesystem";
                    Description = "dry run: push files to device without storing to the filesystem";
                },
                [FlagParameter]@{
                    Keys        = @("--sync");
                    Name        = "only push files that are newer on the host than the device";
                    Description = "only push files that are newer on the host than the device";
                },
                [ValueParameter]@{
                    Keys        = @("-z");
                    Name        = "enable compression with a specified algorithm (any, none, brotli)";
                    Description = "enable compression with a specified algorithm (any, none, brotli)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("reboot");
            Name        = "reboot";
            Description = "reboot the device";
        },
        [CommandParameter]@{
            Keys        = @("reconnect");
            Name        = "reconnect";
            Description = "kick connection from host side to force reconnect";
            Parameters  = @(
                [CommandParameter]@{
                    Keys        = @("device");
                    Name        = "device";
                    Description = "kick connection from device side to force reconnect";
                },
                [CommandParameter]@{
                    Keys        = @("offline");
                    Name        = "offline";
                    Description = "reset offline/unauthorized devices to force reconnect";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("remount");
            Name        = "remount";
            Description = "remount partitions read-write";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-R");
                    Name        = "automatically reboot the device if needed";
                    Description = "automatically reboot the device if needed";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("reverse");
            Name        = "reverse";
            Description = "reverse socket connection";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("--list");
                    Name        = "list all reverse socket connections from device";
                    Description = "list all reverse socket connections from device";
                },
                [FlagParameter]@{
                    Keys        = @("--no-rebind");
                    Name        = "don't replace existing connection";
                    Description = "don't replace existing connection";
                },
                [FlagParameter]@{
                    Keys        = @("--remove");
                    Name        = "remove specific reverse socket connection";
                    Description = "remove specific reverse socket connection";
                },
                [FlagParameter]@{
                    Keys        = @("--remove-all");
                    Name        = "remove all reverse socket connection";
                    Description = "remove all reverse socket connection";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("root");
            Name        = "root";
            Description = "restart adbd with root permissions";
        },
        [CommandParameter]@{
            Keys        = @("shell");
            Name        = "shell";
            Description = "run remote shell command";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-T");
                    Name        = "disable pty allocation";
                    Description = "disable pty allocation";
                },
                [ValueParameter]@{
                    Keys        = @("-e");
                    Name        = "choose escape character, or `"none`"; default '~'";
                    Description = "choose escape character, or `"none`"; default '~'";
                    # Source = $?? # todo: Fix or remove this!
                },
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "don't read from stdin";
                    Description = "don't read from stdin";
                },
                [FlagParameter]@{
                    Keys        = @("-t");
                    Name        = "allocate a pty if on a tty (-tt: force pty allocation)";
                    Description = "allocate a pty if on a tty (-tt: force pty allocation)";
                },
                [FlagParameter]@{
                    Keys        = @("-x");
                    Name        = "disable remote exit codes and stdout/stderr separation";
                    Description = "disable remote exit codes and stdout/stderr separation";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("sideload");
            Name        = "sideload";
            Description = "sideload the given full OTA package";
        },
        [CommandParameter]@{
            Keys        = @("start-server");
            Name        = "start-server";
            Description = "ensure that there is a server running";
        },
        [CommandParameter]@{
            Keys        = @("sync");
            Name        = "sync";
            Description = "sync a local build from `$ANDROID_PRODUCT_OUT to the device";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-Z");
                    Name        = "disable compression";
                    Description = "disable compression";
                },
                [FlagParameter]@{
                    Keys        = @("-l");
                    Name        = "list files that would be copied, but don't copy them";
                    Description = "list files that would be copied, but don't copy them";
                },
                [FlagParameter]@{
                    Keys        = @("-n");
                    Name        = "dry run: push files to device without storing to the filesystem";
                    Description = "dry run: push files to device without storing to the filesystem";
                },
                [ValueParameter]@{
                    Keys        = @("-z");
                    Name        = "enable compression with a specified algorithm (any, none, brotli)";
                    Description = "enable compression with a specified algorithm (any, none, brotli)";
                    # Source = $?? # todo: Fix or remove this!
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("tcip");
            Name        = "tcip";
            Description = "restart adbd listening on TCP on PORT";
        },
        [CommandParameter]@{
            Keys        = @("uninstall");
            Name        = "uninstall";
            Description = "remove this app package from the device";
            Parameters  = @(
                [FlagParameter]@{
                    Keys        = @("-k");
                    Name        = "keep the data and cache directories";
                    Description = "keep the data and cache directories";
                }
            )
        },
        [CommandParameter]@{
            Keys        = @("unroot");
            Name        = "unroot";
            Description = "restart adbd without root permissions";
        },
        [CommandParameter]@{
            Keys        = @("usb");
            Name        = "usb";
            Description = "restart adbd listening on USB";
        },
        [CommandParameter]@{
            Keys        = @("version");
            Name        = "version";
            Description = "show version number";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-bootloader");
            Name        = "wait-for-bootloader";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-device");
            Name        = "wait-for-device";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-disconnect");
            Name        = "wait-for-disconnect";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-local-bootloader");
            Name        = "wait-for-local-bootloader";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-local-device");
            Name        = "wait-for-local-device";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-local-disconnect");
            Name        = "wait-for-local-disconnect";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-local-recovery");
            Name        = "wait-for-local-recovery";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-local-rescue");
            Name        = "wait-for-local-rescue";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-local-sideload");
            Name        = "wait-for-local-sideload";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-recovery");
            Name        = "wait-for-recovery";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-rescue");
            Name        = "wait-for-rescue";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-sideload");
            Name        = "wait-for-sideload";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-usb-bootloader");
            Name        = "wait-for-usb-bootloader";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-usb-disconnect");
            Name        = "wait-for-usb-disconnect";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-usb-recovery");
            Name        = "wait-for-usb-recovery";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-usb-rescue");
            Name        = "wait-for-usb-rescue";
            Description = "wait for device to be in given state";
        },
        [CommandParameter]@{
            Keys        = @("wait-for-usb-sideload");
            Name        = "wait-for-usb-sideload";
            Description = "wait for device to be in given state";
        }
    )
}
