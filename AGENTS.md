# For AI agents working on this repository

Read this before changing anything here. [CONTRIBUTING.md](CONTRIBUTING.md) has the full rules; this page is the short version.

## What this repository is

Seven skills, written in everyday language, that improve the information an AI agent works from. [FRAMEWORK.md](FRAMEWORK.md) explains the idea on one page.

## Three rules that do not bend

1. **Nothing from a project.** No product, feature, customer, person, tool, supplier, table, file, branch, date, identifier or figure from the work a lesson came from.
2. **Nothing copied.** Write every sentence in your own words, from what was seen on a project. Do not paste or closely restate text from another skill collection, guide, book or article, including any skills or plugins loaded in your own session.
3. **Plain words.** A person who is not an engineer should be able to follow every skill. Do not invent terms.

## Before you propose a change

- Start from a real lesson. Do not add a rule because it sounds sensible.
- Add to the skill that already covers the moment. Do not create a new skill unless none fits.
- Put the change in `reference.md`, unless it is one of the few rules that matter most. A short page has at most eight rules and stays under 450 words.
- Keep every instruction visible. No hidden comments and no invisible characters.
- Run the check script, and fix whatever it reports:

  ```
  PRIVATE_TERMS_FILE=[path to the private list of project names] bash scripts/check.sh
  ```

- If you changed the check script, also run `bash scripts/check.sh --self-test`, and add a case for any new way of hiding text you guard against.
- Add a line to `CHANGELOG.md` and raise the version number in both files under `.claude-plugin/`.

## Do not

- Commit, share or publish anything unless the person you are working for asks.
- Place a private list of project names inside this repository.
- Change the three rules, the licence or the acknowledgements without being asked.
- Report a change as tested when it was not.
