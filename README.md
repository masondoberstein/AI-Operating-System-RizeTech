# AI Operating System - RizeTech: AI Operating System starter kit for Claude Code

A free, MIT-licensed starter kit that turns Claude Code into your personal **AI Operating System (AI OS)**. Audience: anyone building automations — solopreneurs, small business operators, managers, employees, creators, AI consultants.

The kit personalizes itself to you via an `/onboard` interview. Use `/grill-me` whenever you want to deepen its understanding of your work, preferences, or plans. Use `/next-step` to see where you are, `/make-a-skill` to turn repeat work into a command, `/link` to make new information findable, `/audit` to verify the system, `/level-up` to close one useful gap at a time, and `/3d-brain` to explore your saved knowledge as an interactive globe.

---

## The litmus test

> **"While you're not at your desk, your AI OS observes one real-world event and produces an output that's faster and more accurate than what you'd produce yourself."**

Every design decision in this kit rolls up to that test. If a layer, skill, or template doesn't contribute to it, it doesn't ship.

---

## The life of a task

Every task you do at work goes through the same six stages on its way to being handled by AI. Your AI OS is built to move your tasks down this list, one at a time.

| Stage | What it looks like | Example: the weekly status report |
|---|---|---|
| **1. Manual** | You do it yourself, start to finish. No AI. | You open five files, copy numbers into an email, and write it up. 2 hours. |
| **2. Ask AI for help** | You paste something in and ask for help with one piece. | "Clean up this paragraph." It helps, but you're still doing most of it. |
| **3. Prompt better** | You give it the full picture: what you need, your files, how you like it done. It does most of the work. | "Here are this week's numbers and last week's report. Write it the same way." 20 minutes. |
| **4. Make it a skill** | You save those instructions so it does it the same way every time with one command. | You type `/status-report`. It pulls the files and writes it. |
| **5. Fix the skill** | Each time something's off, you tell it what to change and it fixes the skill for good. | "Always put the late shipments first." It never forgets again. |
| **6. Agent** | It runs on its own, on a schedule, and handles the steps that need judgment. | Friday at 3pm the report is already in your inbox, ready to send. |

Most people never get past stage 2. The skills in this kit exist to move you through the rest: `/grill-me` gets you to stage 3 (it learns the full picture), `/make-a-skill` gets you to stage 4 and 5, and `/level-up` picks your next task and moves it down the list. You don't need every task at stage 6. Stage 4 or 5 is a huge win on its own.

---

## How you'll know it's working

Three felt **success indicators** tell you the AI OS is actually changing how you work. Not KPIs — there's no objective metric. These are lived experiences that show up in your week.

**1. Team-reaches-out:**

> *"A teammate messages you with a question. You realize your AI OS would answer it better, faster, and with exact sources — even if you were awake and free. So you ask your AI OS too. That's the moment you stop being a bottleneck for your own knowledge."*

**2. Context-switching reduction:**

> *"You stop opening new tabs. You stop launching the desktop app. When something new lands, your first move is to ask the AI OS, not to open six things. The default surface for thought work shifts. Silent. Compounding."*

**3. Knowledge-leaves-your-head:**

> *"You stop trying to remember business facts. You don't rehearse what you decided last quarter or what your customer said in that meeting. You trust the retrieval. The AI OS holds the truth, you hold the questions."*

**Personal foundation → company AI-readiness.** Once these indicators show up for one person, the same data architecture powers everything else. Custom dashboards on the data you already collect. Automations on top of the connections you already wired. Team rollout where everyone has theirs. *A company where every operator runs a personal AI OS is a company that's actually AI-ready.*

The kit teaches personal AI OS first. Everything scales from there.

---

## Two frameworks

The kit teaches two complementary frameworks. **Three Ms first, Four Cs second.** Without the brain rewire, the architecture is just a folder structure.

### The Three Ms — operator brain (how you think)

| M | One-liner |
|---|---|
| **Mindset** | Default Shift, Function Breakdown, Curiosity Rule. *To what extent can AI be leveraged here?* |
| **Method** | Find Constraint → EAD (Eliminate, Automate, Delegate) → Map Process → Pick Autonomy Level → Tie to KPI. |
| **Machine** | Lego Principle, Validation Chain, Bike Method, Intern Rule, Kill Switch. *Boring is beautiful. Workflows beat agents.* |

