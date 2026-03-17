{{ config(
    materialized='table'
) }}

-- This will FAIL with invalid column error at execution
SELECT 
 *
FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CUSTOMER
LIMIT 10
