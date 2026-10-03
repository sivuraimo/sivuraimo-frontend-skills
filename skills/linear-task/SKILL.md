---
name: linear-task
description: Work a Linear issue end to end, or create issues. Use when the user hands over a Linear issue ID (e.g. SIV-53) or a linear.app issue URL, or asks to create Linear tasks.
---

The project's `CLAUDE.md` names its Linear team and project. If it does not, find the project with `list_projects` by the repo name and confirm it with the user.

## Working an issue

1. Fetch the issue with `get_issue` (`includeRelations: true`) and read its comments with `list_comments`. If a blocker is still open, report it and wait for the user's go-ahead.
2. Run `start-task`; a task branch takes the issue's `gitBranchName`.
3. Move the issue to In Progress and add a comment with the **resume command** (below), so the user can pick the session up if it is lost mid-work.
4. Do the work. Done means every point of the description is handled and checked in the running app, or listed as waiting on someone else (assets, client answers).
5. Move the issue to In Review right away, in the same turn the work is finished, and add a comment: what changed, which files, what is left for the user, and the resume command again.
6. Done status is set by the user.

### Resume command

One line the user can paste into a terminal to continue this exact session:

- Claude Code: `cd <absolute repo path> && claude --resume <id>`, where `<id>` is `$CLAUDE_CODE_SESSION_ID`.
- Codex: `cd <absolute repo path> && codex resume <id>`, where `<id>` is `$CODEX_THREAD_ID`.

Read the id with `echo` in the shell and paste the literal value into the comment.

## Creating issues

- Write title and description in Russian, in the voice of the existing issues.
- Set project, milestone (ask if several are open), assignee `me` and state Todo: new issues otherwise land in Backlog.
- Link dependencies with `blockedBy` / `relatedTo` instead of describing them in text.
- Before creating, check the project's open issues for one that already covers it; extend that one instead.
- Point to code with repo-relative paths (`src/data/mapPoints.json`).
