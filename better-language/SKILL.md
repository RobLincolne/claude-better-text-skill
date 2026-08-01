---
name: better-language
description: Apply classic nonfiction writing principles to prose Claude writes or revises, and strip out LLM rhetorical tics like antithesis, "not X but Y," "it's not X, it's Y," and other contrast scaffolding. Use whenever drafting, writing, editing, reviewing, polishing, tightening, or rewriting prose — emails, articles, memos, letters, blog posts, reports, cover letters, LinkedIn posts, or any substantial prose. Trigger on "write an email," "draft a memo," "write a blog post," "write up X," plus review and edit requests like "review this," "edit this," "polish this," "tighten this," "rewrite this," "make this sound human," "make this less AI-sounding," "remove rhetorical tics," "kill the antithesis," "remove the 'not X but Y' pattern." Enforces simplicity, active verbs, a real human voice, unity of pronoun and tense, strong leads and endings, and the ruthless removal of clutter, jargon, and AI rhetorical patterns. Apply BY DEFAULT for any substantial prose output, even when not explicitly asked.
---

# Better Language: Clear, Human Prose

Strip prose down before building it back up. Make every sentence work. Sound like a person, not an institution or a language model.

This skill works in two directions:
- **During authoring**: when the user asks Claude to write something (an email, article, memo, etc.), apply these rules as you draft.
- **During review**: when the user hands you prose and asks for an edit, audit and rewrite against these rules.

The rules below are not stylistic preferences. They are the operating principles of clear nonfiction.

## How to Invoke This Skill

The skill is default-on for substantial prose and fires automatically on common writing requests. You usually don't need to name it. But if you want to trigger it deliberately, any of the following work:

**Authoring prompts** (Claude drafts from scratch):
- "Write an email to Sam about the delayed shipment."
- "Draft a memo on the Q3 reorg."
- "Write a blog post about our new pricing."
- "Write up the meeting notes."
- "Put together a draft of the cover letter."
- "Send a note to the team about Friday's outage."

**Review and edit prompts** (Claude polishes existing prose):
- "Review this draft."
- "Edit this email."
- "Polish this paragraph."
- "Tighten this memo."
- "Rewrite this so it's less corporate."
- "Make this sound human."
- "Make this less AI-sounding."
- "Clean up this draft."

**Targeted AI-tic cleanup** (for the rhetorical-device coverage):
- "Remove the rhetorical tics from this."
- "Kill the antithesis in this draft."
- "Cut the 'not X but Y' constructions."
- "Remove the contrast scaffolding."
- "Strip out the AI rhetorical patterns."
- "Deslop this paragraph." (works alongside the deslop skill if installed)

**Explicit invocation:**
- Slash command: `/better-language`
- Name it: "Apply the better-language skill to this draft."

When in doubt, just describe what you want done to the prose. The skill's triggers are tuned broadly enough that any honest request to write, edit, polish, or de-AI a piece of writing will pull it in.

## The Ten Rules

### 1. Simplicity. Strip every sentence to its cleanest components.

Cut every word that serves no function. Cut every long word where a short word will do. Cut every adverb that duplicates the verb. Cut every passive construction that hides who is doing what. "He totally lacked the ability to" → "He couldn't." "Due to the fact that" → "because." "At this point in time" → "now." Most first drafts can be cut by 50% without losing information or voice.

### 2. Clutter is the enemy.

Hunt the specific offenders. See [references/clutter.md](references/clutter.md) for the full hit list. The repeat offenders:
- Pompous euphemisms: "experiencing precipitation" → "raining."
- Prepositions glued to verbs: "head up," "free up," "face up to."
- Throat-clearing word clusters: "It is interesting to note that," "I might add," "It should be pointed out."
- Hedges and qualifiers: "a bit," "sort of," "in a sense," "kind of."
- Long-form when short-form will do: "assistance" (help), "numerous" (many), "facilitate" (ease), "implement" (do), "sufficient" (enough), "utilize" (use).
- Fad words: "leverage," "paradigm," "interface" as a verb, "dialogue" as a verb, "going forward," "at this juncture."

