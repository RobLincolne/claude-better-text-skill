# claude-writing-well-skill

A Claude skill inspired by my experience of William Zinsser's *On Writing Well*, applying its principles to any nonfiction prose Claude writes or revises. It also tackles head-on classic Claude-isms such as antithesis statements, and other tics as we spot them — an area I really want to push further.

It's designed to auto-apply whenever Claude is asked to draft, edit, or review prose — emails, articles, memos, letters, blog posts, newsletters, reports, cover letters, announcements, status updates, and anything else substantial. Complements the standalone `deslop` skill.

## Install

Download **[better-language.skill](https://github.com/RobLincolne/claude-writing-well-skill/releases/latest/download/better-language.skill)**, drag it into Claude or Cowork, and click "Save skill". That's it.

Prefer to install by hand? Unzip it into your skills directory:

```bash
unzip better-language.skill -d ~/.claude/skills/
```

Either way you end up with `~/.claude/skills/better-language/`.

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

## Developing

Edit files under `better-language/`. That folder is the only source — the `.skill` archive is built, never committed.

```bash
./build.sh --check   # validate (this is what CI runs on every PR)
./build.sh           # validate, then build better-language.skill
```

The checks catch the two failures that break the skill silently: a frontmatter `name:` that drifts from the folder name, and a `description:` over its 1024-character limit. See [CONTRIBUTING.md](CONTRIBUTING.md).

Releases are cut by tagging. CI builds the archive and attaches it to the release:

```bash
git tag v1.2.0 && git push origin v1.2.0
```

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
- Slash command: `/better-language`
- Or by name: "Apply the better-language skill to this draft."

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

`better-language/` is the source of truth — edit here, then run `./build.sh`.

- [`better-language/SKILL.md`](better-language/SKILL.md) — main skill file with the Ten Rules and Pre-Delivery Checklist.
- [`better-language/references/clutter.md`](better-language/references/clutter.md) — detailed clutter, journalese, and jargon hit list with replacements.
- [`better-language/references/principles.md`](better-language/references/principles.md) — expanded notes on each of the Ten Rules with passages from the book.
- [`better-language/references/examples.md`](better-language/references/examples.md) — seven before/after rewrites (status email, project memo lead, blog opening, cover letter paragraph, apology email, internal announcement, review note).
- [`better-language/references/checklist.md`](better-language/references/checklist.md) — standalone copy of the pre-delivery checklist.

Everything else is tooling:

- [`build.sh`](build.sh) — validates the source and builds the `.skill` archive.
- [`CONTRIBUTING.md`](CONTRIBUTING.md) — how to propose a change, and the two constraints to respect.

The `better-language.skill` archive is a build output. It isn't committed — CI builds it and attaches it to each [release](https://github.com/RobLincolne/claude-writing-well-skill/releases).

## Credits

Distilled from William Zinsser, *On Writing Well: The Classic Guide to Writing Nonfiction* (25th anniversary edition, HarperCollins, 2001). The principles are Zinsser's; the codification into a Claude skill is mine.

## License

MIT
