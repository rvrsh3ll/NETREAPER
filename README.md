# NETREAPER 💀

<div align="center">

```
███╗   ██╗███████╗████████╗██████╗ ███████╗ █████╗ ██████╗ ███████╗██████╗ 
████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗
██╔██╗ ██║█████╗     ██║   ██████╔╝█████╗  ███████║██████╔╝█████╗  ██████╔╝
██║╚██╗██║██╔══╝     ██║   ██╔══██╗██╔══╝  ██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗
██║ ╚████║███████╗   ██║   ██║  ██║███████╗██║  ██║██║     ███████╗██║  ██║
╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝
```

**The disowned child of aircrack-ng and wifite. It came back with a vengeance.**

> *"Some tools scan. Some tools attack. I do both."*

[![Version](https://img.shields.io/badge/version-3.3.4-red?style=for-the-badge)](https://github.com/yourusername/netreaper)
[![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-Linux-blue?style=for-the-badge)](https://www.linux.org/)
[![Bash](https://img.shields.io/badge/bash-5.0%2B-orange?style=for-the-badge)](https://www.gnu.org/software/bash/)

[Features](#features) • [Installation](#installation) • [Usage](#usage) • [Screenshots](#screenshots) • [Tool Arsenal](#tool-arsenal) • [Legal](#legal-disclaimer)

</div>

---

## 🔥 What is NETREAPER?

NETREAPER is an all-in-one network security and WiFi assault toolkit that unifies **60+ offensive security tools** into a single, beautiful command-line interface. Stop juggling between dozens of tools with different syntaxes—NETREAPER wraps them all in consistent, easy-to-use menus.

Built for red teamers, penetration testers, and security researchers who want power without the hassle.

---

## ✨ Features

<table>
<tr>
<td width="50%">

### 🔍 Reconnaissance
- Port scanning (nmap, masscan, unicornscan)
- Network discovery & host enumeration
- OS fingerprinting & service detection
- DNS enumeration & zone transfers
- SSL/TLS analysis & vulnerability checks

</td>
<td width="50%">

### 📡 Wireless Attacks
- Monitor mode management
- Deauthentication attacks
- WPS exploitation (Reaver, Bully, Pixiewps)
- Handshake capture & cracking
- Channel hopping & client tracking

</td>
</tr>
<tr>
<td width="50%">

### 💀 Exploitation
- Web vulnerability scanning (Nikto, SQLMap)
- WordPress enumeration (WPScan)
- Directory & file brute forcing
- Metasploit Framework integration
- Exploit database searching

</td>
<td width="50%">

### 🔥 Stress Testing
- Bandwidth testing (iperf3)
- Packet flooding (hping3)
- HTTP load testing (Apache Bench)
- Network impairment simulation
- Traffic capture & analysis

</td>
</tr>
<tr>
<td width="50%">

### 🔎 OSINT
- Email & subdomain harvesting
- Shodan integration
- WHOIS lookups
- Google dorking assistance
- Recon-ng framework

</td>
<td width="50%">

### 🛡️ Defense & Monitoring
- Deauth/disassoc detection
- Airtime utilization audits
- LAN inventory scanning
- Traffic monitoring
- Real-time logging

</td>
</tr>
</table>

---

## 📦 Installation

### Quick Install

```bash
# Clone the repository
git clone (https://github.com/Nerds489/NETREAPER.git)
cd netreaper

# Make executable and install system-wide
chmod +x netreaper
sudo ./netreaper --install

# Run it
netreaper
```

### Manual Install

```bash
# Download directly
wget https://raw.githubusercontent.com/Nerds489/netreaper/main/netreaper
chmod +x netreaper

# Run from current directory
./netreaper

# Or install to PATH
sudo cp netreaper /usr/local/bin/
```

### Dependencies

NETREAPER wraps existing security tools. Install what you need:

```bash
# Core scanning tools
sudo apt install -y nmap masscan arp-scan netdiscover

# WiFi tools
sudo apt install -y aircrack-ng wifite reaver bully

# Web tools  
sudo apt install -y nikto sqlmap gobuster wpscan

# OSINT tools
sudo apt install -y theharvester recon-ng whois

# Stress testing
sudo apt install -y hping3 iperf3 apache2-utils

# Full arsenal (everything)
sudo apt install -y nmap masscan unicornscan netdiscover arp-scan fping \
    hping3 p0f arping nbtscan aircrack-ng wifite reaver bully pixiewps \
    nikto wpscan sqlmap dirb gobuster ffuf dnsenum dnsmap dnsrecon \
    sslscan sslyze onesixtyone smbmap smbclient enum4linux tcpdump \
    wireshark tshark ettercap-graphical theharvester recon-ng whois \
    hping3 iperf3 apache2-utils metasploit-framework exploitdb
```

---

## 🚀 Usage

### Interactive Mode (Recommended)

```bash
# Launch the interactive menu
netreaper

# Or explicitly
netreaper menu
```

The interactive menu provides guided access to all features with a clean, menacing interface.

### Direct CLI Commands

```bash
# Port scanning
netreaper scan 192.168.1.0/24              # Quick scan
netreaper scan 10.0.0.1 --full             # Full port + service scan
netreaper scan target.com --stealth        # Low-profile scan
netreaper scan target.com --vuln           # Vulnerability scripts

# WiFi operations
netreaper wifi --monitor wlan0             # Enable monitor mode
netreaper wifi --managed wlan0             # Disable monitor mode
netreaper wifi --scan                      # Scan for networks

# Utilities
netreaper status                           # Show installed tools
netreaper install                          # Install tool packages
netreaper help                             # Show help
netreaper --version                        # Show version
```

### First Run

On first launch, NETREAPER displays a legal disclaimer requiring acknowledgment. This is stored in `~/.netreaper/.legal_accepted` and won't appear again.

---

## 📸 Screenshots

### Main Menu
```
┌─────────────────────────────────────────────────────────────────────┐
│                         ◤ ARSENAL ◢                                 │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  ⚔ RECON                          🛡 WIRELESS                       │
│  ─────────────────────           ─────────────────────              │
│  [1] Port Scanning               [7]  WiFi Recon                    │
│  [2] Network Discovery           [8]  Deauth Attack                 │
│  [3] DNS Enumeration             [9]  WPS Attack                    │
│  [4] SSL/TLS Analysis            [10] Handshake Capture             │
│  [5] SNMP Sweep                  [11] Monitor Mode                  │
│  [6] SMB Enumeration             [12] Channel Hopper                │
│                                                                     │
│  💀 EXPLOIT                       🔥 STRESS                         │
│  ─────────────────────           ─────────────────────              │
│  [13] Web Attacks                [17] Bandwidth Test (iperf)        │
│  [14] SQL Injection              [18] Packet Flood (hping3)         │
│  [15] Metasploit Console         [19] HTTP Load Test                │
│  [16] Exploit Search             [20] Network Impairment            │
│                                                                     │
│              [Q] Quit    [H] Help    [R] Run Direct                 │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

### Port Scanning Submenu
```
╔═══════════════════════════════════════════════════════════════╗
║                    ⚔ PORT SCANNING                            ║
╚═══════════════════════════════════════════════════════════════╝

[1] Quick Scan          nmap -T4 -F
[2] Full Scan           nmap -sS -sV -sC -A -p-
[3] Stealth Scan        nmap -sS -T2 -f
[4] Vuln Scan           nmap --script vuln
[5] UDP Scan            nmap -sU --top-ports 100
[6] Masscan             masscan -p1-65535 --rate=10000
[7] Service Detection   nmap -sV --version-intensity 5

[0] Back
```

---

## 🔧 Tool Arsenal

### Scanning & Enumeration
| Tool | Description | Status |
|------|-------------|--------|
| nmap | Network mapper with NSE scripts | ✅ Integrated |
| masscan | Fastest port scanner | ✅ Integrated |
| unicornscan | Async TCP/UDP scanner | ✅ Integrated |
| arp-scan | Layer-2 ARP discovery | ✅ Integrated |
| netdiscover | Active/passive ARP recon | ✅ Integrated |
| dnsenum | DNS enumeration | ✅ Integrated |
| sslscan | SSL/TLS cipher analysis | ✅ Integrated |

### WiFi
| Tool | Description | Status |
|------|-------------|--------|
| aircrack-ng | WEP/WPA cracking suite | ✅ Integrated |
| wifite | Automated WiFi attacks | ✅ Integrated |
| reaver | WPS brute force | ✅ Integrated |
| bully | WPS attacks | ✅ Integrated |
| pixiewps | Offline WPS attack | ✅ Integrated |

### Web
| Tool | Description | Status |
|------|-------------|--------|
| nikto | Web server scanner | ✅ Integrated |
| sqlmap | SQL injection automation | ✅ Integrated |
| wpscan | WordPress scanner | ✅ Integrated |
| gobuster | Directory brute forcing | ✅ Integrated |
| ffuf | Fast web fuzzer | ✅ Integrated |

### Exploitation
| Tool | Description | Status |
|------|-------------|--------|
| metasploit | Exploitation framework | ✅ Integrated |
| searchsploit | Exploit database search | ✅ Integrated |

### OSINT
| Tool | Description | Status |
|------|-------------|--------|
| theHarvester | Email/subdomain harvester | ✅ Integrated |
| recon-ng | Web recon framework | ✅ Integrated |
| shodan | Internet device search | ✅ Integrated |

---

## 📁 File Structure

```
~/.netreaper/
├── config/              # Configuration files
│   └── .legal_accepted  # Legal disclaimer acceptance
├── logs/                # Command and session logs
│   └── netreaper.log
├── output/              # Scan results and exports
│   └── scan_*.txt
└── loot/                # Captured credentials and data
```

---

## ⚙️ Configuration

NETREAPER stores its configuration in `~/.netreaper/`. 

### Environment Variables

```bash
# Disable colors
export NO_COLOR=1

# Enable debug mode
export DEBUG=1
```

### Uninstall

```bash
# Remove binary
sudo netreaper --uninstall

# Full cleanup (removes config and logs)
# Answer 'y' when prompted
```

---

## 🤝 Contributing

Contributions are welcome! Here's how:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/evil-twin`)
3. Commit your changes (`git commit -am 'Add evil twin attack'`)
4. Push to the branch (`git push origin feature/evil-twin`)
5. Open a Pull Request

### Code Style

- Follow existing color scheme (C_BLOOD, C_VENOM, C_GHOST, etc.)
- Use consistent menu box formatting
- Function naming: `menu_*`, `cmd_*`, `run_*`
- Run `shellcheck netreaper` before submitting

---

## ⚠️ Legal Disclaimer

```
╔═══════════════════════════════════════════════════════════════════╗
║                     ⚠  LEGAL DISCLAIMER  ⚠                        ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║  This tool is for AUTHORIZED PENETRATION TESTING ONLY.           ║
║                                                                   ║
║  By using this tool, you confirm:                                 ║
║  • You have WRITTEN authorization to test target systems         ║
║  • You accept FULL legal responsibility for your actions         ║
║  • You understand unauthorized access is a FEDERAL CRIME         ║
║  • The authors accept NO LIABILITY for misuse                    ║
║                                                                   ║
║  CFAA violations: Up to 20 years imprisonment                    ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝
```

**This tool is intended for:**
- Authorized penetration testing
- Security research on systems you own
- Educational purposes in lab environments
- CTF competitions

**This tool is NOT for:**
- Unauthorized access to computer systems
- Attacking networks without explicit permission
- Any illegal activities

The developers assume no liability and are not responsible for any misuse or damage caused by this program.

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Credits

- Inspired by [aircrack-ng](https://www.aircrack-ng.org/), [wifite](https://github.com/derv82/wifite2), and countless security tools
- Built by [Network & Firewall Technicians (NFT)](https://github.com/yourusername)
- ASCII art generated with love and malice

---

## 📞 Support

- 🐛 [Report a Bug](https://github.com/yourusername/netreaper/issues)
- 💡 [Request a Feature](https://github.com/yourusername/netreaper/issues)
- 📧 Contact: your@email.com

---

<div align="center">

**NETREAPER** — *Some tools scan. Some tools attack. I do both.*

```
          ______
       .-"      "-.
      /            \
     |              |
     |,  .-.  .-.  ,|
     | )(_o/  \o_)( |
     |/     /\     \|
     (_     ^^     _)
      \__|IIIIII|__/
       | \IIIIII/ |
       \          /
        `--------`
```

*The reaper is watching.*

</div>

---
## Update 3.3.4 (Retribution)
- Single-tool packaging: netreaper-only installer/uninstaller and completions.
- Cleaned legacy wifi_multitool/nft-multitool artifacts; session dirs created automatically.
- Fresh bash completion covering scan, wifi, crack, session, osint, web, exploit, stress, traffic.
# NETREAPER
