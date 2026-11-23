---
name: next-step
description: Tell the user where they are in building their AI OS and walk them through what's next. Checks the folder against the Four Cs in SETUP-GUIDE.md (Context, Connections, Capabilities, Cadence). Use when the user says "/next-step", "what's my next step", "where am I", "what do I do now", "what's left", "how do I finish my AI OS", or seems unsure what to do.
---

# Next step

Find which layer of `SETUP-GUIDE.md` the user is on, say it in plain words, and start the next step with them.

## Check the folder (read only, don't ask what you can see)

**Context**
- `aios-intake.md` still has `[Your answer here]`, or `CLAUDE.md` still has `{{Your Name}}`: /onboard isn't done.
- `context/` has the files /onboard makes (about me, my role, priorities) and `references/voice.md` exists.
- `brainstorms/` has /grill-me sessions on: their role, their team, their company, the task that eats their week. List which of the four are covered.

**Connections**
- `connections.md`: which of the tools the user named are connected and which aren't. There's no set number; it's done when their main tools are connected.
- `references/` has a guide for each connected tool.

**Capabilities**
- Skills in `.claude/skills/` beyond the ones that ship with the starter (onboard, grill-me, save, make-a-skill, next-step, session-handoff, level-up, link, audit, agent-skills, 3d-brain). Those extra skills are the user's own.

**Cadence**
- `audits/` has a report.
- Anything scheduled to run on its own (look in `decisions/log.md` and `workflows/`, then ask if unsure).

## Tell them where they are

Keep it short, in this shape:

```
You're on: <layer> (<number> of 4)
Done: <what's finished, in a few words>
Left in this layer: <what's missing>
Next step: <the step from SETUP-GUIDE.md, one line>
```

Then explain in one or two sentences why this layer matters, using their own work as the example (from `context/`). For example: "Now that I know your job, Connections lets me reach your Outlook and your load sheet, so you can say 'answer this carrier email' and I'll do it."

Then offer to start that step right now, and if they say yes, start it (run /onboard, /grill-me on the missing topic, help connect the next tool, or /make-a-skill on their biggest repeat task).

## Rules

- Work in order: Context, then Connections, then Capabilities, then Cadence. If an earlier layer has a real gap, point to it first, gently: "Before we connect your tools, let's finish teaching me your team."
- A layer counts as done when its "You're done when" check in `SETUP-GUIDE.md` is met, not just when files exist. If unsure, ask one quick question to test it.
- Remind them they can always add more context and connections later.
- If all four are done, say so, suggest /audit for their score, and /level-up for the next improvement.
