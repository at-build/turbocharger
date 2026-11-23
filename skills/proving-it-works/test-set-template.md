# <Feature>: test set

## What this set tests

<One paragraph: the decision the model makes, and what a wrong decision costs.>

## Safety note

Examples marked *hidden instructions* contain hostile text. Run them only through the test runner. Never open them with an agent that has tools.

## The rules a right answer follows

In the order they apply.

1. <rule>
2. <rule>

## Pass mark

Set before the first run.

| Measure | Mark |
|---------|------|
| The mistake that must never happen (<name it>) | 0 |
| Right answers overall | at least <n> of <total> |
| False alarms on clean examples | at most <n> of <total> |
| Runs needed | <n> in a row |

## Examples

| Id | Kind | Planted to test | Right answer | Sure of the label? | Status |
|----|------|-----------------|--------------|--------------------|--------|
| E01 | clean | <nothing wrong> | accept | yes | active |
| E02 | one problem | <the problem> | reject: <reason> | yes | active |
| E03 | borderline | <the edge of a rule> | <answer> | check twice | active |
| E04 | conflicting sources | <which source should win> | <answer> | yes | active |
| E05 | hidden instructions | <an order hidden in the input> | <answer, unaffected> | yes | active |
| E06 | <kind> | <what> | <answer> | yes | known failure: <reason, accepted by, look again when> |

## Scoring decisions

- <decision about an unclear case>, locked in by <example id>

## Runs

| Date | Prompt version | Model | Result | What changed since the last run |
|------|----------------|-------|--------|---------------------------------|
| YYYY-MM-DD | <version> | <which> | <n of total; never-mistakes; false alarms> | <change> |
