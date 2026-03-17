{{ config(
    materialized='table'
) }}
 
-- This will FAIL with invalid column error at execution
SELECT
 *,current_date() as current_audit_datetime
FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.{{var('tbl_name')}}
LIMIT 10
