#!/usr/bin/env bash
# Refresh vendored `ep` from claude-code-edgepress main.
set -euo pipefail
curl -fsSL https://raw.githubusercontent.com/edgepress-cc/claude-code-edgepress/main/skills/edgepress/scripts/ep -o "$(dirname "$0")/ep"
chmod +x "$(dirname "$0")/ep"
echo "ep updated ($(wc -c < "$(dirname "$0")/ep") bytes)"
