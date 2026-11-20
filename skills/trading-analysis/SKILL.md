---
name: trading-analysis
description: Analyze a ticker with a TradingAgents-style multi-role research report.
---

## Workflow
1. Read `out/<sym>.csv` from trading-data; record dates, source and gaps.
2. Perform fundamental, sentiment, news and technical analyst reviews yourself; cite sources and mark unavailable evidence.
3. Set out bull and bear arguments, then a trader's hypothetical action and a risk review with invalidation and sizing assumptions.
4. Save a dated report with uncertainty, fees, slippage and date range; do not invent missing evidence.

## Tooling
No package is required for this checklist. Optionally, only when the user requests the full TradingAgents package and has credentials, check the [upstream installation](https://github.com/TauricResearch/TradingAgents#installation) and PyPI package identity before installing `tradingagents`; the upstream README documents `pip install .` from its clone. Its documented API is:
```python
from tradingagents.graph.trading_graph import TradingAgentsGraph
from tradingagents.default_config import DEFAULT_CONFIG
config = DEFAULT_CONFIG.copy()
config["llm_provider"] = "openai"
ta = TradingAgentsGraph(debug=True, config=config)
state, decision = ta.propagate("NVDA", "2024-05-10")
print(decision)
```
Review provider configuration, costs and any execution capabilities before use.

## Output
`out/<sym>_analysis.md`.

## Rules
Backtest/paper only; never place live orders. State fees, slippage and date range. NSE/BSE symbols use `.NS`/`.BO`; coverage is not guaranteed. No profitability claims.
