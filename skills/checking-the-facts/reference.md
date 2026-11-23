# Checking the facts: more detail

Read this when the short page is not enough.

## Starting from earlier notes

- **Read the shortest thing first.** The index your tool loads at the start, then the one status note it points to, then only that note's "where things stand" and "next steps". Read the history only when a question sends you there.
- **Read the project facts file before the task.** Its rules apply to the first action too (see `staying-within-limits`).
- **Check the place you will build on and the place you will merge into.** If either has moved since the note was written, your work has to fit the new state.
- **Say what you found** in a line or two: what matched, what had moved, what you corrected.
- **When notes disagree,** the more specific and more recently checked one wins: the real system, then the status note, then a memory note, then older summaries.

## Reading a signal

- **Ask where the behaviour comes from.** The code is one source. Behaviour also comes from stored data, settings loaded at start-up and secrets. Before fixing a file, confirm the running system reads that file.
- **Compare the environments, not only the code.** When the same build works in one place and fails in another, compare their data, settings and secrets.
- **Open the log.** A step reported as failed may be a real failure, or a time-out on something that then succeeded. A wall of errors may share one cause.
- **Read how a field is written, not how it is named.** A count may cover a different period or group from the one you assume. A default may supply a value where the source had none.
- **Test the untouched starting point too.** Failures that already exist there are not yours, and should be written down so nobody rediscovers them.
- **A pass tells you about the paths the check ran**, and nothing about the rest. Write down each signal and what it misses in the project facts file.
- **A narrow pass is a risk.** When a check passes with little room to spare, write down how much room there is. A small change elsewhere will turn it into a failure.
- **A workaround that succeeds can hide the fault.** If trying again by another route works, find out why the first route failed before moving on.
- **Make sure failures are recorded where the alarms look.** An error logged at the wrong level is invisible to whatever watches for errors.
- **Share one clean-up step.** When two parts compare the same value, both tidy it with the same code. Where they cannot share code, test both against the same list of examples.

## Trusting a model's answer

- **Ask for the value, how sure the model is and the supporting quote, together.** Empty answers are allowed.
- **Tune the quote check on real cases.** Too strict, and it throws away true answers.
- **How well something matches and how sure the model is are separate numbers.**
- **Keep the answer format simple**, inside what the model provider supports, and test that it stays so.
- **Ask for exactly the allowed answers, then match in steps**: exact, known alternative wording, close variant. Flag anything off the list.
- **Tidy answers in code.** An unknown choice becomes the safest one. An identifier that was not in the input is dropped. Lengths are capped.
- **Check the format first, then filter the content.** Filtering first can throw away a whole list because of one bad item.
- **Filter first, then apply the limit.** Taking the first few and then removing the unwanted ones can leave nothing, with no sign that anything was lost.
- **Clean free text before showing it.** Remove links, contact details, invisible characters and anything internal.
- **Write error messages for the person reading them.** Plain words, what to do next, and no internal codes.
- **Re-check what the model looked up itself** before using it.
- **Turn a wording rule into a test.** A word that must never be shown is checked by a test on every place that produces text, with a planted example proving the test works.
- **A new label the model invents is a suggestion**, held for a person to review.

## Failures are not answers

- **Give every failure a planned behaviour.** A model failure becomes a simple fallback or "not checked", with the reason.
- **Treat only the expected error as "unavailable".** Do not catch every error.
- **One dead source does not end a run.** Running out of allowance postpones the work until the allowance returns.
- **Take diagnostic code out when the investigation ends.**
