# Changelog

Which version of the AI Operating System - RizeTech this folder started from is in `.claude/VERSION`. Your copy is yours: later versions of the starter never change it.

## 2.2.0 (2026-11-23)

- `guides/START-HERE.md` rewritten as a step by step guide anyone can follow: accounts, VS Code, Git (Windows and Mac), Claude Code sign in, your copy with the Clone Repository button, phone (Remote Control and cloud), company layer, then /onboard and what's next. Screenshots with arrows in `guides/images/`. New tables for the one time pop ups and for what IT approves.
- Claude no longer asks before every edit: `.claude/settings.json` accepts edits in your folder and allows git, list, and read commands. Anything outside your folder still asks.

## 2.1.0 (2026-11-23)

- New `guides/START-HERE.md`: one document from zero to working. Accounts, installs, your own copy, /onboard, both ways to use it from your phone (Remote Control and cloud sessions), the company layer, and what's next. README and CLAUDE.md point to it.

## 2.0.0 (2026-11-23)

- **Company layer.** New `company-kit/` (a Claude Code plugin marketplace with a company handbook skill and a shared skills folder). `/setup-company` builds a company's private layer from it, `/connect-company` connects a person's AI OS to it, `/share-skill` sends a skill to coworkers. `/onboard` asks about it at the end. No company data ever lives in this repo.
- **SOPs and documents.** New `1-context/inbox/`, `sops/` (with template and originals), `meetings/`, `documents/`. `/add-doc` reads anything dropped in the inbox, explains it, files it, updates context, and adds automatable steps to `tasks-to-automate.md`.

## 1.9.0 (2026-11-23)

- `1-context/` comes organized: `about-me.md`, `my-job.md` (title, job description, a normal week, what you're measured on), `my-company.md`, `my-team.md`, `priorities/` (one file per quarter, Q4 2026 through Q4 2027), `processes/` (with a template), `voice.md`, each with headings to fill.
- Starter files in every layer: `2-connections/_tool-guide-template.md`, `3-capabilities/workflows/_template.md`, `3-capabilities/tools/README.md`, `4-cadence/rhythm.md`.
- New `3-capabilities/tasks-to-automate.md`: every task to get off your plate and its stage (manual to runs on its own). /onboard starts it, /grill-me and /level-up add to it, /make-a-skill moves tasks along.

## 1.8.0 (2026-11-23)

- Folders organized by the Four Cs: `1-context/`, `2-connections/`, `3-capabilities/`, `4-cadence/`, plus `guides/`. Only `CLAUDE.md`, `README.md`, and `LICENSE` stay at the top.
- `aios-intake.md` is now `1-context/intake.md`, `decisions/log.md` is now `1-context/decisions.md`, the setup guide, Three Ms, and expansions moved to `guides/`, changelog and version moved to `.claude/`.
- New `4-cadence/schedules.md` lists everything that runs on its own.
- README has the folder map plus a plain English explanation of each part.

## 1.7.0 (2026-11-23)

- README: added "The life of a task" (manual, ask AI, prompt better, skill, fix the skill, agent), plain English explanations under the Three Ms, Four Cs, and `/audit`, and a "Words you'll see" glossary.
- Setup guide ties the Capabilities layer to the life of a task.

## 1.6.0 (2026-11-23)

- README follows the AIS-OS README word for word, with our skills and setup.
- Back to the original Three Ms (`guides/3ms-framework.md`, original `/level-up`) and Four Cs (Context, Connections, Capabilities, Cadence), credited to Nate Herk.
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

- `guides/SETUP-GUIDE.md` rewritten to explain the idea: your personal AI agent, why each layer matters, with real examples, then the steps.
- Added `/next-step`: checks the folder, says which layer you're on, and starts the next step with you.

## 1.2.0 (2026-11-23)

- Replaced `FIRST-WEEK.md` with `guides/SETUP-GUIDE.md`: ten steps at your own pace, grouped into four layers. Claude reads it when asked "what's my next step?" and checks what's already done.

## 1.1.0 (2026-11-23)

- Added `/make-a-skill`: turns a repeat task into a skill, best after doing it once together. `/level-up` now hands off to it.
- Added `FIRST-WEEK.md`: five days, about 30 minutes each. Claude reads it when asked what to do today.

## 1.0.1 (2026-11-23)

- Cleaned up credits and wording. No change to how anything works.

## 1.0.0 (2026-11-22)

- First version.
- Skills: `/onboard`, `/grill-me`, `/save`, `/session-handoff`, `/level-up`, `/link`, `/audit`, `/agent-skills`, `/3d-brain` (optional). Claude only.
- Intake built for employees (role, team, what you're measured on). `/grill-me` saves every answer to `1-context/brainstorms/` and puts confirmed facts straight into CLAUDE.md and `1-context/`. `1-context/brainstorms/` and `4-cadence/audits/` now sync to GitHub so they're on every computer.
- Added: `/agent-skills` (Addy Osmani's build playbook, MIT), `/save`, `/session-handoff`, planner / builder / checker agents, Sonnet default with an Opus advisor, auto pull on start, key blocker, `.env.example`, `3-capabilities/workflows/`, `3-capabilities/tools/`, VERSION and this changelog.
- Pilot: first people to use it, feedback goes here before it goes wider.
