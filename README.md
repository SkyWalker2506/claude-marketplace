<div align="center">

# Claude Code Plugin Marketplace

### Curated **plugins** for [**Claude Code**](https://claude.ai/claude-code) — one repo, many `ccplugin-*` projects

[![Claude Code](https://img.shields.io/badge/Claude_Code-plugins-191919?logo=anthropic&logoColor=white)](https://claude.ai/claude-code)
[![Marketplace](https://img.shields.io/badge/plugins-21-f97316)](https://github.com/SkyWalker2506/claude-marketplace#plugins)
[![Install](https://img.shields.io/badge/install-curl_|_bash-0ea5e9)](https://github.com/SkyWalker2506/claude-marketplace#install-a-plugin)
[![Author](https://img.shields.io/badge/Musab_Kara-LinkedIn-0A66C2?logo=linkedin)](https://linkedin.com/in/musab-kara-85580612a)

Each plugin lives in its own **`SkyWalker2506/ccplugin-*`** repository — **this** repo is the **catalog**, installer, and native marketplace entry.

[Install](#install-a-plugin) · [Native marketplace](#add-this-marketplace-claude-code-native) · [Add a plugin](#adding-a-new-plugin)

</div>

---

### Ecosystem on GitHub

Read the stack in order: **[Agent catalog](https://github.com/SkyWalker2506/claude-agent-catalog)** → **marketplace (this repo)** → **[claude-config](https://github.com/SkyWalker2506/claude-config)** (full OS) → **[ClaudeHQ](https://github.com/SkyWalker2506/ClaudeHQ)** (workspace hub).

```mermaid
flowchart LR
  A[1 Agent Catalog] --> B[2 Marketplace]
  B --> C[3 claude-config]
  C --> D[4 ClaudeHQ]
```

Tables track each release; pin versions in your own docs when you need reproducibility.

---

## Install a Plugin

```bash
# One-liner install (no clone needed)
bash <(curl -fsSL https://raw.githubusercontent.com/SkyWalker2506/claude-marketplace/main/install.sh) <plugin-name>

# Example
bash <(curl -fsSL https://raw.githubusercontent.com/SkyWalker2506/claude-marketplace/main/install.sh) sprint-planner

# Or: clone the marketplace and run locally
git clone https://github.com/SkyWalker2506/claude-marketplace
cd claude-marketplace && ./install.sh sprint-planner
```

The installer will:
1. Fetch the plugin catalog and resolve the plugin's GitHub repo
2. Clone (or update) the plugin into `~/.claude/plugins/<name>/`
3. Run the plugin's own `install.sh` if present, otherwise copy `commands/` and `skills/` into `~/.claude/`

---

## Add This Marketplace (Claude Code native)

```bash
claude plugin marketplace add SkyWalker2506/claude-marketplace
```

Then browse with `/plugin > Discover`, or install directly:

```bash
claude plugin install sprint-planner@musabkara-claude-marketplace
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
| [improve](https://github.com/SkyWalker2506/ccplugin-improve) | Analyzes videos, articles, ideas — extracts actionable improvements for your claude-config setup | `./install.sh improve` |

### Project Management

| Plugin | Description | Install |
|--------|-------------|---------|
| [jira-suite](https://github.com/SkyWalker2506/ccplugin-jira-suite) | Complete Jira management — loops, dashboard, decisions. Atlassian MCP included | `./install.sh jira-suite` |
| [sprint-planner](https://github.com/SkyWalker2506/ccplugin-sprint-planner) | Sprint planning from PRD — epic & story generation | `./install.sh sprint-planner` |
| [research-tools](https://github.com/SkyWalker2506/ccplugin-research-tools) | Web research, 12-category project analysis, PRD, Ralph | `./install.sh research-tools` |

### Notifications & Focus

| Plugin | Description | Install |
|--------|-------------|---------|
| [notifications](https://github.com/SkyWalker2506/ccplugin-notifications) | Multi-channel notifications — Telegram, macOS, sound. DevFocus build error & AI question triggers | `./install.sh notifications` |

### Creative

| Plugin | Description | Install |
|--------|-------------|---------|
| [3d-forge](https://github.com/SkyWalker2506/ccplugin-3d-forge) | AI-powered 3D creation studio — Blender MCP, 24 presets, Meshy AI, render feedback loop | `./install.sh 3d-forge` |

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
3. Add an entry to `.claude-plugin/marketplace.json` (with `id`, `version`, `install_hook`)
4. Push → `claude plugin marketplace update musabkara-claude-marketplace`

## Related

- [claude-agent-catalog](https://github.com/SkyWalker2506/claude-agent-catalog) — AI agent inventory (start here on GitHub)
- [claude-config](https://github.com/SkyWalker2506/claude-config) — Multi-Agent OS for Claude Code (install.sh, agents, skills, MCP)
- [ClaudeHQ](https://github.com/SkyWalker2506/ClaudeHQ) — Ecosystem HQ, cross-project workspace
- [SDK Market](https://github.com/SkyWalker2506/sdk-market) — production-ready SDKs and kits
- [Claude Code Plugins Official](https://github.com/anthropics/claude-plugins-official) — Anthropic's official marketplace

## Author

**Musab Kara** — [LinkedIn](https://linkedin.com/in/musab-kara-85580612a) · [GitHub](https://github.com/SkyWalker2506)
