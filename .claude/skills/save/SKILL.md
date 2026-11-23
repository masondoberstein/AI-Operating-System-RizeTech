---
name: save
description: Optional wrap up (syncing to GitHub already happens automatically after every reply). Pulls any changes made on another computer or by a teammate, records decisions and a short work note, commits only this session's work, and pushes to GitHub so everyone has it. Trigger on "/save", "save everything", "save everything and push it to GitHub", "push it", "wrap up for the day", "I'm done for today".
---

# Save

Make sure today's work is on GitHub so it's on every computer you use, and with anyone you share this folder with.

## Steps

Run in order. Each step ends as done, fixed, or blocked, with the reason.

1. **What changed.** Run `git status -s`. List the files this session created or changed. If something changed that this session didn't touch, list it and ask before including it.
2. **Tests.** If the session changed platform code and a test command exists, run it. If tests fail, say so plainly and ask whether to save anyway. No tests is reported as "no tests", never as a pass.
3. **Decisions.** If anything was decided today, make sure it's in `decisions/log.md` with today's date and why. If the brain learned something new, make sure `CLAUDE.md` or the right file in `context/` has it.
4. **Work note.** Add a few lines at the top of `context/work-log.md` (make it if missing): today's date, who worked, what got done, what's next. Newest first.
5. **Check for secrets.** Make sure no `.env` file, password, or API key is about to be committed. If one is, stop and say so.
6. **Commit.** Stage only this session's files. Commit with a plain message saying what changed, for example "Weekly report workflow, first test against last month's report".
7. **Pull, then push.** Run `git pull --rebase`, then `git push`. If the pull hits a conflict (both people changed the same lines), stop, show both versions in plain words, and ask which to keep. Never force push.
8. **Report.** Three lines: what's saved on GitHub, anything blocked, what's next.

## Never

Force push, delete files (move them to `archives/` instead), commit `.env` or keys, or commit someone else's unfinished changes without asking.
