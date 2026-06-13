#!/usr/bin/env bash
# sync-to-claudian.sh
# Symlinks every skill folder under this directory into ~/.claude/skills/
# so Claudian can load them. Safe to run multiple times.
#
# Usage:
#   bash "04 Ressourcen/Skills Export/sync-to-claudian.sh"
# Or after chmod +x:
#   "04 Ressourcen/Skills Export/sync-to-claudian.sh"

set -euo pipefail

VAULT_SKILLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDIAN_SKILLS_DIR="$HOME/.claude/skills"

mkdir -p "$CLAUDIAN_SKILLS_DIR"

echo "Sync: $VAULT_SKILLS_DIR  ->  $CLAUDIAN_SKILLS_DIR"
echo

created=0
exists=0
conflicts=0
removed=0

# 1. Create or refresh symlinks for every skill folder in the vault
for skill_dir in "$VAULT_SKILLS_DIR"/*/; do
  [ -d "$skill_dir" ] || continue
  name="$(basename "$skill_dir")"
  target="$CLAUDIAN_SKILLS_DIR/$name"

  if [ -L "$target" ]; then
    # Existing symlink — replace if it points somewhere else
    current="$(readlink "$target")"
    if [ "$current" = "$skill_dir" ] || [ "$current" = "${skill_dir%/}" ]; then
      exists=$((exists + 1))
      echo "  ok        $name"
    else
      ln -snf "$skill_dir" "$target"
      created=$((created + 1))
      echo "  relinked  $name"
    fi
  elif [ -e "$target" ]; then
    # Real folder/file at that path — DO NOT touch, just warn
    conflicts=$((conflicts + 1))
    echo "  CONFLICT  $name  (real folder exists at $target — not touched)"
  else
    ln -s "$skill_dir" "$target"
    created=$((created + 1))
    echo "  linked    $name"
  fi
done

# 2. Clean up dangling symlinks in ~/.claude/skills/ that point to the vault
#    but no longer have a target (skill folder was renamed/deleted in the vault)
shopt -s nullglob
for link in "$CLAUDIAN_SKILLS_DIR"/*; do
  if [ -L "$link" ]; then
    target="$(readlink "$link")"
    case "$target" in
      "$VAULT_SKILLS_DIR"/*)
        if [ ! -e "$link" ]; then
          rm "$link"
          removed=$((removed + 1))
          echo "  removed   $(basename "$link") (dangling symlink)"
        fi
        ;;
    esac
  fi
done

echo
echo "Summary: $created created/relinked, $exists already ok, $conflicts conflicts, $removed dangling removed."

if [ "$conflicts" -gt 0 ]; then
  echo
  echo "Hint: A real folder in ~/.claude/skills/ with the same name as a vault skill"
  echo "      blocks the symlink. Move it to the vault first, then rerun this script."
  exit 1
fi
