{{ config(
    materialized='table'
) }}

-- This will FAIL with invalid column error at execution
SELECT 
  cs_customer_id,  -- This column doesn't exist
  c_customer_sk
FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CUSTOMER
LIMIT 10
