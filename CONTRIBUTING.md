# Contributing

Contributions are welcome when they preserve the project's neutral branding, evidence discipline, human-review gates, and no-trading boundary.

## Development workflow

1. Fork the repository and create a focused branch.
2. Update the relevant agent, skill, documentation, and evaluation cases together.
3. Keep each skill in `skills/<skill-name>/SKILL.md` with valid YAML `name` and `description` fields.
4. Do not add proprietary data, secrets, client branding, paid-source extracts, or unlicensed market data.
5. Run every applicable case in `evaluations/` in a non-production Copilot Studio environment.
6. Document model, harness, tool, and connector assumptions in the pull request.

## Required review checks

- Material time-sensitive claims require a source and date.
- Missing data is disclosed rather than estimated.
- No personalised advice, suitability decision, transaction, external communication, or autonomous monitoring is introduced.
- Export still requires the exact phrase `APPROVE EXPORT` after display of the complete draft.
- Chart and indicator outputs remain unavailable when attributable data is insufficient.
- Agent and skill changes include regression tests.
