# NETREAPER bash completion
# Version: 5.0.0

_netreaper() {
    local cur prev words cword
    _init_completion || return

    local commands="menu wizard scan discover wifi status install config session update logs export help"
    local scan_opts="--quick --standard --full --stealth --vuln --verbose --output --json"
    local global_opts="-v --verbose -q --quiet --no-color --debug --version --help"
    local config_cmds="edit show get set reset path"
    local session_cmds="start resume list export notes"
    local status_opts="--compact --json --category"
    local categories="scanning dns ssl wifi web exploit traffic osint creds post"

    case "${prev}" in
        netreaper)
            COMPREPLY=($(compgen -W "${commands} ${global_opts}" -- "${cur}"))
            return
            ;;
        scan)
            COMPREPLY=($(compgen -W "${scan_opts}" -- "${cur}"))
            return
            ;;
        wizard)
            COMPREPLY=($(compgen -W "scan wifi" -- "${cur}"))
            return
            ;;
        config)
            COMPREPLY=($(compgen -W "${config_cmds}" -- "${cur}"))
            return
            ;;
        session)
            COMPREPLY=($(compgen -W "${session_cmds}" -- "${cur}"))
            return
            ;;
        status)
            COMPREPLY=($(compgen -W "${status_opts}" -- "${cur}"))
            return
            ;;
        --category)
            COMPREPLY=($(compgen -W "${categories}" -- "${cur}"))
            return
            ;;
        install)
            COMPREPLY=($(compgen -W "all essentials ${categories}" -- "${cur}"))
            return
            ;;
        help)
            COMPREPLY=($(compgen -W "scan wifi config session" -- "${cur}"))
            return
            ;;
    esac

    COMPREPLY=($(compgen -W "${commands}" -- "${cur}"))
}

complete -F _netreaper netreaper
