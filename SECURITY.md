# Security

The skills in this repository are instructions that AI agents follow. A harmful or misleading instruction is therefore a security problem, as much as a fault in code would be.

## What to report

- A skill, template or script that tells an agent to do something unsafe: send data somewhere, skip an approval, remove a safeguard or run a command it should not.
- Instructions hidden from a human reader, for example in comments or invisible characters.
- A fault in `scripts/check.sh` that lets project names or hidden content through.
- Anything in this repository that identifies a real product, customer or person.

## How to report

Please do not open a public issue for these. Use GitHub's private reporting instead: on this repository's page, open the **Security** tab and choose **Report a vulnerability**.

Say which file and line, what an agent following it would do, and why that is harmful.

## What happens next

A report is acknowledged, the instruction is corrected or removed, and the fix is released with a new version number and a line in the changelog. Projects receive it the next time they update.

## What this does not cover

How your own agent tool loads and runs skills is the responsibility of that tool. Read any skill before installing it, including these.
