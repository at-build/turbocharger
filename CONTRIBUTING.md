# Contributing

This framework improves in one way: a lesson from real work, made general, tested and reviewed.

## How a lesson gets here

1. Something goes wrong on a project, or the owner corrects how an agent worked.
2. The lesson is written down in the project, using the template in `skills/learning-from-mistakes`.
3. Most lessons stay in the project: as an automatic check, a line in the project facts file, or a check before acting.
4. A lesson that would help a team with a different product is stripped of every project detail and proposed here.
5. It is tested, reviewed and released with a new version number.
6. Every project picks it up when it updates.

## Three rules that do not bend

### Nothing from a project

No product, feature, customer, person, tool, supplier, table, file, branch, date, identifier or figure. Not in a skill, not in an example, not in the description of a change.

Say what kind of mistake it was and what to do instead. If a lesson cannot be told without its story, it is not general yet, and it belongs in the project.

### Nothing copied

Every sentence here is written from what happened on a project, in the contributor's own words. Do not paste, translate or closely restate text from another skill collection, a guide, a book or an article, whatever its licence.

If someone else's published work taught you the lesson:

1. Write down what your project saw, not what the source says.
2. Use everyday words, not the source's special terms, headings or numbers.
3. Add the source to Acknowledgements in the README. That section names published work only, never the project a lesson came from.

A practice that exists only because another tool prescribes it, with nothing seen on a project to add, is not a lesson. Point to the source instead.

### Plain words

A person who is not an engineer should be able to follow every skill.

- Use everyday words. Where a technical word is unavoidable, explain it the first time.
- Do not invent terms. Call a thing what a newcomer would call it.
- One idea per sentence.
- The short page of a skill holds only the rules that matter most. Everything else goes in `reference.md`.

## Set up the leak check

Keep a private list of your project's names outside this repository, and tell the check where it is with the `PRIVATE_TERMS_FILE` environment variable. The list names exactly what must not be published, so it must never sit where it could be committed, zipped or shared along with the repository. The check refuses a list that is inside the repository.

```
# one name per line, matched as a whole word, in any letter case
# start a line with = to match the exact letter case (for short names that are also ordinary words)
<your product names>
<your feature names>
<your customers, people, suppliers>
<your service, table and environment names>
```

Then run, before every commit:

```
PRIVATE_TERMS_FILE=~/.config/turbocharger/private-terms bash scripts/check.sh
```

Set the variable in your shell profile to avoid typing it each time.

The check fails on a private name anywhere in the repository, on leftovers such as calendar dates and ticket numbers, on hidden content such as invisible characters and comments that are not displayed, and on a badly formed skill header. Without `PRIVATE_TERMS_FILE` it cannot look for private names; it says so and fails, unless you pass `--no-private-terms`, which is meant for automated runs where the list cannot exist.

The publisher's own name is normally on the list too. It may appear in two places, which the check allows: the `owner` or `author` line of a file under `.claude-plugin/` (keep that entry on a single line), and the copyright line of `LICENSE`.

The check cannot judge meaning. Whether a sentence retells one project's story in general-sounding words, or echoes someone else's text, is for the reviewer.

## Proposing a change

1. **Start from a lesson.** Only Part 2 of the lesson template comes here. A lesson that is not ready can wait in `lessons/`.
2. **Find its home.** Add to the skill that already covers the moment. Propose a new skill only when none does.
3. **Make the smallest change.** One lesson, one line or one section. It goes in `reference.md` unless it is one of the few rules that matter most.
4. **Test it.** A skill is a prompt, so test it like one: write the situation in which the mistake would happen, decide what a pass looks like, and try it without the change and with it, more than once. A change that makes no difference is not added.
5. **Run the check script.**
6. **Record it.** Add a line to the changelog and raise the version number in both files under `.claude-plugin/`.

## How a skill is written

- One folder per skill, holding a `SKILL.md`. Its header has a `name`, equal to the folder name, and a `description`.
- The `description` has two parts: one sentence saying what the skill is for, then the moments it applies to, beginning "Use when". Say the purpose and not the steps. The description is all an agent sees when choosing a skill.
- The short page has these sections, in order: In short, Use this when, Do this, Warning signs, Why it matters, More detail.
- "Do this" is a numbered list of at most eight rules, each starting with the instruction in bold.
- Keep the short page under 450 words. The check warns above that.
- `reference.md` holds the finer rules. Templates sit in the same folder.
- Each rule has one home. Where a skill depends on another, name it and leave the content there.

## Version numbers

- **Third number**: wording, clarifications, template fixes.
- **Second number**: a new rule or a new skill.
- **First number**: a skill removed or renamed, or a main point reversed.

## Review checklist

- [ ] Could a team with another product use it as written?
- [ ] Could a person who is not an engineer follow it?
- [ ] Does it give away where it came from? Read the skills together as well as one by one: details that are harmless alone can describe a product when combined.
- [ ] Is the wording the contributor's own, and is any outside source acknowledged?
- [ ] Is it the smallest change that prevents the mistake?
- [ ] Does it say why?
- [ ] Was it tried without and with the change, and did the change make the difference?
- [ ] Is every instruction visible to a human reader?
- [ ] Does the check script pass?
