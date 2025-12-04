# HOWTO: WiFi Multitool

## Table of Contents
- [Overview](#overview)
- [Preparation](#preparation)
- [Running the Tool](#running-the-tool)
- [Common Workflows](#common-workflows)
- [Advanced Scenarios](#advanced-scenarios)
- [Integration](#integration)
- [Logging & Reports](#logging--reports)

## Overview
WiFi Multitool provides defensive monitoring, performance testing, and impairment simulation. Safety features (dry-run, confirmations, backups, rollback) are enabled by default.

## Preparation
1. Install dependencies (Ubuntu/Debian): `sudo apt install -y aircrack-ng wireless-tools iw iperf3 hping3 apache2-utils nmap iproute2 python3-scapy`.
2. Optional: create a Python venv and install `scapy` via pip for portability.
3. Run `python3 wifi_main.py --self-test` to verify tools and interface detection.

## Running the Tool
```bash
# Interactive menu with logging
sudo python3 wifi_main.py

# Dry-run to verify commands without changes
python3 wifi_main.py --dry-run --verbose

# Quiet automation (log only)
python3 wifi_main.py --quiet --self-test
```

## Common Workflows
### 1) Deauth/Disassoc Watcher
```
Menu -> 7
Enter duration (e.g., 300)
Optionally enter channel
```
- Requires monitor mode; services are suspended and restored automatically.
- Outputs: `deauth_watch_<session>.json` with BSSID counters.

### 2) Airtime Audit
```
Menu -> 9
```
- Uses `iw survey dump` to compute busy/rx/tx percentages per channel.
- Outputs: `airtime_audit_<session>.json`.

### 3) iperf3 Multi-Stream Load
```
Menu -> 10
Provide server IP, duration, streams, and optionally UDP bandwidth.
```
- Outputs: `iperf3_multistream_<session>.txt`.

### 4) tc/netem Impairment
```
Menu -> 13
Select interface, delay/jitter/loss values.
Confirm when prompted.
```
- Backup and rollback helpers restore services if interrupted.
- Clear with `tc qdisc del dev <iface> root` (also prompted in-menu).

### 5) Summaries
```
Menu -> 15
```
- Aggregates iperf3/ab/hping3 outputs into `summary_<session>.csv` and `.md`.

## Advanced Scenarios
- **netem + iperf3**: Menu -> 14 applies impairment then runs multi-stream throughput. Use for validating QoS/policing impacts.
- **Repeater**: Menu -> 16 to run repeated load tests with gaps for thermal/roaming studies.
- **Profiles**: Menu -> 18 saves default targets/durations per site or lab. Profiles stored in `wifi_profiles.json`.

## Integration
- **Automation**: Wrap `wifi_main.py --self-test --quiet` in CI to gate lab readiness.
- **Reporting**: Parse `summary_*.csv` in analytics pipelines or import into spreadsheets.
- **Safety Hooks**: Use `--dry-run` during change windows to validate command plans before execution.

## Logging & Reports
- Logs: `./logs/wifi_multitool_YYYYMMDD_HHMMSS.log` (DEBUG traces when `--verbose`).
- Backups: `logs/backup_<session>.json` captures service/interface state before monitor-mode or netem changes.
- Reports: JSON/Markdown summaries saved alongside logs for each session.
