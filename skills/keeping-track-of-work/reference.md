# Keeping track of work: more detail

Read this when the short page is not enough.

## The status note

- **One note per piece of work.** A change that is finished within one session needs a commit message, not a status note.
- **Order.** Where things stand, where the work lives, next steps, questions for the owner, checks still to do, known problems, working rules, where the detail is, history.
- **Fold in stray summaries.** When a second summary appears, move whatever is still true into the status note and delete the summary.
- **Use exact words for how finished something is.** The stages are listed in `proving-it-works`.
- **Say when a line was not checked.** An unchecked line marked as such is useful. An unchecked line that looks checked is a trap.
- **Keep it where every session can open it**, under version control.
- **Describe what was built, not what was planned.** When the build differs from the agreed design, update the design document and list the remaining gaps.
- **Other notes point to it.** A memory note or an index holds one line saying where the status note is. It does not repeat the content.

## The decision record

One record per piece of work, kept beside the status note.

- **Who decided.** Mark each decision as the owner's or the agent's. An agent's decision is a proposal the owner can overturn.
- **Until when it is cheap to change.** Some choices cost nothing to change until real data exists and need a clean-up job afterwards: the format of an identifier, a stored list of allowed values, anything another team builds on. Name the event that closes the window, and raise the decision with the owner before it happens.
- **Replace, do not erase.** A reversed decision stays in the record with a pointer to the one that replaced it.
- **The owner's latest decision wins over the agreed design.** Tell the owner which lines of the design it overrides, so the design can be corrected.
- **Things that must never happen** go at the top of the record and into every set of instructions.
- **Known problems.** Write who accepted each one and when to look at it again. This stops it being argued again or reported as a new bug.
- **Put questions to the owner singly.** With each, say what every choice would cost or give up.
- **When the work closes**, move whatever is still postponed to the backlog, with where it came from, a suggested fix and a test for "done".

## Where each record lives

| Record | Where |
|--------|-------|
| Things that must never happen | Decision record, at the top |
| Decisions | Decision record |
| Postponed items | Decision record, then the backlog |
| What a review found, and what was done about it | Decision record |
| Questions for the owner | Status note |
| Known problems that were accepted | Status note |

## For agents inside a product

- **Save a costly result on its own, straight away.** If a later step fails, a result that was paid for should not be lost and bought again.
- **Make every step safe to run twice.** Running it again may add or improve. Where it would change something already stored, send the difference to a person.
- **Never build a permanent identifier from wording the model produced.** The wording changes from run to run, and the identifier changes with it. Build identifiers from stable facts.
- **Make actions on the same record take turns.** If two runs can be in flight at once, the second waits or is refused. Before saving a result, check that nothing newer has been saved since the run began; if something has, drop the result or send the difference to a person.
- **Treat spending as a record too.** Two runs started together must not both use up the same allowance.