If a word isn't doing new work, delete it.

### 3. Clear thinking is clear writing.

Muddy prose is almost always muddy thought. Before writing a paragraph, know what you're trying to say. After writing it, ask: did I say it? Is it clear to someone seeing the subject for the first time? If not, some fuzz has crept in. Find it and cut it.

### 4. Use "I." Sound like a human, not an institution.

When permitted by context, use first person. Use "I," "me," "we," "us." When "I" is genuinely forbidden (formal report, news piece), still write as if a real person is talking: concrete, direct, unafraid of opinion. Good writers are visible just behind their words. Resist the academic "one" and the corporate passive. "Initiatives were undertaken" is a sign that no one is home.

### 5. Style is the person. Don't try to add it.

Do not reach for gaudy similes or decorator adjectives to seem "stylish." Trying to add style is like adding a toupee. Voice emerges once clutter is gone. First, learn to hammer the nails. The voice you want is the voice that's left when the fuzz is cut.

### 6. Verbs do the work.

- Active over passive. Name the actor. "We decided X," not "It was decided that X."
- Strong verbs over weak verbs propped up by adverbs. "Sauntered," not "walked slowly."
- Concrete nouns over abstractions. "Three customers complained," not "stakeholder feedback was negative."
- Short Anglo-Saxon words over long Latinate ones. "Use," not "utilize." "Try," not "attempt." "Help," not "facilitate."

Distrust adverbs and most adjectives. "Smile happily" is one word too long.

### 7. Unity. Pick a pronoun, tense, and mood, and stick to them.

Decide before you start:
- **Pronoun**: First person? Third person? Don't drift between them.
- **Tense**: Past or present? Switch only with intent.
- **Mood and attitude**: Casual? Formal? Detached? Ironic? Earnest? Pick one and hold it.

The travel writer who lurches from "Ann and I had always wanted to visit…" into "Hong Kong affords many fascinating experiences to the curious sightseer…" loses the reader. Tonal consistency is one of the most overlooked failures in nonfiction.

### 8. Think small. One point per piece.

No one can write a piece "about" something. Decide which corner of the subject you'll bite off. Pick one provocative thought you want to leave in the reader's mind. Not five. This single decision shapes lead, tone, structure, and ending.

### 9. The lead is everything; the ending should arrive a sentence sooner than the reader expects.

- **Lead**: Grab the reader in the first sentence. Use a specific detail, a surprise, a question only this piece can answer, or a person doing something. Never open with throat-clearing ("In this email I want to talk about…") or with weather, scene-setting, or generic stakes.
- **Ending**: Land cleanly. Ideally with a turn: a quotation, a reversal, a small image that lingers. Never with a fractal summary of what you just said ("In conclusion, we have seen that…"). Stop one beat earlier than feels safe.

### 10. Rewriting is writing.

Very few sentences come out right the first time. Treat the first draft as raw material. After drafting:
1. Read it aloud (literally read each sentence to yourself).
2. Bracket every word that isn't doing work. Then delete the bracketed words.
3. Look at the first three paragraphs. Most pieces begin one to three paragraphs too early. Cut to the sentence where the writing actually starts.
4. Look at the last paragraph. Most pieces end one sentence too late. Cut the wrap-up.

## House Style (User Additions)

These three rules extend the Ten Rules above. When they conflict, house style wins. They apply with full force to specs, capability statements, product descriptions, and promotional copy; apply them with judgment in warmer formats (personal email, narrative) where full sentences read better.

### A. Cut articles wherever grammar survives without them.

Delete "the," "a," and "an" unless the sentence breaks or turns ambiguous. "The database enforces tenant isolation" → "Database enforces tenant isolation." "The investor directory is shared" → "Investor directory is shared." "Same graph powers LV origination," not "The same graph powers the LV origination work." Keep an article only where removing it changes meaning or produces a genuine stumble when read aloud.

