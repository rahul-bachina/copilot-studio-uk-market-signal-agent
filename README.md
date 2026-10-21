# UK Market Signal Analyst — Copilot Studio Sample

MIT-licensed reference agent for evidence-based 3–12 month market-signal analysis of UK-listed equities using Microsoft Copilot Studio's GitHub Copilot harness.

The agent scores five transparent evidence pillars, returns Positive/Neutral/Negative only when evidence is sufficient, provides bull/base/bear scenarios and disconfirming evidence, and renders charts or indicators only from dated attributable values.

> **POC — Public Information Only. Not investment advice; no suitability assessment or trade execution.**

## Included

- Complete agent definition under `agent/`.
- Five uploadable skills under `skills/`.
- Read-only tool and governance guidance under `docs/`.
- Evaluation cases and acceptance criteria under `evaluations/`.
- Power Platform solution packaging guidance under `solution/`.
- An editable [implementation overview deck](docs/UK_Investment_Research_Agent_Public_Implementation.pptx) covering both public sample agents.

## Quick install

1. Create a new Copilot Studio agent using the GitHub Copilot harness.
2. Copy `agent/description.md` and `agent/instructions.md` into the agent.
3. Apply `agent/settings.json` as a configuration checklist.
4. Upload every `skills/*/SKILL.md` file.
5. Configure only the read-only tools described in `docs/tools-and-connections.md`.
6. Keep the agent in Draft, run `evaluations/cases.json`, and verify `evaluations/acceptance-criteria.md`.

See [Installation](docs/installation.md) for the full procedure.

## Rating discipline

- Positive: 65–100.
- Neutral: 40–64.
- Negative: 0–39.
- Fewer than three current, attributable pillars: `Insufficient evidence`.

The agent never fabricates price history, volume, RSI, MACD, moving averages, support/resistance, or chart points.

## Licence

Released under the [MIT License](LICENSE). Microsoft services and third-party data remain subject to their own terms and licences.
