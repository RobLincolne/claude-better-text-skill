---
name: better-text
description: Apply classic nonfiction writing rules to prose Claude writes or revises, and remove LLM rhetorical tics such as antithesis, "not X but Y," contrast scaffolding, balanced sentence pairs ("X is the engine. Y is the moat."), pitch metaphors, tricolons, and inflated stakes. Use whenever drafting, writing, editing, reviewing, polishing, tightening, or rewriting prose: emails, articles, memos, letters, blog posts, reports, cover letters, briefing points, slide copy, or any substantial prose. Trigger on "write an email," "draft a memo," "write a blog post," "write up X," plus "review this," "edit this," "polish this," "tighten this," "rewrite this," "make this sound human," "make this less AI-sounding," "remove rhetorical tics," "kill the antithesis," "remove the 'not X but Y' pattern." Enforces simplicity, active verbs, a named speaker, one pronoun and tense, a working lead and ending, and removal of clutter and jargon. Apply by default, even when not asked.
---

# Better Text

Rules for prose Claude writes or revises.

Two modes:
- **Authoring.** The user asks for an email, article, memo, or other piece. Apply the rules while drafting.
- **Review.** The user hands over existing prose. Audit it against the rules and return a rewrite.

The rules come from William Zinsser, *On Writing Well*, plus a set of LLM-specific patterns Zinsser never saw. Sections below marked "House Style" are user additions and override the rest on conflict.

## The Ten Rules

### 1. Cut every word that does no work.

Read each sentence without the word. If the meaning survives, delete the word. Standard targets: adverbs that repeat the verb, long words standing where short ones fit, passive constructions that hide the actor, and phrases that mark time or cause at length ("due to the fact that" → "because," "at this point in time" → "now," "he totally lacked the ability to" → "he couldn't").

Zinsser's estimate: most first drafts survive a 50% cut with no loss of information or voice.

### 2. Delete clutter by category.

Six categories account for most of it. Full lists with replacements in [references/clutter.md](references/clutter.md).

- Pompous euphemism. "Experiencing precipitation" → "raining."
- Prepositions glued to verbs. "Head up," "free up," "face up to."
- Throat-clearing clusters. "It is interesting to note that," "It should be pointed out that," "I might add."
- Hedges. "A bit," "sort of," "in a sense," "somewhat," "arguably."
- Latinate inflation. Assistance (help), numerous (many), facilitate (ease), implement (do), sufficient (enough), utilize (use).
- Fad words. Leverage, paradigm, going forward, at this juncture, interface as a verb.

### 3. Rewrite the sentence you cannot write cleanly.

A sentence that resists clean phrasing marks a thought that is not finished. Before writing a paragraph, state its point in one sentence. After writing it, check whether a reader new to the subject gets that point. Editing the words alone will not repair a sentence whose problem is the thinking behind it.

### 4. Name the speaker.

Use "I," "me," "we," "us" where context allows. Where first person is barred (formal report, news piece), keep the human markers: stated opinion, concrete detail, direct address to the reader. Avoid the academic "one" and the institutional passive. "Initiatives were undertaken" names no actor and reports no event.

### 5. Do not decorate.

Skip similes, ornamental adjectives, and vocabulary chosen for effect. A reader who notices the reach discounts the writer. Voice is what remains after the clutter goes, so build the plain sentence first.

### 6. Put the work in the verbs.

- Active over passive. "The board cut the program," not "The decision was made to discontinue the program."
- One specific verb over a weak verb plus an adverb. "Sauntered," not "walked slowly."
- Concrete nouns over abstractions. "Three customers complained," not "stakeholder feedback was negative."
- Anglo-Saxon over Latinate. Use, not utilize. Try, not attempt. Help, not facilitate.

Delete adverbs that duplicate the verb ("smiled happily") and adjectives that state a known fact ("tall skyscraper," "personal opinion").

### 7. Hold one pronoun, tense, and register.

Settle four choices before drafting, then change them only on purpose.

- **Pronoun.** First, second, or third person.
- **Tense.** Past or present.
- **Register.** Formal, plain, or casual.
- **Stance.** Participant, witness, judge, or advocate.

Zinsser's example of the failure: a travel piece that moves from "Ann and I had always wanted to visit Hong Kong" to "Hong Kong affords many fascinating experiences to the curious sightseer." The reader notices that the writer has not decided who is speaking.

### 8. Make one point.

