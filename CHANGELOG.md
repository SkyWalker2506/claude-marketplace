# Changelog — Claude Marketplace

All notable changes to the marketplace catalog and installer.

Format: `[YYYY-MM-DD] Plugin or component — change`

---

## 2026-04-22

- **install.sh**: Add `--uninstall <plugin>` subcommand — removes plugin dir, runs plugin's own `uninstall.sh` hook if present
- **install.sh**: Improve `--list` output — show plugin count in header, aligned columns (name / version / description) instead of raw byte count
- **README**: Document `--list` and `--uninstall` flags with examples
- **README**: Add `backend-forge` plugin to Development table (was in `marketplace.json` but missing from README)
- **README**: Update badge from "20+" to "21"

## 2026-04-08

- **marketplace.json**: Add `improve` and `clipboard` plugins (were in README but missing from catalog)
- **marketplace.json**: Fix description for `voice-input`, translate to English
- **README**: Fix plugin count header from "21" to "20"
- **install.sh**: Initial release — one-liner curl installer with dependency checks, git clone, plugin hook execution
