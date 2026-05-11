# Writing Well

A Claude skill that applies William Zinsser's *On Writing Well* principles to any prose Claude writes or revises.

## What it does

Whenever you ask Claude to write or edit prose — an email, an article, a memo, a letter, a blog post, a report, a cover letter, or anything else substantial — this skill enforces:

- **Simplicity.** Every sentence stripped to its cleanest components.
- **Active verbs.** Named actors, concrete nouns, no passive evasions.
- **Real human voice.** First person where allowed; visible personhood even where not.
- **Unity.** One pronoun, one tense, one mood, one point — held to the end.
- **Strong leads and endings.** No throat-clearing openers, no fractal summaries.
- **Ruthless cuts of clutter.** No "leverage," "going forward," "It is worth noting that," no em-dash slop.
- **Rewriting as a habit.** Self-edit before delivering.

It complements (and overlaps slightly with) the `deslop` skill. Use both for the cleanest output.

## Installation

### As a Claude Code plugin

From the `writing-well-1` directory:

```bash
# If you have the Claude plugin CLI:
claude plugin install ./writing-well-plugin

# Or zip and install via Cowork:
cd writing-well-plugin && zip -r ../writing-well.plugin . && cd ..
# Then drag writing-well.plugin into Cowork's plugin installer.
```

### As a standalone skill

Drop the `writing-well/` folder into your skills directory:

```bash
cp -r writing-well ~/.claude/skills/
```

## Usage

Once installed, the skill triggers automatically when Claude is asked to write or edit prose. You don't need to mention it.

You can also invoke it explicitly:
- "Apply the writing-well skill to this paragraph."
- "Rewrite this email using Zinsser's principles."
- "Cut the clutter in this draft."

## Files

- `SKILL.md` — Main skill file with the ten rules and pre-delivery checklist.
- `references/clutter.md` — Detailed clutter, journalese, and jargon hit list with replacements.
- `references/principles.md` — Expanded notes on each of the ten rules.
- `references/examples.md` — Before/after rewrites across email, memo, blog, cover letter, and other formats.
- `references/checklist.md` — Standalone pre-delivery checklist.

## Credits

Distilled from William Zinsser, *On Writing Well: The Classic Guide to Writing Nonfiction*. The principles are Zinsser's; the application is mine.