**In plain English:**
- **Mindset** is the habit of asking "could AI do part of this?" before you start anything. You don't hand it the whole job, just the pieces it's good at.
- **Method** is how you decide what to build: find what's slowing you down most, first ask if you can just **stop doing it** (eliminate), then **automate** it, or **hand it to a person** (delegate) if it needs real judgment. Write the steps down, decide how much to let AI do on its own, and pick a number it should improve.
- **Machine** is how you build it: small simple pieces that snap together, checked before you trust them, the simplest version first. A plain step by step process (a workflow) beats a fancy AI agent almost every time.

Full breakdown in `guides/3ms-framework.md`. The `/level-up` skill walks you through all three weekly.

### The Four Cs — architecture (what you build)

| # | Layer | One-liner | "This layer is in place" test |
|---|---|---|---|
| 1 | **Context** | Knows your business | Fresh assistant session answers "what does this business do and who works here?" without browsing |
| 2 | **Connections** | Reaches your stuff | "What's on my calendar tomorrow and what tasks are due?" → live data, no paste |
| 3 | **Capabilities** | Knows how to do the work | A short phrase triggers a multi-step workflow that produces an artifact |
| 4 | **Cadence** | Runs without being asked | Laptop closed. A brief lands in the inbox. A teammate messages it and gets a real answer |

**Brand line:** *Context. Connections. Capabilities. Cadence.*

**Dependency graph:** Context is non-skippable. Connections + Capabilities can build in parallel. Cadence is last — don't automate workflows that don't work manually.

**In plain English:** first it learns about you (**Context**), then it gets access to your tools (**Connections**), then it learns to do your tasks (**Capabilities**), then it does them on a schedule without being asked (**Cadence**). You can't skip ahead: it can't do your work well if it can't reach your files, and it can't use your files well if it doesn't know what your job is.

*The Three Ms of AI™ and The Four Cs of an AI OS™ are frameworks by Nate Herk, used with credit.*

`guides/SETUP-GUIDE.md` walks you through all four, step by step. Type `/next-step` any time to see where you are.

---

## What ships — 15 skills, 3 helpers, 3 automatic rules, and a company layer

The kit includes setup, ongoing context interviews, a guided next step, skill building, routing, verification, a weekly improvement workflow, and a working 3D knowledge explorer. You can extend the structure as your AI OS grows.

| Skill | Type | When to run |
|---|---|---|
| `/onboard` | Setup wizard (one-time) | Day 1, immediately after clone. 7-question interview. Generates the Day-1 file set and fills `CLAUDE.md`. |
| `/grill-me` | Saved context interview | Any time you want to unpack a plan or add more context. Asks one question at a time and saves every answer to `1-context/brainstorms/`. |
| `/next-step` | Guide | Any time. Checks your folder against the Four Cs, tells you which layer you're on, and starts the next step with you. |
| `/make-a-skill` | Skill builder | Any task you repeat. Do it once together, then turn it into a one word command. |
| `/add-doc` | Document intake | Drop any file (an SOP, meeting notes, a policy, a report) into `1-context/inbox/`. It explains it, files it, and adds anything automatable to your task list. |
| `/audit` | Evidence-based check | After setup, after a meaningful fix, and weekly while building. Checks routing and freshness, scores verified reliability, and automatically saves a dated report. |
| `/link` | Routing helper | When adding a project, file, folder, or important source. Adds the smallest useful manual/index route and checks it resolves. |
| `/level-up` | Recurring thinking skill | Day 14, then weekly. Three Ms interview (Mindset → Method → Machine). One run = one shipped artifact. |
| `/session-handoff` | Context saver | When a chat gets long. Writes a summary so a fresh chat picks up where you left off. |
| `/agent-skills` | Build playbook | Anything bigger than a skill: spec, plan, build in small pieces, test, review. |
| `/save` | Wrap up | Optional. Writes down what you did and decided. Saving itself is automatic. |
| `/connect-company` | Company connect | Once. Connects your AI OS to your company's shared handbook and shared skills, if your company has a layer. |
| `/share-skill` | Share with your team | When you build a skill your coworkers should have. Sends it to your company layer. |
| `/setup-company` | Company setup (for admins) | Once per company, by whoever runs AI there. Builds the company layer from `company-kit/`. |
| `/3d-brain` | Interactive knowledge explorer | Choose your brain's name and categories. Builds a local 3D globe from your selected files, with search, note reading, Cinema, and a branching growth replay. |

