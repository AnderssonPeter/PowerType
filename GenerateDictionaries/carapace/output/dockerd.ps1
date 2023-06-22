# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::Linux -bor [Platforms]::MacOS);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://docs.docker.com/engine/reference/commandline/dockerd/";
    Keys        = @("dockerd");
    Name        = "dockerd";
    Description = "A self-sufficient runtime for containers";
    Parameters  = @(
        [ValueParameter]@{
            Keys        = @("--add-runtime");
            Name        = "Register an additional OCI compatible runtime (default [])";
            Description = "Register an additional OCI compatible runtime (default [])";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--allow-nondistributable-artifacts");
            Name        = "Allow push of nondistributable artifacts to registry";
            Description = "Allow push of nondistributable artifacts to registry";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--api-cors-header");
            Name        = "Set CORS headers in the Engine API";
            Description = "Set CORS headers in the Engine API";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--authorization-plugin");
            Name        = "Authorization plugins to load";
            Description = "Authorization plugins to load";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bip");
            Name        = "Specify network bridge IP";
            Description = "Specify network bridge IP";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--bridge", "-b");
            Name        = "Attach containers to a network bridge";
            Description = "Attach containers to a network bridge";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cgroup-parent");
            Name        = "Set parent cgroup for all containers";
            Description = "Set parent cgroup for all containers";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--config-file");
            Name        = "Daemon configuration file (default `"/etc/docker/daemon.json`")";
            Description = "Daemon configuration file (default `"/etc/docker/daemon.json`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--containerd");
            Name        = "containerd grpc address";
            Description = "containerd grpc address";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--containerd-namespace");
            Name        = "Containerd namespace to use (default `"moby`")";
            Description = "Containerd namespace to use (default `"moby`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--containerd-plugins-namespace");
            Name        = "Containerd namespace to use for plugins (default `"plugins.moby`")";
            Description = "Containerd namespace to use for plugins (default `"plugins.moby`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cpu-rt-period");
            Name        = "Limit the CPU real-time period in microseconds for the parent cgroup for all containers";
            Description = "Limit the CPU real-time period in microseconds for the parent cgroup for all containers";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--cpu-rt-runtime");
            Name        = "Limit the CPU real-time runtime in microseconds for the parent cgroup for all containers";
            Description = "Limit the CPU real-time runtime in microseconds for the parent cgroup for all containers";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--cri-containerd");
            Name        = "start containerd with cri";
            Description = "start containerd with cri";
        },
        [ValueParameter]@{
            Keys        = @("--data-root");
            Name        = "Root directory of persistent Docker state (default `"/var/lib/docker`")";
            Description = "Root directory of persistent Docker state (default `"/var/lib/docker`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--debug", "-D");
            Name        = "Enable debug mode";
            Description = "Enable debug mode";
        },
        [ValueParameter]@{
            Keys        = @("--default-address-pool");
            Name        = "Default address pools for node specific local networks";
            Description = "Default address pools for node specific local networks";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-cgroupns-mode");
            Name        = "Default mode for containers cgroup namespace (`"host`" | `"private`") (default `"host`")";
            Description = "Default mode for containers cgroup namespace (`"host`" | `"private`") (default `"host`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-gateway");
            Name        = "Container default gateway IPv4 address";
            Description = "Container default gateway IPv4 address";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-gateway-v6");
            Name        = "Container default gateway IPv6 address";
            Description = "Container default gateway IPv6 address";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-ipc-mode");
            Name        = "Default mode for containers ipc (`"shareable`" | `"private`") (default `"private`")";
            Description = "Default mode for containers ipc (`"shareable`" | `"private`") (default `"private`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-runtime");
            Name        = "Default OCI runtime for containers (default `"runc`")";
            Description = "Default OCI runtime for containers (default `"runc`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-shm-size");
            Name        = "Default shm size for containers (default 64MiB)";
            Description = "Default shm size for containers (default 64MiB)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--default-ulimit");
            Name        = "Default ulimits for containers (default [])";
            Description = "Default ulimits for containers (default [])";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dns");
            Name        = "DNS server to use";
            Description = "DNS server to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dns-opt");
            Name        = "DNS options to use";
            Description = "DNS options to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--dns-search");
            Name        = "DNS search domains to use";
            Description = "DNS search domains to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exec-opt");
            Name        = "Runtime execution options";
            Description = "Runtime execution options";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--exec-root");
            Name        = "Root directory for execution state files (default `"/var/run/docker`")";
            Description = "Root directory for execution state files (default `"/var/run/docker`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--experimental");
            Name        = "Enable experimental features";
            Description = "Enable experimental features";
        },
        [ValueParameter]@{
            Keys        = @("--fixed-cidr");
            Name        = "IPv4 subnet for fixed IPs";
            Description = "IPv4 subnet for fixed IPs";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--fixed-cidr-v6");
            Name        = "IPv6 subnet for fixed IPs";
            Description = "IPv6 subnet for fixed IPs";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--group", "-G");
            Name        = "Group for the unix socket (default `"docker`")";
            Description = "Group for the unix socket (default `"docker`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--help");
            Name        = "Print usage";
            Description = "Print usage";
        },
        [ValueParameter]@{
            Keys        = @("--host", "-H");
            Name        = "Daemon socket(s) to connect to";
            Description = "Daemon socket(s) to connect to";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--host-gateway-ip");
            Name        = "IP address that the special 'host-gateway' string in --add-host resolves to. Defaults to the IP address of the default bridge";
            Description = "IP address that the special 'host-gateway' string in --add-host resolves to. Defaults to the IP address of the default bridge";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--icc");
            Name        = "Enable inter-container communication (default true)";
            Description = "Enable inter-container communication (default true)";
        },
        [FlagParameter]@{
            Keys        = @("--init");
            Name        = "Run an init in the container to forward signals and reap processes";
            Description = "Run an init in the container to forward signals and reap processes";
        },
        [ValueParameter]@{
            Keys        = @("--init-path");
            Name        = "Path to the docker-init binary";
            Description = "Path to the docker-init binary";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--insecure-registry");
            Name        = "Enable insecure registry communication";
            Description = "Enable insecure registry communication";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--ip");
            Name        = "Default IP when binding container ports (default 0.0.0.0)";
            Description = "Default IP when binding container ports (default 0.0.0.0)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--ip-forward");
            Name        = "Enable net.ipv4.ip_forward (default true)";
            Description = "Enable net.ipv4.ip_forward (default true)";
        },
        [FlagParameter]@{
            Keys        = @("--ip-masq");
            Name        = "Enable IP masquerading (default true)";
            Description = "Enable IP masquerading (default true)";
        },
        [FlagParameter]@{
            Keys        = @("--ip6tables");
            Name        = "Enable addition of ip6tables rules";
            Description = "Enable addition of ip6tables rules";
        },
        [FlagParameter]@{
            Keys        = @("--iptables");
            Name        = "Enable addition of iptables rules (default true)";
            Description = "Enable addition of iptables rules (default true)";
        },
        [FlagParameter]@{
            Keys        = @("--ipv6");
            Name        = "Enable IPv6 networking";
            Description = "Enable IPv6 networking";
        },
        [ValueParameter]@{
            Keys        = @("--label");
            Name        = "Set key=value labels to the daemon";
            Description = "Set key=value labels to the daemon";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--live-restore");
            Name        = "Enable live restore of docker when containers are still running";
            Description = "Enable live restore of docker when containers are still running";
        },
        [ValueParameter]@{
            Keys        = @("--log-driver");
            Name        = "Default driver for container logs (default `"json-file`")";
            Description = "Default driver for container logs (default `"json-file`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-level", "-l");
            Name        = "Set the logging level (`"debug`"|`"info`"|`"warn`"|`"error`"|`"fatal`") (default `"info`")";
            Description = "Set the logging level (`"debug`"|`"info`"|`"warn`"|`"error`"|`"fatal`") (default `"info`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--log-opt");
            Name        = "Default log driver options for containers (default map[])";
            Description = "Default log driver options for containers (default map[])";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-concurrent-downloads");
            Name        = "Set the max concurrent downloads for each pull (default 3)";
            Description = "Set the max concurrent downloads for each pull (default 3)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-concurrent-uploads");
            Name        = "Set the max concurrent uploads for each push (default 5)";
            Description = "Set the max concurrent uploads for each push (default 5)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--max-download-attempts");
            Name        = "Set the max download attempts for each pull (default 5)";
            Description = "Set the max download attempts for each pull (default 5)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--metrics-addr");
            Name        = "Set default address and port to serve the metrics api on";
            Description = "Set default address and port to serve the metrics api on";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--mtu");
            Name        = "Set the containers network MTU";
            Description = "Set the containers network MTU";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--network-control-plane-mtu");
            Name        = "Network Control plane MTU (default 1500)";
            Description = "Network Control plane MTU (default 1500)";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--no-new-privileges");
            Name        = "Set no-new-privileges by default for new containers";
            Description = "Set no-new-privileges by default for new containers";
        },
        [ValueParameter]@{
            Keys        = @("--node-generic-resource");
            Name        = "Advertise user-defined resource";
            Description = "Advertise user-defined resource";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--oom-score-adjust");
            Name        = "Set the oom_score_adj for the daemon";
            Description = "Set the oom_score_adj for the daemon";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--pidfile", "-p");
            Name        = "Path to use for daemon PID file (default `"/var/run/docker.pid`")";
            Description = "Path to use for daemon PID file (default `"/var/run/docker.pid`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--raw-logs");
            Name        = "Full timestamps without ANSI coloring";
            Description = "Full timestamps without ANSI coloring";
        },
        [ValueParameter]@{
            Keys        = @("--registry-mirror");
            Name        = "Preferred Docker registry mirror";
            Description = "Preferred Docker registry mirror";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--rootless");
            Name        = "Enable rootless mode; typically used with RootlessKit";
            Description = "Enable rootless mode; typically used with RootlessKit";
        },
        [ValueParameter]@{
            Keys        = @("--seccomp-profile");
            Name        = "Path to seccomp profile";
            Description = "Path to seccomp profile";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--selinux-enabled");
            Name        = "Enable selinux support";
            Description = "Enable selinux support";
        },
        [ValueParameter]@{
            Keys        = @("--shutdown-timeout");
            Name        = "Set the default shutdown timeout (default 15)";
            Description = "Set the default shutdown timeout (default 15)";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--storage-driver", "-s");
            Name        = "Storage driver to use";
            Description = "Storage driver to use";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--storage-opt");
            Name        = "Storage driver options";
            Description = "Storage driver options";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--swarm-default-advertise-addr");
            Name        = "Set default address or interface for swarm advertised address";
            Description = "Set default address or interface for swarm advertised address";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tls");
            Name        = "Use TLS; implied by --tlsverify";
            Description = "Use TLS; implied by --tlsverify";
        },
        [ValueParameter]@{
            Keys        = @("--tlscacert");
            Name        = "Trust certs signed only by this CA (default `"/home/user/.docker/ca.pem`")";
            Description = "Trust certs signed only by this CA (default `"/home/user/.docker/ca.pem`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tlscert");
            Name        = "Path to TLS certificate file (default `"/home/user/.docker/cert.pem`")";
            Description = "Path to TLS certificate file (default `"/home/user/.docker/cert.pem`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--tlskey");
            Name        = "Path to TLS key file (default `"/home/user/.docker/key.pem`")";
            Description = "Path to TLS key file (default `"/home/user/.docker/key.pem`")";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--tlsverify");
            Name        = "Use TLS and verify the remote";
            Description = "Use TLS and verify the remote";
        },
        [FlagParameter]@{
            Keys        = @("--userland-proxy");
            Name        = "Use userland proxy for loopback traffic (default true)";
            Description = "Use userland proxy for loopback traffic (default true)";
        },
        [ValueParameter]@{
            Keys        = @("--userland-proxy-path");
            Name        = "Path to the userland proxy binary";
            Description = "Path to the userland proxy binary";
            # Source = $?? # todo: Fix or remove this!
        },
        [ValueParameter]@{
            Keys        = @("--userns-remap");
            Name        = "User/Group setting for user namespaces";
            Description = "User/Group setting for user namespaces";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--version", "-v");
            Name        = "Print version information and quit";
            Description = "Print version information and quit";
        }
    )
}
