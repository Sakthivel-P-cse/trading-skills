---
name: trading-data
description: Fetch historical market prices and OHLCV data for trading research.
---

## Workflow
1. Resolve symbol, date range and interval; use `.NS` for NSE and `.BO` for BSE.
2. Fetch with OpenBB and yfinance; inspect coverage, dates, columns and missing data.
3. Save OHLCV to `out/<sym>.csv` and report source and limitations.

## Tooling
On first use: `uv venv .venv-openbb && uv pip install --python .venv-openbb/bin/python openbb`.
Run with `.venv-openbb/bin/python`; adapt symbol and dates:
```python
from pathlib import Path
from openbb import obb
symbol = "RELIANCE.NS"
start, end = "2024-01-01", "2025-01-01"
Path("out").mkdir(exist_ok=True)
result = obb.equity.price.historical(symbol=symbol, start_date=start,
                                     end_date=end, provider="yfinance")
result.to_df().to_csv(f"out/{symbol}.csv")
```
API: [OpenBB example](https://github.com/openbb-finance/OpenBB/blob/develop/openbb_platform/extensions/quantitative/README.md).

## Output
`out/<sym>.csv`; preserve the date index for backtesting.

## Rules
Backtest/paper only; never place live orders. State date range, fees and slippage assumptions, or mark costs not applicable to raw data. Data may be delayed or incomplete.
