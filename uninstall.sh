#!/usr/bin/env bash
set -euo pipefail

PREFIX="${PREFIX:-/usr/local/bin}"
COMPDIR="${COMPDIR:-/etc/bash_completion.d}"
CONFIG_DIR="${HOME}/.netreaper"

echo "Removing netreaper..."
rm -f "$PREFIX/netreaper" 2>/dev/null || true
rm -f "$COMPDIR/netreaper" 2>/dev/null || true

if [[ -d "$CONFIG_DIR" ]]; then
    read -r -p "Remove config directory $CONFIG_DIR? [y/N]: " ans
    if [[ "${ans,,}" == y* ]]; then
        rm -rf "$CONFIG_DIR"
        echo "Config removed."
    fi
fi

echo "Uninstall complete."
