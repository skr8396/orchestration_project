{{ config(
    materialized='table'
) }}

SELECT 
    CURRENT_TIMESTAMP() as created_at,
    'Test Model' as model_name,
    1 as test_value
