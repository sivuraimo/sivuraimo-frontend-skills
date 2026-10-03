#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"
mkdir -p "$CLAUDE_DIR/skills"

link() {
  local src="$1" dst="$2"
  if [ -L "$dst" ]; then
    ln -sfn "$src" "$dst"
  elif [ -e "$dst" ]; then
    mv "$dst" "$dst.backup-$(date +%Y%m%d%H%M%S)"
    echo "backup: $dst"
    ln -s "$src" "$dst"
  else
    ln -s "$src" "$dst"
  fi
  echo "linked: $dst -> $src"
}

link "$REPO/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"
for skill in "$REPO"/skills/*/; do
  name="$(basename "$skill")"
  link "${skill%/}" "$CLAUDE_DIR/skills/$name"
done
