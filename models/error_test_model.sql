{{ config(
    materialized='table'
) }}

-- This query will FAIL because 'invalid_column' doesn't exist
SELECT 
    CURRENT_TIMESTAMP() as created_at,
    'Error Test Model' as model_name,
    invalid_column as test_error,
    1 as test_value
FROM SNOWFLAKE_SYSTEM.INFORMATION_SCHEMA.CATALOGS
