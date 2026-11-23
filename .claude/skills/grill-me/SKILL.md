---
name: grill-me
description: Interview the user one question at a time about their work, a process, a project, or a plan, and save every answer the moment it is given. Trigger on "/grill-me", "grill me", "interview me", "build the brain", "ask me questions about X", "stress test this plan", or when something new needs to be pulled out of someone's head.
---

# Grill me

Pull what the user knows out of their head and into this folder, one question at a time, so Claude knows their work as well as they do.

## Before the first question

1. Read `CLAUDE.md`, the files in `context/` that fit the topic, `decisions/log.md`, and any earlier capture in `brainstorms/` on the same topic.
2. **Make the capture file now**, before asking anything: `brainstorms/{YYYY-MM-DD}-{topic}.md` (make the `brainstorms/` folder if it doesn't exist). Get today's real date from the computer. Never overwrite an earlier capture; add a time to the name if one exists for today. Start it with a title, the date, the goal, and an empty "Open questions" section.
3. Tell the user where you're saving, in one line.
4. If no topic was given, ask what to focus on today, with a guess from what's already in the folder. For example: "Want to start with the task that eats your week?"

## The questions

- **One at a time.** Never a list of questions.
- **Every question comes with a best guess** from what's already in the folder, labeled as a guess. Confirming a guess is faster than answering from scratch. If there's nothing to guess from, say so. For personal facts, ask plainly and don't lead.
- **Answers can be spoken.** People dictate. Clean up what they said into clear notes, keep their meaning and their words where the wording matters, and ask if anything is unclear.
- **Plain words.** No jargon the user didn't use first.
- **Look before you ask.** If a file in the folder already answers it, read it instead of asking.
- **Can't answer? Move on.** Write it under "Open questions" with who could answer it.

Good ground to cover for someone's work, skipping what's already known:
1. The team: who does what, who checks the work, who depends on it.
2. The work today: step by step, how it gets done now, which tools and files, how long it takes, where it breaks.
3. The numbers: what gets measured, where it's tracked, what good looks like.
4. The history: what has to be kept, for how long, and why.
5. Checking: which past results are trusted and could prove a new way works.
6. Connections: which systems hold the data and who owns them.
7. The finished product: who uses it, how often, what they need to see.

## Save after every answer (never skip)

The moment an answer lands, before asking the next question:
1. **Add it to the capture file**: the question, what they said, anything still unsure, and any open question with its owner. One answer per save, never several at once. If a later answer changes an earlier one, keep the old entry and mark it replaced.
2. **Put confirmed facts where they belong:**
   - Facts about their work go in the matching file in `context/` (for example `context/team.md`, `context/current-process.md`). Make the file if it doesn't exist.
   - Anything that changes how Claude should work goes in `CLAUDE.md`. Keep CLAUDE.md short and point to `context/` for detail.
   - Anything decided goes in `decisions/log.md` with today's date and why.
   - Guesses and ideas stay in the capture file until the user confirms them.
3. If saving fails, say so and keep the answer visible in chat. Never say something was saved when it wasn't.

## Stopping

Keep going while there's real ground left. Around 15 questions, ask if they want to keep going or stop for today. Stop right away if they say so. When stopping:
1. Mark the capture file paused or done, and write where to pick up next time.
2. List in a few lines what got saved and where.
3. List what's still unknown.

