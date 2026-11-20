---
name: trading-backtest
description: Backtest a strategy on historical data using NautilusTrader's simulated engine.
---

## Workflow
1. Read `out/<sym>.csv`; validate OHLCV, timestamps, frequency, timezone, corporate actions and coverage.
2. Specify strategy, instrument, starting capital, date range, realistic fees and slippage; avoid look-ahead and report limitations.
3. Adapt the upstream [backtest example](https://github.com/nautechsystems/nautilus_trader/tree/develop/examples/backtest) to ingest the CSV, configure venue and instrument, and run the strategy. Use a fee model and fill model matching the stated assumptions; report any approximation.
4. Save trades, metrics and assumptions in `out/<sym>_backtest.txt`; distinguish no-trade replays from strategy tests.

## Tooling
Install a PyPI wheel only, on first use: `uv venv .venv-nautilus && uv pip install --python .venv-nautilus/bin/python --only-binary :all: nautilus_trader`. If no wheel exists, stop; never build from source.
This upstream API skeleton does not place orders or run a backtest:
```python
import pandas as pd
from nautilus_trader.trading.strategy import Strategy
from nautilus_trader.backtest.engine import BacktestEngine
bars = pd.read_csv("out/RELIANCE.NS.csv", index_col=0, parse_dates=True)
fee_per_fill, slippage_ticks = 0.0, 0  # replace with justified assumptions
class ResearchStrategy(Strategy):
    def on_bar(self, bar):
        pass  # implement the requested signal before running
engine = BacktestEngine()
```
Configure costs explicitly in the engine before running; the variables alone do not apply them.

## Output
`out/<sym>_backtest.txt` and optional trade data in `out/`.

## Rules
Backtest/paper only; never place live orders. State fees, slippage and date range. NSE/BSE symbols use `.NS`/`.BO`. No profitability claims.
