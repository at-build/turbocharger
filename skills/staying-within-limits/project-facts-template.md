# Project facts

> The facts about this project that the Turbocharger skills rely on.
> Keep this file in the project, under version control, and link it from the file your agent reads at the start of a session.
> Suggested path: `docs/project-facts.md`.
> Nothing in this file is ever copied into the shared framework.

## Who may do what

Filled in by the owner.

| Action | Who | Ask first? |
|--------|-----|------------|
| Share a branch | <agent / person> | <every time / standing yes> |
| Ask for a change to be merged | <who> | <rule> |
| Merge | <who> | <rule> |
| Change the database | <who> | <rule> |
| Release | <who> | <rule> |
| <other action> | <who> | <rule> |

Tries a task gets at review before it goes to the owner: <number>.

## Off limits

| Area | Looked after by | If you find a problem there |
|------|-----------------|-----------------------------|
| <folder or part> | <team> | Tell the owner, with evidence. Do not edit. |

## Never commit

- <files in the working folder that must not be added>

## Required formats

- <commit message, branch name, description of a change>

## How a change reaches users

1. <the steps, in order, from a branch to the live product>

| Environment | Released from | "Released" means | How to read its logs |
|-------------|---------------|------------------|----------------------|
| <name> | <trigger> | <what you can see that proves the release finished> | <how> |

People to tell before a release: <other teams, support staff, users, and who writes the release note>.

## Setting up and house rules

- <how to set up a working copy, and anything that must be installed or generated first>
- <quirks of the tools used here>
- <the project's own rules for how code is written>

## Where things are kept

| Record | Where |
|--------|-------|
| Status notes, one per piece of work | <path> |
| Decision records, one per piece of work | <path> |
| Agreed designs and plans | <path> |
| Mockups and their approvals | <path> |
| Backlog of postponed items | <path> |
| Test sets | <path> |
| Lessons | <path> |

## Signals, and what they do not tell you

| Signal | What it proves | What it does not |
|--------|----------------|------------------|
| <signal> | <what> | <what> |

Test results on the untouched starting point: <count, known failures, date checked>.

## Where behaviour really comes from

For behaviour that does not come from the code.

| Behaviour | Comes from | How it got there |
|-----------|------------|------------------|
| <behaviour> | <stored data / settings / secrets> | <how> |

## Features that use a model

| Feature | Test set | Pass mark | Blocks release? | Model used | Prompt version saved? |
|---------|----------|-----------|-----------------|------------|-----------------------|
| <name> | <path> | <mark> | <yes / no> | <which> | <yes / no> |

Which source wins when sources conflict: <order>.

## How the owner likes to work

- <preference>. Why: <reason>.

## Checks before acting

Each line was added after something went wrong.

- Before <action>: <check>. Added after: <entry below>.

## What went wrong before

### YYYY-MM-DD: <title>

- **What happened:**
- **Why:**
- **How it was found:**
- **How it was fixed:**
- **Check added above:**
