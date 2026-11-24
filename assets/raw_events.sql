/* @bruin
name: telemetry.raw_events
type: duckdb.sql
materialization:
  type: table
columns:
  - name: t
    type: integer
    checks:
      - name: not_null
  - name: model
    type: string
    checks:
      - name: not_null
  - name: kind
    type: string
    checks:
      - name: not_null
@bruin */

SELECT
  CAST(t AS INTEGER) AS t,
  model,
  kind,
  role,
  detail
FROM read_json_auto('data/events.json')
