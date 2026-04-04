# SkyWalker2506 — Claude Code Plugin Marketplace

Plugin kataloğu. Her plugin ayrı repoda yaşar — bu repo sadece index.

## Marketplace'i Ekle

```bash
claude plugin marketplace add SkyWalker2506/claude-plugins
```

Sonra `/plugin > Discover` ile keşfet, istediğini kur/kaldır.

## Pluginler

| Plugin | Repo | Açıklama |
|--------|------|----------|
| `telegram-bridge` | [ccplugin-telegram](https://github.com/SkyWalker2506/ccplugin-telegram) | Telegram bot — text/foto/ses (Whisper TR/EN) |
| `ai-review` | [ccplugin-ai-review](https://github.com/SkyWalker2506/ccplugin-ai-review) | GitHub PR review (OpenRouter Gemma 3 27B, ücretsiz) |
| `daily-check` | [ccplugin-daily-check](https://github.com/SkyWalker2506/ccplugin-daily-check) | Günlük sistem sağlık kontrolü |
| `sync-agents` | [ccplugin-sync-agents](https://github.com/SkyWalker2506/ccplugin-sync-agents) | Agent registry ↔ .md senkronizasyonu |

## Direkt Kurulum

```bash
claude plugin install telegram-bridge@SkyWalker2506-claude-plugins
claude plugin install ai-review@SkyWalker2506-claude-plugins
claude plugin install daily-check@SkyWalker2506-claude-plugins
claude plugin install sync-agents@SkyWalker2506-claude-plugins
```

## Yeni Plugin Eklemek

1. `SkyWalker2506/ccplugin-<name>` reposu aç
2. `.claude-plugin/plugin.json`, `commands/`, `skills/` ekle
3. `marketplace.json`'a entry ekle (SHA güncelle)
4. Push → `claude plugin marketplace refresh SkyWalker2506/claude-plugins`

## İlgili

- [claude-config](https://github.com/SkyWalker2506/claude-config) — 110 agent Multi-Agent OS
