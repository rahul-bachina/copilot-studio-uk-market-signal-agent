# Security Policy

## Supported versions

Only the latest commit on the default branch is maintained. This repository is a reference implementation and has no production service-level commitment.

## Reporting a vulnerability

Do not disclose secrets, customer data, tenant identifiers, non-public market information, or exploitable details in a public issue. Use GitHub's private vulnerability reporting feature when enabled for the repository owner.

Include:

- the affected agent, skill, tool, or document;
- the security impact and prerequisites;
- a minimal reproduction that contains no sensitive data;
- a suggested mitigation, if known.

## Deployment responsibilities

Before deployment, the adopting organisation must independently review:

- Microsoft Entra identity, environment roles, Data Loss Prevention policies, connector permissions, and tenant boundaries;
- market-data, website, document, and redistribution licences;
- uploaded-file retention, privacy, and data residency;
- prompt-injection resistance and least-privilege tool scopes;
- human approval and audit evidence for every file export;
- regulatory, legal, compliance, recordkeeping, and accessibility requirements.

Never commit tenant URLs, environment IDs, connection references, access tokens, API keys, confidential documents, or exported conversations.
