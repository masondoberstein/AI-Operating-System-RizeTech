# Start here: setting up your AI OS from zero

Follow this from top to bottom once. By the end, your AI OS runs on your computer and your phone, saves itself to GitHub, and knows who you are. Plan on about an hour.

| Part | What you do | Time |
|---|---|---|
| 1 | Make your accounts | 10 min |
| 2 | Install the apps on your computer | 15 min |
| 3 | Make your own copy and open it | 5 min |
| 4 | Run `/onboard` | 15 min |
| 5 | Put it on your phone | 10 min |
| 6 | Connect to your company's layer (only if your company has one) | 5 min |
| 7 | What's next | ongoing |

---

## Part 1: Make your accounts

1. **GitHub.** Sign up at github.com. Use your work email if this is for work. This is where your AI OS is stored.
2. **Claude.** Sign up at claude.ai. You need a paid plan (Pro, Max, Team, or Enterprise). If your company gave you a seat, use that login.

On a company Team or Enterprise plan, your company's Claude admin may have to turn on Claude Code, Remote Control, and cloud sessions for you. If something in Part 5 is missing, ask them.

---

## Part 2: Install the apps on your computer

1. **VS Code.** Download it from code.visualstudio.com and install it. This is the app your AI OS opens in.
2. **Git.** On Windows, install Git for Windows from git-scm.com. On a Mac, open the Terminal app, type `git --version`, and accept the install if it asks. Git is what keeps your folder in sync with GitHub.
3. **Claude Code.** Open VS Code, click the Extensions icon on the left, search **Claude Code**, and click **Install**. Then click the Claude icon and sign in with your Claude account.

On a company laptop, installing apps may need IT's approval. Ask them before you start.

---

## Part 3: Make your own copy and open it

1. Go to this repo on GitHub, click **Use this template**, then **Create a new repository**. Give it a name and set it to **Private**.
2. In VS Code, press Ctrl+Shift+P (Windows) or Cmd+Shift+P (Mac), type **Git: Clone**, and paste the link to your new copy. Sign in to GitHub if it asks.
3. Pick where to save it, then click **Open** when VS Code asks.
4. Open Claude Code from the Claude icon. You're in.

---

## Part 4: Run `/onboard`

Type `/onboard` in Claude Code. It asks 7 questions about you, your job, your company, and how you write. Answer honestly. When it asks for writing samples, paste real emails, don't describe them.

At the end it fills in your `1-context/` folder. From then on, your folder saves itself to GitHub after every reply, so nothing gets lost.

---

## Part 5: Put it on your phone

Your AI OS lives in one place: your private copy on GitHub. Your computer has a copy of it, and your phone works on that same GitHub copy. Claude pulls the newest version when it starts and saves to GitHub after every reply, so they stay matched.

There are two ways to use it from your phone. Set up both.

| | Way 1: Remote Control | Way 2: Cloud session |
|---|---|---|
| What it is | Your phone drives the session running on your computer | Your phone runs a session in Anthropic's cloud, no computer needed |
| Computer | Must be on (it reconnects on its own after sleep or a dropped connection) | Can be off |
| What it can reach | Everything on your computer: your files, your `.env` keys, your connected tools | Only what's in your GitHub copy. Your `.env` keys stay on your computer |
| Use it when | You step away from your desk and want to keep the same chat going | You're away from the computer, or you only have a phone |

**First:** install the Claude app on your phone (App Store or Google Play) and sign in with the same Claude account you use on your computer.

### Way 1: Remote Control (your phone drives your computer)

Set it up once:

1. In Claude Code on your computer, turn on **Enable Remote Control for all sessions**. In the Claude Code side panel it's in the command menu under Settings. In the terminal, type `/config` and find it in the list.
2. That's it. Every chat you start on your computer from now on also shows up on your phone.

Use it:

1. Start or keep working in a chat on your computer.
2. On your phone, open the Claude app and go to **Code**.
3. Tap the chat with the laptop icon. Type like normal. The work happens on your computer.

If a chat doesn't show up on your phone, it was started before you turned the setting on. Type `/rc` in that chat on your computer and it will appear.

### Way 2: Cloud session (just your phone)

Set it up once:

1. On your phone, open the Claude app and go to **Code**.
2. Connect GitHub when it asks, and allow it to see your AI OS copy. On a computer you can do the same thing at claude.ai/code.

Use it:

1. In **Code**, start a new session and pick your AI OS repo.
2. Type what you need. The session shows a cloud icon, which means it's running in the cloud, not on your computer.
3. When it's done, check that the change landed on your main copy on GitHub. If it went to a separate branch, tell Claude "merge this into main".
4. Next time you open the folder on your computer, Claude pulls the change in automatically.

A cloud session can't use anything that needs a key in your `.env` file, like sending through a connected tool. Those keys never leave your computer. Use Way 1 for that.

### Which one to pick

- At your desk: just use the computer.
- Stepped away, computer still on: **Way 1.** Same chat, same tools, nothing to sync.
- Computer off, or phone only: **Way 2.** Then let the computer pull it in later.

---

## Part 6: Connect to your company's layer (only if your company has one)

Some companies set up one shared layer everyone connects to: the company handbook and shared skills. If yours did, whoever runs AI at your company will give you access. Then type `/connect-company` and follow along. If your company doesn't have one, skip this part. Your AI OS works fine on its own.

---

## Part 7: What's next

- **Build it out.** `guides/SETUP-GUIDE.md` walks through the four layers (Context, Connections, Capabilities, Cadence), one step at a time.
- **Lost? Type `/next-step`.** Claude checks your folder and tells you what to do next.
- **Day 7:** run `/audit` to see what's working and what's missing.
- **Day 14:** run `/level-up` to find the first job worth automating.

---

## You're done with setup when

- [ ] You have a GitHub account and a paid Claude account
- [ ] VS Code, Git, and Claude Code are installed and signed in
- [ ] Your private copy is open in VS Code
- [ ] `/onboard` is finished
- [ ] A chat from your computer shows up on your phone (Way 1)
- [ ] You started a cloud session from your phone on your AI OS repo (Way 2)
- [ ] Connected to your company's layer, if it has one
