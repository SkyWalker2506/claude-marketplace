# Forge Run 1 — claude-marketplace

**Date:** 2026-04-08
**Branch:** forge/fix-plugin-catalog-sync
**PR:** https://github.com/SkyWalker2506/claude-marketplace/pull/1
**Status:** MERGED

---

## Improvements Implemented

### 1. Fix README Plugin Count
- **Issue:** README header said "21 plugins" but the table contained only 20 entries.
- **Fix:** Updated count to "20 plugins".

### 2. Sync marketplace.json — Add Missing Plugins
- **Issue:** marketplace.json had 17 plugins while README listed 20. Missing: `improve`, `clipboard`.
- **Fix:** Added both plugins to `.claude-plugin/marketplace.json` with correct metadata.

### 3. Fix marketplace.json Description & Translate voice-input
- **Issue:** marketplace.json description referenced "17 plugins" (stale). Also, `voice-input` description was in Turkish — inconsistent with an international plugin catalog.
- **Fix:** Updated description count to "20 plugins". Translated `voice-input` description to English.

---

## Files Changed

- `README.md` — plugin count corrected
- `.claude-plugin/marketplace.json` — description updated, 2 plugins added, voice-input translated

---

## Stats

- Commits: 1
- Files changed: 2
- Lines added: +31 / -3
