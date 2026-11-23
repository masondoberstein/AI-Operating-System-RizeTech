# Changelog

Which version of the AI Operating System - RizeTech this folder started from is in `VERSION`. Your copy is yours: later versions of the starter never change it.

## 1.7.0 (2026-11-23)

- README: added "The life of a task" (manual, ask AI, prompt better, skill, fix the skill, agent), plain English explanations under the Three Ms, Four Cs, and `/audit`, and a "Words you'll see" glossary.
- Setup guide ties the Capabilities layer to the life of a task.

## 1.6.0 (2026-11-23)

- README follows the AIS-OS README word for word, with our skills and setup.
- Back to the original Three Ms (`references/3ms-framework.md`, original `/level-up`) and Four Cs (Context, Connections, Capabilities, Cadence), credited to Nate Herk.
- Restored the `/3d-brain` scripts that were missing.

## 1.5.0 (2026-11-23)

- New README: what it is, the goal, how you'll know it's working, the 4 Layers, how to think about AI, every skill and when to use it.
- The four layers are now RizeTech's own: Know You, Reach Your Tools, Do the Work, Run on Its Own (setup guide, `/next-step`, `/audit`).
- New `references/how-to-think-about-ai.md` and a rewritten `/level-up` built on it.

## 1.4.0 (2026-11-23)

- Saving is automatic: after every reply the folder saves itself to GitHub in the background (`.claude/hooks/auto-save.sh`). It pulls first, never sends `.env`, and refuses to save anything that looks like a key. `/save` is now an optional wrap up.
- Connections are personal: no fixed categories or tool list. `/onboard` only lists tools the person named, and Claude suggests connections based on their role.
- Setup guide examples now fit any role (sales, operations, finance).

## 1.3.0 (2026-11-23)

- `SETUP-GUIDE.md` rewritten to explain the idea: your personal AI agent, why each layer matters, with real examples, then the steps.
- Added `/next-step`: checks the folder, says which layer you're on, and starts the next step with you.

## 1.2.0 (2026-11-23)

- Replaced `FIRST-WEEK.md` with `SETUP-GUIDE.md`: ten steps at your own pace, grouped into four layers. Claude reads it when asked "what's my next step?" and checks what's already done.

## 1.1.0 (2026-11-23)

- Added `/make-a-skill`: turns a repeat task into a skill, best after doing it once together. `/level-up` now hands off to it.
- Added `FIRST-WEEK.md`: five days, about 30 minutes each. Claude reads it when asked what to do today.

## 1.0.1 (2026-11-23)

- Cleaned up credits and wording. No change to how anything works.

## 1.0.0 (2026-11-22)

- First version.
- Skills: `/onboard`, `/grill-me`, `/save`, `/session-handoff`, `/level-up`, `/link`, `/audit`, `/agent-skills`, `/3d-brain` (optional). Claude only.
- Intake built for employees (role, team, what you're measured on). `/grill-me` saves every answer to `brainstorms/` and puts confirmed facts straight into CLAUDE.md and `context/`. `brainstorms/` and `audits/` now sync to GitHub so they're on every computer.
- Added: `/agent-skills` (Addy Osmani's build playbook, MIT), `/save`, `/session-handoff`, planner / builder / checker agents, Sonnet default with an Opus advisor, auto pull on start, key blocker, `.env.example`, `workflows/`, `tools/`, VERSION and this changelog.
- Pilot: first people to use it, feedback goes here before it goes wider.
