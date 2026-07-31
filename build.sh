#!/usr/bin/env bash
#
# Validate the skill source and build better-language.skill from it.
#
# The archive wraps the skill in its own directory:
#
#   better-language/SKILL.md
#   better-language/references/*.md
#
# That shape matters. A .skill file should unzip straight into a skills
# directory (~/.claude/skills/) and land as one self-contained folder. A flat
# archive would scatter SKILL.md and references/ loose among the other skills.
#
# The built archive is NOT committed. It ships as a GitHub Release asset, so
# pull requests stay reviewable text and never conflict on a binary.
#
# Usage:
#   ./build.sh            validate, then build the archive
#   ./build.sh --check    validate only (what CI runs on every pull request)

set -euo pipefail

cd "$(dirname "$0")"

SRC="better-language"
OUT="better-language.skill"
DESC_LIMIT=1024

check_only=false
[ "${1:-}" = "--check" ] && check_only=true

fail() { echo "FAIL: $*" >&2; exit 1; }

# --- validate ---------------------------------------------------------------

[ -d "$SRC" ] || fail "$SRC/ not found"
[ -f "$SRC/SKILL.md" ] || fail "$SRC/SKILL.md not found"

# The folder name is the skill's identity once installed. If it drifts from the
# frontmatter `name:`, the skill installs under the wrong identity.
declared=$(sed -n 's/^name:[[:space:]]*//p' "$SRC/SKILL.md" | head -1 | tr -d '\r')
[ "$declared" = "$SRC" ] || fail "frontmatter name '$declared' does not match folder '$SRC'"
echo "ok   name '$declared' matches folder"

# The description has a hard character limit. Going over silently breaks the
# skill, and it has been hit before (see commit fc5d49e). Count characters, not
# bytes — the description contains non-ASCII punctuation.
desc_len=$(python3 -c "
import re, sys
t = open('$SRC/SKILL.md', encoding='utf-8').read()
m = re.match(r'^---\n(.*?)\n---\n', t, re.S)
if not m:
    sys.exit('no frontmatter block')
d = re.search(r'^description:[ \t]*(.*)$', m.group(1), re.M)
if not d:
    sys.exit('no description field')
print(len(d.group(1).rstrip()))
") || fail "could not read description from $SRC/SKILL.md"

if [ "$desc_len" -gt "$DESC_LIMIT" ]; then
  fail "description is $desc_len chars, limit is $DESC_LIMIT (over by $((desc_len - DESC_LIMIT)))"
fi

headroom=$((DESC_LIMIT - desc_len))
echo "ok   description $desc_len/$DESC_LIMIT chars ($headroom to spare)"
if [ "$headroom" -lt 50 ]; then
  echo "warn description is close to the limit — trim before adding triggers"
fi

if $check_only; then
  echo "checks passed"
  exit 0
fi

# --- build ------------------------------------------------------------------

rm -f "$OUT"

# Strip macOS cruft so it never ships inside the archive.
find "$SRC" -name '.DS_Store' -delete

zip -q -r -X "$OUT" "$SRC" \
  -x '*.DS_Store' -x '__MACOSX/*' -x '*/.*.swp'

echo "built $OUT ($(wc -c < "$OUT" | tr -d ' ') bytes)"
unzip -Z1 "$OUT" | sed 's/^/  /'
