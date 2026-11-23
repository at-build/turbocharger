---
name: learning-from-mistakes
description: Turns a correction or a failure into a lasting change so that it does not happen twice. Use when the owner corrects how the agent worked, after something went wrong in a release, when a review or a test caught what a rule should have prevented, when finishing a piece of work, or when a rule no longer seems to make sense
---

# Learning from mistakes

## In short

A correction given once in conversation is gone when the session ends. Turn each one into a lasting change, in the smallest place that stops it happening again.

## Use this when

- The owner says "not like that" about how you worked.
- Something reached users and had to be tracked down.
- A reviewer or a test caught what the author missed.
- A piece of work is finishing.

## Do this

1. **Write it down while it is fresh.** Use `lesson-template.md`. The first part says what happened and stays in the project. The second part is the general lesson, and is the only part that may be shared.
2. **Put the fix in the smallest place that works.** Try these in order:
   - an automatic check, such as a test;
   - the project facts file;
   - the project's list of checks before acting;
   - this framework.
3. **Name what was wrong with the information, then choose the fix.**

   | The agent acted on something | The fix |
   |------------------------------|---------|
   | Out of date | A check against the real thing at the moment of use |
   | Missing | The fact, added to whatever the agent reads at that moment |
   | In no order of priority | A stated order for which source wins |
   | Unchecked | Evidence required before the claim or the save |
   | Not allowed | An entry in "who may do what", or an approval step |

4. **Test the fix.** Try the situation without the change and with it, more than once. A change that makes no difference is not kept.
5. **Keep the reason with the rule.** When the reason has gone, remove the rule.
6. **Before a lesson is shared, take out every name and write it in your own words.**

## Warning signs

- The same correction from the owner in a second session.
- A failure that was fixed, with no new check added.
- A rule nobody can explain.

## Why it matters

Rules without reasons pile up until none can be safely removed. Choosing the smallest place keeps the list short enough to be read.

## More detail

`reference.md` in this folder has the fuller rules.
