# Skills

Copilot Studio selects skills from the YAML `name` and `description` in each `SKILL.md`. Keep descriptions specific enough to distinguish selection triggers.

| Skill | Used by | Purpose |
|---|---|---|
| `uk-equity-evidence` | Both | Gather, date, cite, classify, and reconcile public or uploaded evidence |
| `human-reviewed-inputs` | Both | Register user-supplied documents/data and enforce human checkpoints |
| `uk-company-research` | Company | Produce structured company research without an investment rating |
| `uk-market-signal` | Signal | Apply weighted pillars, rating thresholds, scenarios, confidence, and change conditions |
| `verified-market-chart` | Signal | Build a chart/indicator view only from attributable dated values |
| `approved-report-export` | Both | Enforce complete-draft review and exact export approval |

## Uploading a skill

1. Open the agent's Build tab.
2. Select **Add skill**.
3. Select **Upload a skill**.
4. Upload the relevant `SKILL.md`, or a ZIP whose root contains `SKILL.md`.
5. Confirm that Copilot Studio validates and attaches the skill.

Do not merge all skills into one large skill. Modular selection makes behavior easier to audit and allows both agents to share evidence and export controls.

## Modifying a skill

Update the local `SKILL.md`, increment the repository version, re-upload the skill, and rerun all related evaluations. Changes to shared skills require testing both agents.
