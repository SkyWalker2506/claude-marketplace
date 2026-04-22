<div align="center">

# Claude Code Plugin Marketplace

### **21 plugins** for [**Claude Code**](https://claude.ai/claude-code) — each in its own `ccplugin-*` repository

[![Plugins](https://img.shields.io/badge/plugins-21-f97316)](https://github.com/SkyWalker2506/claude-marketplace#plugins)
[![Agents](https://img.shields.io/badge/agents-204_registry-6366f1)](https://github.com/SkyWalker2506/claude-config)
[![Author](https://img.shields.io/badge/Musab_Kara-GitHub-181717?logo=github)](https://github.com/SkyWalker2506)

by [Musab Kara](https://linkedin.com/in/musab-kara-85580612a) · [GitHub](https://github.com/SkyWalker2506)

</div>

---

## Add This Marketplace

```bash
claude plugin marketplace add SkyWalker2506/claude-marketplace
```

Then browse with `/plugin > Discover`, or install directly:

```bash
# One-liner (no clone needed)
bash <(curl -fsSL https://raw.githubusercontent.com/SkyWalker2506/claude-marketplace/main/install.sh) <plugin-name>

# List all plugins
bash <(curl -fsSL https://raw.githubusercontent.com/SkyWalker2506/claude-marketplace/main/install.sh) --list

# Uninstall
bash <(curl -fsSL https://raw.githubusercontent.com/SkyWalker2506/claude-marketplace/main/install.sh) --uninstall <plugin-name>
```

---

## Plugins

### Development

| Plugin | Description | Install |
|--------|-------------|---------|
| [frontend-craft](https://github.com/SkyWalker2506/ccplugin-frontend-craft) | ANF frontend pipeline — high-end sites & apps (Web + Flutter + React Native) | `./install.sh frontend-craft` |
| [code-quality](https://github.com/SkyWalker2506/ccplugin-code-quality) | Code audit, CLAUDE.md refine, jCodeMunch indexing | `./install.sh code-quality` |
| [git-github](https://github.com/SkyWalker2506/ccplugin-git-github) | Git + GitHub MCP — PR, issue, branch, code search | `./install.sh git-github` |
| [autonomous-ops](https://github.com/SkyWalker2506/ccplugin-autonomous-ops) | /yolo, /team-build, /rbg — zero-question autonomous modes | `./install.sh autonomous-ops` |
| [flutter-firebase](https://github.com/SkyWalker2506/ccplugin-flutter-firebase) | Flutter + Firebase MCP — build, test, Firestore, Auth | `./install.sh flutter-firebase` |
| [agent-browser](https://github.com/SkyWalker2506/ccplugin-agent-browser) | Headless browser automation — scrape, screenshot, e2e | `./install.sh agent-browser` |
| [opencode-bridge](https://github.com/SkyWalker2506/ccplugin-opencode-bridge) | OpenCode/Zen + Ollama — free & local model bridge | `./install.sh opencode-bridge` |
| [ai-review](https://github.com/SkyWalker2506/ccplugin-ai-review) | Automated GitHub PR review via OpenRouter ($0 cost) | `./install.sh ai-review` |
| [sync-agents](https://github.com/SkyWalker2506/ccplugin-sync-agents) | Validate agent .md ↔ registry.json for Multi-Agent OS | `./install.sh sync-agents` |
| [backend-forge](https://github.com/SkyWalker2506/ccplugin-backend-forge) | Machine-callable infra API — Vercel + Supabase deploy, provisioning, DB ops | `./install.sh backend-forge` |

### AI Ops

| Plugin | Description | Install |
|--------|-------------|---------|
| [improve](https://github.com/SkyWalker2506/ccplugin-improve) | Analyzes videos, articles, ideas — extracts actionable improvements for claude-config | `./install.sh improve` |

### Project Management

| Plugin | Description | Install |
|--------|-------------|---------|
| [jira-suite](https://github.com/SkyWalker2506/ccplugin-jira-suite) | Complete Jira management — loops, dashboard, decisions. Atlassian MCP included | `./install.sh jira-suite` |
| [sprint-planner](https://github.com/SkyWalker2506/ccplugin-sprint-planner) | Sprint planning from PRD — epic & story generation | `./install.sh sprint-planner` |
| [research-tools](https://github.com/SkyWalker2506/ccplugin-research-tools) | Web research, 12-category project analysis, PRD, Ralph | `./install.sh research-tools` |

### Notifications & Focus

| Plugin | Description | Install |
|--------|-------------|---------|
| [notifications](https://github.com/SkyWalker2506/ccplugin-notifications) | Multi-channel notifications — Telegram, macOS, sound | `./install.sh notifications` |

### Creative

| Plugin | Description | Install |
|--------|-------------|---------|
| [3d-forge](https://github.com/SkyWalker2506/ccplugin-3d-forge) | AI-powered 3D creation studio — Blender MCP, 24 presets, Meshy AI, render feedback | `./install.sh 3d-forge` |

### Tools & Communication

| Plugin | Description | Install |
|--------|-------------|---------|
| [telegram-bridge](https://github.com/SkyWalker2506/ccplugin-telegram) | Telegram bot — text, photo, doc, voice (Whisper TR/EN). Persistent Haiku agent | `./install.sh telegram-bridge` |
| [daily-check](https://github.com/SkyWalker2506/ccplugin-daily-check) | Daily system health — Ollama, MCP, API keys, disk, token usage | `./install.sh daily-check` |
| [devtools-setup](https://github.com/SkyWalker2506/ccplugin-devtools-setup) | Setup, migration, secrets, MCP config management | `./install.sh devtools-setup` |
| [clipboard](https://github.com/SkyWalker2506/ccplugin-clipboard) | Cross-platform clipboard manager — macOS, Linux (X11/Wayland), Windows | `./install.sh clipboard` |
| [voice-input](https://github.com/SkyWalker2506/ccplugin-voice-input) | macOS mic + Whisper transcript — Türkçe destekli, copied to clipboard | `./install.sh voice-input` |

---

## Adding a New Plugin

1. Create a repo: `SkyWalker2506/ccplugin-<name>`
2. Add `.claude-plugin/plugin.json`, `commands/`, `skills/`, and optionally `install.sh`
3. Add an entry to `marketplace.json` (with `id`, `version`, `install_hook`)
4. Push → `claude plugin marketplace update musabkara-claude-marketplace`

## Related

- [claude-config](https://github.com/SkyWalker2506/claude-config) — Multi-Agent OS for Claude Code (204 agents, 54 skills, local-first routing)
- [claude-agent-catalog](https://github.com/SkyWalker2506/claude-agent-catalog) — AI Agent Catalog (204 agents across 15 categories)
- [ClaudeHQ](https://github.com/SkyWalker2506/ClaudeHQ) — Multi-project workspace hub
- [Claude Code Plugins Official](https://github.com/anthropics/claude-plugins-official) — Anthropic's official marketplace

## Author

**Musab Kara** — [LinkedIn](https://linkedin.com/in/musab-kara-85580612a) · [GitHub](https://github.com/SkyWalker2506)
