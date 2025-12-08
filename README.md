<div align="center">

# ☠️ NETREAPER

```
 ███╗   ██╗███████╗████████╗██████╗ ███████╗ █████╗ ██████╗ ███████╗██████╗ 
 ████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗
 ██╔██╗ ██║█████╗     ██║   ██████╔╝█████╗  ███████║██████╔╝█████╗  ██████╔╝
 ██║╚██╗██║██╔══╝     ██║   ██╔══██╗██╔══╝  ██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗
 ██║ ╚████║███████╗   ██║   ██║  ██║███████╗██║  ██║██║     ███████╗██║  ██║
 ╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝
```

### *"Some tools scan. Some tools attack. I do both."*

[![Version](https://img.shields.io/badge/VERSION-5.1.0_PHANTOM_PROTOCOL-ff0040?style=for-the-badge&logo=ghost&logoColor=white)](https://github.com/Nerds489/NETREAPER)
[![License](https://img.shields.io/badge/LICENSE-APACHE_2.0-00d4ff?style=for-the-badge&logo=opensourceinitiative&logoColor=white)](LICENSE)
[![Platform](https://img.shields.io/badge/PLATFORM-LINUX-ffaa00?style=for-the-badge&logo=linux&logoColor=white)](https://www.linux.org/)
[![Bash](https://img.shields.io/badge/BASH-5.0+-40c057?style=for-the-badge&logo=gnubash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Tools](https://img.shields.io/badge/TOOLS-70+-9c36b5?style=for-the-badge&logo=hackaday&logoColor=white)](#-the-arsenal)

**The forbidden lovechild of `aircrack-ng` and `wifite`.**  
**Abandoned at birth. Raised by hackers. Back for vengeance.**

[⚡ Quick Start](#-quick-start) •
[🎯 Features](#-features) •
[📡 Arsenal](#-the-arsenal) •
[🔧 Usage](#-usage) •
[⚠️ Legal](#%EF%B8%8F-legal-disclaimer)

</div>

---

## 💀 What is NETREAPER?

> **One tool to rule them all.**

NETREAPER is a **unified offensive security toolkit** that wraps **70+ penetration testing tools** into a single, menacing command-line interface. No more juggling terminals. No more forgetting syntax. Just pure, organized chaos.

### Before vs After

| Before NETREAPER 😫 | After NETREAPER 😎 |
|---------------------|-------------------|
| `nmap -sS -sV -sC -A -p- target` | `netreaper` |
| `airmon-ng start wlan0` | `> Select [2] Wireless` |
| `airodump-ng wlan0mon` | `> Select [4] WiFi Scan` |
| `hashcat -m 22000 capture.hc22000` | `> Enter target` |
| `hydra -L users.txt -P pass.txt ssh://target` | `> Done. ☠️` |

### 🎯 Built For

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
sudo bash ./install.sh

# Unleash it
sudo netreaper
```

**One-liner for the impatient:**
```bash
git clone https://github.com/Nerds489/NETREAPER.git && cd NETREAPER && sudo bash ./install.sh && netreaper
```

---

## 🎯 Features

- Premium UX: guided scan/wifi wizards, first-run setup, compact/json status, quick reference.
- Compliance-ready logging: log levels, audit trails, spinners, progress bars, verbose toggle.
- Smarter safety: confirmations for dangerous operations, privilege escalation helper, target validation.

### 🔍 RECON
| Tool | Purpose |
|------|---------|
| `nmap` | Port scanning (quick/full/stealth/vuln) |
| `masscan` | Rapid mass scanning |
| `rustscan` | Blazing fast port discovery |
| `netdiscover` | ARP network discovery |
| `dnsenum` | DNS enumeration |
| `sslscan` | SSL/TLS analysis |
| `enum4linux` | SMB enumeration |

### 📡 WIRELESS
| Tool | Purpose |
|------|---------|
| `aircrack-ng` | WPA/WPA2 cracking |
| `airodump-ng` | Packet capture |
| `aireplay-ng` | Deauth attacks |
| `reaver` | WPS exploitation |
| `bettercap` | MITM attacks |
| `wifite` | Automated WiFi audit |
| `hostapd` | Evil twin AP |

### 💀 EXPLOIT
| Tool | Purpose |
|------|---------|
| `metasploit` | Exploitation framework |
| `sqlmap` | SQL injection |
| `nikto` | Web vulnerability scan |
| `gobuster` | Directory brute force |
| `wpscan` | WordPress exploitation |
| `searchsploit` | Exploit database |
| `nuclei` | Template-based scanning |

### 🔑 CREDENTIALS
| Tool | Purpose |
|------|---------|
| `hashcat` | GPU hash cracking |
| `john` | CPU hash cracking |
| `hydra` | Online brute force |
| `medusa` | Parallel brute force |
| `crackmapexec` | SMB/WinRM attacks |
| `impacket` | Windows protocols |

### 🔥 STRESS
| Tool | Purpose |
|------|---------|
| `hping3` | Packet flooding |
| `iperf3` | Bandwidth testing |
| `ab` | HTTP load testing |

### 📊 INTEL
| Tool | Purpose |
|------|---------|
| `theharvester` | OSINT harvesting |
| `recon-ng` | Recon framework |
| `shodan` | Internet scanning |
| `tcpdump` | Packet capture |
| `wireshark` | Traffic analysis |

---

## 🎮 The Menu System

NETREAPER v4.0+ features a **clean, organized menu structure**:

```
┌───────────────────────────────────────────────────────────────────┐
│                         ◤ ARSENAL ◢                               │
├───────────────────────────────────────────────────────────────────┤
│                                                                   │
│   [1] 🔍 RECON           Scanning, discovery, enumeration        │
│   [2] 📡 WIRELESS        WiFi attacks, monitoring, cracking       │
│   [3] 💀 EXPLOIT         Web attacks, SQLi, Metasploit            │
│   [4] 🔥 STRESS          Bandwidth, flooding, load testing        │
│   [5] 🔧 TOOLS           Install arsenal, status, updates         │
│   [6] 📊 INTEL           OSINT, traffic capture, reporting        │
│   [7] 🔑 CREDENTIALS     Hash cracking, brute force, dumping      │
│   [8] 🎯 POST-EXPLOIT    Lateral movement, persistence            │
│                                                                   │
│   [S] 📁 Sessions        [C] ⚙ Config        [H] Help            │
│                                                                   │
│                        [Q] Quit                                   │
│                                                                   │
└───────────────────────────────────────────────────────────────────┘
```

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
```

---

## 💻 Usage

```bash
# Interactive menu (default)
sudo netreaper

# Direct commands
sudo netreaper scan 192.168.1.0/24 --quick
sudo netreaper scan 10.0.0.1 --full --vuln
sudo netreaper wifi --monitor wlan0

# Session management
sudo netreaper session start
sudo netreaper session resume

# Tool management
sudo netreaper status
sudo netreaper install

# Help
sudo netreaper help
sudonetreaper --version
```

---

## 🗺️ Roadmap

- [x] v3.0 - Initial release with 60+ tools
- [x] v3.4 - Bug fixes, installer improvements
- [x] v4.0 - Menu restructure, separate installer, sudo handling
- [x] v4.1 - README overhaul, style updates
- [x] v4.3 - OFFTRACKMEDIA licensing, GitHub templates
- [x] v5.0 - Phantom Protocol UX/logging/wizards overhaul
- [x] v5.1 - Critical bug fixes, input sanitization, missing functions
- [ ] v5.5 - Profile system, favorites, aliases
- [ ] v6.0 - Plugin architecture, custom modules

---

## ⚠️ Legal Disclaimer

> **⚠️ THIS TOOL IS FOR AUTHORIZED PENETRATION TESTING ONLY ⚠️**

By using NETREAPER, you agree to:

- ✅ Only test systems you have **WRITTEN AUTHORIZATION** to test
- ✅ Accept **FULL LEGAL RESPONSIBILITY** for your actions
- ✅ Understand that **UNAUTHORIZED ACCESS IS A FEDERAL CRIME**

The developers accept **NO LIABILITY** for misuse of this tool.

**CFAA violations can result in up to 20 years imprisonment.**  
*Don't be stupid. Get permission. Document everything.*

---

## 📜 License

This project is licensed under the **Apache License 2.0** - see [LICENSE](LICENSE) for details.

**© 2025 OFFTRACKMEDIA Studios**  
ABN: 84 290 819 896

| Document | Description |
|----------|-------------|
| [LICENSE](LICENSE) | Apache 2.0 License |
| [EULA](EULA/OFFTRACKMEDIA_EULA_2025.txt) | End User License Agreement |
| [Code of Conduct](CODE_OF_CONDUCT.md) | Community standards |
| [Contributing](CONTRIBUTING.md) | How to contribute |
| [Security Policy](SECURITY.md) | Vulnerability reporting |

---

## 🙏 Credits

Built with hatred for complexity and love for chaos by **[OFFTRACKMEDIA Studios](https://github.com/Nerds489)**

### Standing on the shoulders of giants:
- [aircrack-ng](https://github.com/aircrack-ng/aircrack-ng)
- [nmap](https://nmap.org/)
- [Metasploit](https://www.metasploit.com/)
- [hashcat](https://hashcat.net/)
- And 60+ other incredible open-source projects

---

<div align="center">

**If NETREAPER helped you, give it a ⭐**

```
"In the kingdom of the blind, the one-eyed man is king.
 In the kingdom of WiFi, NETREAPER is god."
 
                                - Ancient Hacker Proverb
```

[![GitHub stars](https://img.shields.io/github/stars/Nerds489/NETREAPER?style=social)](https://github.com/Nerds489/NETREAPER/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/Nerds489/NETREAPER?style=social)](https://github.com/Nerds489/NETREAPER/network/members)

**Made with 💀 and mass deauthentication packets**

*OFFTRACKMEDIA Studios - "Building Empires, Not Just Brands."*

</div>
