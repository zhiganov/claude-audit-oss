# OSS Project Audit

Run an open-source health audit on a project, based on "Producing Open Source Software" by Karl Fogel.

## Arguments

- `$ARGUMENTS` — project directory name (e.g., `harmonica-web-app`) and optional `--focus <category>` flag

## Instructions

### Step 1: Parse Arguments

Parse `$ARGUMENTS` to extract:
- **project**: directory name (required) — must be a subdirectory of the workspace
- **--focus**: optional category filter (one of: `identity`, `docs`, `contributor`, `infra`, `releases`, `legal`, `governance`, `communication`, `automation`, `health`)

If no project is specified, ask the user which project to audit.

### Step 2: Load the Checklist

Read the checklist from `~/.claude/oss-audit-checklist.md`.

The checklist has 10 categories:
1. Project Identity & Presentation (`identity`)
2. Documentation (`docs`)
3. Contributor Experience (`contributor`)
4. Technical Infrastructure (`infra`)
5. Versioning & Releases (`releases`)
6. Licensing & Legal (`legal`)
7. Governance & Decision-Making (`governance`)
8. Communication & Community (`communication`)
9. Automation & Maintenance (`automation`)
10. Project Health Signals (`health`)

If `--focus` was provided, only audit that category. Otherwise audit all categories.

### Step 3: Examine the Project

For each checklist item in scope, investigate the project to determine the status:
- Read the README, CONTRIBUTING.md, LICENSE, SECURITY.md, CODE_OF_CONDUCT.md, CHANGELOG.md
- Check for CI/CD configs (`.github/workflows/`, `.gitlab-ci.yml`)
- Check for issue/PR templates (`.github/ISSUE_TEMPLATE/`, `.github/pull_request_template.md`)
- Check package metadata (`package.json`, `pyproject.toml`, `Cargo.toml`, etc.)
- Check for test infrastructure and coverage config
- Check git history for activity signals (recent commits, multiple contributors)
- Check for branch protection (note: may need `gh api` for this)
- Read the project's own CLAUDE.md for additional context

Use the Explore agent or parallel file reads to gather information efficiently.

**Important:** Be honest and specific. Don't mark something as present if it's only partially there — use `[~]` for partial.

### Step 4: Score and Report

Output the audit as a scorecard:

```
# OSS Audit: {project-name}
Date: {today}
Focus: {category or "Full audit"}

## Summary
- Score: {checked}/{total} ({percentage}%)
- Partial: {partial-count}
- Missing: {missing-count}
- N/A: {na-count}

## {Category Name}

- [x] **Item name** — {brief note on what was found}
- [~] **Item name** — {what's there vs what's missing}
- [ ] **Item name** — {why it's missing / what to do}
- [n/a] **Item name** — {why not applicable}

... (repeat for each category in scope)

## Top Priorities

1. {Most impactful missing item} — {why it matters}
2. {Second most impactful} — {why it matters}
3. {Third most impactful} — {why it matters}

## Quick Wins

- {Easy item that could be added in a single session}
- {Another quick win}
```

### Step 5: Save Results

Save the scorecard to `{project-dir}/OSS-AUDIT.md` only if the user agrees. Ask first:

> "Save audit results to `{project}/OSS-AUDIT.md`? (This file can be .gitignored if you prefer to keep it local.)"

### Step 6: Offer Next Steps

After showing results, offer:
- "Want me to fix any of the quick wins now?"
- "Want me to create tasks for the top priorities?"
- "Want to audit another project?"

## Category Reference (for --focus)

| Flag | Category |
|------|----------|
| `identity` | Project Identity & Presentation |
| `docs` | Documentation |
| `contributor` | Contributor Experience |
| `infra` | Technical Infrastructure |
| `releases` | Versioning & Releases |
| `legal` | Licensing & Legal |
| `governance` | Governance & Decision-Making |
| `communication` | Communication & Community |
| `automation` | Automation & Maintenance |
| `health` | Project Health Signals |

## Notes

- The checklist is at `~/.claude/oss-audit-checklist.md` — it can be customized
- Not all items apply to every project (early-stage, internal, library, app all differ)
- Use `[n/a]` generously for items that genuinely don't apply
- The audit is a conversation starter, not a judgment — prioritize what matters for each project's stage
