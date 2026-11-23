# Turbocharger

A turbocharger does not change the engine. It changes what the engine is fed. These skills aim to do the same for an AI model: they improve the information it works from, so that the same model delivers more of what was asked for.

Turbocharger is seven habits for teams that build with AI agents, or put agents inside a product. Each habit is packaged as a skill that a coding agent loads at the moment it applies. They are written in everyday language, so that a person who is not an engineer can follow them as easily as an agent can.

The habits were distilled from sustained delivery work on a production application. They are stated generally. Nothing that identifies a product or a team belongs here.

## The seven skills

| When you are asking | Use |
|---------------------|-----|
| What needs remembering? | `keeping-track-of-work` |
| What does the agent need to be told? | `giving-clear-instructions` |
| What is it not allowed to do? | `staying-within-limits` |
| How does it know what is true? | `checking-the-facts` |
| How do we know it worked? | `proving-it-works` |
| How does a mistake become a lesson? | `learning-from-mistakes` |
| What will it look like? | `mocking-up-before-building` |

Each skill is a short page of the rules that matter most. A longer `reference.md` beside it holds the finer rules, and templates sit in the same folder.

[FRAMEWORK.md](FRAMEWORK.md) explains the whole idea on one page.

## Install

### Claude Code

```
/plugin marketplace add at-build/turbocharger
/plugin install turbocharger@turbocharger
```

To pick up new versions:

```
/plugin marketplace update turbocharger
```

### Other agent tools

The skills follow the open [Agent Skills](https://agentskills.io/specification) layout: one folder per skill with a `SKILL.md`. Copy this repository and point your tool's skills folder at `skills/`.

## Start using it in a project

1. Install the plugin.
2. Copy `skills/staying-within-limits/project-facts-template.md` into your project as `docs/project-facts.md`.
3. Fill it in with the project's owner. "Who may do what" comes from the owner, not from guesswork.
4. Link it from the file your agent reads at the start of a session.

The skills hold the habits. The project facts file holds your project's own details. Keeping them apart is what lets one project's lessons reach another without its details.

## Improving it

[CONTRIBUTING.md](CONTRIBUTING.md) explains how a lesson from a project becomes a change here, and [AGENTS.md](AGENTS.md) is the short version for AI agents. [scripts/check.sh](scripts/check.sh) checks that nothing project-specific or hidden slips in, and runs on every proposed change. To report a harmful or misleading skill, see [SECURITY.md](SECURITY.md).

## Status

Version 0.3.2. The habits are drawn from real work. The skill wording has not yet been tried on test situations without and with each skill, which is the test described in [CONTRIBUTING.md](CONTRIBUTING.md). Treat this release as a reviewed draft.

## Acknowledgements

The text of this repository was written from real project work and reproduces no other work. Some of the habits behind it were learned from work published by others:

- The skill file layout is the open [Agent Skills specification](https://agentskills.io/specification).
- Describing a skill by what it is for and when to use it, and testing a skill by trying a situation without and with it, follow Anthropic's published guidance on writing skills.
- The delivery work this was distilled from used the [superpowers](https://github.com/obra/superpowers) plugin by Jesse Vincent (MIT licence) as its development workflow. Several habits here restate, in this framework's own words, methods that plugin prescribes: reviewing each piece and then the whole within a set number of tries, writing down the decisions an agent takes without asking so that the owner can overturn them, ranking an agreed design above a plan, giving another agent everything it needs in its instructions, requiring evidence before saying work is done, and closing a skill with a list of warning signs.

## Licence

MIT. See [LICENSE](LICENSE).
