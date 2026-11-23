---
name: make-a-skill
description: Turn something the user does over and over into a skill Claude can run on command. Use when the user says "/make-a-skill", "make this a skill", "turn this into a skill", "save this so you can do it again", "I do this every week", or after /level-up picks something to build. Also use to fix a skill that isn't working right.
---

# Make a skill

A skill is a saved set of step by step instructions Claude follows every time you call it, like `/save` or `/grill-me`. It lives in `.claude/skills/<name>/SKILL.md`. Claude only reads its name and description until it's needed, so having lots of skills doesn't slow anything down.

## The best way: do it once together, then save it

The best skills come from doing the job for real first, not from describing it.

1. **Do the task with Claude once**, start to finish, in this chat. Use real files and real examples.
2. When it came out right, say **"turn this into a skill."**
3. Claude writes the skill from what actually happened, including the fixes you made along the way.

If the user already did the task in this chat, skip to "Write it".

## Before writing, get these five answers

Ask one at a time, with a best guess from the chat for each. Skip any the chat already answers.

1. **Name:** short, lowercase, words joined by dashes (for example `weekly-report`). This becomes `/weekly-report`.
2. **When to use it:** the words the user would say to start it ("do the weekly report", "build my Monday summary"). These go in the description so Claude knows when to reach for it on its own.
3. **The goal:** one sentence on what it produces.
4. **What it needs:** which files, folders, systems, or pasted info it reads, and where the result goes.
5. **What "right" looks like:** how to tell the output is good, and the mistakes to avoid.

## Write it

Make `.claude/skills/<name>/SKILL.md` with:

```markdown
---
name: <name>
description: <what it does in one sentence>. Use when the user says "<phrase 1>", "<phrase 2>", or <situation>.
---

# <Name>

<One sentence goal.>

## What it needs
- <files, folders, systems, info>

## Steps
1. <first step, plain words>
2. <next step>
...

## Rules
- <what must always or never happen>

## Done when
- <how to tell it's right>
```

Rules for writing it:
- **Plain words, numbered steps.** Write it so a new hire could follow it.
- **Short.** Under about 100 lines. Long examples or reference info go in a second file in the same folder (for example `.claude/skills/<name>/examples.md`) and the steps say when to read it.
- **No passwords or keys** in the skill. If it needs one, add the key's name to `.env.example` and read the value from `.env`.
- **Anything sent to another person** (email, Teams, a post) is shown to the user as a draft first. The skill never sends on its own unless the user explicitly says so.
- If the job repeats on its own with no judgment needed, also note it in `3-capabilities/workflows/` and put any script it uses in `3-capabilities/tools/` (see "How this runs" in CLAUDE.md).

## Test it right away

1. Tell the user the skill is ready and how to start it (`/<name>`).
2. Run it once on a real example in a fresh chat if possible, so it only has what the skill gives it.
3. Fix whatever went wrong **in the skill file**, not just in the output, so it never goes wrong the same way twice.
4. Add a line to `1-context/decisions.md`: today's date, the new skill, and why it exists.

## Fixing a skill that isn't working

- Wrong steps or wrong order: edit the steps.
- Claude doesn't use it when it should: add the user's real trigger words to the description.
- Same mistake keeps happening: add a rule.
- Output is close but off in style or format: add a short example file and point to it.
