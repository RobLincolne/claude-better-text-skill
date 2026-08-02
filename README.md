# claude-better-text-skill

A Claude skill inspired by my visceral reaction to AI generated prose, my experience of William Zinsser's *On Writing Well*, and that rash I get when reading words that don't need to be there. It  tackles head-on classic Claude-isms such as antithesis statements, and other tics as we spot them. I want to push that part further.

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

1. **Cut every word that does no work.** Read the sentence without it. If the meaning survives, delete.
2. **Delete clutter by category.** Pompous euphemism, prepositions glued to verbs, throat-clearing clusters, hedges, Latinate inflation, fad words.
3. **Rewrite the sentence you cannot write cleanly.** A sentence that resists clean phrasing marks a thought that isn't finished.
4. **Name the speaker.** Use "I" where context allows. Keep opinion and concrete detail where it doesn't.
5. **Do not decorate.** Voice is what remains after the clutter goes.
6. **Put the work in the verbs.** Active over passive, concrete over abstract, Anglo-Saxon over Latinate, no adverb duplicating its verb.
7. **Hold one pronoun, tense, and register.** Settle person, tense, formality, and stance before drafting.
8. **Make one point.** Write it down first. Cut any paragraph that doesn't serve it.
9. **Open with the news. Stop at the last fact.** No announcing openers, no summary close.
10. **Revise before delivering.** Read aloud, bracket dead words, cut the opening, cut the wrap-up.

Five house-style rules run on top.

- **A.** Cut articles wherever grammar survives without them.
- **B.** No colons or semicolons in body prose.
- **C.** Say what a thing does, not what it means.
- **D.** One line, one proposition. Cut to the half that carries the point.
- **E.** No metaphor standing in for a description.

A pre-delivery checklist and an AI-tells screen close the pass.

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

Beyond the Zinsser ten, the skill hunts the LLM patterns Zinsser never saw. The primary target is **antithesis**, the "not X but Y" construction and its variants. See the "AI Patterns to Remove" section of `SKILL.md` and the pattern tables in `references/clutter.md`.

Banned constructions include:

- "It's not X, it's Y."
- "X isn't the problem. Y is."
- "The question isn't X. It's Y."
- "X is easy. Y is hard."
- "X is done. Y is what matters."
- Two-beat rhythms without the negation. "Many think X. The reality is Y." / "On paper, X. In practice, Y."

Never write a sentence whose only job is to be wrong so the next sentence can correct it. State the substantive point directly.

**Balanced declarative pairs** get their own pass, because the antithesis test misses them. Two sentences run the same frame and swap the subject, and both halves are true, so deleting either one loses information.

- "AI generation is the engine. The decision dataset is the moat."
- "V1 proves the wedge. V2 is the venture-scale platform."
- "Speed wins the deal. Trust keeps it."

The fix runs as a ladder. Cut to the half that carries the point, failing that subordinate the lesser half, failing that give each half its own line. Reaching for a merge first produces a **double-verb line** that hides the pair without resolving it: "V1 proves access before V2 turns it into the platform" still has two subjects doing two things.

The screen also catches **announce-then-deliver** ("The strategy is simple. Sell to the regulator first.") and **numbers that miss their list** ("This round funds one job" followed by three imperatives). These concentrate in slide headlines, pull quotes, and briefing bullets.

The screen also covers patterns that survive a word-level edit:

- **Sentence shapes.** Tricolons, fragment stacking ("Every time. No exceptions."), self-answered questions ("The result? Devastating."), anaphora, parenthetical em-dash pairs, false ranges ("from startups to enterprises").
- **Phrases.** "Here's the thing," "Make no mistake," "It's worth noting," "delve into," "testament to," "seamlessly," "transformative," plus assistant tics like "Hope this helps."
- **Format.** Bold-first bullets, headers with explanatory tails, "Key takeaways" closes, emoji as section markers.

## Files

`better-text/` holds the source of truth. Edit here, then run `./build.sh`.

- [`better-text/SKILL.md`](better-text/SKILL.md) carries the ten rules, the house style, the AI-tells screen, and the pre-delivery checklist.
- [`better-text/references/clutter.md`](better-text/references/clutter.md) lists clutter, journalese, jargon, and AI patterns with replacements.
- [`better-text/references/principles.md`](better-text/references/principles.md) gives the reasoning behind each of the ten rules.
- [`better-text/references/examples.md`](better-text/references/examples.md) works eight before/after rewrites. Status email, project memo lead, blog opening, cover letter paragraph, apology email, internal announcement, review note, product copy.
- [`better-text/references/checklist.md`](better-text/references/checklist.md) copies out the pre-delivery checklist to stand alone.

Everything else is tooling.

- [`build.sh`](build.sh) validates the source and builds the `.skill` archive.
- [`CONTRIBUTING.md`](CONTRIBUTING.md) covers how to propose a change, and the two constraints to respect.

The `better-text.skill` archive is a build output. It isn't committed. CI builds it and attaches it to each [release](https://github.com/RobLincolne/claude-better-text-skill/releases).

## Credits

Distilled from William Zinsser, *On Writing Well: The Classic Guide to Writing Nonfiction* (25th anniversary edition, HarperCollins, 2001). The principles are Zinsser's. The codification into a Claude skill is mine.

## License

MIT
