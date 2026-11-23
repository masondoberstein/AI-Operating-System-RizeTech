#!/usr/bin/env bash
# Runs before Claude writes or edits a file. Blocks the write if it looks like
# it contains a password, API key, or private key. Keys belong in .env only,
# which never goes to GitHub.
input="$(cat)"
file="$(printf '%s' "$input" | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' | head -1 | sed 's/.*"\([^"]*\)"$/\1/')"
case "$file" in
  *.env.example) ;;              # goes to GitHub, so it gets checked like any file
  *.env|*/.env.*|.env*) exit 0 ;; # .env stays on this computer, keys belong there
esac
patterns='sk-ant-[A-Za-z0-9_-]{10,}|sk-[A-Za-z0-9]{32,}|AKIA[0-9A-Z]{16}|ghp_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{20,}|xox[abprs]-[A-Za-z0-9-]{10,}|AIza[0-9A-Za-z_-]{35}|-----BEGIN [A-Z ]*PRIVATE KEY-----|(password|passwd|pwd|secret|api_key|apikey|access_token|client_secret)[^A-Za-z0-9]{0,6}[:=][[:space:]]*\\?["'"'"'][^"'"'"'[:space:]]{8,}'
if printf '%s' "$input" | grep -Eiq "$patterns"; then
  echo "Blocked: this looks like a password or API key going into ${file:-a file}. Keys go in .env only, never in files that sync to GitHub. Put it in .env and read it from there." >&2
  exit 2
fi
exit 0
