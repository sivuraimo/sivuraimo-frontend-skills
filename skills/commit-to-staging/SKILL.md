---
name: commit-to-staging
description: Commit the approved work onto staging on top of a fresh pull. Use when the user says "коммить" / "commit".
---

Every commit lands on `staging` on top of its latest remote state. Task branches are deleted afterwards.

1. Run `git branch --show-current` as its own command, and `git status` to list what changed. Stage only the files of this task.
2. **On a task branch**:
   1. Commit there.
   2. `git switch staging`, then `git pull --rebase`.
   3. `git cherry-pick <commit>`. Resolve conflicts if any; when a conflict is unclear, stop and ask.
   4. `git branch -D <task-branch>`, unless the user said to keep it. If the branch exists on the remote, ask the user before deleting it there: that deletion is a push.
3. **On `staging` directly**: `git pull --rebase --autostash`, resolve conflicts, then commit.
4. Report: the commit hash and message on `staging`, whether the task branch was deleted, and that the user can now run `git push` themselves.

Done means `git log -1` on `staging` shows the commit, `git status` shows none of this task's files, and the task branch is gone (or kept on request).
