# Turbocharger on one page

## The idea

When an AI agent gets something wrong, the cause is rarely that it reasoned badly. Usually it was working from bad information. What it knew was one of five things:

- **out of date**: true once, not now;
- **missing**: nobody told it;
- **in no order of priority**: two sources disagreed and nothing said which wins;
- **unchecked**: it sounded right and nobody looked;
- **not allowed**: it could do the thing, so it did.

Turbocharger is a set of habits that fix the information. The model stays the same. What it is given gets better.

## Where it applies

In two places, and most teams look at only one.

- **Building with agents.** The agents that write and change your product. They work from notes, plans, instructions and review results.
- **Agents inside your product.** The agents your users meet. They work from prompts, documents, user data and the results of earlier steps.

A weakness in the first place ships as a bug. A weakness in the second ships as a wrong answer to a user.

## Seven habits

Six questions, and one habit that comes before building anything a person will look at.

| Ask | The habit | Skill |
|-----|-----------|-------|
| What needs remembering? | Write it down in one place and keep it current | `keeping-track-of-work` |
| What does the agent need to be told? | Put everything it needs in its instructions | `giving-clear-instructions` |
| What is it not allowed to do? | Find out before acting; a person approves what cannot be undone | `staying-within-limits` |
| How does it know what is true? | Check notes, signals and model answers against the real thing | `checking-the-facts` |
| How do we know it worked? | Name the stage reached and show the evidence | `proving-it-works` |
| How does a mistake become a lesson? | Turn each correction into a lasting change | `learning-from-mistakes` |
| What will it look like? | Show a mockup and get a yes before building | `mocking-up-before-building` |

## The main points

1. One status note for each piece of work, changed in place. Where two actions can change the same record, they take turns.
2. A note says what was true when it was written. Check before acting on it.
3. Every decision has an author and a point after which it is costly to change. Write both down.
4. Say what must never happen before saying what to build.
5. Instructions are all their reader has. Put everything in them.
6. When sources disagree, say which wins.
7. Being able to do something is not permission to do it.
8. The model reads; ordinary code decides.
9. A person stands in front of anything that cannot be undone.
10. Keep a model's answer only when its evidence can be found.
11. A failure is not an answer. Keep "no" and "could not check" apart.
12. "Done" has stages. Name the one reached and show the proof. Start the whole product before calling it built.
13. The author cannot review their own work. Review each piece, then the whole.
14. A model feature is defined by its test set, with the pass mark set in advance.
15. Show the screen before building it.
16. Every correction becomes a lasting change, in the smallest place that works.
17. A rule carries its reason. When the reason goes, so does the rule.

## How each skill is laid out

Every skill has a short page and a longer one.

- **`SKILL.md`** is the short page: what the skill is for, when to use it, the handful of rules that matter most and the warning signs. It fits on one screen.
- **`reference.md`** holds the finer rules, for when the short page is not enough.
- **Templates** sit beside the skill that uses them.

## What is kept where

| Kept in | What | Changes |
|---------|------|---------|
| This framework | Habits that hold for any product and any team | By a reviewed change, with a new version number |
| The project facts file, in your project | Your project's own facts: who may do what, how a change reaches users, what is off limits | Whenever a fact changes |
| Records for each piece of work, in your project | A status note, a decision record, mockups and their approvals, test sets | Every session |

Lessons move from a project into the framework only after every project detail has been removed. Nothing moves from the framework into a project except by installing a new version.
