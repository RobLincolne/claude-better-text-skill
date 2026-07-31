#!/usr/bin/env bash
#
# Build writing-well.skill from the writing-well/ source folder.
#
# The archive wraps the skill in its own directory:
#
#   writing-well/SKILL.md
#   writing-well/references/*.md
#
# That shape matters. A .skill file should unzip straight into a skills
# directory (~/.claude/skills/) and land as one self-contained folder. A flat
# archive would scatter SKILL.md and references/ loose among the other skills.
#
# Usage: ./build.sh

set -euo pipefail

cd "$(dirname "$0")"

SRC="writing-well"
OUT="writing-well.skill"

# --- checks -----------------------------------------------------------------

[ -d "$SRC" ] || { echo "error: $SRC/ not found"; exit 1; }
[ -f "$SRC/SKILL.md" ] || { echo "error: $SRC/SKILL.md not found"; exit 1; }

# The folder name must match the frontmatter `name:` or the skill installs
# under the wrong identity.
declared=$(sed -n 's/^name:[[:space:]]*//p' "$SRC/SKILL.md" | head -1 | tr -d '\r')
if [ "$declared" != "$SRC" ]; then
  echo "error: frontmatter name '$declared' does not match folder '$SRC'"
  exit 1
fi

# --- build ------------------------------------------------------------------

rm -f "$OUT"

# Strip macOS cruft so it never ships inside the archive.
find "$SRC" -name '.DS_Store' -delete

zip -q -r -X "$OUT" "$SRC" \
  -x '*.DS_Store' -x '__MACOSX/*' -x '*/.*.swp'

# --- report -----------------------------------------------------------------

echo "built $OUT ($(wc -c < "$OUT" | tr -d ' ') bytes)"
unzip -Z1 "$OUT" | sed 's/^/  /'
