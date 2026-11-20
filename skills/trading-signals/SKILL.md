---
name: trading-signals
description: Review trading signals and record simulated paper trades without placing live orders.
---

## Workflow
1. Read user-provided signals or an accessible public feed; record source, timestamp, symbol, direction and invalidation. Do not register or publish without permission.
2. Check data freshness, market and instrument coverage, and whether the signal is actionable; label missing details and unverified claims.
3. Simulate entries and exits using explicit paper capital, position sizing, fees, slippage and price timestamps; record an auditable ledger.
4. Save signals, assumptions and paper results to `out/<sym>_signals.md`.

## Tooling
No package is required for a manual paper ledger. [AI-Trader](https://github.com/HKUDS/AI-Trader) describes a signal feed and paper trading, but broker and market support, particularly NSE/BSE, are unverified. Its README also describes live and copy trading: do not use those functions. Consult its current integration instructions only if requested; credentials or registration may be needed.

## Output
`out/<sym>_signals.md` with a timestamped simulated ledger.

## Rules
Backtest/paper only; never place live orders. State fees, slippage and date range. NSE/BSE symbols use `.NS`/`.BO`. No profitability claims.
