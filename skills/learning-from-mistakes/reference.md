# Learning from mistakes: more detail

Read this when the short page is not enough.

## Choosing where the fix goes

| The lesson is | It goes to |
|---------------|------------|
| Something a test or an automatic check can enforce | An automatic check. A machine that refuses is better than a rule that asks |
| A fact about this project: an environment, a folder, a preference, a boundary | The project facts file (see `staying-within-limits`) |
| A step that would have caught a failure | "Checks before acting" in the project facts file, with an entry under "What went wrong before" |
| A practice a team with another product could use as written | This framework, as a proposed change |

Take the first row that fits. Move a lesson up to the framework when it has happened more than once, or was costly enough the first time that waiting for a second is not acceptable.

## Changing the framework

- **Make the smallest change.** Add to the skill that already covers the moment. Propose a new skill only when none does.
- **A skill is a prompt, so test it like one.** `proving-it-works` applies: write the situation in which the mistake would happen, decide what a pass looks like before running it, and run it without the change and with it.
- **Keep the short page short.** A new rule goes in `reference.md` unless it is one of the few that matter most.
- **Write for someone who is not an engineer.** If a rule needs a special term, say it in everyday words instead.

## Before a lesson leaves the project

- **Take out every name**: product, feature, customer, person, tool, table, file, branch, date, identifier and figure.
- **Write what your project saw, in your own words.** Copy nothing from another skill collection, guide, book or article. If someone else's published work taught you the lesson, name it in the framework's acknowledgements.
- **Run the framework's check script** with your private list of project names (its contributing guide explains how). It must pass.
- **Have someone who does not know the project read it.** Does it still make sense, and does it give anything away?

## Removing rules

Removing a rule is as useful as adding one. If a rule's stated reason no longer holds, propose removing it, with the same evidence you would bring for an addition.
