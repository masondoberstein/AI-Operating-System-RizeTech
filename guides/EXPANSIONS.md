# Expansions: what to add as you grow

The starter ships lean on purpose: a few day one skills, the rest for when you're ready, and a small set of context and reference files. As you grow, use `/link` to add new sources to the right route, and `/audit` to check that the information remains findable and current.

The AIOS structure should look like a small, well-run business. Not a hoarder's basement.

---

## What ships in the kit (don't remove)

| Folder / file | Purpose |
|---|---|
| `1-context/` | About you, your business, your priorities. Filled by `/onboard`. |
| `guides/` | Frameworks, voice samples, API guides, SOPs as you build them. |
| `1-context/decisions.md` | Append-only record of what was decided and why. |
| `1-context/brainstorms/` | Saved `/grill-me` interviews; created on first use. Confirmed context is linked back to its capture. |
| `archives/` | Old files. Don't delete: move here. |
| `2-connections/connections.md` | Registry of every system your AIOS can reach. |
| `.claude/skills/` | Your skills, listed in `CLAUDE.md`. Add more only when they solve a real need. |
| `.claude/agents/` | Planner, builder, checker. Add more only when a repeat job needs its own helper. |
| `3-capabilities/workflows/`, `3-capabilities/tools/` | Step by step instructions and the scripts they use (WAT). |
| `1-context/intake.md` | Source-of-truth for `/onboard`. Edit and re-run any time. |
| `CLAUDE.md` | Root operating manual. Filled by `/onboard`. Edit when your role/voice changes. |

---

## What to add as you grow

| Folder / file | Add when | Why |
|---|---|---|
| `projects/` | You start running 2+ ongoing workstreams that have their own context | Active projects need scoped context separate from the evergreen `1-context/` files |
| `templates/` | You catch yourself copy-pasting the same prompts or doc scaffolds | Reusable, parameterized starting points; reduces drift |
| `brand-assets/` | You generate visual content (carousels, slides, thumbnails, images) | Centralizes logos, palettes, fonts, voice/tone: the AIOS reaches in instead of guessing |
| `guides/sops/` | You document how recurring processes run | Standard operating procedures the AIOS reads to run things consistently |
| `2-connections/{tool}.md` | You connect a new API or MCP and figure out how it works | Researched-once-saved-forever. `/audit` rewards this; future skills don't re-research. |
| Sub-OS folders (e.g. `youtube-os/`) | You have a vertical with its own data, sheets, transcripts, scripts | Isolation pattern: vertical workflows get their own scoped operating manual + skills |

---

## Suggested cadences

When each surface gets routinely touched:

- `1-context/decisions.md`: every meaningful decision (`/level-up` logs these automatically)
- `archives/`: quarterly cleanup; move stale projects, deprecated skills, old intake versions
- `guides/sops/`: when a process gets re-run by someone new, write the SOP
- `2-connections/connections.md`: every time a new tool gets wired in, add a row
- `2-connections/{tool}.md`: same time as `2-connections/connections.md` update; capture the API once
- `CLAUDE.md`: quarterly review; rewrite the persona/priorities section every quarter

---

## What NOT to add

Anti-patterns. These look helpful but rot the structure:

- **Don't dump raw email/Slack archives into `guides/`.** The wiki is not a doc dump. Interpreted facts only.
- **Don't build folder-of-folders for organization theater.** Flat with good naming beats deep nesting. If you need a folder hierarchy to find something, you have a search problem, not an organization problem.
- **Don't add `notes/`, `misc/`, `tmp/`, or `inbox/`.** Graveyards. Use `archives/` if it's old, write a real file in the right place if it's new.
- **Don't pre-create folders you don't need yet.** Empty folders are noise. The AIOS will tell you when it's time.
- **Don't have parallel `decisions.md` and `1-context/decisions.md`.** Pick one. The kit ships `1-context/decisions.md`.
- **Don't fork your operating manual.** One `CLAUDE.md` at the root. Sub-OS folders can have their own scoped CLAUDE.md, but the root is canonical.

---

## How to tell when it's time to add a folder

Ask three questions:

1. **Is this conceptually new?** Or does it fit somewhere existing?
2. **Will I touch this 3+ times in the next month?** If not, it's premature.
3. **Could `/level-up` route a future skill into here naturally?** If yes, the AIOS will use it. If no, you're organizing for yourself, not for the system.

Two yeses = add. One yes = wait.

---

> *Your AI OS should look like a small, well-run business: not a hoarder's basement. When you can't find something, that's a signal to consolidate, not to add another folder.*
