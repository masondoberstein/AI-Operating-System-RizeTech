# Tools

Small scripts that each do one job, like pulling a report, cleaning a spreadsheet, or sending data from one system to another. Claude writes these when a workflow needs something done the exact same way every time.

You don't need to write or open these. If a workflow in `3-capabilities/workflows/` uses a script, it says which one and how.

Rules Claude follows here:
- One script, one job, with a name that says what it does.
- No passwords or keys inside a script. They're read from `.env`.
- Every script is tested on a real example before a workflow relies on it.
