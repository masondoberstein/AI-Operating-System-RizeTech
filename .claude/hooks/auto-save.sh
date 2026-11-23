#!/usr/bin/env bash
# Runs in the background after every Claude reply.
# Saves every change in this folder to GitHub, so nobody has to remember to.
# Never sends .env (it's in .gitignore) and never saves a file that looks like it holds a key.
cd "${CLAUDE_PROJECT_DIR:-.}" || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0

# Nothing changed: nothing to do.
[ -z "$(git status --porcelain)" ] && exit 0

git add -A

# Last safety check: refuse to save anything that looks like a password or key.
patterns='sk-ant-[A-Za-z0-9_-]{10,}|sk-[A-Za-z0-9]{32,}|AKIA[0-9A-Z]{16}|ghp_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{20,}|xox[abprs]-[A-Za-z0-9-]{10,}|AIza[0-9A-Za-z_-]{35}|-----BEGIN [A-Z ]*PRIVATE KEY-----'
if git diff --cached -U0 | grep '^+' | grep -Eq "$patterns"; then
  git reset -q
  echo "Auto save paused: a change looks like it contains a password or key. Move it to .env, then it will save on the next reply." >&2
  exit 0
fi

git commit -q -m "Auto save $(date '+%Y-%m-%d %H:%M')" || exit 0

# No GitHub link yet: the change is saved on this computer, that's enough for now.
git remote get-url origin >/dev/null 2>&1 || exit 0

if git pull -q --rebase --autostash >/dev/null 2>&1; then
  git push -q >/dev/null 2>&1 || echo "Auto save: saved on this computer, couldn't reach GitHub. It will try again after the next reply." >&2
else
  git rebase --abort >/dev/null 2>&1
  echo "Auto save: this folder and GitHub both changed the same lines. Your work is saved on this computer. Ask Claude to \"pull and sort out the conflict\"." >&2
fi
exit 0
