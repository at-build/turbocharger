---
name: proving-it-works
description: Sets out the evidence needed before work is called done and before a model feature is called good enough. Use when about to report work as done, fixed, merged or live, when an agent says a task is complete, when work is about to be released, or when deciding whether a prompt or model change is an improvement
---

# Proving it works

## In short

"Done" is a claim, and a claim needs evidence. Say exactly how far the work has got, show the proof, and say what nobody has checked.

## Use this when

- You are about to say something is done, fixed or live.
- An agent has reported a task complete.
- Work is about to be released.
- A prompt or a model was changed and someone says it is better.

## Do this

1. **Name the stage reached.** Built, reviewed, shared, merged, released, seen working, tried by a person. Use the highest one you can prove, and say where: live in a test environment says nothing about the real one.
2. **Show the output, not a summary of it.** Give the commands that were run and the lines they printed.
3. **Say what was not checked**, and keep it on the list of checks still to do until someone does it.
4. **Have someone else review it.** The reviewer starts from the request and the change. The author's explanation is left out.
5. **Review each piece, then the whole.** Some problems exist only where pieces meet.
6. **Start the whole product once before asking for a merge.** Tests that check parts in isolation cannot show that the product starts.
7. **Test a model feature with examples that have known right answers.** Set the pass mark before the first run, and set it to zero for the one mistake that must never happen. Start from `test-set-template.md`.
8. **Read some of the answers yourself.** A well-formed answer can still be made up.

## Warning signs

- "Should work now" for something nobody ran.
- "Every task passed review" given as the reason to release.
- A pass mark chosen after seeing the score.
- A prompt change accepted after two tries.

## Why it matters

Problems hide in the gap between stages: tests that pass on a build that will not start, a merged change whose release never finished, a screen nobody opened.

## More detail

`reference.md` in this folder has the fuller rules.
