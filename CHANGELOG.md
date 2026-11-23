# Changelog

## 0.3.2 (2026-11-23)

- `proving-it-works`: the reference page now says the review of the whole looks for four things, matching the list that follows.

## 0.3.1 (2026-11-22)

Guardrails for sharing the repository publicly.

- `AGENTS.md`: the rules for AI agents working on this repository.
- `SECURITY.md`: how to report a harmful or misleading skill.
- A pull request template carrying the review checklist.
- The check script now runs on every proposed change, and also fails on hidden content: invisible characters and comments that are not displayed.

## 0.3.0 (2026-11-22)

Lessons found missing when the framework was checked against the records it was distilled from.

- Short pages: start the whole product before asking for a merge (`proving-it-works`); make actions on the same record take turns (`keeping-track-of-work`).
- Finer rules added to the reference pages on review, testing, reading signals, releases, instructions and mockups.
- Project facts template: people to tell before a release, and a section for set-up steps and house rules.

## 0.2.0 (2026-11-22)

Simplified so that a person who is not an engineer, and an agent in the middle of a task, can both follow it.

- Sixteen skills merged into seven: one for each of six plain questions, plus a new one.
- New skill: `mocking-up-before-building`. Show a mockup of a screen and get the owner's approval before building it.
- Each skill is now a short page of the rules that matter most. The finer rules moved to a `reference.md` beside it.
- Coined terms replaced with everyday words throughout, for example "project facts file", "status note" and "decision record".
- The private list of project names now lives outside the repository, and the check script finds it through `PRIVATE_TERMS_FILE`.

## 0.1.0 (2026-11-21)

First draft, named Turbocharger (plugin and marketplace id `turbocharger`).

- Framework model: two planes, six questions, seventeen principles.
- Sixteen skills: one entry point, eight for the build plane, six for the run plane, one for the lesson loop.
- Templates: project adapter, handover, decision log, evaluation manifest, lesson.
- Check script for skill shape and leak prevention.
- Originality pass against the skill plugins used during the source work: borrowed terms removed, borrowed procedures removed or rebuilt on the framework's own model, a "nothing copied" rule added for contributors, and the methods still owed to other work acknowledged in the README.

Not yet done: running each skill on test cases without and with it.
