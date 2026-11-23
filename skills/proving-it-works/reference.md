# Proving it works: more detail

Read this when the short page is not enough.

## The stages of "done"

| Stage | Evidence needed |
|-------|-----------------|
| Built | The change exists, and tests and checks were run on it, with their output |
| Reviewed | Someone who did not write it reviewed it, and every finding has an outcome |
| Shared | The team's copy matches yours |
| Merged | The main line of work contains the change |
| Released | The release finished and the new version is the one running, in a named environment |
| Seen working | The behaviour was used in that environment and watched |
| Tried by a person | A person went through the checklist by hand in that environment |

Further rules:

- **Test the combined result.** Before asking for a merge, combine your branch with the current main line in a throwaway copy, and build and test that.
- **Start the whole product on that combined result.** A part can pass every test of its own and still stop the product from starting once everything is connected.
- **Find a failure with a test before fixing it.** Write a test that fails for the same reason, then make it pass.
- **Never switch off the check that caught a problem** in order to get past it. A setting that hides the failure leaves the cause in place.
- **Move through environments in order**, as the project facts file sets out.
- **A release is done when it has finished**, not when the change was merged. Watch it to the end.
- **Write down the starting test results**, so a later number has something to be compared with.
- **Look at visual work.** Tests do not see a screen. Compare it with the approved mockup (see `mocking-up-before-building`).

## Review

- **Give the reviewer** the agreed design, the task and the change. Nothing from the author about why it is right.
- **Tell the reviewer what to hunt for.** List the specific ways this task could go wrong, and ask for each to be checked by name.
- **In the review of the whole, look for four things**:
  - Joins: every place the change meets code it did not touch.
  - Shared names: each name that crosses from one task or service to another means the same on both sides.
  - Extras: what changed that the feature did not need, and any new part made where an existing one would have done.
  - Lost protection: when a part was replaced, what the old one guarded against, and whether the new one still does.
- **Set the number of tries in advance.** The project facts file holds the figure. At that number the task stops and goes to the owner as a decision.
- **A fix is new work.** It is reviewed like the work it repairs.
- **Every finding ends with a written outcome**: fixed, shown not to be a problem, postponed, or accepted by the owner.
- **Reading code is not using the product.** Checks by hand stay on the list until someone does them.
- **Run against the real database at least once.** Tests that fake the database and the start-up cannot fail on either.
- **Turn "check everything later" into a check now**, with a planted example proving the check catches a violation.
- **A problem found underneath goes to the owner.** Do not build on top of it.
- **Use test values that no real record can hold** whenever a test touches a live system, so that test data can never be mistaken for the real thing.
- **Tests never make live or paid calls just because a key happens to be on the machine.** Such calls are switched on deliberately.

## Testing a model feature

- **Write a test set with notes.** The notes record the rules a right answer follows, what each example is there to test, and which labels deserve a second look. One planted problem per example, so a failure points at one cause.
- **Cover the kinds, not only the number**: clean examples, examples with one problem, examples that should be stopped before the model is called, borderline ones, ones with conflicting sources, and ones carrying hidden instructions.
- **Bound the overall score and the false alarms separately** from the mistake that must never happen.
- **Run the test through the same code the product uses.**
- **Run it more than once.** A model's answers vary, and one pass is one sample.
- **Score with fixed rules**, not with another model.
- **Fix scoring decisions as examples.** When you decide how to score an unclear case, add an example that locks the decision in.
- **Passing blocks release.** A feature does not go live until the set passes.
- **Mark accepted failures as known**, with the reason, so the run passes without hiding them.
- **Decide how many rounds of prompt changes to spend.** If the mark is still not met, the rest is the owner's decision.
- **Turn each real failure into a test** named for what went wrong.
- **Save which prompt produced each answer.** Give every prompt a version and store it with the output.
- **Never run examples containing hidden instructions through an agent that has tools.**
- **Make the test run without depending on one person's machine.**