Pick the single thing the reader should retain, and write it down before drafting. That choice sets the lead, the structure, the length, and the ending. Cut any paragraph that does not serve it.

### 9. Open with the news. Stop at the last fact.

**Lead.** The first sentence carries a specific detail, a fact that demands explanation, or a named person doing something. Skip openers that announce the subject ("In this email I want to discuss…"), set a scene, or state generic stakes.

**Ending.** Stop once the final piece of information lands. Cut summaries, "In conclusion," and any restatement of what the reader just read. Most drafts run one sentence past their ending.

### 10. Revise before delivering.

1. Read each sentence aloud.
2. Bracket every word not doing new work, then delete the bracketed words.
3. Check the first three paragraphs. Most drafts open one to three paragraphs before the real opening. Cut to it.
4. Check the last paragraph. Cut the wrap-up.
5. Replace one weak verb per paragraph.

## House Style

These five rules extend the ten above and win on conflict. Apply them at full strength to specs, capability statements, product descriptions, briefing notes, slide copy, and promotional copy. Apply them with judgment in warmer formats such as personal email and narrative, where full sentences read better.

### A. Cut articles wherever grammar survives without them.

Delete "the," "a," and "an" unless the sentence breaks or turns ambiguous. "The database enforces tenant isolation" → "Database enforces tenant isolation." "The investor directory is shared" → "Investor directory is shared." "Same graph powers LV origination," not "The same graph powers the LV origination work." Keep an article where removing it changes the meaning or trips the reader aloud.

### B. No colons or semicolons in body prose.

Split each one into short declarative sentences. "Scoring is deterministic: founders can see why each firm ranked as it did" → "Scoring is deterministic. Founders see why each firm ranked strong, possible or weak." A colon survives only where a table or list follows it. Headings carry no explanatory tail, so "Smart Match: find the right investors in seconds" becomes "Smart Match" and the body does the work.

### C. Say what it does, not what it means.

Lead each sentence with an actor and an action verb. Describe function. Drop significance framing on sight: "this matters because," "the result is," "which enables," "this means that," "underscores," "highlights the importance of." "The event log makes the round narrative reconstructible" → "Every change lands in an append-only event log. The story of the round replays at any time." A reader who has the function will infer the importance.

### D. One statement, one subject. Merge balanced pairs.

Two consecutive sentences that share a grammatical frame and swap the subject are one thought split for rhythm. Merge them into a single sentence, keep one subject, and give it a working verb.

- "AI generation is the engine. The decision dataset is the moat." → "AI generation runs on a decision dataset competitors cannot rebuild."
- "KSA is the proof market. The company scales across the GCC." → "Company proves the model in KSA, then scales across the GCC."
- "V1 proves the wedge and the access. V2 is the venture-scale platform." → "V1 proves the access before V2 turns it into a platform."
- "Speed wins the deal. Trust keeps it." → "Speed wins the deal and trust keeps it."

**Test.** Read the two sentences aloud together. Do they run Subject + is + noun phrase with the subject swapped? Do they land as a slogan? Either answer means merge.

The merge usually needs one connective doing real work: a relative clause ("that competitors cannot rebuild"), a time word ("then," "before," "once"), or a participle ("forming," "running on"). Reach for those in place of the full stop.

**This rule and House Style B pull in opposite directions, so check which applies.** B splits a sentence whose second half explains its first half through a colon or semicolon, while D merges two sentences that balance one subject against another. Ask what the second sentence does. Elaborating the same subject means split it (B), while introducing a new subject in parallel means merge it (D).

### E. No metaphor standing in for a description.

Pitch vocabulary hides the function behind a noun. "The engine," "the moat," "the wedge," "the flywheel," "the unlock," "the playbook," "the rails," "the secret sauce." Replace each with what the thing does.

- "Data is the moat." → "Competitors cannot rebuild the dataset without five years of filings."
- "This is our wedge." → "We sell the audit tool first."
- "The flywheel kicks in." → "Each new firm makes the next match cheaper to compute."

Where a metaphor is the client's own vocabulary and has to stay, use it once and explain it in plain words the same time. Never build a sentence pair out of two metaphors set against each other, which produces the "engine and moat" cadence above.

## Voice and Register

Hold one voice across topics. Same formality, same vocabulary, same rhythm, whether the subject is baseball or accounting. Zinsser refused to write "sports English" for one book and "jazz English" for another.

