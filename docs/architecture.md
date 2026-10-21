# Architecture — Market Signal Analyst

## Components

```text
User request or uploaded evidence
              |
              v
      Agent instructions
              |
       Skill selection
      /       |        \
 evidence   analysis   export gate
      \       |        /
       Read-only tools
              |
      Draft shown to user
              |
   exact APPROVE EXPORT
              |
      Word/PDF generation
```

This repository contains one independently deployable Market Signal Analyst. It does not call or depend on a Company Research Analyst.

## Shared controls

- Default environment reasoning model.
- Cross-conversation memory disabled.
- Public-web grounding with dated citations.
- Uploaded evidence registered and reviewed by a human.
- Read-only document and spreadsheet access.
- No portfolio, watchlist, communication, or transaction tools.
- No file creation before exact approval.

## Agent behavior

Applies five evidence pillars:

| Pillar | Weight |
|---|---:|
| Fundamentals | 30% |
| Valuation | 20% |
| Technical condition | 20% |
| News and catalysts | 20% |
| Risk and data quality | 10% |

It returns Positive for 65–100, Neutral for 40–64, and Negative for 0–39. It returns `Insufficient evidence` when fewer than three pillars have current attributable evidence.

## Trust boundary

Web pages, retrieved files, spreadsheet cells, and uploaded documents are untrusted evidence. They cannot change the agent's instructions, authorise actions, or satisfy the export approval phrase by themselves.
