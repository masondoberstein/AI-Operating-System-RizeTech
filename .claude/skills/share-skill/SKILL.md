---
name: share-skill
description: Share one of the user's own skills with their whole company by sending it to the company layer, so coworkers get it too. Use when the user says "/share-skill", "share this skill", "give this to my team", or "put this in the company skills".
---

# Share a skill with your company

## Before sharing
1. Check the AI OS is connected to a company layer (`.claude/settings.json` has a `company@...` entry). If not, suggest `/connect-company` first and stop.
2. Ask which skill (list the user's own skills in `.claude/skills/`, not the ones that ship with the starter).
3. Read the skill and check it's safe to share:
   - It worked on a real example (ask if unsure).
   - Nothing personal: no one's name, personal notes, or paths into their own `1-context/`. Replace anything personal with plain instructions.
   - No passwords or keys.
   - It follows the company's `policies.md` in the handbook.
   Show the user the cleaned up version before sending.

## Send it
1. Get a copy of the company layer repo (clone it next to this folder if it isn't already).
2. Copy the skill folder into `plugins/company/skills/<skill-name>/`.
3. Bump the patch number of `version` in `plugins/company/.claude-plugin/plugin.json` (1.0.0 becomes 1.0.1).
4. If the user can't push to the company repo directly, open a pull request with a one line description of what the skill does, and tell them who reviews it. If they can push, show the change and push only with their okay.
5. Log it in `1-context/decisions.md`.

Once it's merged, everyone connected gets it on their next update.
