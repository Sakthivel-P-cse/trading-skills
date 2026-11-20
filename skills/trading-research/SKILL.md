---
name: trading-research
description: Maintain and resume a ticker research workspace and notes across sessions.
---

## Workflow
1. Read `research/<ticker>/notes.md` if present, plus relevant files in `out/`.
2. Record dated thesis, evidence and sources, levels, invalidation, risks and follow-ups; distinguish facts from hypotheses.
3. Save notes at `research/<ticker>/notes.md` and a session summary in `out/<ticker>_research.md`.
4. On resumption, read the notes and follow-ups first; refresh stale market data before drawing conclusions.

## Tooling
No package is required: use Markdown files. [OpenAlice](https://github.com/TraderAlice/OpenAlice) is an optional external app, not required for the notes workflow; follow its own documentation if explicitly requested.

## Output
Persistent `research/<ticker>/notes.md` and `out/<ticker>_research.md`.

## Rules
Backtest/paper only; never place live orders. State fees, slippage and date range, or mark costs not applicable. NSE/BSE symbols use `.NS`/`.BO`. No profitability claims.
