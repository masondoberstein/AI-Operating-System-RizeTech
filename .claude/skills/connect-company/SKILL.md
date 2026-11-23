---
name: connect-company
description: Connect this AI OS to the user's company layer (the shared company handbook and shared skills) so it knows the company and gets the skills coworkers share. Use when the user says "/connect-company", "connect to my company", "add our company handbook", "get the company skills", or pastes a company AI repo link.
---

# Connect to your company

Hooks this AI OS up to the company's shared layer. Their own notes stay private; only the handbook and shared skills come in.

## Steps
1. Ask for the company layer's repo, like `your-company/company-ai` (whoever set it up has it). If they don't have one, say that's fine, their AI OS works on its own, and the person who runs AI at their company can set one up with `/setup-company`. Stop there.
2. Check they can reach it: `gh repo view <owner>/<repo>` or open it on github.com. If they can't, they need to be added to it. Tell them who to ask and stop.
3. Read `.claude-plugin/marketplace.json` in that repo to get the marketplace `name` (for example `acme-logistics-ai`).
4. Add to `.claude/settings.json`, **merging** with what's there and never removing anything:
   ```json
   "extraKnownMarketplaces": {
     "<marketplace-name>": {
       "source": { "source": "github", "repo": "<owner>/<repo>" },
       "autoUpdate": true
     }
   },
   "enabledPlugins": {
     "company@<marketplace-name>": true
   }
   ```
   Then check the file is still valid JSON.
5. Tell them: restart Claude in this folder and accept the prompt to trust it. The company layer installs then, and updates on its own after that.
6. After the restart, check it loaded: `/plugin` should list `company@<marketplace-name>`, and asking "what does my company do?" should answer from the handbook.
7. Add a line at the top of `1-context/my-company.md`: "The company handbook comes from the company layer (`<owner>/<repo>`). This file keeps only my own view and notes." Log it in `1-context/decisions.md`.

## Rules
- Never paste company handbook content into this personal folder. It lives in the company layer.
- Only connect to a company repo the user is meant to have.
