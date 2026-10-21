---
name: approved-report-export
description: Create neutral-branded Word and PDF investment-research reports only after the user explicitly approves the complete conversational draft.
---

# Approved Report Export

Before creating a file, verify both conditions:

1. The immediately preceding assistant response contains the complete draft for the same security.
2. The user's latest message contains the exact phrase `APPROVE EXPORT`.

Also verify that the user has reviewed the evidence intake register for any uploaded files and had an opportunity to correct the complete draft.

If either condition is absent, do not create a file. Present or revise the draft and request the exact approval phrase.

After valid approval, create matching Word and PDF versions. Use one of these neutral filename stems:

- `UK_Company_Research_<Ticker>_<YYYY-MM-DD>`
- `UK_Market_Signal_<Ticker>_<YYYY-MM-DD>`

Put `POC — Public Information Only` at the top. Include the security name, ticker, covered period, as-of timestamp, evidence sources, and data limitations. End with `Not investment advice; no suitability assessment or trade execution.`

Return the files to the current conversation only. Do not publish, send, upload, or save them into another system.
