# NFT-Multitool - Security Tool Reference

## Port Scanning & Host Discovery (14 tools)

### nmap
**Package:** nmap  
**Install:** `sudo apt install nmap`  
**Description:** Network Mapper with 600+ NSE scripts

| Scan Type | Command | Description |
|-----------|---------|-------------|
| Quick | `nft-multitool scan <target> --quick` | Fast scan of common ports |
| Full | `nft-multitool scan <target> --full` | All ports with version detection |
| Stealth | `nft-multitool scan <target> --stealth` | Low-profile SYN scan |
| Vuln | `nft-multitool scan <target> --vuln` | Vulnerability scripts |

### masscan
**Package:** masscan  
**Install:** `sudo apt install masscan`  
**Description:** Ultra-fast port scanner (10M+ packets/sec)
```bash
nft-multitool scan <target> --tool masscan --rate 10000
```

### unicornscan
**Package:** unicornscan  
**Install:** `sudo apt install unicornscan`  
**Description:** Async TCP/UDP port scanner with banner grabbing
```bash
nft-multitool scan <target> --tool unicornscan
```

### netdiscover
**Package:** netdiscover  
**Install:** `sudo apt install netdiscover`  
**Description:** ARP-based live host discovery on local networks
```bash
nft-multitool discover 192.168.1.0/24
```

### arp-scan
**Package:** arp-scan  
**Install:** `sudo apt install arp-scan`  
**Description:** Layer-2 ARP sweeps for hosts
```bash
nft-multitool discover 192.168.1.0/24 --arp
```

### fping
**Package:** fping  
**Install:** `sudo apt install fping`  
**Description:** Fast ICMP sweep / availability checks
```bash
nft-multitool discover 192.168.1.0/24 --passive  # uses p0f for passive fingerprinting
```

### hping3
**Package:** hping3  
**Install:** `sudo apt install hping3`  
**Description:** TCP/UDP/ICMP crafted packets for firewall testing
```bash
nft-multitool scan <target> --tool nmap --stealth  # for SYN probes; hping3 helper used in scripts
```

### 0trace
**Package:** 0trace  
**Install:** `sudo apt install 0trace`  
**Description:** Application-layer traceroute through firewall/NAT
```bash
nft-multitool run 0trace <target>
```

### intrace
**Package:** intrace  
**Install:** `sudo apt install intrace`  
**Description:** Interactive TCP traceroute for stateful firewalls
```bash
nft-multitool run intrace -t <target>
```

### p0f
**Package:** p0f  
**Install:** `sudo apt install p0f`  
**Description:** Passive OS fingerprinting via captured packets
```bash
nft-multitool discover 192.168.1.0/24 --passive
```

### arping
**Package:** iputils-arping  
**Install:** `sudo apt install iputils-arping`  
**Description:** ARP reachability tests and MAC discovery
```bash
nft-multitool run arping -c 4 <target>
```

### nbtscan
**Package:** nbtscan  
**Install:** `sudo apt install nbtscan`  
**Description:** NetBIOS host enumeration for Windows networks
```bash
nft-multitool run nbtscan 192.168.1.0/24
```

### amap
**Package:** amap  
**Install:** `sudo apt install amap`  
**Description:** Application fingerprinting via banner matching
```bash
nft-multitool run amap -A <host>
```

### nmapsi4
**Package:** nmapsi4  
**Install:** `sudo apt install nmapsi4`  
**Description:** GUI frontend for nmap (launch manually)

## DNS Enumeration (3 tools)

### dnsenum
**Package:** dnsenum  
**Install:** `sudo apt install dnsenum`  
**Description:** DNS/WHOIS/bruteforce enumeration
```bash
nft-multitool dns example.com --tool dnsenum
```

### dnsmap
**Package:** dnsmap  
**Install:** `sudo apt install dnsmap`  
**Description:** Subdomain brute-forcer
```bash
nft-multitool dns example.com --subdomains
```

### dmitry
**Package:** dmitry  
**Install:** `sudo apt install dmitry`  
**Description:** Deepmagic Information Gathering (WHOIS, subdomains)
```bash
nft-multitool dns example.com --tool dmitry
```

## SNMP Enumeration (3 tools)

### braa
**Package:** braa  
**Install:** `sudo apt install braa`  
**Description:** Mass SNMP queries for community strings
```bash
nft-multitool snmp 192.168.1.0/24 --tool braa
```

### onesixtyone
**Package:** onesixtyone  
**Install:** `sudo apt install onesixtyone`  
**Description:** Fast SNMP scanner for communities
```bash
nft-multitool snmp 192.168.1.0/24 --sweep
```

### snmpcheck
**Package:** snmpcheck  
**Install:** `sudo apt install snmpcheck`  
**Description:** SNMP service auditing with default communities
```bash
nft-multitool snmp 192.168.1.10 --check
```

## SMB Enumeration (1 tool)

### smbmap
**Package:** smbmap  
**Install:** `sudo apt install smbmap`  
**Description:** SMB share enumeration with permissions mapping
```bash
nft-multitool smb 192.168.1.50
```

## SSL/TLS Analysis (6 tools)

### sslscan
**Package:** sslscan  
**Install:** `sudo apt install sslscan`  
**Description:** SSL cipher and protocol enumeration
```bash
nft-multitool ssl example.com
```

### sslyze
**Package:** sslyze  
**Install:** `sudo apt install sslyze`  
**Description:** Comprehensive TLS analysis and vuln checks
```bash
nft-multitool ssl example.com --vulns
```

### ssldump
**Package:** ssldump  
**Install:** `sudo apt install ssldump`  
**Description:** TLS session capture/decrypt (requires root and keys)
```bash
nft-multitool ssl example.com --certs
```

