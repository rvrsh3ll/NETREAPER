<div align="center">

# ☠️ NETREAPER
╔═══════════════════════════════════════════════════════════════════════════╗
║                                                                           ║
║  ███╗   ██╗███████╗████████╗██████╗ ███████╗ █████╗ ██████╗ ███████╗██████╗  ║
║  ████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗ ║
║  ██╔██╗ ██║█████╗     ██║   ██████╔╝█████╗  ███████║██████╔╝█████╗  ██████╔╝ ║
║  ██║╚██╗██║██╔══╝     ██║   ██╔══██╗██╔══╝  ██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗ ║
║  ██║ ╚████║███████╗   ██║   ██║  ██║███████╗██║  ██║██║     ███████╗██║  ██║ ║
║  ╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ║
║                                                                           ║
╚═══════════════════════════════════════════════════════════════════════════╝

### *"Some tools scan. Some tools attack. I do both."*

<br>

[![Version](https://img.shields.io/badge/VERSION-4.3.0_PHANTOM-ff0040?style=for-the-badge&logo=ghost&logoColor=white)](https://github.com/Nerds489/NETREAPER)
[![License](https://img.shields.io/badge/LICENSE-MIT-00d4ff?style=for-the-badge&logo=opensourceinitiative&logoColor=white)](LICENSE)
[![Platform](https://img.shields.io/badge/PLATFORM-LINUX-ffaa00?style=for-the-badge&logo=linux&logoColor=white)](https://www.linux.org/)
[![Bash](https://img.shields.io/badge/BASH-5.0+-40c057?style=for-the-badge&logo=gnubash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Tools](https://img.shields.io/badge/TOOLS-70+-9c36b5?style=for-the-badge&logo=hackaday&logoColor=white)](#-the-arsenal)

<br>

**The forbidden lovechild of `aircrack-ng` and `wifite`.**<br>
**Abandoned at birth. Raised by hackers. Back for vengeance.**

<br>

[⚡ Quick Start](#-quick-start) •
[🎯 Features](#-features) •
[📡 Arsenal](#-the-arsenal) •
[📸 Screenshots](#-screenshots) •
[🔧 Config](#-configuration) •
[⚠️ Legal](#%EF%B8%8F-legal-disclaimer)

---

</div>

## 💀 What is NETREAPER?

> **One tool to rule them all.**

NETREAPER is a **unified offensive security toolkit** that wraps **70+ penetration testing tools** into a single, menacing command-line interface. No more juggling terminals. No more forgetting syntax. Just pure, organized chaos.
┌──────────────────────────────────────────────────────────────────┐
│                                                                  │
│   Before NETREAPER:                After NETREAPER:              │
│   ─────────────────                ────────────────              │
│   $ nmap -sS -sV -A...             $ netreaper                   │
│   $ airmon-ng start...             > Select option               │
│   $ airodump-ng...                 > Enter target                │
│   $ hashcat -m 22000...            > Done. ☠️                     │
│   $ hydra -L users...                                            │
│   (╯°□°)╯︵ ┻━┻                                                   │
│                                                                  │
└──────────────────────────────────────────────────────────────────┘

### 🎯 Built For:
- 🔴 **Red Teamers** - Full offensive toolkit at your fingertips
- 🔵 **Blue Teamers** - Know your enemy's tools
- 🎓 **Students** - Learn pentesting with guided menus
- 🏢 **Professionals** - Consistent interface, professional reports

---

## ⚡ Quick Start
```bash
# Clone the reaper
git clone https://github.com/Nerds489/NETREAPER.git
cd NETREAPER

# Summon it
sudo ./install.sh

# Unleash it
netreaper
```

**One-liner for the impatient:**
```bash
git clone https://github.com/Nerds489/NETREAPER.git && cd NETREAPER && sudo ./install.sh && netreaper
```

---

## 🎯 Features

<table>
<tr>
<td width="50%" valign="top">

### 🔍 RECON
*Know your target*

| Tool | Purpose |
|------|---------|
| `nmap` | Port scanning (quick/full/stealth/vuln) |
| `masscan` | Rapid mass scanning |
| `rustscan` | Blazing fast port discovery |
| `netdiscover` | ARP network discovery |
| `dnsenum` | DNS enumeration |
| `sslscan` | SSL/TLS analysis |
| `enum4linux` | SMB enumeration |

</td>
<td width="50%" valign="top">

### 📡 WIRELESS
*Own the airwaves*

| Tool | Purpose |
|------|---------|
| `aircrack-ng` | WPA/WPA2 cracking |
| `airodump-ng` | Packet capture |
| `aireplay-ng` | Deauth attacks |
| `reaver` | WPS exploitation |
| `bettercap` | MITM attacks |
| `wifite` | Automated WiFi audit |
| `hostapd` | Evil twin AP |

</td>
</tr>
<tr>
<td width="50%" valign="top">

### 💀 EXPLOIT
*Break all the things*

| Tool | Purpose |
|------|---------|
| `metasploit` | Exploitation framework |
| `sqlmap` | SQL injection |
| `nikto` | Web vulnerability scan |
| `gobuster` | Directory brute force |
| `wpscan` | WordPress exploitation |
| `searchsploit` | Exploit database |
| `nuclei` | Template-based scanning |

</td>
<td width="50%" valign="top">

### 🔑 CREDENTIALS
*Crack all the hashes*

| Tool | Purpose |
|------|---------|
| `hashcat` | GPU hash cracking |
| `john` | CPU hash cracking |
| `hydra` | Online brute force |
| `medusa` | Parallel brute force |
| `crackmapexec` | SMB/WinRM attacks |
| `impacket` | Windows protocols |

</td>
</tr>
<tr>
<td width="50%" valign="top">

### 🔥 STRESS
*Test the limits*

| Tool | Purpose |
|------|---------|
| `hping3` | Packet flooding |
| `iperf3` | Bandwidth testing |
| `ab` | HTTP load testing |
| `tc/netem` | Network impairment |

</td>
<td width="50%" valign="top">

### 📊 INTEL
*Gather everything*

| Tool | Purpose |
|------|---------|
| `theharvester` | OSINT harvesting |
| `recon-ng` | Recon framework |
| `shodan` | Internet scanning |
| `tcpdump` | Packet capture |
| `wireshark` | Traffic analysis |

</td>
</tr>
</table>

---

## 🎮 The Menu System

NETREAPER v4.0 introduces a **clean, organized menu structure**:
╔═══════════════════════════════════════════════════════════════════╗
║                         ◤ ARSENAL ◢                               ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║   [1] 🔍 RECON           Scanning, discovery, enumeration        ║
║   [2] 📡 WIRELESS        WiFi attacks, monitoring, cracking       ║
║   [3] 💀 EXPLOIT         Web attacks, SQLi, Metasploit            ║
║   [4] 🔥 STRESS          Bandwidth, flooding, load testing        ║
║   [5] 🔧 TOOLS           Install arsenal, status, updates         ║
║   [6] 📊 INTEL           OSINT, traffic capture, reporting        ║
║   [7] 🔑 CREDENTIALS     Hash cracking, brute force, dumping      ║
║   [8] 🎯 POST-EXPLOIT    Lateral movement, persistence            ║
║                                                                   ║
║   [S] 📁 Sessions        [C] ⚙ Config        [H] Help            ║
║                                                                   ║
║                        [Q] Quit                                   ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝

Each category opens a **submenu** with specific tools and options.

---

## 🛠️ The Arsenal

### Installation Methods

**Option 1: Essential Tools Only** (~500MB, 5 min)
```bash
sudo netreaper-install essentials
```

**Option 2: Full Arsenal** (~3-5GB, 15-30 min)
```bash
sudo netreaper-install all
```

**Option 3: Category Install**
```bash
sudo netreaper-install scanning    # nmap, masscan, rustscan...
sudo netreaper-install wireless    # aircrack-ng, wifite, bettercap...
sudo netreaper-install exploit     # metasploit, sqlmap, nuclei...
sudo netreaper-install creds       # hashcat, john, hydra...
```

**Option 4: Interactive Menu**
```bash
sudo netreaper-install
```

### Check What's Installed
```bash
netreaper status
# or
sudo netreaper-install status
```

---

## 📸 Screenshots

<details>
<summary><b>🖼️ Click to expand screenshots</b></summary>

### Main Menu
███╗   ██╗███████╗████████╗██████╗ ███████╗ █████╗ ██████╗ ███████╗██████╗ 
████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗
██╔██╗ ██║█████╗     ██║   ██████╔╝█████╗  ███████║██████╔╝█████╗  ██████╔╝
██║╚██╗██║██╔══╝     ██║   ██╔══██╗██╔══╝  ██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗
██║ ╚████║███████╗   ██║   ██║  ██║███████╗██║  ██║██║     ███████╗██║  ██║
╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝

═══════════════════════════════════════════════════════════════════════════
║ "Some tools scan. Some tools attack. I do both."                        ║
═══════════════════════════════════════════════════════════════════════════
                    [ v4.3.0 // Phantom // 70+ Tools ]

### Tool Status
╔═══════════════════════════════════════════════════════════╗
║                    ARSENAL STATUS                        ║
╚═══════════════════════════════════════════════════════════╝
SCANNING:
✓nmap  ✓masscan  ✓rustscan  ✓netdiscover  ✓arp-scan
WIRELESS:
✓aircrack-ng  ✓airmon-ng  ✓airodump-ng  ✓reaver  ✓bettercap
CREDENTIALS:
✓hashcat  ✓john  ✓hydra  ✓medusa

Installed: 45  Missing: 25

</details>

---

## 🔧 Configuration

NETREAPER stores config in `~/.netreaper/`:
~/.netreaper/
├── config          # User preferences
├── sessions/       # Saved attack sessions
├── logs/           # Operation logs
├── output/         # Scan results
└── loot/           # Captured credentials

### Config Options
```bash
# Edit config
netreaper config edit

# Show current config
netreaper config show

# Reset to defaults
netreaper config reset
```

---

## 💻 CLI Usage
```bash
# Interactive menu (default)
netreaper

# Direct commands
netreaper scan 192.168.1.0/24 --quick
netreaper scan 10.0.0.1 --full --vuln
netreaper wifi --monitor wlan0
netreaper crack handshake.cap --hashcat

# Session management
netreaper session start
netreaper session resume <name>
netreaper session export

# Tool management
netreaper status
netreaper install

# Help
netreaper help
netreaper --version
```

---

## 🗺️ Roadmap

- [x] v3.0 - Initial release with 60+ tools
- [x] v3.1 - Session management, WiFi cracking
- [x] v3.3 - CLI improvements, verbose logging
- [x] v3.4 - Bug fixes, installer improvements
- [x] v4.0 - Menu restructure, separate installer, sudo handling
- [x] v4.1 - README overhaul, style updates
- [ ] v4.2 - Profile system, favorites, aliases
- [ ] v5.0 - Plugin architecture, custom modules

---

## 🤝 Contributing
```bash
# Fork it
# Clone it
git clone https://github.com/YOUR_USERNAME/NETREAPER.git

# Branch it
git checkout -b feature/awesome-feature

# Code it
# Test it
bash -n netreaper
shellcheck netreaper

# Push it
git push origin feature/awesome-feature

# PR it
```

---

## ⚠️ Legal Disclaimer
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║   ⚠️  THIS TOOL IS FOR AUTHORIZED PENETRATION TESTING ONLY  ⚠️                ║
║                                                                              ║
║   By using NETREAPER, you agree to:                                          ║
║   • Only test systems you have WRITTEN AUTHORIZATION to test                 ║
║   • Accept FULL LEGAL RESPONSIBILITY for your actions                        ║
║   • Understand that UNAUTHORIZED ACCESS IS A FEDERAL CRIME                   ║
║                                                                              ║
║   The developers accept NO LIABILITY for misuse of this tool.                ║
║                                                                              ║
║   CFAA violations can result in up to 20 years imprisonment.                 ║
║   Don't be stupid. Get permission. Document everything.                      ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

---

## 📜 License

Apache License 2.0 - See [LICENSE](LICENSE) for details.

**TL;DR:** Follow Apache 2.0, keep notices, and remember there is no warranty.

---

## 🙏 Credits

Built with hatred for complexity and love for chaos by **OFFTRACKMEDIA Studios**

### Standing on the shoulders of giants:
- [aircrack-ng](https://github.com/aircrack-ng/aircrack-ng)
- [nmap](https://nmap.org/)
- [Metasploit](https://www.metasploit.com/)
- [hashcat](https://hashcat.net/)
- And 60+ other incredible open-source projects

---

<div align="center">

**If NETREAPER helped you, give it a ⭐**
"In the kingdom of the blind, the one-eyed man is king.
 In the kingdom of WiFi, NETREAPER is god."
 
                                - Ancient Hacker Proverb

<br>

[![GitHub stars](https://img.shields.io/github/stars/Nerds489/NETREAPER?style=social)](https://github.com/Nerds489/NETREAPER/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/Nerds489/NETREAPER?style=social)](https://github.com/Nerds489/NETREAPER/network/members)

**Made with 💀 and mass deauthentication packets**

</div>

---

## 📜 License & Legal

This project is licensed under the **Apache License 2.0** - see [LICENSE](LICENSE) for details.

**© 2025 OFFTRACKMEDIA Studios**
ABN: 84 290 819 896

- [EULA](EULA/OFFTRACKMEDIA_EULA_2025.txt)
- [Code of Conduct](CODE_OF_CONDUCT.md)
- [Contributing](CONTRIBUTING.md)
- [Security Policy](SECURITY.md)

---
