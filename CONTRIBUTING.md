# Contributing

Contributions are welcome, especially new rhetorical tics worth catching.

## The one rule

**Edit `better-text/`. Nothing else is source.**

`better-text.skill` is a build output. It isn't committed — CI builds it and attaches it to each release. So there's no archive to update in your pull request, and no way for your branch to conflict with someone else's on a binary.

## Before you open a pull request

```bash
./build.sh --check
```

This is exactly what CI runs. It catches the two mistakes that break the skill without any obvious symptom:

**The frontmatter `name:` must match the folder name.** Both are `better-text`. The folder name becomes the skill's identity once installed, so if they drift, the skill installs wrong.

**The `description:` must stay under 1024 characters.** It currently sits at 1019, so there are 5 characters spare. Adding a trigger phrase almost certainly means trimming another. This limit has bitten this repo before.

To build the archive locally and test a real install:

```bash
./build.sh
unzip better-text.skill -d ~/.claude/skills/
```

## Proposing a rhetorical tic

This is the most useful kind of contribution. A good proposal has:

1. **The pattern**, stated as a template — for example `"It's not X, it's Y."`
2. **Two or three real examples** of Claude producing it.
3. **The rewrite** — what the sentence should say instead.

Add the pattern to the relevant table in `better-text/references/clutter.md`. If it's a structural tic rather than a word-level one, it likely belongs in the "Antithesis and Contrast Scaffolding" section of `better-text/SKILL.md` too.

Adding a trigger phrase to the frontmatter `description:` is only worth it when someone would plausibly ask for that cleanup by name. Given the 1024-character ceiling, the bar is high.

## Style

The repo is a writing skill, so the prose in it should pass its own rules. Before submitting, read your addition against `better-text/references/checklist.md`. Watch for the antithesis constructions the skill exists to remove — they're easy to write by reflex while documenting them.

## Releases

Maintainer step. Tag a version and CI builds and publishes the archive:

```bash
git tag v2.1.0
git push origin v2.1.0
```
