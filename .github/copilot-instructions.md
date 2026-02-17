<!-- .github/copilot-instructions.md
     Generated for a tiny practice repo containing a single R script.
     Purpose: give AI coding agents focused, actionable guidance so they can be productive immediately.
-->

# Copilot instructions (project-specific)

Summary
- This repository is a very small R practice script: `Practice.r` (simulated labor data + basic operations).
- There is no package structure, no tests, and no build system. The repository is intended for short coding exercises.

Key files
- `Practice.r` — single entrypoint / source of truth. Contains an example data.frame, a deduplication step, and a `str(df)` call.

How to run (developer / agent)
- Run the script with Rscript from the repo root:

  Rscript "Practice.r"

- Expected behavior: prints the structure of the `df` data.frame after removing duplicated `id` values.

What to change and how to test
- If adding functions, keep them in `Practice.r` (repo is single-file). Prefer small, isolated helper functions that can be invoked from the bottom of the file.
- When adding runnable examples, include a short, self-contained block that prints or returns output so `Rscript` smoke-tests succeed.

Conventions discovered in this repo
- Single-file R script — do not introduce a package layout unless the user asks. If you do, document migration steps.
- Minimal dependencies — avoid adding external packages without the user's approval. If you add packages, add a `README.md` or `requirements.R` with install instructions (e.g., `install.packages('pkg')`).

Examples to reference
- `Practice.r` shows an in-repo data frame literal:

  df <- data.frame(...)
  df <- df[!duplicated(df$id), ]
  str(df)

Suggested assistant behavior
- Make minimal, local edits inside `Practice.r` unless the user requests a new layout.
- When you modify `Practice.r`, run the script with `Rscript` and confirm output contains the expected `str(df)` call result.
- If introducing tests or CI, ask the user whether they want a lightweight test harness (e.g., `testthat`) and where to run it.

Questions to ask the user if unclear
- Do you want to keep the repo as a single R script or migrate to a package/project layout?
- Are there external data sources or packages you expect to use when expanding the exercises?

Notes / caveats
- This guidance is derived solely from the single file present. If you add more files, update this instructions file to reflect new entrypoints and workflows.

Thank you — please tell me if you'd like the agent instructions to be more/less prescriptive about structure, packages, or testing.
