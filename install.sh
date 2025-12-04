#!/usr/bin/env bash
#═══════════════════════════════════════════════════════════════════════════════
#    NETREAPER Installer
#    Copyright (c) 2025 OFFTRACKMEDIA Studios
#═══════════════════════════════════════════════════════════════════════════════

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}"
cat << 'EOF_ART'
    ███╗   ██╗███████╗████████╗██████╗ ███████╗ █████╗ ██████╗ ███████╗██████╗ 
    ████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗
    ██╔██╗ ██║█████╗     ██║   ██████╔╝█████╗  ███████║██████╔╝█████╗  ██████╔╝
    ██║╚██╗██║██╔══╝     ██║   ██╔══██╗██╔══╝  ██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗
    ██║ ╚████║███████╗   ██║   ██║  ██║███████╗██║  ██║██║     ███████╗██║  ██║
    ╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝
EOF_ART
echo -e "${NC}"
echo -e "    ${CYAN}NETREAPER v5.0.0 Installer${NC}"
echo

# Check root
if [[ $EUID -ne 0 ]]; then
    echo -e "    ${RED}[!]${NC} This installer must be run as root"
    echo -e "    ${CYAN}[*]${NC} Usage: sudo ./install.sh"
    exit 1
fi

# Installation paths
PREFIX="${PREFIX:-/usr/local/bin}"
COMPLETION_DIR="/etc/bash_completion.d"

echo -e "    ${CYAN}[*]${NC} Installing to ${PREFIX}..."

# Install main scripts
install -m 755 netreaper "$PREFIX/netreaper"
echo -e "    ${GREEN}[✓]${NC} Installed netreaper"

install -m 755 netreaper-install "$PREFIX/netreaper-install"
echo -e "    ${GREEN}[✓]${NC} Installed netreaper-install"

# Install bash completion
if [[ -d "$COMPLETION_DIR" ]]; then
    install -m 644 completions/netreaper.bash "$COMPLETION_DIR/netreaper"
    echo -e "    ${GREEN}[✓]${NC} Installed bash completion"
fi

# Create config directory
mkdir -p /etc/netreaper
mkdir -p ~/.netreaper/{logs,output,loot,sessions}
echo -e "    ${GREEN}[✓]${NC} Created /etc/netreaper"

echo
echo -e "    ${GREEN}════════════════════════════════════════════════════════${NC}"
echo -e "    ${GREEN}    ✓ NETREAPER v5.0.0 installed successfully!${NC}"
echo -e "    ${GREEN}════════════════════════════════════════════════════════${NC}"
echo
echo -e "    ${CYAN}Quick Start:${NC}"
echo -e "        netreaper              # Launch interactive menu"
echo -e "        netreaper wizard scan  # Guided scan wizard"
echo -e "        netreaper help         # Show all commands"
echo
echo -e "    ${CYAN}Install Tools:${NC}"
echo -e "        sudo netreaper-install # Interactive installer"
echo
echo -e "    ${CYAN}© 2025 OFFTRACKMEDIA Studios${NC}"
echo