**3 helpers.** Everyday work runs on Claude Sonnet. When a moment gets hard, it automatically brings in Claude Opus as an advisor. The **planner** (Opus) maps the work, the **builder** (Sonnet) builds one piece at a time, and the **checker** (Opus) proves the result before anyone relies on it.

**3 automatic rules.** Pull the newest version from GitHub when Claude starts. Save to GitHub after every reply, so nothing is ever lost and every computer stays in sync. Block passwords and API keys from ever being written into a file.

**`/audit`** checks whether the AI OS can find its information and perform useful work reliably. The rubric awards points for evidence, not folder counts, API keys, or skills named "daily." Missing or unverified layers cap the total; installed skills cannot compensate for absent connections or execution history. The report includes five retrieval probes, stale-cache and source-authority checks, and up to three prioritized improvements. It separates confirmed defects, verification gaps, and optional improvements. The score measures verified operational reliability, not overall usefulness.

**Automatic audit history:** Every `/audit` saves a unique dated Markdown report in `4-cadence/audits/` and compares it with relevant prior reports. Findings retain their IDs and are tracked as new, still open, resolved, reopened, not rechecked, or no longer applicable. Resolution requires fresh evidence. Score comparisons distinguish actual fixes from better evidence and changed coverage. Earlier reports are preserved; the inspected system is unchanged apart from the new local report. Reports save to your own private copy so they're on every computer you use. An explicit request not to save overrides this default.

**In plain English:** `/audit` is a report card. It tests whether your AI OS can actually find your information and do real work, gives you a score out of 100 across the Four Cs, and tells you the top three things to fix next. It only gives credit for things it can prove work, not for files that just exist. Every report is saved, so you can see your score go up over time.

**`/link path/to/project "use for this purpose"`** makes a new source findable without copying its contents into the manual. It follows the project's existing `CLAUDE.md` conventions and asks only when the target or intended use is unclear. A hot cache is optional and is never created by these skills.

**`/grill-me "help me explain how my job works"`** turns what is in your head into saved context. Each answer is checkpointed immediately in a dated Markdown file under `1-context/brainstorms/`, so you can pause and resume. When you ask to build or update AI OS context, confirmed facts are added to the appropriate context pages. Tentative ideas stay labeled. Use `/onboard` for initial setup, then `/grill-me` as your work and thinking evolve.

**`/level-up`** carries the audit evidence into one improvement. A verified repair to an existing workflow counts; another new skill is not always needed. Run `/audit` again after the fix. Repeated-use and scheduled-run credit comes from real execution over time.

---

## For companies: one shared layer for everyone

Every person gets their own private AI OS. A company can add **one shared layer** on top that everyone connects to:

- **The company handbook:** what the company does, who's who, the words and acronyms, the systems, and the rules for using AI. Written once. Everyone's AI OS reads it, so nobody explains the company from scratch.
- **Shared skills:** when someone builds a skill the team should have, `/share-skill` sends it to the company layer and every connected person gets it automatically.

```
This public repo (generic, no company data)
   ├── each person copies the AI OS ─────→ their own PRIVATE AI OS
   │                                              │ /connect-company
   └── one admin runs /setup-company ───→ the company's PRIVATE layer
```

Each company's layer lives in its own private GitHub, so companies never see each other's, and each person's own notes stay private. It's optional: the AI OS works fine on its own. Setup details in `company-kit/README.md`.

---

## Quick start

### First-time setup

**What you need (once per computer):** VS Code, Git (on Windows: Git for Windows), the Claude Code extension in VS Code signed in to your Claude account, and a GitHub login.

