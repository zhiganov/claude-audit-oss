# OSS Project Audit Checklist

Based on "Producing Open Source Software" by Karl Fogel (2nd edition, 2023).
https://producingoss.com/en/producingoss.html

Each item is scored: [x] present, [~] partial, [ ] missing, [n/a] not applicable.
Categories can be audited independently via `--focus <category>`.

---

## 1. Project Identity & Presentation

- [ ] **Clear project name** — memorable, searchable, no ambiguous puns
- [ ] **Name claimed in key namespaces** — GitHub org, npm/PyPI, domain name
- [ ] **Mission statement** — under 50 words, on the README or landing page
- [ ] **Explicit open-source statement** — license named prominently on README/homepage
- [ ] **Development status indicated** — alpha/beta/stable clearly labeled; matches reality
- [ ] **Features list or overview** — what the project does beyond the one-liner

## 2. Documentation

- [ ] **README with quickstart** — install + first use in under 5 minutes
- [ ] **At least one tutorial or example** — demonstrates a common use case end-to-end
- [ ] **Developer/architecture docs** — how the codebase is organized, key abstractions
- [ ] **API documentation** — if the project exposes an API (REST, library, CLI)
- [ ] **Screenshots/demo/video** — if the project has visual output (keep videos < 4 min)
- [ ] **CHANGELOG maintained** — notable changes per release, not just git log
- [ ] **Documentation gaps acknowledged** — known missing docs flagged rather than silently absent

## 3. Contributor Experience

- [ ] **CONTRIBUTING.md exists** — how to report bugs, submit PRs, set up dev environment
- [ ] **Code of Conduct** — linked from README or CONTRIBUTING
- [ ] **Good first issues labeled** — entry points for new contributors
- [ ] **PR template or guidelines** — what a good PR looks like
- [ ] **Issue templates** — bug report and feature request templates
- [ ] **Dev environment setup documented** — deps, env vars, build commands
- [ ] **Tests runnable locally** — single command to run the test suite
- [ ] **Response time on issues/PRs** — first response within a reasonable window (< 1 week)

## 4. Technical Infrastructure

- [ ] **Version control on GitHub/GitLab** — public repo with browsable history
- [ ] **Branch protection on main** — no direct pushes; PRs required
- [ ] **CI/CD pipeline** — automated tests on every PR
- [ ] **Automated linting/formatting** — consistent code style enforced
- [ ] **Commit notifications** — team aware of changes (email, Discord, etc.)
- [ ] **Issue tracker actively used** — bugs and features tracked, not just code
- [ ] **Release automation** — tags trigger builds, packages, or deployments
- [ ] **Dependency updates tracked** — Dependabot, Renovate, or equivalent

## 5. Versioning & Releases

- [ ] **Versioning scheme documented** — semver or custom, but explicit
- [ ] **Semantic versioning followed** — major=breaking, minor=features, patch=fixes
- [ ] **Release branches used** — stabilization separate from ongoing development
- [ ] **Pre-releases clearly labeled** — alpha/beta/RC with sequential numbering
- [ ] **Binary/package distribution** — npm, PyPI, Docker, GitHub Releases, etc.
- [ ] **Installation verification** — a command or test to confirm correct install
- [ ] **Security release process** — fast-track path for critical fixes

## 6. Licensing & Legal

- [ ] **LICENSE file in repo root** — full license text, not just a mention
- [ ] **License in package metadata** — package.json, pyproject.toml, Cargo.toml, etc.
- [ ] **License headers in source files** — if required by chosen license (e.g., GPL)
- [ ] **Dependency license compatibility** — no conflicting licenses in dependency tree
- [ ] **Contributor agreement approach chosen** — DCO, CLA, or explicit "none needed"
- [ ] **Copyright notice present** — year and entity in LICENSE or NOTICE file
- [ ] **Trademark guidelines** — if project name/logo are used by others (for larger projects)

## 7. Governance & Decision-Making

- [ ] **Governance model stated** — BDFL, consensus, democratic, or informal but explicit
- [ ] **Decision-making process documented** — how disagreements are resolved
- [ ] **Maintainer roles defined** — who has merge rights, who reviews what
- [ ] **Path to maintainership** — how contributors can become maintainers
- [ ] **Non-code contributions recognized** — docs, design, community work valued
- [ ] **Discussions happen in public** — decisions not made in private channels

## 8. Communication & Community

- [ ] **Primary communication channel exists** — Discussions, Discord, mailing list, etc.
- [ ] **Channel linked from README** — users can find where to ask questions
- [ ] **Discussions archived and searchable** — GitHub Discussions, forum, etc.
- [ ] **Announcements process** — releases and major changes announced consistently
- [ ] **Security vulnerability reporting** — security policy or SECURITY.md with contact method
- [ ] **Conventions documented** — commit message format, branch naming, PR conventions

## 9. Automation & Maintenance

- [ ] **Automated test suite** — unit, integration, or e2e tests exist and pass
- [ ] **Test coverage tracked** — coverage reports, even if not enforced as a gate
- [ ] **Stale issue/PR management** — bot or manual process to close abandoned items
- [ ] **Automated dependency updates** — security patches applied promptly
- [ ] **Build reproducibility** — lockfiles committed, deterministic builds
- [ ] **Monitoring/health dashboard** — CI badge, deployment status, uptime (if applicable)

## 10. Project Health Signals

- [ ] **Recent commits** — activity within the last 3 months
- [ ] **Issues being triaged** — not a graveyard of unanswered issues
- [ ] **Multiple contributors** — not single-bus-factor (or documented plan for it)
- [ ] **Roadmap or milestones** — some indication of project direction
- [ ] **Users acknowledged** — known users, adopters, or case studies mentioned
