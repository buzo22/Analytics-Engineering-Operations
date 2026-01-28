WITH source AS (
    SELECT
        operation_id,
        asset_id,
        terminal,
        operation_type,
        CAST(operation_time AS TIMESTAMP) AS operation_time,
        moves
    FROM raw_operations
)

SELECT
    operation_id,
    asset_id,
    terminal,
    operation_type,
    operation_time,
    CAST(operation_time AS DATE) AS operation_date,
    moves
FROM source;
