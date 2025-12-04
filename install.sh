#!/usr/bin/env bash
set -euo pipefail

PREFIX="/usr/local/bin"
COMPDIR="/etc/bash_completion.d"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_BIN="${SCRIPT_DIR}/netreaper"
TARGET_NAME="netreaper"
CONFIG_DIR="${HOME}/.netreaper"
DRY_RUN=0

usage() {
cat <<USAGE
Install netreaper
Usage: $0 [--prefix DIR] [--compdir DIR] [--dry-run]

  --prefix DIR   Install destination (default: /usr/local/bin)
  --compdir DIR  Bash completion directory (default: /etc/bash_completion.d)
  --dry-run      Show actions without changing system
  -h, --help     Show this help
USAGE
}

run_cmd() {
    local cmd="$*"
    if [[ "$DRY_RUN" -eq 1 ]]; then
        echo "[DRY] $cmd"
    else
        eval "$cmd"
    fi
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --prefix) PREFIX="$2"; shift 2 ;;
        --compdir) COMPDIR="$2"; shift 2 ;;
        --dry-run) DRY_RUN=1; shift ;;
        -h|--help) usage; exit 0 ;;
        *) echo "Unknown option: $1"; usage; exit 1 ;;
    esac
done

if [[ ! -f "$TARGET_BIN" ]]; then
    echo "Error: netreaper not found at $TARGET_BIN" >&2
    exit 1
fi

run_cmd "mkdir -p '$PREFIX'"
run_cmd "cp '$TARGET_BIN' '$PREFIX/$TARGET_NAME'"
run_cmd "chmod +x '$PREFIX/$TARGET_NAME'"
if [[ -f "$SCRIPT_DIR/netreaper-install" ]]; then
    run_cmd "cp '$SCRIPT_DIR/netreaper-install' '$PREFIX/netreaper-install'"
    run_cmd "chmod +x '$PREFIX/netreaper-install'"
fi

if [[ -f "$SCRIPT_DIR/completions/netreaper.bash" ]]; then
    run_cmd "mkdir -p '$COMPDIR'"
    run_cmd "cp '$SCRIPT_DIR/completions/netreaper.bash' '$COMPDIR/netreaper'"
fi

run_cmd "mkdir -p '$CONFIG_DIR/logs' '$CONFIG_DIR/output' '$CONFIG_DIR/loot' '$CONFIG_DIR/sessions'"

cat <<'MSG'
Install complete.
Usage:
  netreaper menu          # interactive UI
  netreaper scan <target> # quick scan
  netreaper crack <cap>   # handshake cracking
  netreaper session start # start engagement
MSG