1. **Make your own copy.** At the top of this page, click **Use this template**, then **Create a new repository**. Set it to **Private**.
2. **Clone it.** In VS Code, press Ctrl+Shift+P (Windows) or Cmd+Shift+P (Mac), type **Git: Clone**, and paste your copy's link. Authorize VS Code with GitHub if it asks.
3. **Run `/onboard`.** Answer the 7 questions honestly. Voice samples must be pasted, not described. Takes ~15 minutes. Day-1 file set drops at the end.
4. **Use it for a week.** Bring real questions. Make real decisions. Ask your assistant to record meaningful decisions in `1-context/decisions.md`.
5. **Day 7:** run `/audit`. Read the Four-Cs gap report. Pick one gap to close.
6. **Day 14:** run `/level-up`. The Three Ms interview surfaces one automation worth building. Build it with `/make-a-skill`.
7. **As you grow:** use `/grill-me` to capture new context, `/link` new sources, use `/level-up` for one improvement, and rerun `/audit` to verify it. Lost? `/next-step`.

### See your AI OS in 3D

Turn your growing collection of notes, projects, and assistant memories into one place you can explore. See which ideas connect, search for something you remember, open the original note, and spot knowledge that needs attention. The growth replay also gives you a visual way to show someone what your AI OS contains.

Run `/3d-brain` in Claude Code. It asks what to call your brain and which categories to show, with suggested source folders. Then it creates `apps/3d-brain/` using the included application template. Your name, categories, colors, and paths live in a local config.

Use **Play demo** to watch the brain grow from a single idea into connected branches. You can drag to orbit and scroll to zoom throughout playback. **Cinema** provides a clean presentation view. The replay follows actual note connections; it is not a historical timeline.

Requires Node.js 22 or newer. The renderer is prebuilt, so the app runs with `node serve.mjs` without installing dependencies. It reads local Markdown/text. Claude memory, meeting notes, and video knowledge can use selected Markdown folders. Other formats or online services require an export or a tested adapter. The app stays on localhost; personal config and generated data are gitignored.

---

## What's in this folder

```
AI-Operating-System-RizeTech/
├── CLAUDE.md                        ← The brain. Claude reads this first, every time
├── README.md                        ← This page
├── LICENSE
│
├── 1-context/                       ← CONTEXT: everything about you
│   ├── about-me.md                  ← Who you are and how you like to work
│   ├── my-job.md                    ← Title, job description, a normal week, what you're measured on
│   ├── my-company.md                ← What the company does, how it's organized, its words and systems
│   ├── my-team.md                   ← Who does what and when you go to them
│   ├── priorities/                  ← One file per quarter: 2026-q4, 2027-q1, q2, q3, q4
│   ├── processes/                   ← How each process works today (template included)
│   ├── sops/                        ← Your SOPs in plain English (originals kept)
│   ├── meetings/                    ← Meeting summaries: decisions and action items
│   ├── documents/                   ← Org charts, policies, reports, each with a summary
│   ├── inbox/                       ← Drop any file here, then type /add-doc
│   ├── voice.md                     ← How you write, so drafts sound like you
│   ├── intake.md                    ← Your /onboard answers. Edit + re-run any time
│   ├── decisions.md                 ← Append-only record of what was decided and why
│   └── brainstorms/                 ← Saved /grill-me interviews
│
├── 2-connections/                   ← CONNECTIONS: the tools and software it can reach
│   ├── connections.md               ← Every tool and piece of software, and whether it's connected
│   └── _tool-guide-template.md      ← One guide per connected tool, so it never re-learns it
│
├── 3-capabilities/                  ← CAPABILITIES: the work it can do
│   ├── tasks-to-automate.md         ← Every task you want off your plate, and how far along it is
│   ├── workflows/                   ← Step by step instructions for jobs that repeat (template included)
│   └── tools/                       ← Scripts that each do one job
│
├── 4-cadence/                       ← CADENCE: what runs on its own
│   ├── rhythm.md                    ← Your daily, weekly, monthly, and quarterly habits
│   ├── schedules.md                 ← Everything scheduled, and when
│   └── audits/                      ← Created on first /audit; dated report cards
│
├── company-kit/                     ← Empty template for your company's shared layer (admins only)
│
├── guides/
│   ├── SETUP-GUIDE.md               ← Step by step through the Four Cs
│   ├── 3ms-framework.md             ← The operator brain
│   └── EXPANSIONS.md                ← What to add as you grow
│
├── archives/                        ← Old stuff. Don't delete. Move here.
├── .env.example                     ← Names of the keys you need (values stay in .env)
└── .claude/                         ← The engine
    ├── settings.json                ← Sonnet with an Opus advisor, the 3 automatic rules
    ├── hooks/                       ← auto-pull, auto-save, block-keys
    ├── agents/                      ← planner, builder, checker
    ├── CHANGELOG.md / VERSION       ← Which version you have and what changed
    └── skills/                      ← onboard, grill-me, next-step, make-a-skill, level-up,
                                       link, audit, session-handoff, agent-skills, save, 3d-brain
```

