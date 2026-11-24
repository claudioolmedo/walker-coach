/* @bruin
name: telemetry.model_stats
type: duckdb.sql
materialization:
  type: table
depends:
  - telemetry.raw_events
columns:
  - name: model
    type: string
    checks:
      - name: not_null
      - name: unique
  - name: goals
    type: integer
    checks:
      - name: not_null
@bruin */

SELECT
  model,
  COUNT(*) FILTER (WHERE kind = 'decision') AS decisions,
  COUNT(*) FILTER (WHERE kind = 'goal') AS goals,
  COUNT(*) FILTER (WHERE kind = 'fall') AS falls,
  COUNT(*) FILTER (WHERE kind = 'training_attempt') AS training_attempts,
  COUNT(*) AS total_events
FROM telemetry.raw_events
GROUP BY model
ORDER BY goals DESC, model
