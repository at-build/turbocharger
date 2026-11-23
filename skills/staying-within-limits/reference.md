# Staying within limits: more detail

Read this when the short page is not enough.

## When building with agents

- **Until the project facts file says who may do what, ask the owner** before any action that reaches beyond your own copy of the work.
- **Where you have no access, write the steps for someone who has.** For a database or system the agent cannot touch, hand over: a script that is safe to run twice, a check of the starting state, a backup step, a check of the result with what it should show, and the result that means "stop".
- **Say the order.** Data changes go in before the code that needs them.
- **Add files to a commit by name.** The folder may hold changes that are not yours.
- **Do not settle a conflict on a shared branch alone.**
- **Never mix other people's unreleased work into a release.** Release the change itself, not a shared branch that carries more.
- **Tell the people a change affects before it is released**: other teams, support staff and users. Write the release note for anything they will see change.
- **When a shared branch is broken, say so at once.** Nobody should add to it until it is fixed. Everything added on top carries the fault.
- **Change data through the product's own route**, which keeps related records in step. Writing straight to storage skips those steps.
- **After finding one gap, check its neighbours.** The same mistake is usually made in the places built the same way.
- **Edit an off-limits area only with a clear, narrow permission**, and record that permission.

## When an agent acts inside a product

- **A default fills a gap.** Once a user has saved a value, generating again never replaces it.
- **A rejection holds everywhere.** Something a user rejected stays rejected on every route, including any route that would bring it back under another name.
- **Ask the person who knows.** When two sources disagree about a user's own facts, ask the user which is right.
- **Put people at the uncertain points**: unsure matches, conflicting values, new items others will rely on, and spending over the limit.
- **Automatic checks advise; a person approves.** The approval that carries consequences is a human one.
- **Read the data before acting on it.** Before a feature acts on data that was collected automatically, read a sample of real records. Look for entries that are made up, repeated, attached to the wrong subject or unsafe to act on.
- **Settle consent and legal questions first.** They block a release as firmly as a failing test, and they are the owner's decisions.
- **Build outside searches from tidy fields**, not from raw text a user typed.
- **Fetch web addresses you do not control through a protected fetcher**: allowed address types only, private networks blocked, size capped.
- **Say the cost first** for any action that uses up something the user pays for.

## Splitting work between the model and code

- **Use a rule where the input follows a fixed pattern.** A model asked to apply a scoring rule across many items ignores it some of the time.
- **Prefer fixed steps to an open-ended loop.** Where the agent does repeat, set the number of rounds in advance.
- **Spend in a funnel.** Sort everything with simple rules, use a cheap model on what is left, and keep the strongest model for the few that remain.
- **Code calls the tools.** Look-ups and searches are run by code with capped results.
- **Make changes between parts additive**, so they are safe whichever part is released first.
- **A feature stays off unless both its switch and its key are present.**

## Limits on cost and failure

- **One retry inside a time budget, then a clear failure.** Wait and retry only for errors that pass by themselves.
- **Limit the input too**: what qualifies for a call, how many calls per item, how much may be fetched.
- **A spending guard may stop the spending. It must not record "did not look" as a finding.**
- **Long jobs prove they are alive**, have a maximum lifetime, and are swept up when stale.
- **Keep live users apart from bulk jobs**, with separate limits.
- **Change to a cheaper model only after a test set shows it does as well** (see `proving-it-works`).
- **Keep model calls off the path a user is waiting on.** Prepare ahead and serve the last good answer while refreshing.
- **When settings change, saved answers must change too.** Include the prompt version and every input in the key under which an answer is saved.
