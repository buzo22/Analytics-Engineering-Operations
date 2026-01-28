SELECT
    o.operation_id,
    o.operation_date,
    o.operation_time,
    o.terminal,
    o.operation_type,
    o.asset_id,
    a.asset_type,
    o.moves
FROM stg_operations o
LEFT JOIN dim_assets a
    ON o.asset_id = a.asset_id;