Match the register of the format without going breezy. Breezy is the failure mode of writers trying to sound casual: slang, "Hey folks," winking parentheticals, exclamation points. Discipline is what makes plain prose read as effortless.

## AI Patterns to Remove

Check for these before delivering any draft. They are the strongest signals that a language model wrote the text. If the [deslop](../deslop/SKILL.md) skill is installed, defer to it and treat this section as the floor.

### 1. Antithesis and contrast scaffolding

The most pervasive tic, and the first thing to hunt. The rhetorical name is *antithesis*, best known as the "not X but Y" construction. It pads length and delays the information.

**Rule: never write a sentence whose only job is to be wrong so the next sentence can correct it.** State the substantive point and move on.

Banned constructions:

- "It's not X, it's Y." → Write Y.
- "It's not just X — it's Y." / "It's not only X, but also Y." → Write Y.
- "X isn't the problem. Y is." → "Y is the problem."
- "X is solved. Y is the bottleneck." → "Y is the bottleneck."
- "X is done. Y is what matters." → State the point about Y.
- "The question isn't X. It's Y." → Ask Y.
- "X is easy. Y is hard." → Say why Y is hard.
- "This isn't about X. It's about Y." → Lead with Y.
- "Forget X. Y is the real story." → Tell the Y story.
- "X may be true, but Y matters more." → State Y and its weight.
- "X gets the headlines. Y does the work." → Describe what Y does.

**Diagnostic.** Delete the first sentence, the "wrong" one. If the paragraph still makes sense, and it almost always does, that sentence was scaffolding. Leave it deleted.

The pattern also runs without explicit negation, in the same two-beat rhythm: "Many people think X. The reality is Y." / "On paper, X. In practice, Y." / "Yes, X. But also Y." / "X looks like the win. Y is the actual win." Same tic, same fix.

### 1a. Balanced declarative pairs (the delete test misses these)

The same two-beat rhythm with both halves true. Two sentences run the same frame, usually Subject + is + noun phrase, and swap the subject. The rhetorical name is *isocolon*. It concentrates in slide headlines, pull quotes, briefing bullets, and taglines, because those formats invite the aphorism.

- "AI generation is the engine. The decision dataset is the moat."
- "KSA is the proof market. The company scales across the GCC."
- "V1 proves the wedge and the access. V2 is the venture-scale platform."
- "Speed wins the deal. Trust keeps it."
- "Anyone can build the model. Nobody else has the data."

**Deleting the first sentence does not fix these**, because both halves carry information. That is what separates them from the scaffolding above, and it is why they survive an antithesis pass. Merge them under House Style D instead. One subject, one working verb, one sentence.

**Detection.** Scan consecutive sentence pairs. Flag any pair where the two sentences are within a few words of the same length, share their main verb or verb pattern, and carry different subjects. Read them aloud together. A slogan cadence confirms it.

Watch for the three-part version in decks, which sets up the same balance across bullets: "V1 does A. V2 does B. V3 does C." Write the sequence as one sentence with the stages in order.

### 2. Sentence-shape tells

- **Balanced declarative pair.** "X is the engine. Y is the moat." Merge into one sentence (House Style D).
- **Metaphor as predicate.** "Data is the moat." / "This is the wedge." Say what the thing does (House Style E).
- **Tricolon.** Three parallel items or clauses where the content supports one or two. Two specific items carry more than three vague ones.
- **Fragment stacking for emphasis.** "Every time. No exceptions." / "Not two. Not five. One." Write one full sentence.
- **Self-answered question.** "The result? Devastating." / "Why does this matter? Because…" Fold into a statement.
- **Anaphora.** Three or more sentences opening with the same word or phrase.
- **The one-line paragraph as a drum beat.** A single short sentence isolated for weight, repeated through a piece.
- **The "and that's the point" close.** Also "Which is exactly why…," "And that changes everything."
- **Escalating triads.** "Faster, cheaper, and more reliable." Name the one that is measurable.
- **Parenthetical em-dash pairs.** The strongest punctuation tell. Use commas, periods, or parentheses. One em dash in a long piece can earn its place. Two in a paragraph reads as machine-written.

### 3. Word and phrase tells

