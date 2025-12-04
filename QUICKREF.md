# NETREAPER Quick Reference Card

## Common Commands

| Command | Description |
|---------|-------------|
| `netreaper` | Launch interactive menu |
| `netreaper scan <target>` | Quick scan a target |
| `netreaper scan <target> --full` | Full port scan |
| `netreaper wizard scan` | Guided scan wizard |
| `netreaper wifi` | WiFi attack menu |
| `netreaper status` | Show tool status |
| `netreaper install` | Launch installer |
| `netreaper config edit` | Edit configuration |
| `netreaper help` | Show all commands |

## Scan Flags

| Flag | Description |
|------|-------------|
| `--quick` | Top 100 ports (fastest) |
| `--standard` | Top 1000 ports |
| `--full` | All 65535 ports |
| `--stealth` | Slow, evades IDS |
| `--vuln` | Vulnerability scan |
| `-v, --verbose` | Verbose output |
| `-o, --output` | Save to file |

## Global Options

| Option | Description |
|--------|-------------|
| `-v, --verbose` | Enable verbose output |
| `-q, --quiet` | Suppress non-error output |
| `--no-color` | Disable colored output |
| `--debug` | Enable debug mode |

## File Locations

| Path | Description |
|------|-------------|
| `~/.netreaper/config` | Configuration file |
| `~/.netreaper/logs/` | Operation logs |
| `~/.netreaper/output/` | Scan results |
| `~/.netreaper/sessions/` | Saved sessions |

## Environment Variables

| Variable | Description |
|----------|-------------|
| `NETREAPER_LOG_LEVEL` | DEBUG/INFO/WARN/ERROR |
| `NETREAPER_VERBOSE` | Enable verbose (true/false) |
| `NETREAPER_NO_COLOR` | Disable colors (true/false) |

---
© 2025 OFFTRACKMEDIA Studios
