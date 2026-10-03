---
name: manage-skills
description: Edit the user's shared Claude and Codex setup in ~/projects/sivuraimo-frontend-skills. Use when creating, editing, renaming or deleting a global skill or the global CLAUDE.md, from any project.
---

All global skills and the global `CLAUDE.md` live in `~/projects/sivuraimo-frontend-skills` and reach Claude Code (`~/.claude/CLAUDE.md`, `~/.claude/skills/`) and Codex (`~/.codex/AGENTS.md`, `~/.codex/skills/`) through symlinks made by `install.sh`. Edit the files in that repo, never the copies under `~/.claude` or `~/.codex`. Both agents read `CLAUDE.md`, so word its rules for any agent. For the writing itself, follow the `writing-for-agents` skill.

## What each change needs

| Change | After the edit |
|---|---|
| Edit an existing `SKILL.md`, a file inside a skill folder, or `CLAUDE.md` | Nothing: live through the symlink from the next session |
| New skill folder in `skills/` | Re-run `install.sh` to create its symlink |
| Rename a skill folder | `rm ~/.claude/skills/<old-name> ~/.codex/skills/<old-name>`, then re-run `install.sh` |
| Delete a skill folder | `rm ~/.claude/skills/<name> ~/.codex/skills/<name>` (the dangling symlinks) |
| Change `install.sh` itself | Re-run `install.sh` |

`install.sh` and `rm` under `~/.claude` or `~/.codex` are the user's to run: give them the exact commands with the `!` prefix, for example `! ~/projects/sivuraimo-frontend-skills/install.sh`.

## Finishing

1. Update the table in `README.md` when a skill is added, renamed or deleted.
2. Report to the user: what changed, which of the commands above they need to run (or that none are needed), and that changes apply from the next session.
3. Commit only on "коммить": this repo has no `staging`, so `git pull --rebase` and commit directly on `main`. The user pushes, and on other machines a `git pull` is enough unless the table above asks for `install.sh`.
