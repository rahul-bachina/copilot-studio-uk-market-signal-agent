# Installation

## Prerequisites

- Microsoft Copilot Studio access in a non-production environment.
- Permission to create a GitHub Copilot harness agent.
- Copilot Credits for Preview/Evaluate.
- Organisation approval for public-web grounding, uploaded documents, and market-data use.

## Configure the agent

1. Create a new GitHub Copilot harness agent.
2. Use the name `UK Market Signal Analyst` or an approved neutral name.
3. Copy `agent/description.md` into Description.
4. Copy `agent/instructions.md` into Instructions.
5. Use the environment-default reasoning model.
6. Disable cross-conversation memory.
7. Enable public-web grounding only when policy permits it.
8. Add the entries from `agent/suggested-prompts.json`.
9. Upload all five `SKILL.md` files under `skills/`.
10. Optionally configure the read-only OneDrive and Excel actions documented in `tools-and-connections.md`.

## Validate

- Confirm the five weights total 100% and thresholds are exact.
- Confirm fewer than three supported pillars returns `Insufficient evidence`.
- Confirm bull/base/bear scenarios, confidence, risks, disconfirming evidence, and change conditions are present.
- Confirm technical indicators and charts appear only when supported by dated attributable values.
- Confirm export requires a reviewed complete draft followed by exact `APPROVE EXPORT`.
- Run every conversation in `evaluations/cases.json` and record results against the acceptance criteria.

Keep the agent unpublished until organisational security, legal, compliance, privacy, data-licensing, accessibility, and model-risk reviews are complete.
