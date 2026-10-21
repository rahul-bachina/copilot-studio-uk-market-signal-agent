# Governance and Production Hardening

## POC boundary

The repository deliberately uses public information and is intended as a demonstrator. It is not a licensed market-data platform or regulated decision engine.

## Production controls to add

- Approved licensed data providers with contractual redistribution rights.
- Source freshness SLAs and deterministic as-of timestamps.
- Role-based access, environment separation, DLP policies, and connector allowlists.
- Audit logging for prompts, sources, tool calls, approvals, generated files, and model versions.
- Formal human-review responsibilities and escalation paths.
- Regulatory, legal, compliance, privacy, accessibility, and records-management approval.
- Incident response, model monitoring, periodic red-team tests, and rollback procedures.
- Quantitative validation of scoring logic and technical-analysis calculations.

## Change management

Any change to instructions, skill descriptions, score weights, thresholds, tools, data sources, models, or approval phrases is a controlled change and requires regression evaluation before release.

## Licensing

The MIT licence covers repository content only. It does not grant rights to Microsoft services, trademarks, market data, news articles, company documents, connectors, models, or generated third-party content.