### sslh
**Package:** sslh  
**Install:** `sudo apt install sslh`  
**Description:** SSL/SSH/HTTP multiplexer for port sharing
```bash
nft-multitool ssl localhost --tool sslh
```

### thc-ssl-dos
**Package:** thc-ssl-dos  
**Install:** `sudo apt install thc-ssl-dos`  
**Description:** SSL handshake stress testing
```bash
nft-multitool ssl example.com --tool thc-ssl-dos
```

### sslsniff
**Package:** sslsniff  
**Install:** `sudo apt install sslsniff`  
**Description:** TLS interception proof-of-concept (for labs)
```bash
nft-multitool ssl example.com --tool sslsniff
```

## Traffic Capture & Analysis (4 tools)

### wireshark
**Package:** wireshark  
**Install:** `sudo apt install wireshark`  
**Description:** GUI packet analyzer
```bash
nft-multitool capture eth0
```

### tcpdump
**Package:** tcpdump  
**Install:** `sudo apt install tcpdump`  
**Description:** CLI packet capture with filters
```bash
nft-multitool capture eth0 --help
```

### etherape
**Package:** etherape  
**Install:** `sudo apt install etherape`  
**Description:** Graphical traffic flow visualization
```bash
nft-multitool run etherape -i eth0
```

### netcat / nc
**Package:** netcat-traditional or openbsd-netcat  
**Install:** `sudo apt install netcat-traditional`  
**Description:** TCP/UDP connectivity tests
```bash
nft-multitool run nc -vz <host> <port>
```

## Web Security (5 tools)

### burpsuite
**Package:** burpsuite  
**Install:** `sudo apt install burpsuite`  
**Description:** Proxy-based web security testing
```bash
nft-multitool web https://target --burp
```

### wpscan
**Package:** wpscan  
**Install:** `sudo apt install wpscan`  
**Description:** WordPress scanner with vuln DB
```bash
nft-multitool web https://blog.example --wpscan
```

### nikto
**Package:** nikto  
**Install:** `sudo apt install nikto`  
**Description:** Web server vulnerability scanner
```bash
nft-multitool web https://target --nikto
```

### sqlmap
**Package:** sqlmap  
**Install:** `sudo apt install sqlmap`  
**Description:** Automated SQLi testing and exploitation
```bash
nft-multitool web "https://target/vuln?id=1" --sqli
```

### siege
**Package:** siege  
**Install:** `sudo apt install siege`  
**Description:** HTTP load testing / benchmarking
```bash
nft-multitool web https://target --load-test
```

## Fuzzing (3 tools)

### afl-fuzz (afl)
**Package:** afl  
**Install:** `sudo apt install afl`  
**Description:** American Fuzzy Lop instrumentation-based fuzzer
```bash
nft-multitool fuzz /path/to/bin --tool afl
```

### afl++
**Package:** afl++  
**Install:** `sudo apt install afl++`  
**Description:** Community-enhanced AFL fork
```bash
nft-multitool fuzz /path/to/bin --tool afl++
```

### sfuzz
**Package:** sfuzz  
**Install:** `sudo apt install sfuzz`  
**Description:** Simple network protocol fuzzer
```bash
nft-multitool fuzz "http://target" --tool sfuzz
```

## Protocol Attacks (4 tools)

### yersinia
**Package:** yersinia  
**Install:** `sudo apt install yersinia`  
**Description:** Layer 2 protocol attacks (STP, CDP, DHCP)
```bash
nft-multitool protocol --tool yersinia --iface eth0 --attack stp
```

### t50
**Package:** t50  
**Install:** `sudo apt install t50`  
**Description:** Multi-protocol packet injector for stress testing
```bash
nft-multitool protocol --tool t50 --target 192.168.1.10 --protocol TCP
```

### irpas
**Package:** irpas  
**Install:** `sudo apt install irpas`  
**Description:** Routing protocol attack suite (e.g., icmpenum/isic)
```bash
nft-multitool protocol --tool irpas --target 192.168.1.1
```

### thc-ipv6
**Package:** thc-ipv6  
**Install:** `sudo apt install thc-ipv6`  
**Description:** IPv6 attack toolkit (alive6, parasite6, dos-new-ip6)
```bash
nft-multitool protocol --tool thc-ipv6 --iface eth0 --attack alive6 --target ff02::1
```

## VPN & Load Balancer Checks (2 tools)

### ike-scan
**Package:** ike-scan  
**Install:** `sudo apt install ike-scan`  
**Description:** IKE VPN gateway discovery and fingerprinting
```bash
nft-multitool run ike-scan <target>
```

### lbd
**Package:** lbd  
**Install:** `sudo apt install lbd`  
**Description:** Load balancer detector (HTTP/DNS)
```bash
nft-multitool run lbd example.com
```

## OSINT (3 tools)

### shodan CLI
**Package:** python3-shodan  
**Install:** `sudo apt install python3-shodan`  
**Description:** Shodan search interface
```bash
nft-multitool osint "apache port:80" --shodan
```

### instaloader
**Package:** instaloader  
**Install:** `sudo apt install instaloader`  
**Description:** Instagram profile/media scraping (respect TOS)
```bash
nft-multitool osint <profile> --insta
```

### recon-ng
**Package:** recon-ng  
**Install:** `sudo apt install recon-ng`  
**Description:** Modular OSINT framework
```bash
nft-multitool osint --recon
```

## Vulnerability Framework (1 tool)

### metasploit-framework
**Package:** metasploit-framework  
**Install:** `sudo apt install metasploit-framework`  
**Description:** Full exploitation framework and auxiliary modules
```bash
nft-multitool msf --search "tomcat"
```

---

Use `nft-multitool install --category <cat>` to install grouped dependencies and `nft-multitool status` to view which tools are available on the system.