### B. No colons or semicolons in body prose. Write simple sentences instead.

Split every colon or semicolon construction into short declarative sentences. "Scoring is deterministic: founders can see why each firm ranked as it did" → "Scoring is deterministic. Founders see why each firm ranked strong, possible or weak." A colon may survive only where a table or list literally follows and no rephrase works. Headings carry no explanatory tails — "Smart Match: find the right investors in seconds" becomes "Smart Match," and the body does the work.

### C. Say what it does, not what it means.

Lead each sentence with an actor and an action verb. Describe function, never significance. "The event log makes the round narrative reconstructible" → "Every change lands in an append-only event log. The story of the round replays at any time." Cut significance framing on sight: "this matters because," "the result is," "which enables," "this means that." If a sentence explains why a feature is important instead of what it does, rewrite it as the action — the reader infers the importance from the function.

## Voice and Register

Develop one voice. Do not change voice based on subject. A Zinsser-trained writer writes a baseball piece and a jazz piece in the same voice, the writer's own. When writing for the user, hold the user's voice steady across topics: same level of formality, same vocabulary, same rhythm.

**Match register, but never go breezy.** "Breezy" is the failure mode of writers trying to seem casual: slang, "Hey folks," winking parentheticals, exclamation points. E. B. White sounded effortless because every sentence was disciplined. Casual is not sloppy. Plain is not folksy.

## Working Against AI Slop

Beyond Zinsser, watch for AI-specific patterns in your own drafts. If the [deslop](../deslop/SKILL.md) skill is available, defer to it on these. At minimum, before you deliver, check for:

- Em dashes, especially the parenthetical em-dash pair, which is the strongest single AI tell. Use commas, periods, or parentheses instead. (One em dash in a longer piece is fine if it earns its keep. Multiple em dashes per paragraph is a signal that a language model wrote it.)
- Antithesis and contrast scaffolding. See the dedicated section below — this is the single most pervasive AI rhetorical tic.
- Self-posed rhetorical questions you immediately answer ("The result? Devastating."). Fold into a statement.
- Three-item lists when two would do. Two specific items beats three vague ones.
- Bold-first bullets where every bullet starts with a bolded keyword. Use sentences.
- "Despite these challenges…," "In today's rapidly evolving landscape…," "It's worth noting that…" Delete these entire.
- Vague stakes inflation ("far-reaching implications," "fundamentally reshape," "paradigm shift"). Name the specific implication.
- Magic adverbs: "quietly," "fundamentally," "increasingly," "rapidly." Most do no work.
- Patronizing analogies ("Think of it as…") unless the audience truly needs one.

See [references/clutter.md](references/clutter.md) for an expanded list with examples and replacements.

### Antithesis and Contrast Scaffolding (Read This Twice)

The rhetorical name is *antithesis* — specifically the "not X but Y" construction. LLMs lean on it because it feels punchy and structured. It pads length, delays the actual information, and is a top-tier AI tell. Cut it on sight.

**Never write a sentence whose only job is to be wrong so the next sentence can correct it.** No throat-clearing dichotomies. Lead with the substantive point.

Banned constructions:

- "It's not X, it's Y." → Just write Y.
- "It's not just X — it's Y." / "It's not only X, but also Y." → Just write Y.
- "X isn't the problem. Y is." → Write "Y is the problem." or just describe Y.
- "X is solved. Y is the bottleneck." → "Y is the bottleneck."
- "X is done. Y is what matters." → State the point about Y directly.
- "The question isn't X. It's Y." → Ask Y, or assert Y.
- "X is easy. Y is hard." → Say why Y is hard.
- "This isn't about X. It's about Y." → Lead with Y.
- "Forget X. Y is the real story." → Tell the Y story.
- "X may be true, but Y matters more." → State Y and its weight.
- "X gets the headlines. Y does the work." → Describe what Y does.

The diagnostic test: if you can delete the first sentence (the "wrong" one) and the paragraph still makes sense — and it almost always does — the first sentence was scaffolding, not content. Delete it.

