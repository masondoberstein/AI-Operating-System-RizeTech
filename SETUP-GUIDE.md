# Setup guide: building your AI OS

## What this is

This folder is your AI OS: your own personal AI agent.

When it's set up, it knows everything about you: who you are, what your role is, who you work with, what you do, why you do it, when you do it, and how you do it. It knows the company you work at and how your part fits in. And it's connected to the tools you already use.

That's the point. Once it knows you and can reach your tools, you rarely have to leave this screen. You just ask:

- "Respond to this email."
- "Prep me for my 2 o'clock."
- "Update the numbers in this week's sheet."

What else it can do depends on your job. In sales it might build a lead list. In operations it might update the schedule or chase a late shipment. In finance it might pull last month's numbers and flag what's off. It does it because it knows what you mean and it can reach the system where the work happens.

## How it gets built: the Four Cs

You build it in four layers, in this order. Each one needs the one before it.

| | Layer | What it means |
|---|---|---|
| 1 | **Context** | It knows you, your role, your team, and your company. |
| 2 | **Connections** | It can reach the tools you use every day. |
| 3 | **Capabilities** | It does your repeat work the same way every time, on command. |
| 4 | **Cadence** | Useful work happens on a schedule, even when you don't ask. |

Go at your own pace. Some people finish in an afternoon, some take a month.

**Lost? Type /next-step.** Claude checks your folder, tells you which layer you're on and what's left, and walks you through it. For example: "You've finished Context. Next is Connections: let's list the tools you use."

You can always come back and add more. More context and more connections only make it better.

**Everything saves on its own.** After every reply, your folder saves itself to GitHub, so it's on every computer you use. Passwords and keys never go up.

---

## 1. Context: it learns who you are

**Why it matters.** An assistant that doesn't know you is just a search box. Before your agent can do anything useful, it needs to understand you the way a coworker who's sat next to you for a year would: your job, your people, your priorities, and how you like things done.

**How it gets built.** Two skills do this. Type them in the Claude chat:

**Step 1. Get your folder.** Follow "Get your folder" in `README.md`: make your copy, open it in VS Code, sign in to Claude.

**Step 2. Type /onboard.** Seven quick questions: who you are, your role, who depends on your work, your priorities for the next 90 days, what you're measured on, where you talk to people, where your files live, and the task that eats your week. Talking works fine. About 15 minutes. It sets up your `context/` folder and fills in `CLAUDE.md`, the brain it reads first every time.

**Step 3. Type /grill-me.** This is where it really learns. Claude interviews you one question at a time and saves every answer as you go. Do one topic per session:
- **Your role:** what you actually do each day and week, start to finish.
- **Your team:** who does what, who checks your work, who you hand things to.
- **Your company:** what it does, who the customers are, how your part fits in.
- **The task that eats your week:** every step, every file, every system, where it goes wrong.

**You're done with Context when** you ask "what should I focus on this week?" or "explain my job back to me" and it gets it right without you correcting it.

---

## 2. Connections: it reaches the tools you use

**Why it matters.** Knowing everything about you doesn't help much if it can't touch the tools you work in. These connections plug your agent into the back end of the software you use every day, so you can say "respond to this email" or "update the sheet" and have it actually happen. Everyone's list is different. There's no set number and no standard list: it's whatever *you* use.

**Step 4. Name your main software.** Ask Claude: **"what tools should we connect?"** It asks what software you use most in a normal week, and based on your role it suggests what people in jobs like yours usually connect. You decide what goes on the list. `connections.md` keeps track of it.

**Step 5. Connect them, one at a time.** Start with the one you use most. Ask Claude: **"help me connect [tool]."** It picks the right way:
- **A built in Claude connector** (for example Microsoft 365, Google Drive, Gmail, calendar), turned on in your Claude settings.
- **An MCP server or an API key** for other tools. Keys go in `.env` only, never in a chat or a file.
- **An export:** if a tool can't connect, save a regular export (a CSV, a report) into your folder and Claude reads that.

At work, check with your IT team before connecting any company system.

After each connection, Claude updates `connections.md` and saves a short guide in `references/` so it never has to figure that tool out twice. Use **/link** to point it at any important folder, project, or document.

**You're done with Connections when** your main tools are connected and you can ask a real question that needs each one ("what's on my calendar Thursday?", "what did the customer say in yesterday's email?") and get a real answer. You can add more any time.

---

## 3. Capabilities: it does your work, on command

**Why it matters.** Now it knows you and it can reach your tools. This layer turns the work you do over and over into **skills**: saved instructions it follows the same way every time. Instead of explaining a task from scratch, you type one command, like `/meeting-brief` or `/weekly-report`, and it's done.

Every task moves through the same stages: you do it by hand, you ask AI for help, you prompt it better, you save it as a skill, you fix the skill until it's right, and finally it runs on its own as an agent. (The full picture is in "The life of a task" in `README.md`.) This layer takes your tasks from stage 3 to stage 5.

**Step 6. Pick a task and make it a skill.** Ask yourself: what do I do every week that follows the same steps? A meeting brief, a status report, an email reply, a lead list, cleaning up a spreadsheet. Do it once with Claude using the real files and correct it until it's right. Then say **"turn this into a skill"** (or type **/make-a-skill**).

**Step 7. Run it fresh and fix it.** Start a new chat and run your new skill on a new example. If anything's off, tell Claude what was wrong and say **"fix the skill so this doesn't happen again."** Every fix makes it better for good.

**Step 8. Find the next one.** Type **/level-up**. It looks at everything it knows about your work and suggests one thing to stop doing, automate, or hand off. Small repeat jobs become skills with **/make-a-skill**. Bigger jobs go to the **planner** first, then the **builder** builds them one piece at a time, and the **checker** proves the result is right.

**You're done with Capabilities when** you have two or three skills you actually use every week.

---

## 4. Cadence: it works even when you don't ask

**Why it matters.** So far it only works when you type something. Cadence is the last layer: work that happens on a rhythm. The Monday summary is waiting when you sit down. The daily check runs on its own. And your habits keep the whole thing sharp.

**Step 9. Set your rhythm.**
- **Weekly:** **/level-up** to ship one new improvement.
- **Whenever something changes:** **/grill-me** to teach it.
- **Monthly:** **/audit** to score all four layers and see what's next.

**Step 10. Make one thing run on its own.** Pick a skill that should happen on a schedule. Ask Claude: **"schedule [skill] to run every [day or week]."** It sets it up and tells you where the results land. At work, confirm with your manager or IT before anything runs automatically or sends something to someone else.

**You're done with Cadence when** something useful has run on its own at least twice and the results were right.

---

## You're set up when

- It knows you, your role, your team, and your company (**Context**)
- It can reach the tools you use every day (**Connections**)
- You have skills you use every week (**Capabilities**)
- Something useful runs on its own (**Cadence**)

Type **/audit** to see your score. From there, keep adding context, connections, and skills one at a time. It gets better every week you use it.

## Habits that make it work

- **Open this folder first.** Ask your agent before you open six other tabs.
- **One task per chat.** New topic, new chat (`/clear`). Long chat? `/session-handoff`, then a fresh chat.
- **Plan first** on anything bigger than a few steps.
- **Never paste passwords** into a chat or a file. They go in `.env` only.
- **Saving is automatic.** Want a written wrap up of what you did and decided? Type **/save**. It's optional.
- **Anything going to another person** (email, Teams) is a draft until you send it yourself.
