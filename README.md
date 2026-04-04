# SkyWalker2506 — Claude Code Plugin Marketplace

14 plugin. Her biri ayrı repoda. Bu repo sadece katalog.

## Marketplace Ekle

```bash
claude plugin marketplace add SkyWalker2506/claude-plugins
```

Sonra: `/plugin > Discover` ile keşfet, istediğini kur/kaldır.

## Pluginler

### Geliştirme
| Plugin | Repo | Açıklama |
|--------|------|----------|
| `code-quality` | [ccplugin-code-quality](https://github.com/SkyWalker2506/ccplugin-code-quality) | Kod audit, CLAUDE.md refine, jCodeMunch index |
| `git-github` | [ccplugin-git-github](https://github.com/SkyWalker2506/ccplugin-git-github) | Git + GitHub MCP (PR, issue, branch, review) |
| `autonomous-ops` | [ccplugin-autonomous-ops](https://github.com/SkyWalker2506/ccplugin-autonomous-ops) | /yolo, /team-build, /rbg otonom modlar |
| `flutter-firebase` | [ccplugin-flutter-firebase](https://github.com/SkyWalker2506/ccplugin-flutter-firebase) | Flutter + Firebase MCP |
| `agent-browser` | [ccplugin-agent-browser](https://github.com/SkyWalker2506/ccplugin-agent-browser) | Headless browser otomasyon |
| `opencode-bridge` | [ccplugin-opencode-bridge](https://github.com/SkyWalker2506/ccplugin-opencode-bridge) | OpenCode/Zen + Ollama local model |
| `ai-review` | [ccplugin-ai-review](https://github.com/SkyWalker2506/ccplugin-ai-review) | GitHub PR review (OpenRouter, ücretsiz) |
| `sync-agents` | [ccplugin-sync-agents](https://github.com/SkyWalker2506/ccplugin-sync-agents) | Agent registry ↔ .md senkronizasyonu |

### Proje Yönetimi
| Plugin | Repo | Açıklama |
|--------|------|----------|
| `jira-suite` | [ccplugin-jira-suite](https://github.com/SkyWalker2506/ccplugin-jira-suite) | Jira loop, dashboard, sprint, karar — Atlassian MCP |
| `sprint-planner` | [ccplugin-sprint-planner](https://github.com/SkyWalker2506/ccplugin-sprint-planner) | Sprint plan, epic/story oluşturma |
| `research-tools` | [ccplugin-research-tools](https://github.com/SkyWalker2506/ccplugin-research-tools) | Web araştırma, proje analiz, PRD, Ralph |

### Araçlar
| Plugin | Repo | Açıklama |
|--------|------|----------|
| `telegram-bridge` | [ccplugin-telegram](https://github.com/SkyWalker2506/ccplugin-telegram) | Telegram bot (text/foto/ses, Haiku agent) |
| `daily-check` | [ccplugin-daily-check](https://github.com/SkyWalker2506/ccplugin-daily-check) | Günlük sistem sağlık kontrolü |
| `devtools-setup` | [ccplugin-devtools-setup](https://github.com/SkyWalker2506/ccplugin-devtools-setup) | Kurulum, migration, secrets, MCP config |

## Kurulum Örnekleri

```bash
claude plugin install jira-suite@SkyWalker2506-claude-plugins
claude plugin install code-quality@SkyWalker2506-claude-plugins
claude plugin install autonomous-ops@SkyWalker2506-claude-plugins
```

## İlgili

- [claude-config](https://github.com/SkyWalker2506/claude-config) — Multi-Agent OS (110 agent, local-first routing)
