# claude-audit-oss

A custom slash command for Claude Code that audits open-source projects against best practices from [Producing Open Source Software](https://producingoss.com/en/producingoss.html) by Karl Fogel.

## What it does

`/audit-oss` examines a project directory and scores it against a 60-item checklist covering 10 categories:

| Category | What it checks |
|----------|---------------|
| Identity | Name, mission statement, status, license visibility |
| Documentation | README, quickstart, tutorials, CHANGELOG |
| Contributor Experience | CONTRIBUTING.md, CoC, issue templates, dev setup |
| Infrastructure | CI/CD, linting, branch protection, dependency tracking |
| Releases | Versioning, semver, packaging, security releases |
| Legal | LICENSE file, metadata, compatibility, contributor agreements |
| Governance | Decision-making, maintainer roles, public discussions |
| Communication | Channels, announcements, security reporting |
| Automation | Tests, coverage, stale issue management, reproducibility |
| Health | Activity, contributors, roadmap |

Output is a scorecard with scores, top priorities, and quick wins.

## Installation

### Quick Install (bash)

```bash
curl -fsSL https://raw.githubusercontent.com/zhiganov/claude-audit-oss/main/install.sh | bash
```

### Quick Install (PowerShell)

```powershell
irm https://raw.githubusercontent.com/zhiganov/claude-audit-oss/main/install.ps1 | iex
```

### Manual Installation

1. Copy `audit-oss.md` to `~/.claude/commands/audit-oss.md`
2. Copy `oss-audit-checklist.md` to `~/.claude/oss-audit-checklist.md`

## Usage

```
/audit-oss <project-directory>
/audit-oss <project-directory> --focus <category>
```

### Examples

```
/audit-oss my-project              # Full audit (all 10 categories)
/audit-oss my-project --focus legal # Audit only licensing & legal
/audit-oss my-project --focus docs  # Audit only documentation
```

### Focus categories

`identity`, `docs`, `contributor`, `infra`, `releases`, `legal`, `governance`, `communication`, `automation`, `health`

## How it works

1. Claude reads the checklist from `~/.claude/oss-audit-checklist.md`
2. Examines the project: README, LICENSE, CI configs, package metadata, git history, etc.
3. Scores each item: `[x]` present, `[~]` partial, `[ ]` missing, `[n/a]` not applicable
4. Outputs a scorecard with top priorities and quick wins
5. Optionally saves results to `{project}/OSS-AUDIT.md`

## Customizing the checklist

The checklist at `~/.claude/oss-audit-checklist.md` is plain markdown. Add, remove, or modify items to match your project standards. The audit command reads it fresh each time.

## License

MIT