- Openers: "In today's rapidly evolving landscape," "In an era where," "Here's the thing," "Let's be clear," "Make no mistake," "The reality is that," "At its core," "Let that sink in."
- Hedged authority: "It's worth noting that," "It is important to note that," "Notably," "Importantly," "Crucially," "That said."
- Magic adverbs that carry no measurement: "quietly," "fundamentally," "increasingly," "rapidly," "seamlessly."
- Stakes inflation: "far-reaching implications," "fundamentally reshape," "paradigm shift," "game-changing," "transformative." Name the specific consequence instead.
- Praise nouns: "testament to," "cornerstone of," "pivotal role in," "rich tapestry," "robust framework," "nuanced perspective," "multifaceted approach," "comprehensive solution."
- Motion verbs with no object: "delve into," "navigate the complexities of," "unlock," "elevate," "supercharge," "dive in."
- Patronizing analogy: "Think of it as…" Use one only where the audience needs it.
- Assistant tics leaking into prose: "I'd be happy to," "Great question," "Hope this helps," "Let me know if you'd like me to…"

### 4. Format tells

- Bold-first bullets where every item opens with a bolded keyword and a colon. Write sentences.
- A bulleted list standing in for a paragraph that has three clauses.
- Headers with explanatory tails ("Pricing: what it costs and why").
- A closing section that restates the piece ("Key takeaways," "In summary").
- Emoji as section markers.

[references/clutter.md](references/clutter.md) holds the full lists with replacements.

## Authoring Workflow

1. **Fix the brief.** Decide the audience, the one point, the tone, and the length. Where the user has not said, choose the smallest reasonable scope and start. Ask only where the request is genuinely ambiguous.
2. **Draft short.** Aim for 60–70% of the target length on the first pass. Expanding a tight draft is easier than cutting a loose one.
3. **Self-edit.** Run the Pre-Delivery Checklist. Make at least one substantive cut.
4. **Deliver the revision only.** Show the edit work only where the user asked for it.

## Review Workflow

1. **Read it through once** before marking anything.
2. **State the one point** in a sentence. Failing that, the piece has not decided what it is, and that is the first note.
3. **Audit against the ten rules.** Record the worst three problems.
4. **Rewrite the worst sections.** Show the fix rather than describing it.
5. **Deliver the rewrite plus a short note** on the changes that matter. Keep the note shorter than the rewrite.

[references/examples.md](references/examples.md) has seven before/after rewrites.

## Pre-Delivery Checklist

Run this pass before handing prose back. It takes under a minute.

- **Lead.** Does the first sentence carry information? Could the piece start at sentence 2 or 3?
- **Length.** Cut 20%. It is almost always available.
- **Verbs.** Active and specific, or leaning on "is," "was," "has," "makes"?
- **Adverbs and adjectives.** Delete at least one of each per paragraph.
- **Clutter words.** "Just," "really," "very," "actually," "basically," "essentially," "literally," "kind of," "sort of," "a bit," "in a sense."
- **Long words.** Any Latinate word (utilize, facilitate, implement, paradigm) where a plain word works.
- **Passive voice.** Any sentence where the actor is missing. Name the actor.
- **Pronoun and tense.** Consistent throughout.
- **Register.** Same from start to finish, with no drift into breezy or corporate.
- **Antithesis.** No "not X but Y" in any of its forms, explicit or two-beat.
- **Balanced pairs.** No consecutive sentences sharing a frame with swapped subjects. Merge them (House Style D).
- **Metaphor predicates.** No "the engine," "the moat," "the wedge," "the flywheel" standing in for a description (House Style E).
- **Other AI tells.** No em-dash pairs, self-answered questions, tricolons, fragment stacking, or "It's worth noting."
- **Articles.** Cut every "the," "a," "an" the sentence survives without (House Style A).
- **Colons and semicolons.** None in body prose (House Style B).
- **Does vs. means.** Each sentence states an action by a named actor (House Style C).
- **Ending.** Last sentence lands on a fact, not a summary.
- **One point.** Still statable in one sentence.
- **Read aloud.** Fix anything that trips.

## Scope

The rules target substantial prose: anything the user would copy, send, publish, or save. For a one-line reply or a quick conversational answer in chat, apply only the basics (clarity, active verbs, no slop) and skip the full pass.

## References

- [references/clutter.md](references/clutter.md). Clutter, journalese, jargon, and AI patterns, with replacements.
- [references/principles.md](references/principles.md). The reasoning behind each of the ten rules.
- [references/examples.md](references/examples.md). Before/after rewrites across email, memo, blog, and report.
- [references/checklist.md](references/checklist.md). Standalone copy of the checklist.
