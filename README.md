# Claude Code Plugin Marketplace

by [Musab Kara](https://linkedin.com/in/musab-kara-85580612a) · [GitHub](https://github.com/SkyWalker2506)

**14 plugins** for Claude Code. Each plugin lives in its own repository — this repo is the catalog.

---

## Add This Marketplace

```bash
claude plugin marketplace add SkyWalker2506/claude-marketplace
```

Then browse with `/plugin > Discover`, or install directly from the command line.

---

## Plugins

### Development

| Plugin | Description | Install |
|--------|-------------|---------|
| [code-quality](https://github.com/SkyWalker2506/ccplugin-code-quality) | Code audit, CLAUDE.md refine, jCodeMunch indexing | `claude plugin install code-quality@musabkara-claude-marketplace` |
| [git-github](https://github.com/SkyWalker2506/ccplugin-git-github) | Git + GitHub MCP — PR, issue, branch, code search | `claude plugin install git-github@musabkara-claude-marketplace` |
| [autonomous-ops](https://github.com/SkyWalker2506/ccplugin-autonomous-ops) | /yolo, /team-build, /rbg — zero-question autonomous modes | `claude plugin install autonomous-ops@musabkara-claude-marketplace` |
| [flutter-firebase](https://github.com/SkyWalker2506/ccplugin-flutter-firebase) | Flutter + Firebase MCP — build, test, Firestore, Auth | `claude plugin install flutter-firebase@musabkara-claude-marketplace` |
| [agent-browser](https://github.com/SkyWalker2506/ccplugin-agent-browser) | Headless browser automation — scrape, screenshot, e2e | `claude plugin install agent-browser@musabkara-claude-marketplace` |
| [opencode-bridge](https://github.com/SkyWalker2506/ccplugin-opencode-bridge) | OpenCode/Zen + Ollama — free & local model bridge | `claude plugin install opencode-bridge@musabkara-claude-marketplace` |
| [ai-review](https://github.com/SkyWalker2506/ccplugin-ai-review) | Automated GitHub PR review via OpenRouter ($0 cost) | `claude plugin install ai-review@musabkara-claude-marketplace` |
| [sync-agents](https://github.com/SkyWalker2506/ccplugin-sync-agents) | Validate agent .md ↔ registry.json for Multi-Agent OS | `claude plugin install sync-agents@musabkara-claude-marketplace` |

### Project Management

| Plugin | Description | Install |
|--------|-------------|---------|
| [jira-suite](https://github.com/SkyWalker2506/ccplugin-jira-suite) | Complete Jira management — loops, dashboard, decisions. Atlassian MCP included | `claude plugin install jira-suite@musabkara-claude-marketplace` |
| [sprint-planner](https://github.com/SkyWalker2506/ccplugin-sprint-planner) | Sprint planning from PRD — epic & story generation | `claude plugin install sprint-planner@musabkara-claude-marketplace` |
| [research-tools](https://github.com/SkyWalker2506/ccplugin-research-tools) | Web research, 12-category project analysis, PRD, Ralph | `claude plugin install research-tools@musabkara-claude-marketplace` |

### Tools & Communication

| Plugin | Description | Install |
|--------|-------------|---------|
| [telegram-bridge](https://github.com/SkyWalker2506/ccplugin-telegram) | Telegram bot — text, photo, doc, voice (Whisper TR/EN). Persistent Haiku agent | `claude plugin install telegram-bridge@musabkara-claude-marketplace` |
| [daily-check](https://github.com/SkyWalker2506/ccplugin-daily-check) | Daily system health — Ollama, MCP, API keys, disk, token usage | `claude plugin install daily-check@musabkara-claude-marketplace` |
| [devtools-setup](https://github.com/SkyWalker2506/ccplugin-devtools-setup) | Setup, migration, secrets, MCP config management | `claude plugin install devtools-setup@musabkara-claude-marketplace` |

---

## Adding a New Plugin

1. Create a repo: `SkyWalker2506/ccplugin-<name>`
2. Add `.claude-plugin/plugin.json`, `commands/`, `skills/`
3. Add an entry to `marketplace.json` (with commit SHA)
4. Push → `claude plugin marketplace update musabkara-claude-marketplace`

## Related

- [claude-config](https://github.com/SkyWalker2506/claude-config) — Multi-Agent OS for Claude Code (110 agents, local-first routing)
- [Claude Code Plugins Official](https://github.com/anthropics/claude-plugins-official) — Anthropic's official marketplace

## Author

**Musab Kara** — [LinkedIn](https://linkedin.com/in/musab-kara-85580612a) · [GitHub](https://github.com/SkyWalker2506)
