# Tools and Connections

## Baseline capabilities

- Public-web grounding for attributable public information.
- Current-conversation file upload for user-supplied evidence.
- Native Word/PDF generation after the export approval gate.

## Optional read-only connectors

The reference configuration uses only:

- OneDrive for Business — **Get file content using path**.
- Excel Online (Business) — **List rows present in a table**.

The user must identify the exact file or table. The agent must not search broadly through organisational content or infer access to internal research.

## Prohibited connector actions

Do not add tools that:

- create, update, rename, move, share, delete, or publish files;
- send email, Teams messages, or other external communications;
- update a portfolio, watchlist, CRM, order-management, or execution system;
- place, modify, or cancel trades;
- run autonomous monitoring or scheduled alerts.

## Connection setup

Connections and authentication are tenant-specific and are intentionally excluded from source control. Create connections in the target environment using least-privilege accounts, then verify Data Loss Prevention policy compatibility.

If a tool is unavailable, the agent must disclose the limitation and request a user-provided source rather than fabricate results.
