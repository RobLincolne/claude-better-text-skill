# claude-writing-well-skill

A Claude skill that applies William Zinsser's *On Writing Well* principles to any nonfiction prose Claude writes or revises.

It's designed to auto-apply whenever Claude is asked to draft, edit, or review prose — emails, articles, memos, letters, blog posts, newsletters, reports, cover letters, announcements, status updates, and anything else substantial. Complements the standalone `deslop` skill.

## What's in this repo

- `writing-well/` — the raw skill folder (`SKILL.md` + `references/`). Drop this into your skills directory to install manually.
- `writing-well-plugin/` — the same skill wrapped as a Claude Code plugin (`.claude-plugin/plugin.json` + `.claude/skills/writing-well/`).
- `writing-well.skill` — zip archive of the skill folder. Drag into Claude/Cowork's "Save skill" prompt to install with one click.
- `writing-well.plugin` — zip archive of the plugin folder. Install via the plugin installer if you'd rather use the plugin form.

## What the skill does

It enforces, on every prose output Claude produces:

1. **Simplicity** — strip every sentence to its cleanest components.
2. **Clutter elimination** — hunt pompous euphemisms, prepositions glued to verbs, throat-clearing word clusters, hedges, fad words, and corporate jargon.
3. **Clear thinking** — if a sentence is muddy, the thought is unfinished. Rewrite or cut.
4. **Real human voice** — use "I" where allowed; resist the institutional passive even where it isn't.
5. **Style is the person** — don't reach for "stylish" prose. Voice is what's left when clutter is gone.
6. **Verbs do the work** — active over passive, concrete over abstract, short Anglo-Saxon over Latinate, no adverbs that duplicate the verb.
7. **Unity** — one pronoun, one tense, one mood, one attitude. Hold them.
8. **Think small** — one provocative point per piece, not five.
9. **Lead and ending** — grab the reader in sentence one; land one beat earlier than feels safe.
10. **Rewriting is writing** — cut, read aloud, cut again.

Plus a pre-delivery checklist and a deslop-style AI-tells screen.

## Installation

### Option 1: As a `.skill` (recommended)

Drag `writing-well.skill` into Claude or Cowork. Click "Save skill". Done.

### Option 2: As a plugin

```bash
claude plugin install ./writing-well-plugin
```

### Option 3: Manual

Copy `writing-well/` into your skills directory (e.g. `~/.claude/skills/writing-well/`).

## How it triggers

The frontmatter is tuned to fire on any of these:

**Authoring requests**
- "write an email", "write an article", "draft a memo", "write a blog post", "write a letter", "write a report", "write up X", "put together a draft", "send a note to"

**Review and edit requests**
- "review this", "edit this", "polish this", "tighten this", "rewrite this", "clean this up"
- "make this less AI-sounding", "make this sound human"

**Targeted rhetorical-device cleanup** (added in v1.1)
- "remove the rhetorical tics", "kill the antithesis", "cut the 'not X but Y' constructions", "remove the contrast scaffolding", "strip out the AI rhetorical patterns"

**Explicit invocation**
- Slash command: `/writing-well`
- Or by name: "Apply the writing-well skill to this draft."

It's also marked as a default-on skill for any substantial prose output, so it should kick in even when you don't name it.

## Rhetorical-tic coverage

In addition to the Zinsser ten, the skill catches the most pervasive LLM rhetorical tic: **antithesis** — the "not X but Y" construction and its variants. See the dedicated subsection of `SKILL.md` ("Antithesis and Contrast Scaffolding") and the patterns tables in `references/clutter.md`. Banned constructions include:

- "It's not X, it's Y."
- "X isn't the problem. Y is."
- "The question isn't X. It's Y."
- "X is easy. Y is hard."
- "X is done. Y is what matters."
- Subtler two-beat rhythms: "Many think X. The reality is Y." / "On paper, X. In practice, Y."

The rule: never write a sentence whose only job is to be wrong so the next sentence can correct it. State the substantive point directly.

## Files

- [`writing-well/SKILL.md`](writing-well/SKILL.md) — main skill file with the Ten Rules and Pre-Delivery Checklist.
- [`writing-well/references/clutter.md`](writing-well/references/clutter.md) — detailed clutter, journalese, and jargon hit list with replacements.
- [`writing-well/references/principles.md`](writing-well/references/principles.md) — expanded notes on each of the Ten Rules with passages from the book.
- [`writing-well/references/examples.md`](writing-well/references/examples.md) — seven before/after rewrites (status email, project memo lead, blog opening, cover letter paragraph, apology email, internal announcement, review note).
- [`writing-well/references/checklist.md`](writing-well/references/checklist.md) — standalone copy of the pre-delivery checklist.

## Credits

Distilled from William Zinsser, *On Writing Well: The Classic Guide to Writing Nonfiction* (25th anniversary edition, HarperCollins, 2001). The principles are Zinsser's; the codification into a Claude skill is mine.

## License

MIT
