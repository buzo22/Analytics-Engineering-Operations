SELECT
    operation_date,
    terminal,
    asset_type,
    SUM(moves) AS total_moves,
    COUNT(DISTINCT operation_id) AS total_operations,
    ROUND(
        SUM(moves) * 1.0 / COUNT(DISTINCT operation_id),
        2
    ) AS avg_moves_per_operation
FROM fact_operations
GROUP BY
    operation_date,
    terminal,
    asset_type;
