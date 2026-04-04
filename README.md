# SkyWalker2506 — Claude Code Plugin Marketplace

Custom plugins for Claude Code. Add this marketplace to get access to all plugins below.

## Add This Marketplace

```bash
claude plugin marketplace add github:SkyWalker2506/claude-plugins
```

Then browse and install via `/plugin > Discover` or:

```bash
/plugin install telegram-bridge@SkyWalker2506-claude-plugins
/plugin install ai-review@SkyWalker2506-claude-plugins
/plugin install daily-check@SkyWalker2506-claude-plugins
/plugin install sync-agents@SkyWalker2506-claude-plugins
```

## Plugins

| Plugin | Description | Version |
|--------|-------------|---------|
| [telegram-bridge](plugins/telegram/) | Bidirectional Telegram bot — text, photo, doc, voice (Whisper TR/EN) | 1.1.0 |
| [ai-review](plugins/ai-review/) | Automated GitHub PR review via OpenRouter free models (Gemma 3 27B) | 1.0.0 |
| [daily-check](plugins/daily-check/) | Daily system health: Ollama, MCP, API keys, disk, RAM, token cost | 1.0.0 |
| [sync-agents](plugins/sync-agents/) | Validate and sync agent .md frontmatter ↔ agent-registry.json | 1.0.0 |

## Structure

```
plugins/
├── telegram/           # Telegram bot bridge
├── ai-review/          # AI PR review via OpenRouter
├── daily-check/        # Daily health monitoring
└── sync-agents/        # Agent registry validator
```

Each plugin follows the [Claude Code plugin format](https://github.com/anthropics/claude-plugins-official):
```
plugin-name/
├── .claude-plugin/plugin.json   # metadata
├── commands/                    # slash commands
├── skills/                      # auto-injected skills
└── README.md
```

## Requirements

- Claude Code (latest)
- `~/.claude/secrets/secrets.env` with relevant API keys

## Related

- [claude-config](https://github.com/SkyWalker2506/claude-config) — Full Multi-Agent OS setup (110 agents, local-first routing, install.sh)
- [claude-secrets](https://github.com/SkyWalker2506/claude-secrets) — Private secrets template (fork for your own secrets)
