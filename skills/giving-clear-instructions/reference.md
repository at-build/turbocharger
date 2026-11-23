# Giving clear instructions: more detail

Read this when the short page is not enough.

## Instructions for an agent

A good set of instructions answers six questions for its reader.

| Question | The instructions say |
|----------|----------------------|
| What needs remembering? | What to read first, and where to write down decisions and findings |
| What is the job? | The aim in one sentence, and what must never happen, word for word |
| What is off limits? | What may be changed, what may not, and what must never be committed or shared |
| What is true right now? | The files, names and connections the work depends on, as checked today |
| How will we know it worked? | What finished means, and the evidence to send back |
| What if something is wrong? | To report anything that contradicts the instructions, not to work around it |

Further rules:

- **Do not edit an agreed design.** If a plan step would produce something the design rules out, the step is the mistake. Record the difference and tell the owner which lines of the design look wrong.
- **Read the agreed design as the person who has to build it**, before planning. Look for places where it contradicts itself, including in the owner's own wording, and settle them first.
- **Give each shared name one owner.** When two tasks use the same name, one task defines it and the other uses it.
- **Read the other side's code.** When a task connects to another service or part of the system, read what that side really sends and accepts. A description of it is second-hand.
- **Give the agent a working set-up.** Everything installed, every folder reachable, and one file holding what every task needs to know.
- **Keep convenience changes out.** An agent does not change shared settings or shared parts to make its own task easier. It reports the need.
- **Give a weaker model the exact command** for any rule it tends to get wrong.
- **After an interrupted run, look first.** If an agent stopped part-way, inspect what it changed before continuing or starting again.

## Prompts for a model inside a product

- **Make one clean document first.** Tidy text from many sources into a single document that later steps read. Raw text from everywhere drowns the useful part.
- **Remove ambiguity in code before the model sees a fact.** State units, and which way a comparison runs, in full words.
- **Gather everything before asking for a judgement.** A judgement made on the first thin source sticks, even after a better source arrives.
- **Put the richest source first** among the material, so it survives if the input has to be cut.
- **Keep the product's own settings in a separate, labelled block.**
- **When sources conflict, say so.** Name the order of priority in the prompt. Never let a conflict be settled silently: show it with a reason, or send it to a person.
- **Leave out fields known to be unreliable.** Being stored does not make something worth showing to the model.
- **Examples get copied.** A phrase in an example will turn up in many answers, including anything in it that should never be shown. Use few examples and vary them.
- **Match the wording of whatever uses the answer.** If the answer is later matched against stored data, ask for it in that data's words.
- **Choose what goes in by relevance.** Cutting by length drops whatever happens to be last.
- **Keep specialist word lists as shared data files**, under version control, used by every part that needs them.
