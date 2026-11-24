# Bruin — telemetry pipeline

Sponsor tool: **Bruin** (open-source CLI, getbruin.com) — the mandatory tool for this hackathon.

The game exports its decision ledger and training log as JSON (Details → export in the page, same shape as `data/events.json`). This Bruin pipeline at the repo root models that telemetry in DuckDB:

- `telemetry.raw_events` — ingests the exported events (decisions, goals, falls, training attempts) from `data/events.json`
- `telemetry.model_stats` — per-model totals: decisions, goals, falls, training attempts

Quality checks run on both assets (not-null on key columns, unique model in the stats table).

Run it:
```
curl -LsSf https://getbruin.com/install/cli | sh
bruin validate .
bruin run .
bruin query --connection duckdb-default --query "SELECT * FROM telemetry.model_stats"
```

Verified during the event: `bruin validate` clean, `bruin run` succeeded — 2 assets, 6 quality checks passed.
