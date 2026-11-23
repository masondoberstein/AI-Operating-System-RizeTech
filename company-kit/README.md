# Company kit: your company's shared AI layer

**For whoever sets up AI for a company** (an owner, an IT lead, or RizeTech on your behalf). Everyone else can skip this folder.

Every person at your company gets their own private AI OS. This kit adds one shared layer on top that the whole company uses:

- **The company handbook:** what the company does, the org chart, its words and acronyms, its systems, and its rules for using AI. Written once, read by everyone's AI OS, so nobody explains the company from scratch.
- **Shared skills:** skills everyone at the company can use. When someone builds a good one, it gets added here and every connected person gets it automatically.

Each person's own notes stay private in their own AI OS. Only the handbook and shared skills are shared, and only inside your company.

```
This public repo (generic, no company data)
        │
        ├── each employee copies the AI OS ──→ their own PRIVATE repo
        │                                            │ connects to
        └── the admin copies this kit ─────→ your company's PRIVATE layer
```

## Set it up (once per company)

1. In your own AI OS, type **/setup-company**. It copies this kit into a new folder, renames it for your company, and interviews you one question at a time to fill in the handbook.
2. It helps you put that folder in a **private** repo in your company's GitHub (for example `your-company/company-ai`). Never make it public.
3. It gives you a short message to send everyone: how to connect.

## Connect each person

Each person types **/connect-company** in their AI OS and pastes the company repo (for example `your-company/company-ai`). It adds two lines to their settings, and Claude Code installs the company layer and keeps it updated on its own. `/onboard` also asks about this at the end.

To install it by hand instead, type this in Claude Code (swap in your company's repo):

```
/plugin install company --marketplace your-company/company-ai
```

**IT can turn it on for everyone at once** instead, using Claude Code's managed settings: add the company repo under `extraKnownMarketplaces` with `"autoUpdate": true`, and `"company@<your-marketplace-name>": true` under `enabledPlugins`. Then everyone gets it on their next start with no setup.

## What's inside

```
company-kit/
├── .claude-plugin/marketplace.json      ← Names your company's layer
└── plugins/company/
    ├── .claude-plugin/plugin.json       ← Version number (bump it when you change something)
    └── skills/
        ├── README.md                    ← How shared skills get added
        └── company-handbook/
            ├── SKILL.md                 ← Tells every AI OS when to read the handbook
            ├── about.md                 ← What the company does
            ├── org-chart.md             ← Who's who
            ├── glossary.md              ← Words and acronyms
            ├── systems.md               ← Main software
            ├── policies.md              ← What's okay to put into AI
            └── sops/                    ← Company wide SOPs
```

## Keeping it current

- Change a handbook file or add a skill, then bump `version` in `plugins/company/.claude-plugin/plugin.json`. Everyone's copy updates on its own.
- People send skills with `/share-skill`. Review them before adding (see `plugins/company/skills/README.md`).
