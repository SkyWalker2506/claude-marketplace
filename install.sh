#!/usr/bin/env bash
# Claude Marketplace — Plugin Installer
# Usage: bash <(curl -fsSL https://raw.githubusercontent.com/SkyWalker2506/claude-marketplace/main/install.sh) <plugin-name>

set -euo pipefail

MARKETPLACE_JSON="https://raw.githubusercontent.com/SkyWalker2506/claude-marketplace/main/.claude-plugin/marketplace.json"
PLUGIN_DIR="${HOME}/.claude/plugins"
COMMANDS_DIR="${HOME}/.claude/commands"
SKILLS_DIR="${HOME}/.claude/skills"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

log()  { printf "${BLUE}[marketplace]${NC} %s\n" "$*"; }
ok()   { printf "${GREEN}[ok]${NC} %s\n" "$*"; }
warn() { printf "${YELLOW}[warn]${NC} %s\n" "$*"; }
err()  { printf "${RED}[error]${NC} %s\n" "$*" >&2; }

# --- Argument check ---
if [[ $# -lt 1 ]]; then
  err "Usage: install.sh <plugin-name>"
  err "       install.sh --list      # show all available plugins"
  err "Example: install.sh sprint-planner"
  exit 1
fi

PLUGIN_NAME="$1"

# --- List mode ---
if [[ "$PLUGIN_NAME" == "--list" || "$PLUGIN_NAME" == "list" ]]; then
  for cmd in curl jq; do
    if ! command -v "$cmd" &>/dev/null; then
      err "Required command not found: $cmd"
      exit 1
    fi
  done
  log "Fetching plugin catalog..."
  if ! CATALOG=$(curl -fsSL --connect-timeout 10 "$MARKETPLACE_JSON" 2>/dev/null); then
    err "Failed to fetch marketplace catalog. Check your internet connection."
    exit 1
  fi
  ok "Available plugins (${#CATALOG} bytes):"
  echo "$CATALOG" | jq -r '.plugins[] | "  \(.name) (\(.version // "latest")) — \(.description)"' | sort
  exit 0
fi

# --- Dependency check ---
for cmd in curl git jq; do
  if ! command -v "$cmd" &>/dev/null; then
    err "Required command not found: $cmd"
    exit 1
  fi
done

# --- Fetch marketplace.json ---
log "Fetching plugin catalog..."
if ! CATALOG=$(curl -fsSL --connect-timeout 10 "$MARKETPLACE_JSON" 2>/dev/null); then
  err "Failed to fetch marketplace catalog. Check your internet connection."
  exit 1
fi

# --- Find plugin ---
PLUGIN_INFO=$(echo "$CATALOG" | jq -r ".plugins[] | select(.name == \"$PLUGIN_NAME\")" 2>/dev/null)

if [[ -z "$PLUGIN_INFO" ]]; then
  err "Plugin '${PLUGIN_NAME}' not found in the marketplace."
  err ""
  err "Available plugins:"
  echo "$CATALOG" | jq -r '.plugins[].name' | sort | sed 's/^/  - /'
  exit 1
fi

REPO_URL=$(echo "$PLUGIN_INFO" | jq -r '.source.url')
PLUGIN_VERSION=$(echo "$PLUGIN_INFO" | jq -r '.version // "latest"')
INSTALL_HOOK=$(echo "$PLUGIN_INFO" | jq -r '.install_hook // "install.sh"')
PLUGIN_DESCRIPTION=$(echo "$PLUGIN_INFO" | jq -r '.description')

log "Plugin: ${PLUGIN_NAME} (${PLUGIN_VERSION})"
log "Description: ${PLUGIN_DESCRIPTION}"
log "Source: ${REPO_URL}"

# --- Install directory ---
INSTALL_PATH="${PLUGIN_DIR}/${PLUGIN_NAME}"

if [[ -d "$INSTALL_PATH" ]]; then
  warn "Plugin '${PLUGIN_NAME}' is already installed at ${INSTALL_PATH}"
  warn "Updating..."
  if ! git -C "$INSTALL_PATH" pull --ff-only --quiet 2>/dev/null; then
    warn "Git pull failed. Reinstalling from scratch."
    rm -rf "$INSTALL_PATH"
    git clone --quiet "$REPO_URL" "$INSTALL_PATH"
  fi
else
  mkdir -p "$PLUGIN_DIR"
  log "Cloning plugin repository..."
  if ! git clone --quiet "$REPO_URL" "$INSTALL_PATH"; then
    err "Failed to clone plugin repository: ${REPO_URL}"
    exit 1
  fi
fi

# --- Run plugin's own install.sh if present ---
if [[ -f "${INSTALL_PATH}/${INSTALL_HOOK}" ]]; then
  log "Running plugin install hook: ${INSTALL_HOOK}"
  chmod +x "${INSTALL_PATH}/${INSTALL_HOOK}"
  bash "${INSTALL_PATH}/${INSTALL_HOOK}"
else
  # --- Fallback: copy commands/ and skills/ ---
  log "No install hook found. Copying commands and skills..."

  if [[ -d "${INSTALL_PATH}/commands" ]]; then
    mkdir -p "$COMMANDS_DIR"
    cp -r "${INSTALL_PATH}/commands/".* "$COMMANDS_DIR/" 2>/dev/null || true
    cp -r "${INSTALL_PATH}/commands/"* "$COMMANDS_DIR/" 2>/dev/null || true
    ok "Commands copied to ${COMMANDS_DIR}"
  fi

  if [[ -d "${INSTALL_PATH}/skills" ]]; then
    mkdir -p "$SKILLS_DIR"
    cp -r "${INSTALL_PATH}/skills/".* "$SKILLS_DIR/" 2>/dev/null || true
    cp -r "${INSTALL_PATH}/skills/"* "$SKILLS_DIR/" 2>/dev/null || true
    ok "Skills copied to ${SKILLS_DIR}"
  fi
fi

ok "Plugin '${PLUGIN_NAME}' installed successfully!"
log "Location: ${INSTALL_PATH}"
