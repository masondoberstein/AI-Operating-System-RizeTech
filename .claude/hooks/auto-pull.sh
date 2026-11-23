#!/usr/bin/env bash
# Runs when Claude starts in this folder.
# 1. Makes this computer's .env from .env.example if it doesn't exist yet.
# 2. Pulls the newest version from GitHub so nobody works on an old copy.
# Never blocks Claude from starting.
cd "${CLAUDE_PROJECT_DIR:-.}" || exit 0
if [ ! -f .env ] && [ -f .env.example ]; then
  cp .env.example .env && echo "Made this computer's .env from .env.example. Put any real key values in .env only."
fi
if git pull --ff-only --quiet >/dev/null 2>&1; then
  echo "Auto pull: this folder has the newest version from GitHub."
else
  echo "Auto pull skipped (no internet, no GitHub link yet, or unsaved changes). Tell the user to say \"pull\" before working."
fi
exit 0
