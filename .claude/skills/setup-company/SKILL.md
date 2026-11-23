---
name: setup-company
description: Set up a company's shared AI layer (the company handbook plus shared skills) from the company kit, for the person who runs AI for the company. Use when the user says "/setup-company", "set up our company layer", "make a company handbook", "share skills with my team", or "set this up for my whole company".
---

# Set up the company layer

For the person setting up AI for a whole company. Builds a private company layer from `company-kit/` that every employee's AI OS can connect to. One question at a time.

## Before starting
1. Confirm they're the right person: they can create a private repo in the company's GitHub (or will hand it to whoever can). If not, stop and tell them who usually does this (an owner or IT).
2. Ask the company name and a short id for it (lowercase, words joined by dashes, for example `acme-logistics`).

## Build the folder
1. Copy `company-kit/` to a new folder **next to** this AI OS folder, not inside it: `../<company-id>-ai/`. Never put company data inside this personal folder.
2. In the copy, set `.claude-plugin/marketplace.json` `name` to `<company-id>-ai` and `owner.name` to the company name. Set `plugins/company/.claude-plugin/plugin.json` `author.name` to the company name.

## Fill the handbook (interview)
Ask one question at a time, with a best guess where you have one, and write each answer into the matching file in `plugins/company/skills/company-handbook/` before asking the next:
1. `about.md`: what the company does, customers, locations, size, where it's headed this year.
2. `org-chart.md`: departments, leaders, what each handles, who to go to for what.
3. `glossary.md`: the words and acronyms new people always ask about.
4. `systems.md`: the main software and what each is for.
5. `policies.md`: what's okay to put into AI, what never goes in, what needs approval, who to ask. **Don't skip this one.**
6. Company wide SOPs: if they have files, save each as a plain English summary in `sops/`.

Around 15 questions, offer to stop and finish later. Whatever's unanswered stays as headings.

## Make it private on GitHub
Show the exact steps for their setup, and run them only with their okay:
- With the GitHub CLI: `gh repo create <org>/<company-id>-ai --private --source ../<company-id>-ai --push`
- Without it: create a new **private** repo on github.com in the company's account, then push the folder to it.
Never create it public. Confirm it says Private on GitHub before moving on.

## Hand off
1. Give them a message to send to everyone (show it, never send it yourself): what the company layer is, and to type `/connect-company` and paste `<org>/<company-id>-ai`.
2. Mention IT can turn it on for everyone at once through managed settings (see `company-kit/README.md`).
3. Run `/connect-company` for them so their own AI OS is connected too.
4. Log it in `1-context/decisions.md`.
