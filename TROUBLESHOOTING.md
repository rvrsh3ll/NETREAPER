# Troubleshooting (Decision Tree)

## Start Here
- Did you run `python3 wifi_main.py --self-test`?
  - **No**: Run it; review `./logs/*.log` for missing dependencies.
  - **Yes**: Continue below.

## Error: "Root privileges required"
- Are you running with `sudo` for monitor-mode or tc/netem features?
  - **No**: Re-run with `sudo` or enable `--dry-run` to preview only.
  - **Yes**: Check `sudo` policy and ensure user is in `sudoers`.

## Issue: "No wireless interface detected"
- Is the adapter present? `ip link show | grep -E "wlan|wlp"`
  - **No**: Verify drivers/firmware; on VMs attach USB WiFi.
  - **Yes**: Ensure interface is not soft-blocked: `rfkill list` -> `rfkill unblock wifi`.

## Monitor Mode Fails
- Does `airmon-ng` exist?
  - **Yes**: Use menu 7/9 which auto-runs `airmon-ng start <iface>`.
  - **No**: Install `aircrack-ng` or use `iw dev <iface> set type monitor` manually.
- If services won't stop, check logs for `NetworkManager`/`wpa_supplicant` errors; stop them manually then retry.

## Scapy Import Error
- Install dependencies: `sudo apt install python3-scapy` or `pip3 install --user scapy`.
- Re-run `--self-test` to confirm.

## nmap Permission Errors
- Use sudo for raw socket scans.
- If on corporate networks, ensure scanning is permitted.

## netem Not Applying
- Confirm `tc` available: `which tc`.
- Ensure interface name is correct; menu 13 validates names.
- Clear old qdisc: `sudo tc qdisc del dev <iface> root` and retry.

## ApacheBench Fails with "Connection refused"
- Verify target URL is reachable and correct scheme (http/https).
- Reduce concurrency if targeting embedded/AP devices.

## Logs and Debugging
- Logs: `./logs/wifi_multitool_YYYYMMDD_HHMMSS.log`
- Increase verbosity: add `--verbose` to trace function entry/exit and commands.
- Use `--dry-run` to confirm commands before impacting network services.

## Platform Notes
- **Linux (Ubuntu/Debian/Fedora/Arch)**: full feature set available with sudo.
- **macOS**: monitor-mode support depends on adapter/driver; use performance and HTTP tests if monitor mode is unavailable.
- **Windows/PowerShell**: run inside WSL for monitor-mode features; iperf3/HTTP tests operate natively.