The pattern hides in subtler forms too. Watch for the same two-beat rhythm without the explicit negation: "Many people think X. The reality is Y." / "On paper, X. In practice, Y." / "Yes, X. But also Y." Same tic, same fix: state Y and move on.

## When Authoring Prose for the User

Default workflow when the user asks Claude to write something:

1. **Reduce the brief.** Before drafting, decide: who is the audience, what is the one point, what tone, what length? If the user hasn't said, infer the smallest reasonable scope and start small. (Don't pre-ask the user for these unless the request is genuinely ambiguous; just make a clean choice.)
2. **Draft fast, draft short.** Aim for 60–70% of the final length on first pass. It is easier to expand a tight draft than to cut a flabby one.
3. **Self-edit before delivering.** Apply the Pre-Delivery Checklist below. Make at least one substantive cut.
4. **Deliver.** Hand the user the revised version. Do not show your edit work unless they asked for it.

## When Reviewing Prose for the User

Default workflow when the user hands Claude existing prose:

1. **Read it through once.** Don't start marking on the first read.
2. **Identify the one point.** Can you state it in one sentence? If not, the piece doesn't yet know what it is.
3. **Audit against the Ten Rules.** Note the worst three offenses.
4. **Rewrite the worst sections.** Don't just describe what's wrong. Show the fix.
5. **Deliver a rewrite + a short note** on the most important changes. Keep the note shorter than the rewrite.

See [references/examples.md](references/examples.md) for before/after rewrites that demonstrate the moves.

## Pre-Delivery Checklist

Before handing prose back to the user, run this pass. It takes under a minute.

- **Lead**: Does the first sentence earn the reader's attention? Or could the piece start at sentence 2 or 3?
- **Length**: Can I cut 20% without losing anything? Try. Almost always, yes.
- **Verbs**: Are the main verbs active and specific? Or am I leaning on "is," "was," "has," "makes"?
- **Adverbs and adjectives**: Have I deleted at least one of each per paragraph?
- **Clutter words**: Any "just," "really," "very," "actually," "basically," "essentially," "literally," "kind of," "sort of," "a bit," "in a sense"? Cut them.
- **Long words**: Any word with a Latinate ring (utilize, facilitate, implement, paradigm) where a plain word would do?
- **Passive voice**: Any sentence where I can't tell who did what? Rewrite with a named actor.
- **Pronoun and tense**: Consistent throughout?
- **Tone**: Same register from start to finish? No drift into breezy or into corporate?
- **AI tells**: No parenthetical em-dash pairs, no "Not X. Y." binary contrasts, no self-posed rhetorical questions, no "It's worth noting," no stacked tricolons.
- **Articles**: Can any "the," "a," or "an" go without breaking the sentence? Cut it (House Style A).
- **Colons and semicolons**: Any in body prose? Split into simple sentences (House Style B).
- **Does vs. means**: Does each sentence state an action by a named actor? Rewrite significance-statements as function-statements (House Style C).
- **Ending**: Does the last sentence land? Or am I winding down with a summary? Cut summaries.
- **One point**: Can I still state the piece's one point in a sentence?
- **Read it aloud**: Does it flow? Any sentence that trips me when read aloud needs fixing.

## When the User Hasn't Asked for Polish

If the user asks for a one-line reply or a casual chat response, don't impose this whole rubric. The skill targets *substantial* prose: anything the user would copy, send, publish, or save. For a quick conversational answer in chat, a light touch is enough. The rules still apply at the level of basic clarity, active verbs, and no slop.

## References

- [references/clutter.md](references/clutter.md): Detailed clutter, journalese, and jargon list, with replacements.
- [references/principles.md](references/principles.md): Expanded notes on each of the Ten Rules with quotations and rationale from the book.
- [references/examples.md](references/examples.md): Before/after rewrites across email, memo, blog, and report formats.
- [references/checklist.md](references/checklist.md): Standalone copy of the Pre-Delivery Checklist for quick reference.
