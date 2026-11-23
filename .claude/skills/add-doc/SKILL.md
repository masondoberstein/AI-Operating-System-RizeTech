---
name: add-doc
description: Bring any file into the AI OS (an SOP, meeting notes, a transcript, an org chart, a policy, a handbook, a report, a screenshot), explain it in plain English, file it in the right place, and pull out what matters. Use when the user says "/add-doc", "add this file", "read this SOP", "here's our process doc", "add these meeting notes", or drops a file into 1-context/inbox/.
---

# Add a document

The user drops files into `1-context/inbox/` (or names a file anywhere), then types `/add-doc`. Do every file in the inbox, one at a time.

## For each file
1. **Read it.** PDF, text, markdown, CSV, and images can be read directly. For Word, Excel, or PowerPoint, ask them to save it as PDF (or CSV for a spreadsheet) and drop that in instead.
2. **Explain it** to the user in three to five plain sentences: what it is, what it's for, anything that stands out.
3. **File it** based on what it is:
   - **An SOP or process document:** write a summary to `1-context/sops/<name>.md` using `1-context/sops/_template.md`, and move the original to `1-context/sops/originals/`.
   - **Meeting notes or a transcript:** write `1-context/meetings/<YYYY-MM-DD>-<topic>.md` with who was there, what was discussed, decisions, and action items (who, what, by when). Add each decision to `1-context/decisions.md`. Move the original to `1-context/meetings/originals/`.
   - **Anything else** (org chart, handbook, policy, presentation, report, price list): move it to `1-context/documents/` and write a short `<name>-summary.md` next to it: what it is, the key facts, and when it's useful.
4. **Pull out what matters:**
   - Facts about the user's job, team, or company go in `my-job.md`, `my-team.md`, or `my-company.md` (only what the document clearly says).
   - Every step a person does by hand that AI could help with goes into `3-capabilities/tasks-to-automate.md` at stage 1, with a note of which document it came from.
   - Anything unclear goes in the summary under "Questions" for a later `/grill-me`.
5. Tell the user in two lines what you filed and what you added to their task list.

## Rules
- Use the file's real content only. Don't fill gaps with guesses; list them as questions.
- If a file has passwords, social security numbers, or anything the company's policies say never goes into AI, stop and tell the user before filing it.
- Keep names short and lowercase with dashes (`month-end-close.md`).
