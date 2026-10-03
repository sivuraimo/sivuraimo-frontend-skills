---
name: start-task
description: Choose the git branch before the first file change of a task. Use at the start of any task that edits files in a git repo.
---

The goal is one short-lived local branch per task, so GitHub never fills up with branches.

1. **The user named a branch**: work in it.
2. **No branch named**:
   - A tiny edit (one value, a typo, a one-line fix): work in the current branch.
   - Anything bigger: ask one question, "работаем в текущей ветке `<current>` или заводим отдельную от staging?", and wait for the answer.
3. **Task branch**: create it in the same folder, without a worktree.
   1. If the working tree has changes you did not make, stop and ask the user what to do with them.
   2. `git switch staging`, then `git pull --rebase`.
   3. `git switch -c <branch>`. For a Linear issue use its `gitBranchName`; otherwise a short kebab-case name such as `fix/map-banner-jump`.
4. Do the work and leave it uncommitted. Present the result for the user's approval. The branch stays local: it is never pushed.

The step is done when you are on the agreed branch with a clean start. Committing happens only on "коммить", through `commit-to-staging`.
