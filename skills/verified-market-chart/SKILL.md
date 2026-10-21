---
name: verified-market-chart
description: Create an evidence-safe trading-style price and indicator visual for a UK-listed equity only when sufficient dated, attributable market data is available.
---

# Verified Market Chart

Use this skill when the Market Signal Analyst presents a technical-condition result or the user asks for a chart, indicator view, price trend, RSI, MACD, moving average, volume, or support and resistance.

1. Confirm the security, ticker, exchange, currency, covered period, and observation frequency.
2. Record the source URL or uploaded filename, publisher or provider, data date, access date, and the available fields.
3. Validate that the series is dated, ordered, internally consistent, and long enough for every proposed calculation.
4. Prefer a price line or candlestick chart when attributable close or OHLC data is available.
5. Add 20-day or 50-day moving averages only when the complete lookback series is available. Add RSI or MACD only when enough dated observations exist to reproduce the calculation.
6. Label the chart title, currency, period, frequency, indicator parameters, source, and as-of timestamp. Mark it as historical public evidence, not a live feed or forecast.
7. If native chart rendering is unavailable, produce a compact Unicode price sparkline and a Technical Snapshot table from the same verified observations.
8. Never interpolate missing dates, invent prices, fabricate indicators, or draw an illustrative market pattern.
9. If evidence is stale, incomplete, undated, or insufficient, output `Chart unavailable from current attributable evidence`, list the missing inputs, and exclude the unavailable indicator from scoring.
10. Present the visual and its data limitations for human review before the final signal conclusion and before any export.
