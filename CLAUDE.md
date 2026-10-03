# Global rules

Reply to the user in Russian. Code, comments and commit messages follow the repo's conventions.

## Git

- Pushing is the user's job. Run `git push` only when the user explicitly says "git push" / "запушь".
- Commit only when the user explicitly says "коммить". A question like "can I commit now?" is not an instruction; answer it and wait.
- Before the first file change of a task, run the `start-task` skill. When the user says "коммить", run the `commit-to-staging` skill.
- Parallel sessions share one working folder and may switch the branch mid-task. Check `git branch --show-current` as its own command before any commit or branch switch, and `git add` only the files you changed.

## Deploy

Deploy (hosting, serverless functions, `sanity deploy` and the like) only when the user explicitly says so. Bring the command to ready, then show which account and project it targets before running it.

## Editing

When the user names a new value for a CSS property, change exactly that number in place and keep the construct (gradient type, units, property). If the target is ambiguous, ask one short question.

## Browser

The Chrome that chrome-devtools-mcp launches (profile `~/.cache/chrome-devtools-mcp/chrome-profile`) is a separate copy. Close its pages and the browser as soon as a check is done. Another session's instance stays open while it is active.
