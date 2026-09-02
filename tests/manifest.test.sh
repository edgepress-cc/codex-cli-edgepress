#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

test -f .codex-plugin/plugin.json || { echo "missing plugin.json"; exit 1; }
test -f SKILL.md || { echo "missing SKILL.md"; exit 1; }
test -f AGENTS.md || { echo "missing AGENTS.md"; exit 1; }
test -x scripts/ep || { echo "ep not executable"; exit 1; }
test $(ls references/*.md | wc -l) -eq 9 || { echo "expected 9 references"; exit 1; }
test $(ls commands/*.md | wc -l) -eq 5 || { echo "expected 5 commands"; exit 1; }
jq -e '.name == "edgepress" and .version == "0.1.0"' .codex-plugin/plugin.json > /dev/null || { echo "manifest name/version wrong"; exit 1; }
echo "manifest OK"
