# bash completion for netreaper
_netreaper_cmds="scan wifi crack session osint web exploit stress traffic install status help version"
_netreaper_scan_opts="--quick --full --stealth --vuln --udp --masscan"
_netreaper_wifi_opts="--monitor --managed --scan --deauth --wps --handshake"
_netreaper_crack_opts="--aircrack --hashcat --john --convert"
_netreaper_session_opts="--start --resume --status --notes --export --list"

_netreaper_interfaces() {
    command ls /sys/class/net 2>/dev/null | tr '\n' ' '
}

_netreaper_sessions() {
    local sessdir="${HOME}/.netreaper/sessions"
    if [[ -d "$sessdir" ]]; then
        command find "$sessdir" -maxdepth 1 -mindepth 1 -type d -printf '%f ' 2>/dev/null
    fi
}

# shellcheck disable=SC2207
_netreaper()
{
    local cur prev
    COMPREPLY=()
    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[COMP_CWORD-1]}

    case "$prev" in
        scan)
            COMPREPLY=( $(compgen -W "$_netreaper_scan_opts" -- "$cur") )
            return 0 ;;
        wifi)
            COMPREPLY=( $(compgen -W "$_netreaper_wifi_opts $(_netreaper_interfaces)" -- "$cur") )
            return 0 ;;
        crack)
            COMPREPLY=( $(compgen -W "$_netreaper_crack_opts" -- "$cur") )
            return 0 ;;
        session)
            COMPREPLY=( $(compgen -W "$_netreaper_session_opts $(_netreaper_sessions)" -- "$cur") )
            return 0 ;;
    esac

    COMPREPLY=( $(compgen -W "$_netreaper_cmds" -- "$cur") )
    return 0
}

complete -F _netreaper netreaper
