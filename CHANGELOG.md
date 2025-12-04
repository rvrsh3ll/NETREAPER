# Changelog

All notable changes to NETREAPER will be documented in this file.

## [5.0.0] - Phantom Protocol - 2024-12-05

### Added
- Comprehensive logging system (DEBUG/INFO/WARN/ERROR/FATAL)
- Audit trail logging for compliance
- Progress spinners and bars
- Interactive confirmation prompts and dangerous-operation confirmation
- Smart sudo/privilege handling
- First-run setup wizard
- Scan wizard with guided workflow
- WiFi attack wizard
- Enhanced tool detection and auto-install scaffolding
- Configuration system with interactive editor
- QUICKREF.md quick reference card
- Session management, target history and favorites

### Changed
- UI/UX refresh across menus and status output
- Restructured CLI parser with wizard/config/log-level flags
- Help and documentation updates for v5

### Fixed
- Safer external target confirmation and history handling

## [4.3.0] - Phantom - 2024-12-05

### Added
- Apache 2.0 licensing and NOTICE file
- Governance docs: Code of Conduct, Contributing, Security, Support
- OFFTRACKMEDIA EULA and GitHub issue/PR templates

### Changed
- Consolidated branding solely under OFFTRACKMEDIA Studios
- Updated README legal section and badges to 4.3.0
- Author attribution in scripts now reflects OFFTRACKMEDIA Studios

### Fixed
- Removed remaining legacy references across docs and scripts

## [4.1.0] - Phantom - 2024-12-05

### Changed
- Complete README.md overhaul with funky styling
- Updated badges and visual elements
- Improved documentation structure
- Added roadmap section
- Enhanced screenshots section

### Fixed
- Version badge now correctly shows 4.1.0
- Links updated to correct repository

## [4.0.0] - Phantom - 2024-12-05

### Added
- **New menu structure** - 8 clean categories with submenus
- **Separate installer** - `netreaper-install` standalone tool
- **Auto sudo handling** - Prompts for elevation when needed
- **20 submenus** - Organized tool access by category
- New color scheme (blue/red team aesthetic)

### Changed
- Complete UI overhaul for cleaner navigation
- Menu collapsed from 30+ options to 8 categories
- Improved root privilege handling throughout

### Fixed
- Unbound variable bug (`$1` without defaults)
- Tools failing silently without root

## [3.4.0] - Ascension - 2024-12-04

### Added
- Auto-update checker
- Config file support
- Target history and favorites
- Output format exports (JSON, CSV, HTML, MD)
- Profiles/presets system
- Scheduled scans
- Scan diff/comparison
- Command aliases

## [3.3.4] - Retribution - 2024-12-04

### Added
- `--quiet` flag for scripting
- `--json` output mode
- Improved install.sh with `--dry-run`
- Streamlined bash completion

### Fixed
- Various shellcheck warnings
- Formatting issues

## [3.1.0] - Retribution - 2024-12-04

### Added
- WiFi cracking suite (aircrack-ng, hashcat GPU, john, cowpatty)
- Evil twin attacks (hostapd, captive portal, karma)
- Session management (start/resume/export)
- Credential attacks (hydra, medusa, crackmapexec)
- Post-exploitation tools (impacket, mimikatz)
- Expanded to 80+ integrated tools

## [3.0.0] - Vengeance - 2024-12-04

### Added
- Initial unified release
- Merged Python WiFi diagnostics with Bash security tools
- 60+ security capabilities
- Interactive menu and CLI interface
- Menacing hacker aesthetic
