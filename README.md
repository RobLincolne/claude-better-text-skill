# claude-better-text-skill

A Claude skill inspired by my experience of William Zinsser's *On Writing Well*, applying its principles to any nonfiction prose Claude writes or revises. It also tackles head-on classic Claude-isms such as antithesis statements, and other tics as we spot them. I want to push that part much further.

It auto-applies whenever Claude drafts, edits, or reviews prose. Emails, articles, memos, letters, blog posts, newsletters, reports, cover letters, announcements, status updates, anything substantial. Complements the standalone `deslop` skill.

## Install

Download **[better-text.skill](https://github.com/RobLincolne/claude-better-text-skill/releases/latest/download/better-text.skill)**, drag it into Claude or Cowork, and click "Save skill". That's it.

To install by hand, unzip it into your skills directory:

```bash
unzip better-text.skill -d ~/.claude/skills/
```

Either way you end up with `~/.claude/skills/better-text/`.

## What the skill does

It enforces ten rules on every prose output Claude produces.

1. **Simplicity.** Strip every sentence to its cleanest components.
2. **Clutter elimination.** Hunt pompous euphemisms, prepositions glued to verbs, throat-clearing word clusters, hedges, fad words, and corporate jargon.
3. **Clear thinking.** A muddy sentence means an unfinished thought. Rewrite it or cut it.
4. **Real human voice.** Use "I" where context allows. Resist the institutional passive even where it doesn't.
5. **Style is the person.** Voice is what's left when the clutter goes. Don't reach for it.
6. **Verbs do the work.** Active over passive, concrete over abstract, short Anglo-Saxon over Latinate, no adverb that duplicates its verb.
7. **Unity.** One pronoun, one tense, one mood, one attitude. Hold them.
8. **Think small.** One provocative point per piece, not five.
9. **Lead and ending.** Grab the reader in sentence one. Land one beat earlier than feels safe.
10. **Rewriting is writing.** Cut, read aloud, cut again.

A pre-delivery checklist and a deslop-style AI-tells screen run on top.

## Developing

Edit files under `better-text/`. That folder is the only source. The `.skill` archive gets built, never committed.

```bash
./build.sh --check   # validate (this is what CI runs on every PR)
./build.sh           # validate, then build better-text.skill
```

Two failures break the skill silently. A frontmatter `name:` drifts from the folder name, or a `description:` runs past its 1024-character limit. The checks catch both. See [CONTRIBUTING.md](CONTRIBUTING.md).

Tagging cuts a release. CI builds the archive and attaches it:

```bash
git tag v2.1.0 && git push origin v2.1.0
```

## How it triggers

The frontmatter fires on any of these.

**Authoring requests**
- "write an email", "write an article", "draft a memo", "write a blog post", "write a letter", "write a report", "write up X", "put together a draft", "send a note to"

**Review and edit requests**
- "review this", "edit this", "polish this", "tighten this", "rewrite this", "clean this up"
- "make this less AI-sounding", "make this sound human"

**Targeted rhetorical-device cleanup** (added in v1.1)
- "remove the rhetorical tics", "kill the antithesis", "cut the 'not X but Y' constructions", "remove the contrast scaffolding", "strip out the AI rhetorical patterns"

**Explicit invocation**
- Slash command: `/better-text`
- Or by name: "Apply the better-text skill to this draft."

The skill is also marked default-on for substantial prose, so it kicks in when you don't name it.

## Rhetorical-tic coverage

Beyond the Zinsser ten, the skill hunts the most pervasive LLM rhetorical tic, **antithesis**. That covers the "not X but Y" construction and its variants. See the "Antithesis and Contrast Scaffolding" section of `SKILL.md` and the pattern tables in `references/clutter.md`. Banned constructions include:

- "It's not X, it's Y."
- "X isn't the problem. Y is."
- "The question isn't X. It's Y."
- "X is easy. Y is hard."
- "X is done. Y is what matters."
- Subtler two-beat rhythms. "Many think X. The reality is Y." / "On paper, X. In practice, Y."

Never write a sentence whose only job is to be wrong so the next sentence can correct it. State the substantive point directly.

## Files

`better-text/` holds the source of truth. Edit here, then run `./build.sh`.

- [`better-text/SKILL.md`](better-text/SKILL.md) carries the Ten Rules and the Pre-Delivery Checklist.
- [`better-text/references/clutter.md`](better-text/references/clutter.md) lists clutter, journalese, and jargon with replacements.
- [`better-text/references/principles.md`](better-text/references/principles.md) expands each of the Ten Rules and explains the reasoning behind it.
- [`better-text/references/examples.md`](better-text/references/examples.md) works seven before/after rewrites. Status email, project memo lead, blog opening, cover letter paragraph, apology email, internal announcement, review note.
- [`better-text/references/checklist.md`](better-text/references/checklist.md) copies out the pre-delivery checklist to stand alone.

Everything else is tooling.

- [`build.sh`](build.sh) validates the source and builds the `.skill` archive.
- [`CONTRIBUTING.md`](CONTRIBUTING.md) covers how to propose a change, and the two constraints to respect.

The `better-text.skill` archive is a build output. It isn't committed. CI builds it and attaches it to each [release](https://github.com/RobLincolne/claude-better-text-skill/releases).

## Credits

Distilled from William Zinsser, *On Writing Well: The Classic Guide to Writing Nonfiction* (25th anniversary edition, HarperCollins, 2001). The principles are Zinsser's. The codification into a Claude skill is mine.

## License

MIT