**In plain English:** the folders are numbered in the same order you build your AI OS. **1-context** is everything it knows about you. **2-connections** is the tools and software it can reach. **3-capabilities** is the work it knows how to do. **4-cadence** is what runs on its own. You only need to open two files yourself: this page and `guides/SETUP-GUIDE.md`. Everything else fills itself in as you use it, and `.claude` is the engine you never need to touch.

### What each part is

| Folder or file | What it is |
|---|---|
| `CLAUDE.md` | The brain. The first thing Claude reads every time: who you are, how you work, what it can do. |
| `1-context/` | Everything about you, already organized: you, your job, your company, your team, your priorities by quarter, how your processes work, your SOPs, meetings, and documents, how you write, every decision, and every `/grill-me` interview. Each file comes with headings so you can see what goes where. |
| `2-connections/` | The tools and software your AI OS can reach, plus a short guide for each one it's connected to (a template shows what goes in one). |
| `3-capabilities/` | Your list of tasks to automate (with how far along each one is), step by step instructions for jobs you repeat, and small scripts that do one job each. Your skills live in `.claude/skills/`. |
| `4-cadence/` | Your rhythm (what to do daily, weekly, monthly, quarterly), everything that runs on a schedule, and your `/audit` report cards. |
| `company-kit/` | The empty starting point for a company's shared layer. Only whoever sets up AI for the company uses it, through `/setup-company`. |
| `guides/` | The setup walkthrough, the Three Ms, and ideas for what to add as you grow. |
| `archives/` | Old files. Nothing ever gets deleted, it moves here. |
| `.env.example` | The names of any passwords or keys you'll need. The real ones go in a private `.env` file on your computer. |
| `.claude/` | The engine: all the skills, the three helpers, the settings, the automatic rules, and the version history. |

## Words you'll see

| Word | What it means |
|---|---|
| **AI OS** | This folder. Your personal AI agent's brain, memory, and tools in one place. |
| **Claude Code** | The version of Claude that can read and work in your folders, not just chat. Lives inside VS Code. |
| **VS Code** | The free app you open your folder in. Think of it as the desk your AI OS works at. |
| **Repo** | A project folder stored on GitHub. Your AI OS is one. |
| **GitHub** | A website that stores your folder online so it's backed up and on every computer you use. |
| **Template** | A starting copy. You click "Use this template" and get your own version to fill in. |
| **CLAUDE.md** | The first file Claude reads every time. It's the brain: who you are and how you work. |
| **Prompt** | What you type to Claude. Better prompts give better results. |
| **Skill** | Saved instructions for a task you repeat. You type one command, like `/status-report`, and it runs the whole thing. |
| **Agent** | An AI helper that does multi step work on its own, making small decisions along the way. |
| **Workflow** | A fixed list of steps that runs the same way every time. Simpler and more reliable than an agent. |
| **Connection** | A link between your AI OS and a tool you use (email, calendar, files, a spreadsheet) so it can read or update it. |
| **MCP** | One common way to make a connection. You don't need to know how it works; Claude sets it up. |
| **API key** | A password that lets your AI OS use another tool. Lives in `.env` only, never in a file that goes online. |
| **`.env`** | A private file on your own computer that holds your passwords and keys. Never goes to GitHub. |
| **Hook** | An automatic rule that runs on its own, like saving after every reply. |
| **Cadence** | Things that run on a schedule, like a Monday report that's ready before you sit down. |
| **Autonomy level** | How much the AI does on its own, from "only suggests" to "handles it start to finish." |
| **KPI** | The number something should improve: hours saved, mistakes, turnaround time. |
| **Artifact** | Something finished it produces: a report, a draft, a list, a summary. |
| **Routing** | Telling your AI OS where to find something, so it always knows where to look. |

---

## License

MIT License. The Three Ms and Four Cs frameworks are by Nate Herk, used with credit. Includes Addy Osmani's [agent-skills](https://github.com/addyosmani/agent-skills) (MIT).

Built by [RizeTech](https://rizetech.co).
